import chisel3._
import chisel3.util._

class CmosCameraBundle extends Bundle {
  val systemClock = Output(Bool())       // カメラモジュールのシステムクロック(XCLK)
  val verticalSync = Input(Bool())       // 垂直同期信号
  val horizontalRef = Input(Bool())      // 水平基準線(trueの時にデータが有効)
  val pixelclock = Input(Bool())         // ピクセルクロック
  val pixcelData = Input(UInt(8.W))      // 画像データ(pixelCockの立ち上がりに読み込む)

  val sccbClock = Output(Bool())         // SCCBのシリアルクロック
  val sccbData = Output(Bool())          // SCCBのデータ

  val resetN = Output(Bool())            // リセット
  val powerDown = Output(Bool())         // 電源断
}

class CMOSCamera extends Module {
  val io = IO(new Bundle{
    val cmosCam = new CmosCameraBundle
  })

  // 暫定出力
  io.cmosCam.systemClock := true.B
  io.cmosCam.sccbClock := true.B
  io.cmosCam.sccbData := true.B
  io.cmosCam.resetN := true.B
  io.cmosCam.powerDown := false.B
}

object CMOSCamera extends App {
  Driver.execute(args, () => new CMOSCamera)
}