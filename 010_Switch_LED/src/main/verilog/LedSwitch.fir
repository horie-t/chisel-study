;buildInfoPackage: chisel3, version: 3.1.8, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-07-08 17:44:42.884, builtAtMillis: 1562607882884
circuit LedSwitch : 
  module LedSwitch : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip switch : UInt<1>, led : UInt<1>}
    
    io.led <= io.switch @[LedSwitch.scala 9:10]
    
