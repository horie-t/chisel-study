import java.io.PrintWriter

import chisel3._
import chisel3.experimental.{ExtModule, Analog}
import chisel3.stage._

class Vram extends ExtModule {
  val clka = IO(Input(Clock()))
  val ena = IO(Input(Bool()))
  val wea = IO(Input(Bool()))
  val addra = IO(Input(UInt(17.W)))
  val dina = IO(Input(UInt(16.W)))
  val clkb = IO(Input(Clock()))
  val addrb = IO(Input(UInt(17.W)))
  val doutb = IO(Output(UInt(16.W)))
}

class CameraDisplay extends MultiIOModule {
  val lcdSpi = IO(new LcdSpiBundle)
  val cmosCam = IO(new Bundle {
    val systemClock = Output(Bool())       // カメラモジュールのシステムクロック(XCLK)
    val verticalSync = Input(Bool())       // 垂直同期信号
    val horizontalRef = Input(Bool())      // 水平基準線(trueの時にデータが有効)
    val pixelClock = Input(Bool())         // ピクセルクロック
    val pixcelData = Input(UInt(8.W))      // 画像データ(pixelCockの立ち上がりに読み込む)

    val sccb = new Bundle {
      val clock = Output(Bool())
      val ioBuf = Analog(1.W)
    }

    val resetN = Output(Bool())            // リセット
    val powerDown = Output(Bool())         // 電源断
  })

  val lcdDisplay = Module(new LCDDisplay)
  val cmosCamera = Module(new CMOSCamera)
  val vram = Module(new Vram)

  vram.clka := cmosCamera.vramClock
  vram.ena := cmosCamera.vramEnable
  vram.wea := cmosCamera.vramWriteEnable
  vram.addra := cmosCamera.vramAddr
  vram.dina := cmosCamera.vramData

  vram.clkb := clock
  vram.addrb := lcdDisplay.vramAddr
  lcdDisplay.vramData := vram.doutb

  lcdSpi <> lcdDisplay.lcdSpi

  cmosCam.systemClock <> cmosCamera.cmosCam.systemClock
  cmosCam.verticalSync <> cmosCamera.cmosCam.verticalSync
  cmosCam.horizontalRef <> cmosCamera.cmosCam.horizontalRef
  cmosCam.pixelClock <> cmosCamera.cmosCam.pixelClock
  cmosCam.pixcelData <> cmosCamera.cmosCam.pixcelData
  cmosCam.sccb.clock <> cmosCamera.cmosCam.sccb.clock
  cmosCam.sccb.ioBuf <> IOBUF(cmosCamera.cmosCam.sccb.data)
  cmosCam.resetN <> cmosCamera.cmosCam.resetN
  cmosCam.powerDown <> cmosCamera.cmosCam.powerDown
}


/**
  * Generate Verilog code.
  */
object VerilogEmitter extends App {
  val writer = new PrintWriter("target/CameraDisplay.v")
  writer.write(ChiselStage.emitVerilog(new CameraDisplay))
  writer.close()
}