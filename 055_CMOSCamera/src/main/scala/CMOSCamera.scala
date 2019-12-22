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
    val I = Input(Bool())               // 入出力ポートに出力する値
    val O = Output(Bool())              // 入出力ポートからの入力値
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
  val O = Input(Bool())
  val I = Output(Bool())
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

object Ov7670sccb {
  val clockFrequency = 100000000
  val sccbClockFrequency = 50000

  // レジスタ設定
  val regClkRc = "h11"
  val regClkRc30fps = "h01"

  val regCOM7 = "h12"
  val regCom7Reset = "h80"
  val regCom7Rgb = "h04"

  val regCom9 = "h14"
  val regCom9Agc16x = "h30"

  val regTslb = "h3A"
  val regTslbYLatter = "h08"

  val regCom15 = "h40"
  val regCom15Rgb565 = "h10"

  val regCom16 = "h41"
  val regCom16Val = "h38"

  val regMtx1 = "h4F"
  val regMtx1Val = "h48"
  val regMtx2 = "h50"
  val regMtx2Val = "h40"
  val regMtx3 = "h51"
  val regMtx3Val = "h08"
  val regMtx4 = "h52"
  val regMtx4Val = "h18"
  val regMtx5 = "h53"
  val regMtx5Val = "h38"
  val regMtx6 = "h54"
  val regMtx6Val = "h48"

  val regMtxs = "h58"
  val regMtxsVal = "h1E"

  val regDblv = "h6B"
  val regDblvClk4x = "h4A"

  val regRgb444 = "h8C"
  val regRgb444Disable = "h00"

  val regB0 = "hB0"
  val regB0Val = "h84"

  val regAblc = "hB1"
  val regAblcEnable = "h04"

  val initProgram = Seq(
    // レジスタ・アドレスと値の対
    (regClkRc, regClkRc30fps),
    (regCOM7, regCom7Rgb),
    (regCom9, regCom9Agc16x),
    (regTslb, regTslbYLatter),
    (regCom15, regCom15Rgb565),
    (regCom16, regCom16Val),
    (regRgb444, regRgb444Disable),

    (regMtx1, regMtx1Val),
    (regMtx2, regMtx2Val),
    (regMtx3, regMtx3Val),
    (regMtx4, regMtx4Val),
    (regMtx5, regMtx5Val),
    (regMtx6, regMtx6Val),
    (regMtxs, regMtxsVal),

    (regDblv, regDblvClk4x),
    (regB0, regB0Val),
    (regAblc, regAblcEnable)
  ).map(inst => (inst._1.U(8.W), inst._2.U(8.W)))
}

class Ov7670sccb(clockFrequency: Int = Ov7670sccb.clockFrequency,
                 sccbClockFrequency: Int = Ov7670sccb.sccbClockFrequency) extends Module {
  val io = IO(new Bundle{
    val sccb = new SccbBundle
    val sendData = Flipped(DecoupledIO(new Ov7670InstBundle))
  })

  // ステート定義
  val (stateIdle:: stateStartBit :: stateSend :: stateStopBit :: stateWait:: Nil) = Enum(5)
  val state = RegInit(stateIdle)

  val (_, clockPhaseChange) = Counter(state =/= stateIdle, clockFrequency / sccbClockFrequency / 4)
  val (clockPhaseCount, stateChange) = Counter(clockPhaseChange, 4)

  val ipAddress = "h42".U(8.W)

  val sendDataWidth = 27
  val highImpedanceTiming = Reg(UInt(sendDataWidth.W))
  val sendData = Reg(UInt(sendDataWidth.W))
  val (_, sendDone) = Counter(state === stateSend && stateChange, sendDataWidth)
  val (_, waitDone) = Counter(state === stateWait && stateChange, 10)

  // 状態遷移
  when (state === stateIdle && io.sendData.valid) {
    state := stateStartBit
    sendData := Cat(ipAddress, false.B, io.sendData.bits.regAddr, false.B, io.sendData.bits.value, false.B)
    highImpedanceTiming := "b00000000_1_00000000_1_00000000_1".U
  } .elsewhen (stateChange) {
    when (state === stateStartBit) {
      state := stateSend
    } .elsewhen(state === stateSend) {
      sendData := sendData << 1.U
      highImpedanceTiming := highImpedanceTiming << 1.U
      when (sendDone) {
        state := stateStopBit
      }
    } .elsewhen(state === stateStopBit) {
      state := stateWait
    } .elsewhen(waitDone) {
      state := stateIdle
    }
  }

  // 出力
  io.sccb.clock := true.B
  io.sccb.data.I := true.B
  io.sccb.data.T := false.B

  when (state === stateStartBit) {
    io.sccb.clock := clockPhaseCount =/= 3.U
    io.sccb.data.I := false.B
    io.sccb.data.T := false.B
  } .elsewhen (state === stateSend) {
    io.sccb.clock := clockPhaseCount === 1.U || clockPhaseCount === 2.U
    io.sccb.data.I := sendData(26)
    io.sccb.data.T := highImpedanceTiming(26)
  } .elsewhen (state === stateStopBit) {
    io.sccb.clock := clockPhaseCount =/= 0.U
    io.sccb.data.I := false.B
    io.sccb.data.T := false.B
  }

  io.sendData.ready := state === stateIdle
}

