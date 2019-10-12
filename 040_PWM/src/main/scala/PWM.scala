import chisel3._
import chisel3.util.Counter

class PwmMotorDrive extends Module {
  val io = IO(new Bundle {
    val dir = Input(Bool())
    val speed = Input(UInt(3.W))
    val driverIn1 = Output(Bool())
    val driverIn2 = Output(Bool())
  })

  // クロック周波数(100MHz)
  val clockFreq = 100000000
  // PWM パルス周波数(1kHz)
  val pulseFreq = 1000
  // パルス幅の段階の数
  val pulseWidthResolution = 7

  val (clockCount, changePulse) = Counter(true.B, clockFreq / pulseFreq / pulseWidthResolution)
  val (widthCount, widthWrap) = Counter(changePulse, pulseWidthResolution)

  when (io.speed === 0.U) {
    io.driverIn1 := false.B
    io.driverIn2 := false.B
  } .otherwise {
    when (io.dir) {
      io.driverIn1 := widthCount <= io.speed - 1.U
      io.driverIn2 := false.B
    } .otherwise {
      io.driverIn1 := false.B
      io.driverIn2 := widthCount <= io.speed - 1.U
    }
  }
}

object PwmMotorDrive extends App {
  chisel3.Driver.execute(args, () => new PwmMotorDrive)
}