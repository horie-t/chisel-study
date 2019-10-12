module BitwiseOperator( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   reset, // @[:@5.4]
  input   io_input1, // @[:@6.4]
  input   io_input2, // @[:@6.4]
  output  io_bitwiseNot1, // @[:@6.4]
  output  io_bitwiseAnd, // @[:@6.4]
  output  io_bitwiseOr, // @[:@6.4]
  output  io_bitwiseXor // @[:@6.4]
);
  assign io_bitwiseNot1 = ~ io_input1; // @[BitwiseOperator.scala 13:18:@9.4]
  assign io_bitwiseAnd = io_input1 & io_input2; // @[BitwiseOperator.scala 14:18:@11.4]
  assign io_bitwiseOr = io_input1 | io_input2; // @[BitwiseOperator.scala 15:18:@13.4]
  assign io_bitwiseXor = io_input1 ^ io_input2; // @[BitwiseOperator.scala 16:18:@15.4]
endmodule