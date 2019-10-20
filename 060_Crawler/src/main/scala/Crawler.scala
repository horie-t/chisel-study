import chisel3._
import chisel3.util._

class SpiBundle extends Bundle {
  val nCs = Output(Bool())
  val sclk = Output(Bool())
  val mosi = Output(Bool())
  val miso = Input(Bool())
}

class Mcp3008 extends Module {
  val io = IO(new Bundle {
    val config = Flipped(Decoupled(UInt(4.W)))
    val data = Valid(UInt(10.W))
    val spi = new SpiBundle
  })

  val clockFreq = 100000000
  val sclkFreq = 1000000

  /* ステート定義
  *  アイドル状態、スタートビット、コンフィギュレーション送信、サンプリング・A/D変換、
  *  NullBit受信、データ受信、再測定可能待ち */
  val sIDLE :: sSTART :: sSEND :: sSAMPLING :: sNULLBIT :: sRECEIVE :: sWAIT :: Nil = Enum(7)
  val state = RegInit(sIDLE)

  val (count, sclkPhaseChange) = Counter(true.B, (clockFreq / sclkFreq) / 2)
  val sclk = RegInit(true.B)
  when (state === sIDLE && io.config.valid) {
    sclk := false.B
  } .elsewhen (state =/= sIDLE && sclkPhaseChange) {
    sclk := ~sclk
  }

  /* コンフィギュレーションデータ */
  val config = RegInit(0.U(4.W))
  /* 受信データ */
  val receiveValue = RegInit(VecInit(Seq.fill(10){ 0.U(1.W) }))
  val received = RegInit(false.B)

  /*
   * ステートマシン
   */
  val sendCount = RegInit(0.U(2.W))
  val receiveCount = RegInit(0.U(4.W))

  val changeState = sclkPhaseChange & sclk
  when (state === sIDLE) {
    when (io.config.valid) {
      state := sSTART
      config := io.config.bits
      received := false.B
    }
  } .elsewhen (changeState) {
    when (state === sSTART) {
      state := sSEND
      sendCount := 0.U
    } .elsewhen (state === sSEND) {
      when (sendCount === 3.U) {
        state := sSAMPLING
      } .otherwise {
        sendCount := sendCount + 1.U
      }
    } .elsewhen (state === sSAMPLING) {
      state := sNULLBIT
    } .elsewhen (state === sNULLBIT) {
      state := sRECEIVE
      receiveCount := 0.U
    } .elsewhen (state === sRECEIVE) {
      when (receiveCount === 9.U) {
        state := sWAIT
      } .otherwise {
        receiveCount := receiveCount + 1.U
        received := true.B
      }
    } .elsewhen (state === sWAIT) {
      state := sIDLE
    }
  }

  /*
   * 受信処理
   */
  when (state === sRECEIVE && (sclkPhaseChange & !sclk)) {
    receiveValue(receiveCount) := io.spi.miso
  }

  /*
   * 出力
   */
  io.config.ready := state === sIDLE

  io.data.valid := received
  io.data.bits := Reverse(receiveValue.asUInt())

  io.spi.sclk := sclk
  io.spi.nCs := state === sIDLE || state === sWAIT

  io.spi.mosi := true.B
  when (state === sSEND) {
    io.spi.mosi := Reverse(config)(sendCount)
  }
}

class Drv8835SingleBundle extends Bundle {
  val dir = Input(Bool())
  val speed = Input(UInt(8.W))
  val driverIn1 = Output(Bool())
  val driverIn2 = Output(Bool())
}

class Drv8835SingleDrive extends Module {
  val io = IO(new Drv8835SingleBundle)

  // クロック周波数(100MHz)
  val clockFreq = 100000000
  // PWM パルス周波数(1kHz)
  val pulseFreq = 1000
  // パルス幅の段階の数
  val pulseWidthResolution = io.speed.getWidth

  val (clockCount, changePulse) = Counter(true.B, clockFreq / pulseFreq / pulseWidthResolution)
  val (widthCount, widthWrap) = Counter(changePulse, pulseWidthResolution)

  when (io.speed === 0.U) {
    io.driverIn1 := false.B
    io.driverIn2 := false.B
  } .otherwise {
    when (io.dir) {
      io.driverIn1 := widthCount <= io.speed - 1.U
      io.driverIn2 := false.B
    } .otherwise {
      io.driverIn1 := false.B
      io.driverIn2 := widthCount <= io.speed - 1.U
    }
  }
}

class Drv8835Bundle extends Bundle {
  val a = new Bundle {
    val driverIn1 = Output(Bool())
    val driverIn2 = Output(Bool())
  }
  val b = new Bundle {
    val driverIn1 = Output(Bool())
    val driverIn2 = Output(Bool())
  }
}

class Crawler extends Module {
  val io = IO(new Bundle {
    val spi = new SpiBundle
    val drv8835 = new Drv8835Bundle
  })

  /*
   * A/Dコンバータによる測定
   */
  val clockFreq = 100000000
  val (count, measureSig) = Counter(true.B, clockFreq)  // 1秒に1回測定する

  val mcp3008 = Module(new Mcp3008)

  // ステート定義
  // アイドル状態、チャネル1測定、チャネル2測定
  val (sIDLE :: sCHANNEL1 :: sCHANNEL2 :: Nil) = Enum(3)
  val stateMcp3008 = RegInit(sIDLE)

  // A/Dコンバータへの入力値
  val configChannel1 = WireInit("b1000".U)
  val configChannel2 = WireInit("b1001".U)
  // A/Dコンバータからの出力
  val channel1 = RegInit(0.U(10.W))
  val channel2 = RegInit(0.U(10.W))

  // ステートマシン
  mcp3008.io.config.bits := "b0000".U
  mcp3008.io.config.valid := false.B
  when (stateMcp3008 === sIDLE && measureSig) {
    stateMcp3008 := sCHANNEL1
  } .elsewhen (stateMcp3008 === sCHANNEL1) {
    when (mcp3008.io.config.ready) {
      mcp3008.io.config.bits := configChannel1
      mcp3008.io.config.valid := true.B
    } .elsewhen (mcp3008.io.data.valid) {
      channel1 := mcp3008.io.data.bits
      stateMcp3008 := sCHANNEL2
    }
  } .elsewhen (stateMcp3008 === sCHANNEL2) {
    when (mcp3008.io.config.ready) {
      mcp3008.io.config.bits := configChannel2
      mcp3008.io.config.valid := true.B
    } .elsewhen (mcp3008.io.data.valid) {
      channel2 := mcp3008.io.data.bits
      stateMcp3008 := sIDLE
    }
  }

  /*
   * モータ・ドライバ
   */
  val motorDriveA = Module(new Drv8835SingleDrive)
  val motorDriveB = Module(new Drv8835SingleDrive)

  motorDriveA.io.dir := true.B
  motorDriveA.io.speed := channel1(9, 2)

  motorDriveB.io.dir := true.B
  motorDriveB.io.speed := channel2(9, 2)

  /*
   * 出力
   */
  // A/DコンバータのSPI端子
  io.spi <> mcp3008.io.spi

  // モータ・ドライバへ
  io.drv8835.a.driverIn1 := motorDriveA.io.driverIn1
  io.drv8835.a.driverIn2 := motorDriveA.io.driverIn2
  io.drv8835.b.driverIn1 := motorDriveB.io.driverIn1
  io.drv8835.b.driverIn2 := motorDriveB.io.driverIn2
}

object Crawler extends App {
  chisel3.Driver.execute(args, () => new Crawler)
}
