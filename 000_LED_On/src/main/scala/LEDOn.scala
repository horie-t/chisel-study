import chisel3._

class LEDOn extends Module {
  val io = IO(new Bundle() {
    val led = Output(new Bool)
  })

  io.led := true.B
}

object LEDOn extends App {
  chisel3.Driver.execute(args, () => new LEDOn)
}