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

    // 暫定I/O
    val sendData = Flipped(DecoupledIO(new Ov7670InstBundle))
    val seg7led = Output(new Seg7LEDBundle)
  })

  val lcdDisplay = Module(new LCDDisplay)
  val cmosCamera = Module(new CMOSCamera)
  val vram = Module(new Vram)

  // 暫定
  cmosCamera.io.sendData <> io.sendData
  cmosCamera.io.sendData.valid := Debounce(io.sendData.valid)
  val seg7led = Module(new Seg7LED)
  seg7led.io.digits := VecInit(Seq.fill(8) {0.U(4.W)})   // 4ビット * 8桁(デフォルトは0)
  seg7led.io.digits(0) := io.sendData.bits.value(3, 0)
  seg7led.io.digits(1) := io.sendData.bits.value(7, 4)
  seg7led.io.digits(2) := io.sendData.bits.regAddr(3, 0)
  seg7led.io.digits(3) := io.sendData.bits.regAddr(7, 4)
  seg7led.io.blink := false.B
  io.seg7led <> seg7led.io.seg7led

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