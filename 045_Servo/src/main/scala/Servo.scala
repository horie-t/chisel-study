import chisel3._
import chisel3.util._

class Servo extends Module {
  val io = IO(new Bundle {
    val degree = Input(SInt(4.W))
    val servoPulse = Output(Bool())
  })

  val clockFrequency = 100000000
  val (_, pulseUnit) = Counter(true.B, clockFrequency / 10000)      // 0.1ms単位でパルス幅を変化させる
  val (pulseWidthCount, _) = Counter(pulseUnit, 10000 / 50)

  io.servoPulse := pulseWidthCount <= (io.degree + 15.S).asUInt()
}

object Servo extends App {
  chisel3.Driver.execute(args, () => new Servo)
}