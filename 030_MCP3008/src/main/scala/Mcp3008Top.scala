// See LICENSE for license details.

import chisel3._
import chisel3.util._

class Mcp3008Top extends Module {
  val io = IO(new Bundle {
    val spi = new SpiBundle
    val seg7led = new Seg7LEDBundle
  })

  val clockFreq = 100000000
  val (count, measureSig) = Counter(true.B, clockFreq)  // 1秒に1回測定する

  /*
   * A/Dコンバータによる測定
   */
  val mcp3008Interface = Module(new Mcp3008Interface)
  // 入力
  val configValue = WireInit("b1000".U)
  mcp3008Interface.io.config.bits := configValue
  mcp3008Interface.io.config.valid := mcp3008Interface.io.config.ready & measureSig
  // 出力
  io.spi <> mcp3008Interface.io.spi

  /*
   * 測定結果の表示
   */
  val seg7led = Module(new Seg7LED)
  // 入力
  seg7led.io.digits := VecInit(Seq.fill(8) {0.U(4.W)})   // 4ビット * 8桁
  when (mcp3008Interface.io.data.valid) {
    // 32ビットの内、10ビット分だけ必要。その他は0でパディング
    seg7led.io.digits(0) := mcp3008Interface.io.data.bits(3, 0)
    seg7led.io.digits(1) := mcp3008Interface.io.data.bits(7, 4)
    seg7led.io.digits(2) := Cat(0.U(2.W),  mcp3008Interface.io.data.bits(9, 8))
  }
  // 出力
  io.seg7led := seg7led.io.seg7led
}

object Mcp3008Top extends App {
  chisel3.Driver.execute(args, () => new Mcp3008Top)
}
