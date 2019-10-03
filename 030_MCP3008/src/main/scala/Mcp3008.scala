import chisel3._
import chisel3.util._

class Mcp3008Interface extends Module {
  val io = IO(new Bundle {
    val config = Decoupled(UInt(4.W))
    val data = Valid(UInt(10.W))
    val spi = new Bundle {
      val nCs = Output(Bool())
      val sclk = Output(Bool())
      val mosi = Output(Bool())
      val miso = Input(Bool())
    }
  })

  val clockFreq = 100000000
  val sclkFreq = 1000000

  /* ステート定義
  *  アイドル状態、スタートビット、コンフィギュレーション送信、サンプリング・A/D変換、
  *  NullBit受信、データ受信、再測定可能待ち */
  val sIDLE :: sSTART :: sSEND :: sSAMPLING :: sNULLBIT :: sRECEIVE :: sWAIT :: Nil = Enum(7)

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
  val receiveValue = RegInit(Vec(10, 0.U(1.W)))
  val received = RegInit(false.B)

  /*
   * ステートマシン
   */
  val state = RegInit(sIDLE)
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
}


