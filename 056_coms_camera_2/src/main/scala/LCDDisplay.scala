import chisel3._
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
}

import ILI9341SPI._

/** LCDディスプレイにカラーバーを表示するモジュールです。
  */
class LCDDisplay extends MultiIOModule {
  val lcdSpi = IO(new LcdSpiBundle)
  val vramAddr = IO(Output(UInt(17.W)))
  val vramData = IO(Input(UInt(16.W)))

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY   = 12000000.0
  // リセットを保持する時間
  val RESET_HOLD_TIME_SEC  = 0.00002      // 20usec
  // 電源待ち時間
  val WAIT_FOR_POWERUP_SEC = 0.2          // 200msec
  // スリープ解除待ち時間
  val WAIT_SLEEP_OUT_SEC   = 0.01         // 10msec

  // 初期化プログラムのROM
  val rom = Wire(Vec(initProgram.length, new ILI9341InstBundle))
  rom zip initProgram map { t =>
    val (romMem, inst) = t
    romMem.isData := inst._1
    romMem.value  := inst._2
  }

  /* ステート定義
   * リセット、電源待ち、スリープ解除待ち、初期化、アイドル */
  val (stateReset :: stateWaitForPowerUp :: stateSleepOut :: stateSendInit :: stateDisplay :: Nil) = Enum(5)
  val state = RegInit(stateReset)

  val ili9341Spi = Module(new ILI9341SPI)
  // デフォルト値
  ili9341Spi.sendData.bits.isData := false.B
  ili9341Spi.sendData.bits.value := 0.U
  ili9341Spi.sendData.valid := false.B

  val programCounter = RegInit(0.U(8.W))
  val isLowByte = RegInit(false.B)
  val (vramAddrWire, _) = Counter(state === stateDisplay && ili9341Spi.sendData.ready && isLowByte, 320 * 240)

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
      } otherwise {
        state := stateDisplay
      }
    }
  } .elsewhen (state === stateDisplay) {
    when (ili9341Spi.sendData.ready) {
      isLowByte := ~isLowByte
      ili9341Spi.sendData.bits.value := Mux(isLowByte,
        Cat(vramData(7, 5), vramData(15, 11)),
        Cat(vramData(4, 0), vramData(10, 8)))
      ili9341Spi.sendData.bits.isData := true.B
      ili9341Spi.sendData.valid := true.B
    }
  }

  lcdSpi <> ili9341Spi.lcdSpi
  when (state === stateReset) {
    lcdSpi.resetN := false.B
  }
  vramAddr := vramAddrWire
}
