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
  val serialClockFrequency =  10000000 // 10MHz

  // クロックパルス生成
  val serialClock = RegInit(true.B)
  val (_, serialClockNegatePulse) = Counter(true.B, clockFrequency / serialClockFrequency / 2)

  // LED表示
  val seg7LED = Module(new Seg7LED)
  seg7LED.io.digits := VecInit(Seq.fill(8) {0.U(4.W)})  // TODO: 仮表示

  // 出力
  io.seg7LED := seg7LED.io.seg7led

  // TODO: 仮出力
  io.lcd.chipSelect := false.B
  io.lcd.serialClock := true.B
  io.lcd.dataCommand := false.B
  io.lcd.masterOutSlaveIn := false.B
  io.lcd.reset := false.B
  io.lcd.backLight := true.B
}

object LCDDisplay extends App {
  chisel3.Driver.execute(args, () => new LCDDisplay)
}
