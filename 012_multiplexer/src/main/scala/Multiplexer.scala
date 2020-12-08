import java.io.PrintWriter

import chisel3._
import chisel3.stage.ChiselStage

class Multiplexer extends MultiIOModule {
  val condition = IO(Input(Bool()))
  val consequential = IO(Input(Bool()))
  val alternative = IO(Input(Bool()))
  val out = IO(Output(Bool()))

  out := Mux(condition, consequential, alternative)
}

object VerilogEmitter extends App {
  val writer = new PrintWriter("target/Multiplexer.v")
  writer.write(ChiselStage.emitVerilog(new Multiplexer))
  writer.close()
}
