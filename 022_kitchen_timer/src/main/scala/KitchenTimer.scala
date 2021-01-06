import java.io.PrintWriter

import chisel3._
import chisel3.util._
import chisel3.stage._

class KitchenTimer extends MultiIOModule {

}

class Seg7LEDBundle extends Bundle {
  val anodes = UInt(4.W)
  val cathodes = UInt(7.W)
  val colon = Bool()
}

class Seg7LED extends MultiIOModule {
  val digits = IO(Input(Vec(4, UInt(4.W))))
  val blink = IO(Input(Bool()))
  val seg7led = IO(Output(new Seg7LEDBundle))

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

  val (blinkCount, blinkToggle) = Counter(blink, CLOCK_FREQUENCY)
  val blinkLight = RegInit(true.B) // 点滅表示時に点灯するかどうか
  when (blinkToggle) {
    blinkLight := !blinkLight
  }

  when (!blink || blinkLight) {
    seg7led.anodes := anodesReg
    seg7led.colon := false.B
  } otherwise {
    seg7led.anodes := "hff".U
    seg7led.colon := true.B
  }
}


/**
  * Generate Verilog code.
  */
object VerilogEmitter extends App {
  val writer = new PrintWriter("target/KitchenTimer.v")
  writer.write(ChiselStage.emitVerilog(new KitchenTimer))
  writer.close()
}
