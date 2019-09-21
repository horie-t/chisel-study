import chisel3._

class LedSwitch extends Module {
  val io = IO(new Bundle {
    val switch = Input(Bool())
    val led    = Output(Bool())
  })

  io.led := io.switch
}

object LedSwitch extends App {
  chisel3.Driver.execute(args, () => new LedSwitch)
}