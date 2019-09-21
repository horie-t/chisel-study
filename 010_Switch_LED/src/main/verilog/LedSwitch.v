module LedSwitch( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   reset, // @[:@5.4]
  input   io_switch, // @[:@6.4]
  output  io_led // @[:@6.4]
);
  assign io_led = io_switch; // @[LedSwitch.scala 9:10:@8.4]
endmodule
