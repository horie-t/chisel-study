module LEDOn( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   reset, // @[:@5.4]
  output  io_led // @[:@6.4]
);
  assign io_led = 1'h1; // @[LEDOn.scala 8:10:@8.4]
endmodule
