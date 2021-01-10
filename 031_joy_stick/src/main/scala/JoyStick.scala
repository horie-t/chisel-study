import java.io.PrintWriter

import chisel3._
import chisel3.stage._
import chisel3.util._

/** ジョイスティックの入力を7セグメントLEDで表示
  */
class JoyStick extends MultiIOModule {
  val spi = IO(new SpiBundle)
  val seg7led = IO(new Seg7LEDBundle)

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY = 12000000
  val (count, measureSig) = Counter(true.B, CLOCK_FREQUENCY)  // 1秒に1回測定する

  /*
   * A/Dコンバータによる測定
   */
  val mcp3008Interface = Module(new Mcp3008Interface)
  // 入力
  val configValue = WireInit("b1000".U)
  mcp3008Interface.config.bits := configValue
  mcp3008Interface.config.valid := mcp3008Interface.config.ready & measureSig
  // 出力
  spi <> mcp3008Interface.spi

  val measureResult = RegInit(0.U(10.W))
  when (mcp3008Interface.data.valid) {
    measureResult := mcp3008Interface.data.bits
  }

  /*
   * 測定結果の表示
   */
  val seg7ledModule = Module(new Seg7LED)
  // 入力
  seg7ledModule.digits(0) := 0.U
  seg7ledModule.digits(1) := 0.U
  seg7ledModule.digits(2) := measureResult(5, 2)
  seg7ledModule.digits(3) := measureResult(9, 6)

  seg7ledModule.blink := false.B

  // 出力
  seg7led := seg7ledModule.seg7led
}

/** SPIインタフェース用のBundle
  */
class SpiBundle extends Bundle {
  val nCs = Output(Bool())
  val sclk = Output(Bool())
  val mosi = Output(Bool())
  val miso = Input(Bool())
}

class Mcp3008Interface extends MultiIOModule {
  val config = IO(Flipped(Decoupled(UInt(4.W))))
  val data = IO(Valid(UInt(10.W)))
  val spi = IO(new SpiBundle)

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY = 12000000
  // SPIのクロック周波数
  val SCLK_FREQUENCY = 1000000

  /* ステート定義
  *  アイドル状態、スタートビット、コンフィギュレーション送信、サンプリング・A/D変換、
  *  NullBit受信、データ受信、再測定可能待ち */
  val sIDLE :: sSTART :: sSEND :: sSAMPLING :: sNULLBIT :: sRECEIVE :: sWAIT :: Nil = Enum(7)
  val state = RegInit(sIDLE)

  val (count, sclkPhaseChange) = Counter(true.B, (CLOCK_FREQUENCY / SCLK_FREQUENCY) / 2)
  val sclk = RegInit(true.B)
  when (state === sIDLE && config.valid) {
    sclk := false.B
  } .elsewhen (state =/= sIDLE && sclkPhaseChange) {
    sclk := ~sclk
  }

  /* コンフィギュレーションデータ */
  val configReg = RegInit(0.U(4.W))
  /* 受信データ */
  val receiveValue = RegInit(VecInit(Seq.fill(10){ 0.U(1.W) }))
  val received = RegInit(false.B)

  /*
   * ステートマシン
   */
  val sendCount = RegInit(0.U(2.W))
  val receiveCount = RegInit(0.U(4.W))

  val changeState = sclkPhaseChange & sclk
  when (state === sIDLE) {
    when (config.valid) {
      state := sSTART
      configReg := config.bits
      received := false.B
    }
  } .elsewhen (changeState) {
    when (state === sSTART) {
      state := sSEND
      sendCount := 0.U
    } .elsewhen (state === sSEND) {
      when (sendCount === 3.U) {
        state := sSAMPLING
      } .otherwise {
        sendCount := sendCount + 1.U
      }
    } .elsewhen (state === sSAMPLING) {
      state := sNULLBIT
    } .elsewhen (state === sNULLBIT) {
      state := sRECEIVE
      receiveCount := 0.U
    } .elsewhen (state === sRECEIVE) {
      when (receiveCount === 9.U) {
        state := sWAIT
      } .otherwise {
        receiveCount := receiveCount + 1.U
        received := true.B
      }
    } .elsewhen (state === sWAIT) {
      state := sIDLE
    }
  }

