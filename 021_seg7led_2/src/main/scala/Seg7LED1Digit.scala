import java.io.PrintWriter

import chisel3._
import chisel3.util._
import chisel3.stage._

class Seg7LED1Digit extends MultiIOModule {
  val digit = IO(Input(UInt(4.W)))
  val anode = IO(Output(UInt(1.W)))
  val cathodes = IO(Output(UInt(7.W)))

  anode := true.B

  cathodes := MuxCase("b111_1111".U,
    Array(                 // ABC_DEFG の順序にcathodeが並ぶ
      (digit === "h0".U) -> "b000_0001".U,
      (digit === "h1".U) -> "b100_1111".U,
      (digit === "h2".U) -> "b001_0010".U,
      (digit === "h3".U) -> "b000_0110".U,
      (digit === "h4".U) -> "b100_1100".U,
      (digit === "h5".U) -> "b010_0100".U,
      (digit === "h6".U) -> "b010_0000".U,
      (digit === "h7".U) -> "b000_1101".U,
      (digit === "h8".U) -> "b000_0000".U,
      (digit === "h9".U) -> "b000_0100".U,
      (digit === "ha".U) -> "b000_1000".U,
      (digit === "hb".U) -> "b110_0000".U,
      (digit === "hc".U) -> "b011_0001".U,
      (digit === "hd".U) -> "b100_0010".U,
      (digit === "he".U) -> "b011_0000".U,
      (digit === "hf".U) -> "b011_1000".U))
}

class Seg7LED4Digit extends MultiIOModule {
  val digits = IO(Input(Vec(4, UInt(4.W))))
  val anodes = IO(Output(UInt(4.W)))
  val cathodes = IO(Output(UInt(7.W)))

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY = 12000000
  /* 各桁を切り替える時間のカウンタ
   * Counterは、引数にカウントアップする条件(cond)、カウントする数(n, 0〜n-1までカウントする)をとり、
   * 現在のカウント数の値の信号、n-1にカウントアップした時ににtrue.Bになる信号のタプルを返します。
   * カウントアップ条件にtrue.Bを渡すと、毎クロックカウントアップします。 */
  val (digitChangeCount, digitChange) = Counter(true.B, CLOCK_FREQUENCY / 1000)
  val (digitIndex, digitWrap) = Counter(digitChange, 4) // 何桁目を表示するか
  val digitNum = digits(digitIndex)        // 表示桁の数値

  cathodes := MuxCase("b111_1111".U,
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
  anodes := anodesReg
}

/**
  * Generate Verilog code.
  */
object VerilogEmitter extends App {
  val writer = new PrintWriter("target/Seg7LED4Digit.v")
  writer.write(ChiselStage.emitVerilog(new Seg7LED4Digit))
  writer.close()
}
