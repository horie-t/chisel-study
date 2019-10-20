;buildInfoPackage: chisel3, version: 3.1.8, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-07-08 17:44:42.884, builtAtMillis: 1562607882884
circuit Servo : 
  module Servo : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip degree : SInt<4>, servoPulse : UInt<1>}
    
    reg value : UInt<14>, clock with : (reset => (reset, UInt<14>("h00"))) @[Counter.scala 26:33]
    when UInt<1>("h01") : @[Counter.scala 63:17]
      node _T_13 = eq(value, UInt<14>("h0270f")) @[Counter.scala 34:24]
      node _T_15 = add(value, UInt<1>("h01")) @[Counter.scala 35:22]
      node _T_16 = tail(_T_15, 1) @[Counter.scala 35:22]
      value <= _T_16 @[Counter.scala 35:13]
      when _T_13 : @[Counter.scala 37:21]
        value <= UInt<1>("h00") @[Counter.scala 37:29]
        skip @[Counter.scala 37:21]
      skip @[Counter.scala 63:17]
    node pulseUnit = and(UInt<1>("h01"), _T_13) @[Counter.scala 64:20]
    reg value_1 : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[Counter.scala 26:33]
    when pulseUnit : @[Counter.scala 63:17]
      node _T_21 = eq(value_1, UInt<8>("h0c7")) @[Counter.scala 34:24]
      node _T_23 = add(value_1, UInt<1>("h01")) @[Counter.scala 35:22]
      node _T_24 = tail(_T_23, 1) @[Counter.scala 35:22]
      value_1 <= _T_24 @[Counter.scala 35:13]
      when _T_21 : @[Counter.scala 37:21]
        value_1 <= UInt<1>("h00") @[Counter.scala 37:29]
        skip @[Counter.scala 37:21]
      skip @[Counter.scala 63:17]
    node _T_26 = and(pulseUnit, _T_21) @[Counter.scala 64:20]
    node _T_28 = add(io.degree, asSInt(UInt<5>("h0f"))) @[Servo.scala 14:50]
    node _T_29 = tail(_T_28, 1) @[Servo.scala 14:50]
    node _T_30 = asSInt(_T_29) @[Servo.scala 14:50]
    node _T_31 = asUInt(_T_30) @[Servo.scala 14:64]
    node _T_32 = leq(value_1, _T_31) @[Servo.scala 14:36]
    io.servoPulse <= _T_32 @[Servo.scala 14:17]
    