  /*
   * 受信処理
   */
  when (state === sRECEIVE && (sclkPhaseChange & !sclk)) {
    receiveValue(receiveCount) := spi.miso
  }

  /*
   * 出力
   */
  config.ready := state === sIDLE

  data.valid := received
  data.bits := Reverse(receiveValue.asUInt())

  spi.sclk := sclk
  spi.nCs := state === sIDLE || state === sWAIT

  spi.mosi := true.B
  when (state === sSEND) {
    spi.mosi := Reverse(configReg)(sendCount)
  }
}

/** 7セグメントLEDへの出力信号の束(Bundle)
  */
class Seg7LEDBundle extends Bundle {
  val anodes = Output(UInt(4.W))
  val cathodes = Output(UInt(7.W))
  val colon = Output(Bool())
}

/** 7セグメントLED表示モジュール。時計表示版
  */
class Seg7LED extends MultiIOModule {
  val digits = IO(Input(Vec(4, UInt(4.W))))     // 時刻の4桁の数値
  val blink = IO(Input(Bool()))                 // 点滅表示させるかどうか
  val seg7led = IO(new Seg7LEDBundle)   // LEDへの出力

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY = 12000000
  /* 各桁を切り替える時間のカウンタ
   * Counterは、引数にカウントアップする条件(cond)、カウントする数(n, 0〜n-1までカウントする)をとり、
   * 現在のカウント数の値の信号、n-1にカウントアップした時ににtrue.Bになる信号のタプルを返します。
   * カウントアップ条件にtrue.Bを渡すと、毎クロックカウントアップします。 */
  val (digitChangeCount, digitChange) = Counter(true.B, CLOCK_FREQUENCY / 1000)
  val (digitIndex, digitWrap) = Counter(digitChange, 4) // 何桁目を表示するか
  val digitNum = digits(digitIndex)        // 表示桁の数値

  seg7led.cathodes := MuxCase("b111_1111".U,
    Array(                 // ABC_DEFG の順序にcathodeが並ぶ
      (digitNum === "h0".U) -> "b000_0001".U,
      (digitNum === "h1".U) -> "b100_1111".U,
      (digitNum === "h2".U) -> "b001_0010".U,
      (digitNum === "h3".U) -> "b000_0110".U,
      (digitNum === "h4".U) -> "b100_1100".U,
      (digitNum === "h5".U) -> "b010_0100".U,
      (digitNum === "h6".U) -> "b010_0000".U,
      (digitNum === "h7".U) -> "b000_1101".U,
      (digitNum === "h8".U) -> "b000_0000".U,
      (digitNum === "h9".U) -> "b000_0100".U,
      (digitNum === "ha".U) -> "b000_1000".U,
      (digitNum === "hb".U) -> "b110_0000".U,
      (digitNum === "hc".U) -> "b011_0001".U,
      (digitNum === "hd".U) -> "b100_0010".U,
      (digitNum === "he".U) -> "b011_0000".U,
      (digitNum === "hf".U) -> "b011_1000".U))

  val anodesReg = RegInit("b0001".U(4.W))
  when (digitChange) {
    // 表示桁の切り替えタイミングで、ローテートシフト
    anodesReg := Cat(anodesReg(2, 0), anodesReg(3))
  }

  // 点滅表示の制御
  val (blinkCount, blinkToggle) = Counter(blink, CLOCK_FREQUENCY)
  val blinkLight = RegInit(true.B) // 点滅表示時に点灯するかどうか
  when (blinkToggle) {
    blinkLight := !blinkLight
  }

  when (!blink || blinkLight) {
    // 点灯させる
    seg7led.anodes := anodesReg
    seg7led.colon := false.B
  } otherwise {
    // 点灯させない
    seg7led.anodes := "h00".U
    seg7led.colon := true.B
  }
}

/**
  * Generate Verilog code.
  */
object VerilogEmitter extends App {
  val writer = new PrintWriter("target/JoyStick.v")
  writer.write(ChiselStage.emitVerilog(new JoyStick))
  writer.close()
}
