import java.io.PrintWriter

import chisel3._
import chisel3.stage._

class LChika extends MultiIOModule {
  val led = IO(Output(Bool()))

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY = 12000000

  // LEDのON/OFFの状態(trueで点灯、falseで消灯)
  val ledStatus = RegInit(true.B)

  // クロックのカウンタ。(1秒分のクロックをカウントアップしたい。0からカウントするので1を引いている)
  val MAX_CLOCK_COUNT = (CLOCK_FREQUENCY - 1).U
  val counter = RegInit(0.U(MAX_CLOCK_COUNT.getWidth.W))


  when (counter === MAX_CLOCK_COUNT) {
    // 1秒分、カウントしたらLEDの状態を反転させる
    ledStatus := ~ledStatus
    // カウントを0に戻す
    counter := 0.U
  } .otherwise {
    // クロック毎に1カウント増やす
    counter := counter + 1.U
  }

  led := ledStatus
}

/**
  * Generate Verilog code.
  */
object VerilogEmitter extends App {
  val writer = new PrintWriter("target/LChika.v")
  writer.write(ChiselStage.emitVerilog(new LChika))
  writer.close()
}
