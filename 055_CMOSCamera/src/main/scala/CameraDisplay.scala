import chisel3._
import chisel3.util._

class Vram extends BlackBox {
  val io = IO(new Bundle{
    val clka = Input(Clock())
    val ena = Input(Bool())
    val wea = Input(Bool())
    val addra = Input(UInt(18.W))
    val dina = Input(UInt(8.W))
    val clkb = Input(Clock())
    val addrb = Input(UInt(18.W))
    val doutb = Output(UInt(8.W))
  })

}

class CameraDisplay extends Module {
  val io = IO(new Bundle{
    val lcdSpi = new LcdSpiBundle
    val cmosCam = new CmosCameraBundle
  })

  val lcdDisplay = Module(new LCDDisplay)
  val cmosCamera = Module(new CMOSCamera)
  val vram = Module(new Vram)

  vram.io.clka := cmosCamera.io.vramClock
  vram.io.ena := cmosCamera.io.vramEnable
  vram.io.wea := cmosCamera.io.vramWriteEnable
  vram.io.addra := cmosCamera.io.vramAddr
  vram.io.dina := cmosCamera.io.vramData

  vram.io.clkb := clock
  vram.io.addrb := lcdDisplay.io.vramAddr
  lcdDisplay.io.vramData := vram.io.doutb

  io.lcdSpi <> lcdDisplay.io.lcdSpi
  io.cmosCam <> cmosCamera.io.cmosCam
}

object CameraDisplay extends App {
  Driver.execute(args, () => new CameraDisplay)
}