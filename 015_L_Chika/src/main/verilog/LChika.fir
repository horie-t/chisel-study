;buildInfoPackage: chisel3, version: 3.1.8, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-07-08 17:44:42.884, builtAtMillis: 1562607882884
circuit LChika : 
  module LChika : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip switch : UInt<1>, led : UInt<1>}
    
    reg light : UInt<1>, clock with : (reset => (reset, UInt<1>("h01"))) @[LChika.scala 16:22]
    reg counter : UInt<27>, clock with : (reset => (reset, UInt<27>("h00"))) @[LChika.scala 17:24]
    node _T_14 = eq(counter, UInt<27>("h05f5e0ff")) @[LChika.scala 19:17]
    when _T_14 : @[LChika.scala 19:45]
      counter <= UInt<1>("h00") @[LChika.scala 21:13]
      node _T_16 = not(light) @[LChika.scala 22:14]
      light <= _T_16 @[LChika.scala 22:11]
      skip @[LChika.scala 19:45]
    else : @[LChika.scala 23:16]
      node _T_18 = add(counter, UInt<1>("h01")) @[LChika.scala 24:24]
      node _T_19 = tail(_T_18, 1) @[LChika.scala 24:24]
      counter <= _T_19 @[LChika.scala 24:13]
      skip @[LChika.scala 23:16]
    node _T_20 = and(light, io.switch) @[LChika.scala 27:19]
    io.led <= _T_20 @[LChika.scala 27:10]
    
