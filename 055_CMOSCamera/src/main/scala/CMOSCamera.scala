import chisel3._
import chisel3.core.{Analog, withClock}
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
  val data = Analog(1.W)
}

class Ov7670InstBundle extends Bundle {
  val regAddr = UInt(8.W)
  val value = UInt(8.W)
}

class Ov7670sccb extends Module {
  val io = IO(new Bundle{
    val sccb = new SccbBundle
    val sendData = Flipped(DecoupledIO(new Ov7670InstBundle))
  })

  val clockFrequency     = 100000000   // 100MHz
  val sccbClockFrequency =    200000   // 200kHz

  // ステート定義
  val (stateIdle :: stateSend :: Nil) = Enum(2)
  val state = RegInit(stateIdle)

  val (_, sccbClockPhaseChange) = Counter(state === stateSend, clockFrequency / sccbClockFrequency / 2)
  val sccbClock = RegInit(true.B)

  // 1回の送信データ(Start Bit, Stop Bit, (8bit(データ) + 1bit(Don't care bit) x 3 byte)
  val sendData = RegInit(0.U(29.W))
  val sendCount = RegInit(0.U(5.W))
  val doNotCareTiming = "b0_00000000_1_00000000_1_00000000_1_0".U

  val ipAddress = "h42".U(8.W)

  // 状態遷移
  when(state === stateIdle && io.sendData.valid) {
    state := stateSend
    sendData := Cat(0.U(1.W), ipAddress, 0.U(1), io.sendData.bits.regAddr, 0.U(1.W), io.sendData.bits.value, 0.U(1.W))
    sendCount := 0.U
  } .elsewhen(state === stateSend && sccbClockPhaseChange) {
    sccbClock := ~sccbClock

    when (sccbClock) {
      sendCount := sendCount + 1.U
      when (sendCount === 28.U) {
        state := stateIdle
      }
    }
  }

  val ioBuf = Module(new IOBUF)
  when (state === stateSend) {
    ioBuf.io.O := sendData(sendCount)
    ioBuf.io.T := doNotCareTiming(sendCount)
  } .otherwise {
    ioBuf.io.O := true.B
    ioBuf.io.T := false.B
  }

  io.sendData.ready := state === stateIdle
  io.sccb.clock := sccbClock
  io.sccb.data <> ioBuf.io.IO
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
    val x = RegInit(0.U(9.W))
    val y = RegInit(0.U(8.W))
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
    io.vramWriteEnable := io.cmosCam.horizontalRef
    io.vramAddr := (x * 240.U + y) * 2.U + isHighByte.asUInt()     // 縦横を逆にする。
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