import java.io.PrintWriter

import chisel3._
import chisel3.stage._

class IntegerArithmetic extends MultiIOModule {
  val a = IO(Input(UInt(4.W)))
  val b = IO(Input(UInt(4.W)))
  val result = IO(Output(UInt(8.W)))

  result := a * b
}

object VerilogEmitter extends App {
  val writer = new PrintWriter("target/IntegerArithmetic.v")
  writer.write(ChiselStage.emitVerilog(new IntegerArithmetic))
  writer.close()
}
