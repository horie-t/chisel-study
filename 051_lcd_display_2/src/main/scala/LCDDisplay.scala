import java.io.PrintWriter

import chisel3._
import chisel3.stage._
import chisel3.util._

/** LCDディスプレイ接続用のBundleです。
  */
class LcdSpiBundle extends Bundle {
  val serialClock = Output(Bool())
  val dataCommand = Output(Bool())
  val chipSelectN = Output(Bool())
  val masterOutSlaveIn = Output(Bool())
  val masterInSlaveOut = Input(Bool())

  val resetN = Output(Bool())
  val backLight = Output(Bool())
}

/** ILI9341への命令の構造体です。
  */
class ILI9341InstBundle extends Bundle {
  val isData = Bool()
  val value = UInt(8.W)
}

/** ディスプレイに送信する命令・データを受け取って、SPIインタフェースに送信するモジュールです。
  */
class ILI9341SPI extends MultiIOModule {
  val lcdSpi = IO(new LcdSpiBundle)
  val sendData = IO(Flipped(DecoupledIO(new ILI9341InstBundle)))

  val spiClock = RegInit(false.B)

  val sendValue = RegInit(0.U(8.W))
  val sendBitCount = RegInit(0.U(3.W))
  val dataCommand = RegInit(false.B)

  // ステート定義
  val (stateIdle :: stateSend :: Nil) = Enum(2)
  val state = RegInit(stateIdle)

  // 状態遷移
  when(state === stateIdle && sendData.valid) {
    state := stateSend
    sendValue := sendData.bits.value
    dataCommand := sendData.bits.isData
  } .elsewhen(state === stateSend) {
    spiClock := ~spiClock
    when (spiClock) {
      sendValue := Cat(sendValue(6, 0), 0.U(1.W))
      sendBitCount := sendBitCount + 1.U
      when (sendBitCount === 7.U) {
        when (sendData.valid) {
          sendValue := sendData.bits.value
          dataCommand := sendData.bits.isData
        } .otherwise {
          state := stateIdle
        }
      }
    }
  }

  // 出力
  lcdSpi.serialClock := spiClock
  lcdSpi.dataCommand := dataCommand
  lcdSpi.chipSelectN := state =/= stateSend
  lcdSpi.masterOutSlaveIn := sendValue(7)

  lcdSpi.resetN := true.B
  lcdSpi.backLight := true.B

  sendData.ready := (state === stateIdle) ||
    (state === stateSend && sendBitCount === 7.U && spiClock)
}

/** ILI9341に関する定数定義用オブジェクト
  */
object ILI9341SPI {
  /*
   * 命令定義
   */
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

  /*
   * 初期化プログラム
   */
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

  val DISPLAY_WIDTH = 240
  val DISPLAY_HIGHT = 320
}

import ILI9341SPI._

/** LCDディスプレイにカラーバーを表示するモジュールです。
  */
class LCDDisplay extends MultiIOModule {
  val lcdSpi = IO(new LcdSpiBundle)

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY   = 12000000.0
  // リセットを保持する時間
  val RESET_HOLD_TIME_SEC  = 0.00002      // 20usec
  // 電源待ち時間
  val WAIT_FOR_POWERUP_SEC = 0.2          // 200msec
  // スリープ解除待ち時間
  val WAIT_SLEEP_OUT_SEC   = 0.01         // 10msec

  val GAME_CLOCK_REQUENCY = 120 // 120Hz

  val WHITE = "hFFFF".U(16.W)
  val BLUE = "h07E0".U(16.W)
  val RED = "hFC00".U(16.W)
  val BLACK = "h0000".U(16.W)

  // 初期化プログラムのROM
  val rom = Wire(Vec(initProgram.length, new ILI9341InstBundle))
  rom zip initProgram map { t =>
    val (romMem, inst) = t
    romMem.isData := inst._1
    romMem.value  := inst._2
  }
  val programCounter = RegInit(0.U(8.W))
  val frameBufferIndex = RegInit(0.U(log2Ceil(DISPLAY_WIDTH * DISPLAY_HIGHT).W))
  val x = frameBufferIndex % DISPLAY_WIDTH.U
  val y = frameBufferIndex / DISPLAY_WIDTH.U

  val (_, gameClockCountWrap) = Counter(true.B, (CLOCK_FREQUENCY / GAME_CLOCK_REQUENCY).toInt)
  val ball = Module(new Ball)
  ball.tick := gameClockCountWrap
  ball.checkPoint.x := x
  ball.checkPoint.y := y

  val imageHighByte = RegInit(true.B)

  /* ステート定義
   * リセット、電源待ち、スリープ解除待ち、初期化、アイドル */
  val (stateReset :: stateWaitForPowerUp :: stateSleepOut :: stateSendInit :: stateIdle :: Nil) = Enum(5)
  val state = RegInit(stateReset)

