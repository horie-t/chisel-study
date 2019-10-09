import chisel3._

class BitwiseOperator extends Module {
  val io = IO(new Bundle {
    val input1      = Input(Bool())
    val input2      = Input(Bool())
    val bitwiseNot1 = Output(Bool())
    val bitwiseAnd  = Output(Bool())
    val bitwiseOr   = Output(Bool())
    val bitwiseXor  = Output(Bool())
  })

  io.bitwiseNot1 := ~io.input1
  io.bitwiseAnd  := io.input1 & io.input2
  io.bitwiseOr   := io.input1 | io.input2
  io.bitwiseXor  := io.input1 ^ io.input2
}

object BitwiseOperator extends App {
  chisel3.Driver.execute(args, () => new BitwiseOperator)
}