import chisel3._
import chisel3.core.Analog
import chisel3.util._

/**
 * Bi-Directional Buffer (Xilinxのプリミティブ)
 */
class IOBUF extends BlackBox {
  val io = new Bundle {
    val IO = Analog(1.W)                // 入出力ポート
    val O = Output(Bool())              // 入出力ポートに出力する値
    val I = Input(Bool())               // 入出力ポートからの入力値
    val T = Input(Bool())               // Tが真の時は出力 *しない*
  }
}

class CmosCameraBundle extends Bundle {
  val systemClock = Output(Bool())       // カメラモジュールのシステムクロック(XCLK)
  val verticalSync = Input(Bool())       // 垂直同期信号
  val horizontalRef = Input(Bool())      // 水平基準線(trueの時にデータが有効)
  val pixelclock = Input(Bool())         // ピクセルクロック
  val pixcelData = Input(UInt(8.W))      // 画像データ(pixelCockの立ち上がりに読み込む)

  val sccb = new SccbBundle

  val resetN = Output(Bool())            // リセット
  val powerDown = Output(Bool())         // 電源断
}

class SccbBundle extends Bundle {
  val clock = Output(Bool())
  val data = Output(Bool())
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


  // 状態遷移
  when(state === stateIdle && io.sendData.valid) {
    state := stateSend
  } .elsewhen(state === stateSend && sccbClockPhaseChange) {
    sccbClock := ~sccbClock
    // TODO: 実装
  }
}

class CMOSCamera extends Module {
  val io = IO(new Bundle{
    val cmosCam = new CmosCameraBundle
  })

  // CMOSカメラのsystemClock(25MHz)の生成
  val (_, systemClockPhaseChange) = Counter(true.B, 2)
  val systemClock = RegInit(true.B)
  when (systemClockPhaseChange) {
    systemClock := ~systemClock
  }

  // 暫定出力
  io.cmosCam.systemClock := systemClock
  io.cmosCam.sccb.clock := true.B
  io.cmosCam.sccb.data := true.B
  io.cmosCam.resetN := true.B
  io.cmosCam.powerDown := false.B
}

object CMOSCamera extends App {
  Driver.execute(args, () => new CMOSCamera)
}