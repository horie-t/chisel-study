import java.io.PrintWriter

import chisel3._
import chisel3.stage._
import chisel3.util._

class ServoMotor extends MultiIOModule {
  val spi = IO(new SpiBundle)
  val servoXYBundle = IO(new ServoXYBundle)

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY = 12000000
  // 測定の周波数(10Hz。0.1秒に1回測定)
  val MEASURE_FREQUENCY = 10
  val (count, measureSig) = Counter(true.B, CLOCK_FREQUENCY / MEASURE_FREQUENCY)

  /*
   * A/Dコンバータによる測定
   */
  val (sIdle :: sMeasure:: Nil) = Enum(2)
  val measureState = RegInit(sIdle)
  val configValues = VecInit(WireInit("b1000".U), WireInit("b1001".U))
  val channel = RegInit(0.U(1.W))
  val mcp3008Interface = Module(new Mcp3008Interface)
  mcp3008Interface.config.valid := false.B
  mcp3008Interface.config.bits := 0.U

  val measureResults = Reg(Vec(2, UInt(10.W)))
  when (measureState === sIdle && mcp3008Interface.config.ready & measureSig) {
    measureState := sMeasure
    mcp3008Interface.config.bits := configValues(channel)
    mcp3008Interface.config.valid := true.B
  } .elsewhen(measureState === sMeasure && mcp3008Interface.data.valid) {
    measureState := sIdle
    measureResults(channel) := mcp3008Interface.data.bits
    channel := channel + 1.U
  }
  // 出力
  spi <> mcp3008Interface.spi

  val servoXYPWM = Module(new ServoXYPWM)
  servoXYPWM.xInput := measureResults(1)
  servoXYPWM.yInput := measureResults(0)
  servoXYBundle := servoXYPWM.servoXYBundle
}

/** SPIインタフェース用のBundle
  */
class SpiBundle extends Bundle {
  val nCs = Output(Bool())
  val sclk = Output(Bool())
  val mosi = Output(Bool())
  val miso = Input(Bool())
}

class Mcp3008Interface extends MultiIOModule {
  val config = IO(Flipped(Decoupled(UInt(4.W))))
  val data = IO(Valid(UInt(10.W)))
  val spi = IO(new SpiBundle)

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY = 12000000
  // SPIのクロック周波数
  val SCLK_FREQUENCY = 1000000

  /* ステート定義
  *  アイドル状態、スタートビット、コンフィギュレーション送信、サンプリング・A/D変換、
  *  NullBit受信、データ受信、再測定可能待ち */
  val sIDLE :: sSTART :: sSEND :: sSAMPLING :: sNULLBIT :: sRECEIVE :: sWAIT :: Nil = Enum(7)
  val state = RegInit(sIDLE)

  val (count, sclkPhaseChange) = Counter(true.B, (CLOCK_FREQUENCY / SCLK_FREQUENCY) / 2)
  val sclk = RegInit(true.B)
  when (state === sIDLE && config.valid) {
    sclk := false.B
  } .elsewhen (state =/= sIDLE && sclkPhaseChange) {
    sclk := ~sclk
  }

  /* コンフィギュレーションデータ */
  val configReg = RegInit(0.U(4.W))
  /* 受信データ */
  val receiveValue = RegInit(VecInit(Seq.fill(10){ 0.U(1.W) }))
  val received = RegInit(false.B)

  /*
   * ステートマシン
   */
  val sendCount = RegInit(0.U(2.W))
  val receiveCount = RegInit(0.U(4.W))

  val changeState = sclkPhaseChange & sclk
  when (state === sIDLE) {
    when (config.valid) {
      state := sSTART
      configReg := config.bits
      received := false.B
    }
  } .elsewhen (changeState) {
    when (state === sSTART) {
      state := sSEND
      sendCount := 0.U
    } .elsewhen (state === sSEND) {
      when (sendCount === 3.U) {
        state := sSAMPLING
      } .otherwise {
        sendCount := sendCount + 1.U
      }
    } .elsewhen (state === sSAMPLING) {
      state := sNULLBIT
    } .elsewhen (state === sNULLBIT) {
      state := sRECEIVE
      receiveCount := 0.U
    } .elsewhen (state === sRECEIVE) {
      when (receiveCount === 9.U) {
        state := sWAIT
        received := true.B
      } .otherwise {
        receiveCount := receiveCount + 1.U
      }
    } .elsewhen (state === sWAIT) {
      state := sIDLE
    }
  }

  /*
   * 受信処理
   */
  when (state === sRECEIVE && (sclkPhaseChange & !sclk)) {
    receiveValue(receiveCount) := spi.miso
  }

  /*
   * 出力
   */
  config.ready := state === sIDLE

  data.valid := received
  data.bits := Reverse(receiveValue.asUInt())

  spi.sclk := sclk
  spi.nCs := state === sIDLE || state === sWAIT

  spi.mosi := true.B
  when (state === sSEND) {
    spi.mosi := Reverse(configReg)(sendCount)
  }
}

class ServoXYBundle extends Bundle {
  val x = Output(Bool())
  val y = Output(Bool())
}

class ServoXYPWM extends MultiIOModule {
  val xInput = IO(Input(UInt(10.W)))
  val yInput = IO(Input(UInt(10.W)))
  val servoXYBundle = IO(new ServoXYBundle)

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY = 12000000
  val PWM_PERIOD_FREQUENCY = 50   // 50HzでPWMの信号を送る
  val (count, _) = Counter(true.B, CLOCK_FREQUENCY / PWM_PERIOD_FREQUENCY)
  val PWM_BASE_COUNT = (CLOCK_FREQUENCY / (1 / 0.0005)).toInt
  val UNIT_COUNT = (CLOCK_FREQUENCY / (1 / ((0.0024 - 0.0005) / 1024))).toInt

  servoXYBundle.x := count <= (PWM_BASE_COUNT.U + UNIT_COUNT.U * xInput)
  servoXYBundle.y := count <= (PWM_BASE_COUNT.U + UNIT_COUNT.U * yInput)
}

/**
  * Generate Verilog code.
  */
object VerilogEmitter extends App {
  val writer = new PrintWriter("target/ServoMotor.v")
  writer.write(ChiselStage.emitVerilog(new ServoMotor))
  writer.close()
}
