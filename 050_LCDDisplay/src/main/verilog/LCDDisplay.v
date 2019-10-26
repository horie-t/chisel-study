module Seg7LED( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  output [7:0] io_seg7led_anodes // @[:@6.4]
);
  reg [16:0] value; // @[Counter.scala 26:33:@8.4]
  reg [31:0] _RAND_0;
  wire  digitChange; // @[Counter.scala 34:24:@10.6]
  wire [17:0] _T_43; // @[Counter.scala 35:22:@11.6]
  wire [16:0] _T_44; // @[Counter.scala 35:22:@12.6]
  wire [16:0] _GEN_0; // @[Counter.scala 37:21:@14.6]
  reg [7:0] anodes; // @[Seg7LED.scala 53:23:@60.4]
  reg [31:0] _RAND_1;
  wire [6:0] _T_121; // @[Seg7LED.scala 56:25:@62.6]
  wire  _T_122; // @[Seg7LED.scala 56:39:@63.6]
  wire [7:0] _T_123; // @[Cat.scala 30:58:@64.6]
  wire [7:0] _GEN_11; // @[Seg7LED.scala 54:22:@61.4]
  assign digitChange = value == 17'h1869f; // @[Counter.scala 34:24:@10.6]
  assign _T_43 = value + 17'h1; // @[Counter.scala 35:22:@11.6]
  assign _T_44 = value + 17'h1; // @[Counter.scala 35:22:@12.6]
  assign _GEN_0 = digitChange ? 17'h0 : _T_44; // @[Counter.scala 37:21:@14.6]
  assign _T_121 = anodes[6:0]; // @[Seg7LED.scala 56:25:@62.6]
  assign _T_122 = anodes[7]; // @[Seg7LED.scala 56:39:@63.6]
  assign _T_123 = {_T_121,_T_122}; // @[Cat.scala 30:58:@64.6]
  assign _GEN_11 = digitChange ? _T_123 : anodes; // @[Seg7LED.scala 54:22:@61.4]
  assign io_seg7led_anodes = anodes; // @[Seg7LED.scala 58:21:@67.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  value = _RAND_0[16:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  anodes = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      value <= 17'h0;
    end else begin
      if (digitChange) begin
        value <= 17'h0;
      end else begin
        value <= _T_44;
      end
    end
    if (reset) begin
      anodes <= 8'hfe;
    end else begin
      if (digitChange) begin
        anodes <= _T_123;
      end
    end
  end
endmodule
module LCDDisplay( // @[:@70.2]
  input        clock, // @[:@71.4]
  input        reset, // @[:@72.4]
  output       io_lcd_serialClock, // @[:@73.4]
  output       io_lcd_dataCommand, // @[:@73.4]
  output       io_lcd_chipSelect, // @[:@73.4]
  output       io_lcd_masterOutSlaveIn, // @[:@73.4]
  input        io_lcd_masterInSlaveOut, // @[:@73.4]
  output       io_lcd_reset, // @[:@73.4]
  output       io_lcd_led, // @[:@73.4]
  input        io_operation_command_valid, // @[:@73.4]
  input  [7:0] io_operation_command_bits, // @[:@73.4]
  input        io_operation_exec, // @[:@73.4]
  input        io_operation_reset, // @[:@73.4]
  output [6:0] io_seg7LED_cathodes, // @[:@73.4]
  output       io_seg7LED_decimalPoint, // @[:@73.4]
  output [7:0] io_seg7LED_anodes // @[:@73.4]
);
  wire  seg7LED_clock; // @[LCDDisplay.scala 37:23:@87.4]
  wire  seg7LED_reset; // @[LCDDisplay.scala 37:23:@87.4]
  wire [7:0] seg7LED_io_seg7led_anodes; // @[LCDDisplay.scala 37:23:@87.4]
  Seg7LED seg7LED ( // @[LCDDisplay.scala 37:23:@87.4]
    .clock(seg7LED_clock),
    .reset(seg7LED_reset),
    .io_seg7led_anodes(seg7LED_io_seg7led_anodes)
  );
  assign io_lcd_serialClock = 1'h1; // @[LCDDisplay.scala 45:22:@111.4]
  assign io_lcd_dataCommand = 1'h0; // @[LCDDisplay.scala 46:22:@112.4]
  assign io_lcd_chipSelect = 1'h0; // @[LCDDisplay.scala 44:21:@110.4]
  assign io_lcd_masterOutSlaveIn = 1'h0; // @[LCDDisplay.scala 47:27:@113.4]
  assign io_lcd_reset = 1'h0; // @[LCDDisplay.scala 48:16:@114.4]
  assign io_lcd_led = 1'h1; // @[LCDDisplay.scala 49:14:@115.4]
  assign io_seg7LED_cathodes = 7'h40; // @[LCDDisplay.scala 41:14:@109.4]
  assign io_seg7LED_decimalPoint = 1'h1; // @[LCDDisplay.scala 41:14:@108.4]
  assign io_seg7LED_anodes = seg7LED_io_seg7led_anodes; // @[LCDDisplay.scala 41:14:@107.4]
  assign seg7LED_clock = clock; // @[:@88.4]
  assign seg7LED_reset = reset; // @[:@89.4]
endmodule
