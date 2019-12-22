import chisel3._
import chisel3.core.Analog
import chisel3.util._

class Vram extends BlackBox {
  val io = IO(new Bundle{
    val clka = Input(Clock())
    val ena = Input(Bool())
    val wea = Input(Bool())
    val addra = Input(UInt(17.W))
    val dina = Input(UInt(16.W))
    val clkb = Input(Clock())
    val addrb = Input(UInt(17.W))
    val doutb = Output(UInt(16.W))
  })

}

import Ov7670sccb._

class CameraDisplay extends Module {
  val io = IO(new Bundle{
    val lcdSpi = new LcdSpiBundle
    val cmosCam = new Bundle {
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
    }

    // 暫定I/O
    val sendData = Flipped(DecoupledIO(new Ov7670InstBundle))
    val init = Input(Bool())
    val seg7led = Output(new Seg7LEDBundle)
  })

  val lcdDisplay = Module(new LCDDisplay)
  val cmosCamera = Module(new CMOSCamera)
  val vram = Module(new Vram)

  // 暫定
  val rom = Wire(Vec(initProgram.length, new Bundle{
    val reg = UInt(8.W)
    val value = UInt(8.W)
  }))
  rom zip initProgram map { t =>
    val (romMem, inst) = t
    romMem.reg := inst._1
    romMem.value  := inst._2
  }
  val programCounter = RegInit(0.U(8.W))

  val (stateIdle :: stateIinit :: Nil) = Enum(2)
  val state = RegInit(stateIdle)

  cmosCamera.io.sendData <> io.sendData
  cmosCamera.io.sendData.valid := Debounce(io.sendData.valid)
  when (state === stateIdle) {
    when (Debounce(io.init)) {
      state := stateIinit
      programCounter := 0.U
    }
  } .otherwise {
    when (cmosCamera.io.sendData.ready) {
      cmosCamera.io.sendData.valid := false.B
      when (programCounter < initProgram.length.U) {
        cmosCamera.io.sendData.valid := true.B
        cmosCamera.io.sendData.bits.regAddr := rom(programCounter).reg
        cmosCamera.io.sendData.bits.value := rom(programCounter).value
        programCounter := programCounter + 1.U
      } otherwise {
        state := stateIdle
      }
    }
  }

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

  io.cmosCam.systemClock <> cmosCamera.io.cmosCam.systemClock
  io.cmosCam.verticalSync <> cmosCamera.io.cmosCam.verticalSync
  io.cmosCam.horizontalRef <> cmosCamera.io.cmosCam.horizontalRef
  io.cmosCam.pixelClock <> cmosCamera.io.cmosCam.pixelClock
  io.cmosCam.pixcelData <> cmosCamera.io.cmosCam.pixcelData
  io.cmosCam.sccb.clock <> cmosCamera.io.cmosCam.sccb.clock
  io.cmosCam.sccb.ioBuf <> IOBUF(cmosCamera.io.cmosCam.sccb.data)
  io.cmosCam.resetN <> cmosCamera.io.cmosCam.resetN
  io.cmosCam.powerDown <> cmosCamera.io.cmosCam.powerDown
}

object CameraDisplay extends App {
  Driver.execute(args, () => new CameraDisplay)
}