import chisel3._
import chisel3.util._

class LcdSpiBundle extends Bundle {
  val serialClock = Output(Bool())
  val dataCommand = Output(Bool())
  val chipSelectN = Output(Bool())
  val masterOutSlaveIn = Output(Bool())
  val masterInSlaveOut = Input(Bool())

  val resetN = Output(Bool())
  val backLight = Output(Bool())
}

class ILI9341InstBundle extends Bundle {
  val isData = Bool()
  val value = UInt(8.W)
}

class ILI9341SPI extends Module {
  val io = IO(new Bundle{
    val lcdSpi = new LcdSpiBundle
    val sendData = Flipped(DecoupledIO(new ILI9341InstBundle))
  })

  val spiClock = RegInit(false.B)

  val sendValue = RegInit(0.U(8.W))
  val sendBitCount = RegInit(0.U(3.W))
  val dataCommand = RegInit(false.B)

  // ステート定義
  val (stateIdle :: stateSend :: Nil) = Enum(2)
  val state = RegInit(stateIdle)

  // 状態遷移
  when(state === stateIdle && io.sendData.valid) {
    state := stateSend
    sendValue := io.sendData.bits.value
    dataCommand := io.sendData.bits.isData
  } .elsewhen(state === stateSend) {
    spiClock := ~spiClock
    when (spiClock) {
      sendValue := Cat(sendValue(6, 0), 0.U(1.W))
      sendBitCount := sendBitCount + 1.U
      when (sendBitCount === 7.U) {
        when (io.sendData.valid) {
          sendValue := io.sendData.bits.value
          dataCommand := io.sendData.bits.isData
        } .otherwise {
          state := stateIdle
        }
      }
    }
  }

  // 出力
  io.lcdSpi.serialClock := spiClock
  io.lcdSpi.dataCommand := dataCommand
  io.lcdSpi.chipSelectN := state =/= stateSend
  io.lcdSpi.masterOutSlaveIn := sendValue(7)

  io.lcdSpi.resetN := true.B
  io.lcdSpi.backLight := true.B

  io.sendData.ready := (state === stateIdle) ||
    (state === stateSend && sendBitCount === 7.U && spiClock)
}

object ILI9341SPI {
  val sleepOut                       = "h11"
  val gammaSet                       = "h26"
  val displayOff                     = "h28"
  val displayOn                      = "h29"
  val memoryWrite                    = "h2C"
  val pixelFormatSet                 = "h3A"
  val writeDisplayBrightness         = "h51"
  val frameRateControlNormaFullColor = "hB1"
  val displayFunctionControl         = "hB6"
  val entryModeSet                   = "hB7"
  val powerControl1                  = "hC0"
  val powerControl2                  = "hC1"
  val vcomControl1                   = "hC5"
  val vcomControl2                   = "hC7"
  val powerControlA                  = "hCB"
  val powerControlB                  = "hCF"
  val driverTimingControlA           = "hE8"
  val driverTimingControlB           = "hEA"
  val powerOnSequence                = "hED"
  val pumpRatioControl               = "hF7"

  val initProgram = Seq(
    // isDataとvalueの対
    (false, displayOff),
    (false, powerControlA),          (true, "h39"), (true, "h2C"), (true, "h00"), (true, "h34"), (true, "h02"),
    (false, powerControlB),          (true, "h00"), (true, "h81"), (true, "h30"),
    (false, powerOnSequence),        (true, "h64"), (true, "h03"), (true, "h12"), (true, "h81"),
    (false, driverTimingControlA),   (true, "h84"), (true, "h11"), (true, "h7A"),
    (false, driverTimingControlB),   (true, "h66"), (true, "h00"),
    (false, pumpRatioControl),       (true, "h20"),
    (false, powerControl1),          (true, "h21"),
    (false, powerControl2),          (true, "h10"),
    (false, vcomControl1),           (true, "h31"), (true, "h3C"),
    (false, vcomControl2),           (true, "hC0"),
    (false, pixelFormatSet),         (true, "h55"),
    (false, frameRateControlNormaFullColor), (true, "h00"), (true, "h1B"),
    (false, writeDisplayBrightness), (true, "hFF"),
    (false, gammaSet),               (true, "h01"),
    (false, entryModeSet),           (true, "h06"),
    (false, displayFunctionControl), (true, "h0A"), (true, "h82"), (true, "h27"), (true, "h00"),
    (false, displayOn),
    (false, memoryWrite)
  ).map(inst => (inst._1.B, inst._2.U(8.W)))
}

