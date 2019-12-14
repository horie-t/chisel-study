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
    val O = Input(Bool())              // 入出力ポートに出力する値
    val I = Output(Bool())               // 入出力ポートからの入力値
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
  val O = Output(Bool())
  val I = Input(Bool())
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

class Ov7670sccb(clockFrequency: Int = 100000000, sccbClockFrequency: Int = 200000) extends Module {
  val io = IO(new Bundle{
    val sccb = new SccbBundle
    val sendData = Flipped(DecoupledIO(new Ov7670InstBundle))
  })

  // ステート定義
  val (stateIdle :: stateSend :: Nil) = Enum(2)
  val state = RegInit(stateIdle)

  val (_, sccbClockPhaseChange) = Counter(state === stateSend, clockFrequency / sccbClockFrequency / 2)
  val sccbClock = RegInit(true.B)

  // 1回の送信データ(Start Bit, Stop Bit, (8bit(データ) + 1bit(Don't care bit) x 3 byte)
  val sendData = RegInit(0.U(29.W))
  val sendIndex = RegInit(0.U(5.W))
  val doNotCareTiming = "b0_00000000_1_00000000_1_00000000_1_0".U

  val ipAddress = "h42".U(8.W)

  // 状態遷移
  when(state === stateIdle && io.sendData.valid) {
    state := stateSend
    sendData := Cat(0.U(1.W), ipAddress, 0.U(1.W), io.sendData.bits.regAddr, 0.U(1.W), io.sendData.bits.value, 0.U(1.W), 0.U(1.W))
    sendIndex := 28.U
  } .elsewhen(state === stateSend && sccbClockPhaseChange) {
    sccbClock := ~sccbClock

    when (sccbClock) {
      sendIndex := sendIndex - 1.U
      when (sendIndex === 0.U) {
        state := stateIdle
        sccbClock := true.B
      }
    }
  }

  io.sendData.ready := state === stateIdle
  io.sccb.clock := sccbClock
  io.sccb.data.O := true.B
  io.sccb.data.T := false.B
  when (state === stateSend) {
    io.sccb.data.O := sendData(sendIndex)
    io.sccb.data.T := doNotCareTiming(sendIndex)
  }
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
  // 初期状態
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.O, true.B)
  expect(dut.io.sccb.data.T, false.B)
  expect(dut.io.sendData.ready, true.B)

  poke(dut.io.sendData.valid, true.B)
  poke(dut.io.sendData.bits.regAddr, "h12".U)
  poke(dut.io.sendData.bits.value, "h11".U)
  step(1)

  // sendへの状態遷移を確認(start bit)(1)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.O, false.B)
  expect(dut.io.sccb.data.T, false.B)
  poke(dut.io.sendData.valid, false.B)
  step(2)

  // 1st bit(3)
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.O, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(2)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.O, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(2)

  // 2nd bit(7)
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.O, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(2)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.O, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(2)

  // 3rd bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.O, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(2)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.O, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(2)

  // 4th bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.O, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4)

  // 5th bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.O, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4)

  // 6th bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.O, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4)

  // 7th bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.O, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4)

  // 8th bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.O, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4)

  // 9th bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.O, false.B)
  expect(dut.io.sccb.data.T, true.B)
  step(4)

  step(4 * 18)

  // 28th bit
  expect(dut.io.sccb.clock, false.B)
  step(4)

  // idle
  expect(dut.io.sccb.clock, true.B)
  step(4)
  expect(dut.io.sccb.clock, true.B)
}

// テスト
object CMOSCameraTest extends App {
  chisel3.iotesters.Driver(() => new Ov7670sccb(4, 1)) { dut =>
    new SccbTester(dut)
  }
}