  val ili9341Spi = Module(new ILI9341SPI)
  // デフォルト値
  ili9341Spi.sendData.bits.isData := false.B
  ili9341Spi.sendData.bits.value := 0.U
  ili9341Spi.sendData.valid := false.B

  /*
   * ステートマシン
   */
  // ステートを維持するクロックのカウントダウン用レジスタ
  val stateHoldCount = RegInit((RESET_HOLD_TIME_SEC * CLOCK_FREQUENCY).toInt.U(24.U))
  val stateChange = WireInit(false.B)
  when (state === stateReset || state === stateWaitForPowerUp || state === stateSleepOut) {
    stateHoldCount := stateHoldCount - 1.U
    stateChange := stateHoldCount === 0.U
  }

  when (stateChange) {
    when (state === stateReset) {
      state := stateWaitForPowerUp
      stateHoldCount := (WAIT_FOR_POWERUP_SEC * CLOCK_FREQUENCY).toInt.U
    } .elsewhen (state === stateWaitForPowerUp) {
      state := stateSleepOut
      stateHoldCount := (WAIT_SLEEP_OUT_SEC * CLOCK_FREQUENCY).toInt.U

      ili9341Spi.sendData.bits.value := sleepOut.U(8.W)
      ili9341Spi.sendData.bits.isData := false.B
      ili9341Spi.sendData.valid := true.B
    } .elsewhen (state === stateSleepOut) {
      state := stateSendInit
    }
  } .elsewhen (state === stateSendInit) {
    when (ili9341Spi.sendData.ready) {
      when (programCounter < initProgram.length.U) {
        ili9341Spi.sendData.bits := rom(programCounter)
        ili9341Spi.sendData.valid := true.B

        programCounter := programCounter + 1.U
      } .otherwise {
        state := stateIdle
      }
    }
  } .elsewhen (state === stateIdle) {
    when (ili9341Spi.sendData.ready) {
      val color = WireInit(BLACK)
      when (ball.isHit) {
        color := RED
      } .elsewhen (y < 32.U) {
        color := BLUE
      }

      imageHighByte := ~imageHighByte
      when (!imageHighByte) {
        when (frameBufferIndex === ((DISPLAY_WIDTH * DISPLAY_HIGHT) - 1).U) {
          frameBufferIndex := 0.U
        } .otherwise {
          frameBufferIndex := frameBufferIndex + 1.U
        }
      }
      ili9341Spi.sendData.bits.value := Mux(imageHighByte, color(15, 8), color(7, 0))
      ili9341Spi.sendData.bits.isData := true.B
      ili9341Spi.sendData.valid := true.B
    }
  }

  lcdSpi <> ili9341Spi.lcdSpi
  when (state === stateReset) {
    lcdSpi.resetN := false.B
  }
}

class Ball extends MultiIOModule {
  val checkPoint = IO(Input(new Bundle {
    val x = UInt(8.W)
    val y = UInt(9.W)
  }))
  val tick = IO(Input(Bool()))
  val isHit = IO(Output(Bool()))

  val RADIUS = 2
  val X_INIT = 30
  val Y_INIT = 280
  val Vx_INIT = 1
  val Vy_INIT = 0
  val MAGNITUDE = 6

  val X_MIN = (0 + RADIUS) << MAGNITUDE
  val X_MAX = (240 - RADIUS) << MAGNITUDE
  val Y_MIN = (31 + RADIUS) << MAGNITUDE
  val Y_MAX = (320 + RADIUS) << MAGNITUDE

  val x = RegInit((X_INIT << MAGNITUDE).U(16.W))
  val y = RegInit((Y_INIT << MAGNITUDE).U(16.W))
  val vx = RegInit((Vx_INIT << 3).U(16.W))
  val vy = RegInit(Vy_INIT.U(16.W))

  val nextX = x + vx
  val nextY = y + vy

  when (tick) {
    when(X_MIN.U < nextX && nextX < X_MAX.U) {
      x := nextX
    } otherwise {
      vx := 0.U - vx
    }

    when(Y_MIN.U < nextY && nextY < Y_MAX.U) {
      y := nextY
      vy := vy - 1.U
    } otherwise {
      vy := 0.U - vy - 1.U
    }
  }

  val pixelX = (x >> MAGNITUDE.U).asUInt()
  val pixelY = (y >> MAGNITUDE.U).asUInt()
  val diffX = (pixelX - checkPoint.x).asSInt()
  val diffY = (pixelY - checkPoint.y).asSInt()
  val squareDistance = diffX * diffX + diffY * diffY

  isHit := squareDistance <= (RADIUS * RADIUS).S
}

/**
  * Generate Verilog code.
  */
object VerilogEmitter extends App {
  val writer = new PrintWriter("target/LCDDisplay.v")
  writer.write(ChiselStage.emitVerilog(new LCDDisplay))
  writer.close()
}