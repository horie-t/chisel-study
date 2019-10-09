;buildInfoPackage: chisel3, version: 3.1.8, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2019-07-08 17:44:42.884, builtAtMillis: 1562607882884
circuit BitwiseOperator : 
  module BitwiseOperator : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip input1 : UInt<1>, flip input2 : UInt<1>, bitwiseNot1 : UInt<1>, bitwiseAnd : UInt<1>, bitwiseOr : UInt<1>, bitwiseXor : UInt<1>}
    
    node _T_17 = not(io.input1) @[BitwiseOperator.scala 13:21]
    io.bitwiseNot1 <= _T_17 @[BitwiseOperator.scala 13:18]
    node _T_18 = and(io.input1, io.input2) @[BitwiseOperator.scala 14:31]
    io.bitwiseAnd <= _T_18 @[BitwiseOperator.scala 14:18]
    node _T_19 = or(io.input1, io.input2) @[BitwiseOperator.scala 15:31]
    io.bitwiseOr <= _T_19 @[BitwiseOperator.scala 15:18]
    node _T_20 = xor(io.input1, io.input2) @[BitwiseOperator.scala 16:31]
    io.bitwiseXor <= _T_20 @[BitwiseOperator.scala 16:18]
    
