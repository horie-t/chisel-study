import chisel3._
import chisel3.core.{Analog, withClock}
import chisel3.iotesters.PeekPokeTester
import chisel3.util._

/**
 * Bi-Directional Buffer (Xilinxのプリミティブ)
 */
class IOBUF extends BlackBox {
  val io = IO(new Bundle {
    val IO = Analog(1.W)                // 入出力ポート
    val I = Input(Bool())               // 入出力ポートに出力する値
    val O = Output(Bool())              // 入出力ポートからの入力値
    val T = Input(Bool())               // Tが真の時は出力 *しない*
  })
}

object IOBUF {
  def apply(pin: IobufPin): Analog = {
    val ioBuf = Module(new IOBUF())
    ioBuf.io.O <> pin.O
    ioBuf.io.I <> pin.I
    ioBuf.io.T <> pin.T
    ioBuf.io.IO
  }
}

class IobufPin extends Bundle {
  val O = Input(Bool())
  val I = Output(Bool())
  val T = Output(Bool())
}

class CmosCameraBundle extends Bundle {
  val systemClock = Output(Bool())       // カメラモジュールのシステムクロック(XCLK)
  val verticalSync = Input(Bool())       // 垂直同期信号
  val horizontalRef = Input(Bool())      // 水平基準線(trueの時にデータが有効)
  val pixelClock = Input(Bool())         // ピクセルクロック
  val pixcelData = Input(UInt(8.W))      // 画像データ(pixelCockの立ち上がりに読み込む)

  val sccb = new SccbBundle

  val resetN = Output(Bool())            // リセット
  val powerDown = Output(Bool())         // 電源断
}

class SccbBundle extends Bundle {
  val clock = Output(Bool())
  val data = new IobufPin
}

class Ov7670InstBundle extends Bundle {
  val regAddr = UInt(8.W)
  val value = UInt(8.W)
}

object Ov7670sccb {
  val clockFrequency = 100000000
  val sccbClockFrequency = 50000
}

class Ov7670sccb(clockFrequency: Int = Ov7670sccb.clockFrequency,
                 sccbClockFrequency: Int = Ov7670sccb.sccbClockFrequency) extends Module {
  val io = IO(new Bundle{
    val sccb = new SccbBundle
    val sendData = Flipped(DecoupledIO(new Ov7670InstBundle))
  })

  // ステート定義
  val (stateIdle:: stateStartBit :: stateSend :: stateStopBit :: stateWait:: Nil) = Enum(5)
  val state = RegInit(stateIdle)

  val (_, clockPhaseChange) = Counter(state =/= stateIdle, clockFrequency / sccbClockFrequency / 4)
  val (clockPhaseCount, stateChange) = Counter(clockPhaseChange, 4)

  val ipAddress = "h42".U(8.W)

  val sendDataWidth = 27
  val highImpedanceTiming = Reg(UInt(sendDataWidth.W))
  val sendData = Reg(UInt(sendDataWidth.W))
  val (_, sendDone) = Counter(state === stateSend && stateChange, sendDataWidth)
  val (_, waitDone) = Counter(state === stateWait && stateChange, 10)

  // 状態遷移
  when (state === stateIdle && io.sendData.valid) {
    state := stateStartBit
    sendData := Cat(ipAddress, false.B, io.sendData.bits.regAddr, false.B, io.sendData.bits.value, false.B)
    highImpedanceTiming := "b00000000_1_00000000_1_00000000_1".U
  } .elsewhen (stateChange) {
    when (state === stateStartBit) {
      state := stateSend
    } .elsewhen(state === stateSend) {
      sendData := sendData << 1.U
      highImpedanceTiming := highImpedanceTiming << 1.U
      when (sendDone) {
        state := stateStopBit
      }
    } .elsewhen(state === stateStopBit) {
      state := stateWait
    } .elsewhen(waitDone) {
      state := stateIdle
    }
  }

  // 出力
  io.sccb.clock := true.B
  io.sccb.data.I := true.B
  io.sccb.data.T := false.B

  when (state === stateStartBit) {
    io.sccb.clock := clockPhaseCount =/= 3.U
    io.sccb.data.I := false.B
    io.sccb.data.T := false.B
  } .elsewhen (state === stateSend) {
    io.sccb.clock := clockPhaseCount === 1.U || clockPhaseCount === 2.U
    io.sccb.data.I := sendData(26)
    io.sccb.data.T := highImpedanceTiming(26)
  } .elsewhen (state === stateStopBit) {
    io.sccb.clock := clockPhaseCount =/= 0.U
    io.sccb.data.I := false.B
    io.sccb.data.T := false.B
  }

  io.sendData.ready := state === stateIdle
}

