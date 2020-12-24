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

/**
  * Generate Verilog code.
  */
object VerilogEmitter extends App {
  val writer = new PrintWriter("target/Seg7LED1Digit.v")
  writer.write(ChiselStage.emitVerilog(new Seg7LED1Digit))
  writer.close()
}
