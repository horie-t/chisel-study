import chisel3._
import chisel3.util._

class LCDBundle extends Bundle {
  val serialClock = Output(Bool())
  val dataCommand = Output(Bool())
  val chipSelect = Output(Bool())
  val masterOutSlaveIn = Output(Bool())
  val masterInSlaveOut = Input(Bool())

  val reset = Output(Bool())
  val backLight = Output(Bool())
}

class OperationBundle extends Bundle {
  val command = ValidIO(UInt(8.W))
  val exec = Output(Bool())
  val reset = Output(Bool())
}

class LCDDisplay extends Module {
  val io = IO(new Bundle {
    val lcd = new LCDBundle
    val operation = Flipped(new OperationBundle)
    val seg7LED = new Seg7LEDBundle
  })

  // 周波数定義
  val clockFrequency       = 100000000 // 100MHz
  val serialClockFrequency =   5000000 //   5MHz

  // ステート定義
  val (sIDLE :: sSEND :: Nil) = Enum(2)
  val state = RegInit(sIDLE)
  val execPulse = Debounce(io.operation.exec)

  // クロックパルス生成
  val (_, serialClockNegatePulse) = Counter(state =/= sIDLE, clockFrequency / serialClockFrequency / 2)
  val serialClock = RegInit(true.B)
  when (state === sIDLE && execPulse) {
    serialClock := false.B
  } .elsewhen (serialClockNegatePulse) {
    serialClock := ~serialClock
  }

  // コマンドとパラメータ(3つまで)の一時メモリ
  val initialCommandData = VecInit(Seq.fill(4){ 0.U(8.W) })
  val commandData = RegInit(initialCommandData)
  val commandDataWriteIndex = RegInit(0.U(2.W))
  val commandDataSendIndex = RegInit(0.U(2.W))

  /*
   * データ入力
   */
  // スイッチからのコマンド、データの読み込み
  when (Debounce(io.operation.command.valid)) {
    commandData(commandDataWriteIndex) := io.operation.command.bits
    commandDataWriteIndex := commandDataWriteIndex + 1.U
  }

  // コマンド、データのリセット
  when (Debounce(io.operation.reset)) {
    commandData := initialCommandData
    commandDataWriteIndex := 0.U
  }

  /*
   * コマンド送信
   */
  val stateChange = serialClock & serialClockNegatePulse

  val sendShiftReg = Module(new ShiftRegisterPISO(8))
  sendShiftReg.io.d := commandData(commandDataSendIndex)
  sendShiftReg.io.load := false.B
  sendShiftReg.io.enable := false.B
  val (_, sendShiftWrap) = Counter(stateChange, 8)

  when (state === sIDLE && execPulse) {
    state := sSEND
    sendShiftReg.io.load := true.B
    commandDataSendIndex := commandDataSendIndex + 1.U
  } .elsewhen (stateChange) {
    when (sendShiftWrap) {
      when (commandDataSendIndex === commandDataWriteIndex) {
        state := sIDLE
        commandData := initialCommandData
        commandDataWriteIndex := 0.U
        commandDataSendIndex := 0.U
      } .otherwise {
        sendShiftReg.io.load := true.B
        commandDataSendIndex := commandDataSendIndex + 1.U
      }
    } .otherwise {
      sendShiftReg.io.enable := true.B
    }
  }

  /*
   * 出力
   */
  // コマンド、データをLEDに表示する
  val seg7LED = Module(new Seg7LED)
  seg7LED.io.digits := commandData.flatMap(x => Seq(x(7, 4), x(3, 0))).reverse
  io.seg7LED := seg7LED.io.seg7led

  io.lcd.chipSelect := state === sIDLE
  io.lcd.serialClock := serialClock
  io.lcd.dataCommand := commandDataSendIndex =/= 1.U
  io.lcd.masterOutSlaveIn := sendShiftReg.io.shiftOut
  io.lcd.reset := true.B
  io.lcd.backLight := true.B
}

object LCDDisplay extends App {
  chisel3.Driver.execute(args, () => new LCDDisplay)
}
