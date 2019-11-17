import chisel3._
import chisel3.util._

class CameraDisplay extends Module {
  val io = IO(new Bundle{
    val lcdSpi = new LcdSpiBundle
    val cmosCam = new CmosCameraBundle
  })

  val lcdDisplay = Module(new LCDDisplay)
  val cmosCamera = Module(new CMOSCamera)
  val vram = SyncReadMem(320 * 240 * 2, UInt(8.W))
  lcdDisplay.io.vramData := vram.read(lcdDisplay.io.vramAddr, true.B)

  io.lcdSpi <> lcdDisplay.io.lcdSpi
  io.cmosCam <> cmosCamera.io.cmosCam
}

object CameraDisplay extends App {
  Driver.execute(args, () => new CameraDisplay)
}