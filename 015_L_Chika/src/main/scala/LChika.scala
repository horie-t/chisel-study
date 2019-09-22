import chisel3._

/**
 * Lチカ。1秒おきに点灯と消灯を繰り返します。
 * スイッチを押している時だけ、点灯します。
 */
class LChika extends Module {
  val io = IO(new Bundle {
    val switch = Input(new Bool)
    val led    = Output(new Bool)
  })

  // クロック周波数
  val clockFrequency = 100000000

  val light = RegInit(true.B)
  val counter = RegInit(0.U(27.W))

  when (counter === (clockFrequency - 1).U) {
    // 1秒経過したら、カウントを0にしLEDの点灯状態を反転する。
    counter := 0.U
    light := ~light
  } .otherwise {
    counter := counter + 1.U
  }

  io.led := light & io.switch
}

object LChika extends App {
  chisel3.Driver.execute(args, () => new LChika)
}
