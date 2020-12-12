import java.io.PrintWriter

import chisel3._
import chisel3.util._
import chisel3.stage._

/** 加算器。入力4bit、出力は桁上げに対応して5bit。
  */
class Adder4Bit extends RawModule {
  val a = IO(Input(UInt(4.W)))
  val b = IO(Input(UInt(4.W)))
  val sum = IO(Output(UInt(4.W)))

  /*
   * 4ビット分のAdderを生成する。
   */
  val adder0 = Module(new FullAdder)
  adder0.a := a(0)
  adder0.b := b(0)
  adder0.carryIn := 0.U(1.W)

  val adder1 = Module(new FullAdder)
  adder1.a := a(1)
  adder1.b := b(1)
  adder1.carryIn := adder0.carryOut // 下位の桁の桁上げ出力が伝搬してくる

  val adder2 = Module(new FullAdder)
  adder2.a := a(2)
  adder2.b := b(2)
  adder2.carryIn := adder1.carryOut

  val adder3 = Module(new FullAdder)
  adder3.a := a(3)
  adder3.b := b(3)
  adder3.carryIn := adder2.carryOut

  // 各桁の合計を連結する
  sum := Cat(adder3.sum, adder2.sum, adder1.sum, adder0.sum)
}


/** 全加算器
  */
class FullAdder extends RawModule {
  val a = IO(Input(UInt(1.W)))
  val b = IO(Input(UInt(1.W)))
  val carryIn = IO(Input(UInt(1.W)))
  val sum = IO(Output(UInt(1.W)))
  val carryOut = IO(Output(UInt(1.W)))

  // まず同一桁の足し算
  val halfAdder = Module(new HalfAdder)
  halfAdder.a := a
  halfAdder.b := b

  // 同一桁の合計と桁上げ入力の足し算
  val halfAdderCarry = Module(new HalfAdder)
  halfAdderCarry.a := halfAdder.sum
  halfAdderCarry.b := carryIn

  sum := halfAdderCarry.sum

  // 2つの半加算器の結果のどちらかでも桁上げ出力が発生していたら、全体として桁上げ
  carryOut := halfAdder.carryOut | halfAdderCarry.carryOut
}

/** 半加算器
  */
class HalfAdder extends RawModule {
  val a = IO(Input(UInt(1.W)))
  val b = IO(Input(UInt(1.W)))
  val sum = IO(Output(UInt(1.W)))
  val carryOut = IO(Output(UInt(1.W)))

  sum := a ^ b
  carryOut := a & b
}

object VerilogEmitter extends App {
  val writer = new PrintWriter("target/Adder.v")
  writer.write(ChiselStage.emitVerilog(new Adder4Bit))
  writer.close()
}