import ILI9341SPI._

class LCDDisplay extends Module {
  val io = IO(new Bundle{
    val lcdSpi = new LcdSpiBundle
  })

  val clockFrequency    = 100000000.0  // 100MHz
  val resetHoldTimeSec  = 0.00002      // 20usec
  val waitForPowerUpSec = 0.2          // 200msec
  val waitSleepOutSec   = 0.01         // 10msec

  val colors = VecInit(
    "hFFFF".U,  // White
    "h07FF".U,  // Yellow
    "hFFE0".U,  // Light Blue
    "h07E0".U,  // Green
    "hF81F".U,  // Purple
    "h001F".U,  // Red
    "hF800".U,  // Blue
    "h0000".U  // Black
  )

  val rom = Wire(Vec(initProgram.length, new ILI9341InstBundle))
  rom zip initProgram map { t =>
    val (romMem, inst) = t
    romMem.isData := inst._1
    romMem.value  := inst._2
  }
  val programCounter = RegInit(0.U(8.W))
  val x = RegInit(0.U(8.W))
  val imageHighByte = RegInit(true.B)

  val (stateReset :: stateWaitForPowerUp :: stateSleepOut :: stateSendInit :: stateIdle :: Nil) = Enum(5)
  val state = RegInit(stateReset)

  val ili9341Spi = Module(new ILI9341SPI)
  // デフォルト値
  ili9341Spi.io.sendData.bits.isData := false.B
  ili9341Spi.io.sendData.bits.value := 0.U
  ili9341Spi.io.sendData.valid := false.B

  val stateHoldCount = RegInit((resetHoldTimeSec * clockFrequency).toInt.U(24.U))
  val stateChange = WireInit(false.B)
  when (state === stateReset || state === stateWaitForPowerUp || state === stateSleepOut) {
    stateHoldCount := stateHoldCount - 1.U
    stateChange := stateHoldCount === 0.U
  }

  when (stateChange) {
    when (state === stateReset) {
      state := stateWaitForPowerUp
      stateHoldCount := (waitForPowerUpSec * clockFrequency).toInt.U
    } .elsewhen (state === stateWaitForPowerUp) {
      state := stateSleepOut
      stateHoldCount := (waitSleepOutSec * clockFrequency).toInt.U

      ili9341Spi.io.sendData.bits.value := sleepOut.U(8.W)
      ili9341Spi.io.sendData.bits.isData := false.B
      ili9341Spi.io.sendData.valid := true.B
    } .elsewhen (state === stateSleepOut) {
      state := stateSendInit
    }
  } .elsewhen (state === stateSendInit) {
    when (ili9341Spi.io.sendData.ready) {
      when (programCounter < initProgram.length.U) {
        ili9341Spi.io.sendData.bits := rom(programCounter)
        ili9341Spi.io.sendData.valid := true.B

        programCounter := programCounter + 1.U
      } otherwise {
        state := stateIdle
      }
    }
  } .elsewhen (state === stateIdle) {
    when (ili9341Spi.io.sendData.ready) {
      val color = colors(x / 30.U)
      imageHighByte := ~imageHighByte
      when (!imageHighByte) {
        when (x === 239.U) {
          x := 0.U
        } .otherwise {
          x := x + 1.U
        }
      }
      ili9341Spi.io.sendData.bits.value := Mux(imageHighByte, color(15, 8), color(7, 0))
      ili9341Spi.io.sendData.bits.isData := true.B
      ili9341Spi.io.sendData.valid := true.B
    }
  }

  io.lcdSpi <> ili9341Spi.io.lcdSpi
  when (state === stateReset) {
    io.lcdSpi.resetN := false.B
  }
}

object LCDDisplay extends App {
  Driver.execute(args, () => new LCDDisplay)
}