import Ov7670sccb._

class CMOSCamera extends Module {
  val io = IO(new Bundle{
    val cmosCam = new CmosCameraBundle
    val vramClock = Output(Clock())
    val vramEnable = Output(Bool())
    val vramWriteEnable = Output(Bool())
    val vramAddr = Output(UInt(17.W))
    val vramData = Output(UInt(16.W))
  })

  val clockFrequency    = 100000000.0  // 100MHz
  val waitForPowerUpSec = 0.2          // 200msec

  // カメラのレジスタの設定
  val rom = Wire(Vec(initProgram.length, new Bundle{
    val reg = UInt(8.W)
    val value = UInt(8.W)
  }))
  rom zip initProgram map { t =>
    val (romMem, inst) = t
    romMem.reg := inst._1
    romMem.value  := inst._2
  }

  val (stateReset :: stateWaitForPowerUp :: stateIinit :: stateIdle :: Nil) = Enum(4)
  val state = RegInit(stateReset)
  val stateHoldCount = RegInit(0.U(24.U))

  val sccb = Module(new Ov7670sccb)
  val programCounter = RegInit(0.U(8.W))

  sccb.io.sendData.valid := false.B
  sccb.io.sendData.bits.regAddr := 0.U
  sccb.io.sendData.bits.value := 0.U
  when (state === stateReset) {
    state := stateWaitForPowerUp
  } .elsewhen (state === stateWaitForPowerUp) {
    stateHoldCount := stateHoldCount + 1.U
    when (stateHoldCount === (clockFrequency * waitForPowerUpSec).toInt.U) {
      state := stateIinit
    }
  } .elsewhen (state === stateIinit) {
    when (sccb.io.sendData.ready) {
      sccb.io.sendData.valid := false.B
      when (programCounter < initProgram.length.U) {
        sccb.io.sendData.valid := true.B
        sccb.io.sendData.bits.regAddr := rom(programCounter).reg
        sccb.io.sendData.bits.value := rom(programCounter).value
        programCounter := programCounter + 1.U
      } otherwise {
        state := stateIdle
      }
    }
  }

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
    val isHighByte = RegInit(true.B)
    val highByteData = RegInit(0.U(8.W))
    val hrefDownPulse = NegEdge(io.cmosCam.horizontalRef)

    when (io.cmosCam.horizontalRef) {
      isHighByte := ~isHighByte
      when (isHighByte) {
        highByteData := io.cmosCam.pixcelData
      } .otherwise {
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
    io.vramWriteEnable := io.cmosCam.horizontalRef && 0.U < x && x < 640.U && 0.U < y && y < 480.U && !isHighByte
    io.vramAddr := x(9, 1) * 240.U + y(8, 1)     // 縦横を逆にする。
    io.vramData := Cat(highByteData, io.cmosCam.pixcelData)
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
  val divide = 2
  // 初期状態
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  expect(dut.io.sendData.ready, true.B)

  poke(dut.io.sendData.valid, true.B)
  poke(dut.io.sendData.bits.regAddr, "h12".U)
  poke(dut.io.sendData.bits.value, "h14".U)
  step(1)

  // Start bit
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  expect(dut.io.sendData.ready, false.B)
  poke(dut.io.sendData.valid, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  /*
   * IP Address
   */
  // 7 bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 6 bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 5 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 4 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 3 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 2 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 1 bit
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // 0 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // Z bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, true.B)
  step(3 * divide)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, true.B)
  step(1 * divide)

  /*
   * Reg Address
   */
  // 7 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 6 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 5 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 4 bit
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 3 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 2 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 1 bit
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 0 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // Z bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, true.B)
  step(4 * divide)

  /*
   * Reg Value
   */
  // 7 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 6 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 5 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 4 bit
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 3 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 2 bit
  expect(dut.io.sccb.data.I, true.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 1 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // 0 bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(4 * divide)
  // Z bit
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, true.B)
  step(4 * divide)

  // Stop bit
  expect(dut.io.sccb.clock, false.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sccb.data.I, false.B)
  expect(dut.io.sccb.data.T, false.B)
  step(1 * divide)

  // Wait
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sendData.ready, false.B)
  step(4 * 9 * divide)
  step(3 * divide)
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sendData.ready, false.B)
  step(1 * divide)

  // Idle
  expect(dut.io.sccb.clock, true.B)
  expect(dut.io.sendData.ready, true.B)
}

// テスト
object CMOSCameraTest extends App {
  chisel3.iotesters.Driver(() => new Ov7670sccb(8, 1)) { dut =>
    new SccbTester(dut)
  }
}