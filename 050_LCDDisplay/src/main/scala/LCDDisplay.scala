import chisel3._
import chisel3.util._

class LcdSpiBundle extends Bundle {
  val serialClock = Output(Bool())
  val dataCommand = Output(Bool())
  val chipSelectN = Output(Bool())
  val masterOutSlaveIn = Output(Bool())
  val masterInSlaveOut = Input(Bool())

  val resetN = Output(Bool())
  val backLight = Output(Bool())
}

class ILI9341SPI extends Module {
  val io = IO(new Bundle{
    val lcdSpi = new LcdSpiBundle
    val sendData = Flipped(DecoupledIO(new Bundle{
      val value = UInt(8.W)
      val dataCommand = Bool()
    }))
  })

  val spiClock = RegInit(true.B)
  val chipSelect = RegInit(false.B)

  val sendValue = RegInit(0.U(8.W))
  val sendBitCount = RegInit(0.U(3.W))
  val dataCommand = RegInit(false.B)

  // ステート定義
  val (stateIdle :: stateSend :: Nil) = Enum(2)
  val state = RegInit(stateIdle)

  // 状態遷移
  when(state === stateIdle && io.sendData.valid) {
    state := stateSend
    sendValue := Reverse(io.sendData.bits.value)
    dataCommand := io.sendData.bits.dataCommand
    spiClock := false.B
    sendValue := 0.U
  } .elsewhen(state === stateSend) {
    spiClock := ~spiClock
    when (spiClock) {
      sendValue := Cat(sendValue(6, 0), 0.U(1.W))
      sendBitCount := sendBitCount + 1.U
      when (sendBitCount === 7.U) {
        state := stateIdle
      }
    }
  }


  // 出力
  io.lcdSpi.serialClock := spiClock & chipSelect
  io.lcdSpi.dataCommand := dataCommand
  io.lcdSpi.chipSelectN := state =/= stateSend
  io.lcdSpi.masterOutSlaveIn := sendValue(7)
  
  io.lcdSpi.resetN := false.B
  io.lcdSpi.backLight := true.B

  io.sendData.ready := state === stateIdle
}

class LCDDisplay extends Module {
  val io = IO(new Bundle{})

}

object LCDDisplay extends App {
  Driver.execute(args, () => new LCDDisplay)
}
