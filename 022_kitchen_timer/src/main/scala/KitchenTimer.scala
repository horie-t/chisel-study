import java.io.PrintWriter

import chisel3._
import chisel3.util._
import chisel3.stage._

class KitchenTimer extends MultiIOModule {
  val min = IO(Input(Bool()))
  val sec = IO(Input(Bool()))
  val startStop = IO(Input(Bool()))
  val seg7led = IO(Output(new Seg7LEDBundle))

  /* ステートマシン定義 */
  //  時間設定  :: タイマー稼働 :: 一時停止 :: タイマー終了
  val sTimeSet :: sRun :: sPause :: sFin :: Nil = Enum(4)
  val state = RegInit(sTimeSet)
  val stateChange = Debounce(startStop) // スタート・ストップボタンは、実際は状態遷移イベント

  // 時間管理
  val time = Module(new Time)
  // 時間の変更は、設定状態か、一時停止状態のみ可能
  time.incMin := (state === sTimeSet || state === sPause) && Debounce(min)
  time.incSec := (state === sTimeSet || state === sPause) && Debounce(sec)
  time.countDown := state === sRun

  // ステートマシン遷移処理
  when (stateChange) {
    switch (state) {
      is (sTimeSet) {
        when (!time.zero) {
          state := sRun
        }
      }
      is (sRun) {
        state := sPause
      }
      is (sPause) {
        state := sRun
      }
      is (sFin)   {
        state := sTimeSet
      }
    }
  } .elsewhen (state === sRun && time.zero) {
    state := sFin
  }

  // 出力
  val seg7LED = Module(new Seg7LED)
  seg7LED.digits := VecInit(List(time.sec % 10.U, (time.sec / 10.U)(3, 0),
    time.min % 10.U, (time.min / 10.U)(3, 0)))
  seg7LED.blink := (state === sFin)
  seg7led := seg7LED.seg7led
}

class Seg7LEDBundle extends Bundle {
  val anodes = UInt(4.W)
  val cathodes = UInt(7.W)
  val colon = Bool()
}

class Seg7LED extends MultiIOModule {
  val digits = IO(Input(Vec(4, UInt(4.W))))
  val blink = IO(Input(Bool()))
  val seg7led = IO(Output(new Seg7LEDBundle))

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY = 12000000
  /* 各桁を切り替える時間のカウンタ
   * Counterは、引数にカウントアップする条件(cond)、カウントする数(n, 0〜n-1までカウントする)をとり、
   * 現在のカウント数の値の信号、n-1にカウントアップした時ににtrue.Bになる信号のタプルを返します。
   * カウントアップ条件にtrue.Bを渡すと、毎クロックカウントアップします。 */
  val (digitChangeCount, digitChange) = Counter(true.B, CLOCK_FREQUENCY / 1000)
  val (digitIndex, digitWrap) = Counter(digitChange, 4) // 何桁目を表示するか
  val digitNum = digits(digitIndex)        // 表示桁の数値

  seg7led.cathodes := MuxCase("b111_1111".U,
    Array(                 // ABC_DEFG の順序にcathodeが並ぶ
      (digitNum === "h0".U) -> "b000_0001".U,
      (digitNum === "h1".U) -> "b100_1111".U,
      (digitNum === "h2".U) -> "b001_0010".U,
      (digitNum === "h3".U) -> "b000_0110".U,
      (digitNum === "h4".U) -> "b100_1100".U,
      (digitNum === "h5".U) -> "b010_0100".U,
      (digitNum === "h6".U) -> "b010_0000".U,
      (digitNum === "h7".U) -> "b000_1101".U,
      (digitNum === "h8".U) -> "b000_0000".U,
      (digitNum === "h9".U) -> "b000_0100".U,
      (digitNum === "ha".U) -> "b000_1000".U,
      (digitNum === "hb".U) -> "b110_0000".U,
      (digitNum === "hc".U) -> "b011_0001".U,
      (digitNum === "hd".U) -> "b100_0010".U,
      (digitNum === "he".U) -> "b011_0000".U,
      (digitNum === "hf".U) -> "b011_1000".U))

  val anodesReg = RegInit("b0001".U(4.W))
  when (digitChange) {
    // 表示桁の切り替えタイミングで、ローテートシフト
    anodesReg := Cat(anodesReg(2, 0), anodesReg(3))
  }

  val (blinkCount, blinkToggle) = Counter(blink, CLOCK_FREQUENCY)
  val blinkLight = RegInit(true.B) // 点滅表示時に点灯するかどうか
  when (blinkToggle) {
    blinkLight := !blinkLight
  }

  when (!blink || blinkLight) {
    seg7led.anodes := anodesReg
    seg7led.colon := false.B
  } otherwise {
    seg7led.anodes := "h00".U
    seg7led.colon := true.B
  }
}

object Time {
  // 60進数表記(0〜59)に必要なビット幅
  val sexagesimalWitdh = log2Ceil(60).W
}

/** 時間のモデルクラス
  */
class Time extends MultiIOModule {
  val incMin = IO(Input(Bool())) // 時間を1分増加します。
  val incSec = IO(Input(Bool())) // 時間を1秒増加します。
  val countDown = IO(Input(Bool())) // カウントダウンを実行します。

  val min = IO(Output(UInt(Time.sexagesimalWitdh))) // 残りの分。
  val sec = IO(Output(UInt(Time.sexagesimalWitdh))) // 残りの秒。
  val zero = IO(Output(Bool()))                     // 残り時間がなくなったかどうか

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY = 12000000

  val minReg = RegInit(0.U(Time.sexagesimalWitdh))
  when (incMin) {
    when (minReg === 59.U) {
      minReg := 0.U
    } .otherwise {
      minReg := minReg + 1.U
    }
  }

  val secReg = RegInit(0.U(Time.sexagesimalWitdh))
  when (incSec) {
    when (secReg === 59.U) {
      secReg := 0.U
    } .otherwise {
      secReg := secReg + 1.U
    }
  }

  val zeroWire = Wire(Bool())
  val (count, oneSec) = Counter(countDown && !zeroWire, CLOCK_FREQUENCY) // 1秒未満の時間のカウンター
  zeroWire := minReg === 0.U && secReg === 0.U && count === 0.U

  when (countDown && oneSec) {
    when (secReg === 0.U) {
      when (minReg =/= 0.U) {
        minReg := minReg - 1.U
        secReg := 59.U
      }
    } .otherwise {
      secReg := secReg - 1.U
    }
  }

  min := minReg
  sec := secReg
  zero := zeroWire
}

class Debounce extends MultiIOModule {
  val in = IO(Input(Bool()))
  val out = IO(Output(Bool()))

  // Cmod A7のclockの周波数
  val CLOCK_FREQUENCY = 12000000
  val (count, enable) = Counter(true.B, CLOCK_FREQUENCY / 20) // 0.05秒分カウントする

  val reg0 = RegEnable(in, false.B, enable)
  val reg1 = RegEnable(reg0, false.B, enable)

  out := in && reg0 && !reg1 && enable
}

object Debounce {
  def apply(in: Bool): Bool = {
    val debounce = Module(new Debounce)
    debounce.in := in
    debounce.out
  }
}

/**
  * Generate Verilog code.
  */
object VerilogEmitter extends App {
  val writer = new PrintWriter("target/KitchenTimer.v")
  writer.write(ChiselStage.emitVerilog(new KitchenTimer))
  writer.close()
}