class CMOSCamera extends Module {
  val io = IO(new Bundle{
    val cmosCam = new CmosCameraBundle
    val vramClock = Output(Clock())
    val vramEnable = Output(Bool())
    val vramWriteEnable = Output(Bool())
    val vramAddr = Output(UInt(18.W))
    val vramData = Output(UInt(8.W))

    // 暫定
    val sendData = Flipped(DecoupledIO(new Ov7670InstBundle))
  })

  val sccb = Module(new Ov7670sccb)

  // 暫定
  sccb.io.sendData <> io.sendData

  // CMOSカメラのsystemClock(25MHz)の生成
  val (_, systemClockPhaseChange) = Counter(true.B, 2)
  val systemClock = RegInit(true.B)
  when (systemClockPhaseChange) {
    systemClock := ~systemClock
  }

  // カメラの画像をVRAMに転送
  val pixelClock = io.cmosCam.pixelClock.asClock()
  withClock(pixelClock) {
    val x = RegInit(0.U(10.W))
    val y = RegInit(0.U(9.W))
    val isHighByte = RegInit(false.B)
    val hrefDownPulse = NegEdge(io.cmosCam.horizontalRef)

    when (io.cmosCam.horizontalRef) {
      isHighByte := ~isHighByte
      when (isHighByte) {
        x := x + 1.U
      }
    } .otherwise {
      isHighByte := false.B
      x := 0.U
    }

    when (hrefDownPulse) {
      y := y + 1.U
    } .elsewhen(io.cmosCam.verticalSync) {
      y := 0.U
    }

    io.vramClock := pixelClock
    io.vramEnable := true.B
    io.vramWriteEnable := io.cmosCam.horizontalRef && 0.U < x && x < 640.U && 0.U < y && y < 480.U
    io.vramAddr := (x(9, 1) * 240.U + y(8, 1)) * 2.U + isHighByte.asUInt()     // 縦横を逆にする。
    io.vramData := io.cmosCam.pixcelData
  }

  io.cmosCam.systemClock := systemClock
  io.cmosCam.sccb.clock := sccb.io.sccb.clock
  io.cmosCam.sccb.data <> sccb.io.sccb.data
  io.cmosCam.resetN := true.B
  io.cmosCam.powerDown := false.B
}

object CMOSCamera extends App {
  Driver.execute(args, () => new CMOSCamera)
}

class SccbTester(dut: Ov7670sccb) extends PeekPokeTester(dut) {
  val divide = 2
  // 初期状態
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  expect(dut.io.sendData.ready, true.B)

  poke(dut.io.sendData.valid, true.B)
  poke(dut.io.sendData.bits.regAddr, "h12".U)
  poke(dut.io.sendData.bits.value, "h14".U)
  step(1)

  // Start bit
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  expect(dut.io.sendData.ready, false.B)
  poke(dut.io.sendData.valid, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  /*
   * IP Address
   */
  // 7 bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 6 bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 5 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 4 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 3 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 2 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 1 bit
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 0 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // Z bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, true.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, true.B)
  step(1 * divide)

  /*
   * Reg Address
   */
  // 7 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 6 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 5 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 4 bit
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 3 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 2 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 1 bit
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 0 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // Z bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, true.B)
  step(4 * divide)

  /*
   * Reg Value
   */
  // 7 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 6 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 5 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 4 bit
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 3 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 2 bit
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 1 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 0 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // Z bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, true.B)
  step(4 * divide)

  // Stop bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // Wait
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sendData.ready, false.B)
  step(4 * 9 * divide)
  step(3 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sendData.ready, false.B)
  step(1 * divide)

  // Idle
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sendData.ready, true.B)
}

// テスト
object CMOSCameraTest extends App {
  chisel3.iotesters.Driver(() => new Ov7670sccb(8, 1)) { dut =>
    new SccbTester(dut)
  }
}