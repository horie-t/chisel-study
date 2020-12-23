import java.io.PrintWriter

import chisel3._
import chisel3.stage._
import chisel3.util._

class Debounce extends MultiIOModule {
  val in = IO(Input(Bool()))
  val out = IO(Output(Bool()))

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY = 12000000
  val (count, enable) = Counter(true.B, CLOCK_FREQUENCY / 20) // 0.05秒分カウントする

  val reg0 = RegEnable(in, false.B, enable)
  val reg1 = RegEnable(reg0, false.B, enable)

  out := in && reg0 && !reg1 && enable
}

class LedOnOffTactileSwitch extends MultiIOModule {
  val tactileSwitch = IO(Input(Bool()))
  val led = IO(Output(Bool()))

  val ledStatus = RegInit(false.B)

  val debounce = Module(new Debounce)
  debounce.in := tactileSwitch

  when (debounce.out) {
    ledStatus := ~ledStatus
  }

  led := ledStatus
}

object Debounce {
  def apply(in: Bool): Bool = {
    val debounce = Module(new Debounce)
    debounce.in := in
    debounce.out
  }
}

class LedOnOffTactileSwitch2 extends MultiIOModule {
  val tactileSwitch = IO(Input(Bool()))
  val led = IO(Output(Bool()))

  val ledStatus = RegInit(false.B)
  when (Debounce(tactileSwitch)) {
    ledStatus := ~ledStatus
  }

  led := ledStatus
}


/**
  * Generate Verilog code.
  */
object VerilogEmitter extends App {
  val writer = new PrintWriter("target/LedOnOffTactileSwitch.v")
  writer.write(ChiselStage.emitVerilog(new LedOnOffTactileSwitch))
  writer.close()
}
