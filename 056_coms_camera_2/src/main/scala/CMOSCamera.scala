import chisel3._
import chisel3.experimental._
import chisel3.util._
import chisel3.withClock

/**
 * Bi-Directional Buffer (Xilinxのプリミティブ)
 */
class IOBUF extends ExtModule {
  val IO = super.IO(Analog(1.W))                // 入出力ポート
  val I = super.IO(Input(Bool()))               // 入出力ポートに出力する値
  val O = super.IO(Output(Bool()))              // 入出力ポートからの入力値
  val T = super.IO(Input(Bool()))               // Tが真の時は出力 *しない*
}

object IOBUF {
  def apply(pin: IobufPin): Analog = {
    val ioBuf = Module(new IOBUF())
    ioBuf.O <> pin.O
    ioBuf.I <> pin.I
    ioBuf.T <> pin.T
    ioBuf.IO
  }
}

class CameraSysClock extends ExtModule {
  val clockIn = IO(Input(Bool()))
  val reset = IO(Input(Bool()))
  val clockOut = IO(Output(Bool()))
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
  val clockFrequency = 12000000
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
                 sccbClockFrequency: Int = Ov7670sccb.sccbClockFrequency) extends MultiIOModule {
  val sccb = IO(new SccbBundle)
  val sendData = IO(Flipped(DecoupledIO(new Ov7670InstBundle)))

  // ステート定義
  val (stateIdle:: stateStartBit :: stateSend :: stateStopBit :: stateWait:: Nil) = Enum(5)
  val state = RegInit(stateIdle)

  val (_, clockPhaseChange) = Counter(state =/= stateIdle, clockFrequency / sccbClockFrequency / 4)
  val (clockPhaseCount, stateChange) = Counter(clockPhaseChange, 4)

  val ipAddress = "h42".U(8.W)

  val sendDataWidth = 27
  val highImpedanceTiming = Reg(UInt(sendDataWidth.W))
  val sendDataReg = Reg(UInt(sendDataWidth.W))
  val (_, sendDone) = Counter(state === stateSend && stateChange, sendDataWidth)
  val (_, waitDone) = Counter(state === stateWait && stateChange, 10)

  // 状態遷移
  when (state === stateIdle && sendData.valid) {
    state := stateStartBit
    sendDataReg := Cat(ipAddress, false.B, sendData.bits.regAddr, false.B, sendData.bits.value, false.B)
    highImpedanceTiming := "b00000000_1_00000000_1_00000000_1".U
  } .elsewhen (stateChange) {
    when (state === stateStartBit) {
      state := stateSend
    } .elsewhen(state === stateSend) {
      sendDataReg := sendDataReg << 1.U
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
  sccb.clock := true.B
  sccb.data.I := true.B
  sccb.data.T := false.B

  when (state === stateStartBit) {
    sccb.clock := clockPhaseCount =/= 3.U
    sccb.data.I := false.B
    sccb.data.T := false.B
  } .elsewhen (state === stateSend) {
    sccb.clock := clockPhaseCount === 1.U || clockPhaseCount === 2.U
    sccb.data.I := sendDataReg(26)
    sccb.data.T := highImpedanceTiming(26)
  } .elsewhen (state === stateStopBit) {
    sccb.clock := clockPhaseCount =/= 0.U
    sccb.data.I := false.B
    sccb.data.T := false.B
  }

  sendData.ready := state === stateIdle
}

import Ov7670sccb._

class CMOSCamera extends MultiIOModule {
  val cmosCam = IO(new CmosCameraBundle)
  val vramClock = IO(Output(Clock()))
  val vramEnable = IO(Output(Bool()))
  val vramWriteEnable = IO(Output(Bool()))
  val vramAddr = IO(Output(UInt(17.W)))
  val vramData = IO(Output(UInt(16.W)))


  val clockFrequency    = 12000000.0   // 12MHz
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

  sccb.sendData.valid := false.B
  sccb.sendData.bits.regAddr := 0.U
  sccb.sendData.bits.value := 0.U
  when (state === stateReset) {
    state := stateWaitForPowerUp
  } .elsewhen (state === stateWaitForPowerUp) {
    stateHoldCount := stateHoldCount + 1.U
    when (stateHoldCount === (clockFrequency * waitForPowerUpSec).toInt.U) {
      state := stateIinit
    }
  } .elsewhen (state === stateIinit) {
    when (sccb.sendData.ready) {
      sccb.sendData.valid := false.B
      when (programCounter < initProgram.length.U) {
        sccb.sendData.valid := true.B
        sccb.sendData.bits.regAddr := rom(programCounter).reg
        sccb.sendData.bits.value := rom(programCounter).value
        programCounter := programCounter + 1.U
      } otherwise {
        state := stateIdle
      }
    }
  }

  // CMOSカメラのsystemClock(25MHz)の生成
  val cameraSysClock = Module(new CameraSysClock)
  cameraSysClock.clockIn := clock.asBool()
  cameraSysClock.reset := reset.asBool()

  // カメラの画像をVRAMに転送
  val pixelClock = cmosCam.pixelClock.asClock()
  withClock(pixelClock) {
    val x = RegInit(0.U(10.W))
    val y = RegInit(0.U(9.W))
    val isHighByte = RegInit(true.B)
    val highByteData = RegInit(0.U(8.W))
    val hrefDownPulse = NegEdge(cmosCam.horizontalRef)

    when (cmosCam.horizontalRef) {
      isHighByte := ~isHighByte
      when (isHighByte) {
        highByteData := cmosCam.pixcelData
      } .otherwise {
        x := x + 1.U
      }
    } .otherwise {
      isHighByte := false.B
      x := 0.U
    }

    when (hrefDownPulse) {
      y := y + 1.U
    } .elsewhen(cmosCam.verticalSync) {
      y := 0.U
    }

    vramClock := pixelClock
    vramEnable := true.B
    vramWriteEnable := cmosCam.horizontalRef && 0.U < x && x < 640.U && 0.U < y && y < 480.U && !isHighByte
    vramAddr := x(9, 1) * 240.U + y(8, 1)     // 縦横を逆にする。
    vramData := Cat(highByteData, cmosCam.pixcelData)
  }

  cmosCam.systemClock := cameraSysClock.clockOut
  cmosCam.sccb.clock := sccb.sccb.clock
  cmosCam.sccb.data <> sccb.sccb.data
  cmosCam.resetN := true.B
  cmosCam.powerDown := false.B
}

/** 入力の立ち下がりを検出します。
  */
class NegEdge extends Module {
  val io = IO(new Bundle {
    val d = Input(Bool())
    val pulse = Output(Bool())
  })

  val reg = RegNext(io.d, false.B)

  io.pulse := reg && !io.d
}

object NegEdge {
  def apply(d: Bool): Bool = {
    val negEdge = Module(new NegEdge)
    negEdge.io.d := d
    negEdge.io.pulse
  }
}