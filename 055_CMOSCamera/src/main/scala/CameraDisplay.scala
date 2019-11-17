import chisel3._
import chisel3.util._

class CameraDisplay extends Module {
  val io = IO(new Bundle{
    val lcdSpi = new LcdSpiBundle
    val cmosCam = new CmosCameraBundle
  })

  val lcdDisplay = Module(new LCDDisplay)
  val cmosCamera = Module(new CMOSCamera)

  io.lcdSpi <> lcdDisplay.io.lcdSpi
  io.cmosCam <> cmosCamera.io.cmosCam
}

object CameraDisplay extends App {
  Driver.execute(args, () => new CameraDisplay)
}