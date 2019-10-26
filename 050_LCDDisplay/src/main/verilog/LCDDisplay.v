module Debounce( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   reset, // @[:@5.4]
  input   io_in, // @[:@6.4]
  output  io_out // @[:@6.4]
);
  reg [24:0] value; // @[Counter.scala 26:33:@8.4]
  reg [31:0] _RAND_0;
  wire  enable; // @[Counter.scala 34:24:@10.6]
  wire [25:0] _T_15; // @[Counter.scala 35:22:@11.6]
  wire [24:0] _T_16; // @[Counter.scala 35:22:@12.6]
  wire [24:0] _GEN_0; // @[Counter.scala 37:21:@14.6]
  reg  reg0; // @[Reg.scala 19:20:@19.4]
  reg [31:0] _RAND_1;
  wire  _GEN_2; // @[Reg.scala 20:19:@20.4]
  reg  reg1; // @[Reg.scala 19:20:@23.4]
  reg [31:0] _RAND_2;
  wire  _GEN_3; // @[Reg.scala 20:19:@24.4]
  wire  _T_23; // @[Debounce.scala 19:21:@27.4]
  wire  _T_24; // @[Debounce.scala 19:18:@28.4]
  assign enable = value == 25'h1312cff; // @[Counter.scala 34:24:@10.6]
  assign _T_15 = value + 25'h1; // @[Counter.scala 35:22:@11.6]
  assign _T_16 = value + 25'h1; // @[Counter.scala 35:22:@12.6]
  assign _GEN_0 = enable ? 25'h0 : _T_16; // @[Counter.scala 37:21:@14.6]
  assign _GEN_2 = enable ? io_in : reg0; // @[Reg.scala 20:19:@20.4]
  assign _GEN_3 = enable ? reg0 : reg1; // @[Reg.scala 20:19:@24.4]
  assign _T_23 = reg1 == 1'h0; // @[Debounce.scala 19:21:@27.4]
  assign _T_24 = reg0 & _T_23; // @[Debounce.scala 19:18:@28.4]
  assign io_out = _T_24 & enable; // @[Debounce.scala 19:10:@30.4]
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
  value = _RAND_0[24:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  reg0 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  reg1 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      value <= 25'h0;
    end else begin
      if (enable) begin
        value <= 25'h0;
      end else begin
        value <= _T_16;
      end
    end
    if (reset) begin
      reg0 <= 1'h0;
    end else begin
      if (enable) begin
        reg0 <= io_in;
      end
    end
    if (reset) begin
      reg1 <= 1'h0;
    end else begin
      if (enable) begin
        reg1 <= reg0;
      end
    end
  end
endmodule
module Seg7LED( // @[:@32.2]
  input        clock, // @[:@33.4]
  input        reset, // @[:@34.4]
  input  [3:0] io_digits_0, // @[:@35.4]
  input  [3:0] io_digits_1, // @[:@35.4]
  input  [3:0] io_digits_2, // @[:@35.4]
  input  [3:0] io_digits_3, // @[:@35.4]
  input  [3:0] io_digits_4, // @[:@35.4]
  input  [3:0] io_digits_5, // @[:@35.4]
  input  [3:0] io_digits_6, // @[:@35.4]
  input  [3:0] io_digits_7, // @[:@35.4]
  output [6:0] io_seg7led_cathodes, // @[:@35.4]
  output [7:0] io_seg7led_anodes // @[:@35.4]
);
  reg [16:0] value; // @[Counter.scala 26:33:@37.4]
  reg [31:0] _RAND_0;
  wire  digitChange; // @[Counter.scala 34:24:@39.6]
  wire [17:0] _T_43; // @[Counter.scala 35:22:@40.6]
  wire [16:0] _T_44; // @[Counter.scala 35:22:@41.6]
  wire [16:0] _GEN_0; // @[Counter.scala 37:21:@43.6]
  reg [2:0] value_1; // @[Counter.scala 26:33:@48.4]
  reg [31:0] _RAND_1;
  wire [3:0] _T_51; // @[Counter.scala 35:22:@51.6]
  wire [2:0] _T_52; // @[Counter.scala 35:22:@52.6]
  wire [2:0] _GEN_2; // @[Counter.scala 63:17:@49.4]
  wire [3:0] _GEN_4; // @[Seg7LED.scala 36:17:@56.4]
  wire [3:0] _GEN_5; // @[Seg7LED.scala 36:17:@56.4]
  wire [3:0] _GEN_6; // @[Seg7LED.scala 36:17:@56.4]
  wire [3:0] _GEN_7; // @[Seg7LED.scala 36:17:@56.4]
  wire [3:0] _GEN_8; // @[Seg7LED.scala 36:17:@56.4]
  wire [3:0] _GEN_9; // @[Seg7LED.scala 36:17:@56.4]
  wire [3:0] _GEN_10; // @[Seg7LED.scala 36:17:@56.4]
  wire  _T_56; // @[Seg7LED.scala 36:17:@56.4]
  wire  _T_59; // @[Seg7LED.scala 37:17:@57.4]
  wire  _T_62; // @[Seg7LED.scala 38:17:@58.4]
  wire  _T_65; // @[Seg7LED.scala 39:17:@59.4]
  wire  _T_68; // @[Seg7LED.scala 40:17:@60.4]
  wire  _T_71; // @[Seg7LED.scala 41:17:@61.4]
  wire  _T_74; // @[Seg7LED.scala 42:17:@62.4]
  wire  _T_77; // @[Seg7LED.scala 43:17:@63.4]
  wire  _T_80; // @[Seg7LED.scala 44:17:@64.4]
  wire  _T_83; // @[Seg7LED.scala 45:17:@65.4]
  wire  _T_86; // @[Seg7LED.scala 46:17:@66.4]
  wire  _T_89; // @[Seg7LED.scala 47:17:@67.4]
  wire  _T_92; // @[Seg7LED.scala 48:17:@68.4]
  wire  _T_95; // @[Seg7LED.scala 49:17:@69.4]
  wire  _T_98; // @[Seg7LED.scala 50:17:@70.4]
  wire  _T_101; // @[Seg7LED.scala 51:17:@71.4]
  wire [6:0] _T_103; // @[Mux.scala 61:16:@72.4]
  wire [6:0] _T_104; // @[Mux.scala 61:16:@73.4]
  wire [6:0] _T_105; // @[Mux.scala 61:16:@74.4]
  wire [6:0] _T_106; // @[Mux.scala 61:16:@75.4]
  wire [6:0] _T_107; // @[Mux.scala 61:16:@76.4]
  wire [6:0] _T_108; // @[Mux.scala 61:16:@77.4]
  wire [6:0] _T_109; // @[Mux.scala 61:16:@78.4]
  wire [6:0] _T_110; // @[Mux.scala 61:16:@79.4]
  wire [6:0] _T_111; // @[Mux.scala 61:16:@80.4]
  wire [6:0] _T_112; // @[Mux.scala 61:16:@81.4]
  wire [6:0] _T_113; // @[Mux.scala 61:16:@82.4]
  wire [6:0] _T_114; // @[Mux.scala 61:16:@83.4]
  wire [6:0] _T_115; // @[Mux.scala 61:16:@84.4]
  wire [6:0] _T_116; // @[Mux.scala 61:16:@85.4]
  wire [6:0] _T_117; // @[Mux.scala 61:16:@86.4]
  reg [7:0] anodes; // @[Seg7LED.scala 53:23:@89.4]
  reg [31:0] _RAND_2;
  wire [6:0] _T_121; // @[Seg7LED.scala 56:25:@91.6]
  wire  _T_122; // @[Seg7LED.scala 56:39:@92.6]
  wire [7:0] _T_123; // @[Cat.scala 30:58:@93.6]
  wire [7:0] _GEN_11; // @[Seg7LED.scala 54:22:@90.4]
  assign digitChange = value == 17'h1869f; // @[Counter.scala 34:24:@39.6]
  assign _T_43 = value + 17'h1; // @[Counter.scala 35:22:@40.6]
  assign _T_44 = value + 17'h1; // @[Counter.scala 35:22:@41.6]
  assign _GEN_0 = digitChange ? 17'h0 : _T_44; // @[Counter.scala 37:21:@43.6]
  assign _T_51 = value_1 + 3'h1; // @[Counter.scala 35:22:@51.6]
  assign _T_52 = value_1 + 3'h1; // @[Counter.scala 35:22:@52.6]
  assign _GEN_2 = digitChange ? _T_52 : value_1; // @[Counter.scala 63:17:@49.4]
  assign _GEN_4 = 3'h1 == value_1 ? io_digits_1 : io_digits_0; // @[Seg7LED.scala 36:17:@56.4]
  assign _GEN_5 = 3'h2 == value_1 ? io_digits_2 : _GEN_4; // @[Seg7LED.scala 36:17:@56.4]
  assign _GEN_6 = 3'h3 == value_1 ? io_digits_3 : _GEN_5; // @[Seg7LED.scala 36:17:@56.4]
  assign _GEN_7 = 3'h4 == value_1 ? io_digits_4 : _GEN_6; // @[Seg7LED.scala 36:17:@56.4]
  assign _GEN_8 = 3'h5 == value_1 ? io_digits_5 : _GEN_7; // @[Seg7LED.scala 36:17:@56.4]
  assign _GEN_9 = 3'h6 == value_1 ? io_digits_6 : _GEN_8; // @[Seg7LED.scala 36:17:@56.4]
  assign _GEN_10 = 3'h7 == value_1 ? io_digits_7 : _GEN_9; // @[Seg7LED.scala 36:17:@56.4]
  assign _T_56 = _GEN_10 == 4'h0; // @[Seg7LED.scala 36:17:@56.4]
  assign _T_59 = _GEN_10 == 4'h1; // @[Seg7LED.scala 37:17:@57.4]
  assign _T_62 = _GEN_10 == 4'h2; // @[Seg7LED.scala 38:17:@58.4]
  assign _T_65 = _GEN_10 == 4'h3; // @[Seg7LED.scala 39:17:@59.4]
  assign _T_68 = _GEN_10 == 4'h4; // @[Seg7LED.scala 40:17:@60.4]
  assign _T_71 = _GEN_10 == 4'h5; // @[Seg7LED.scala 41:17:@61.4]
  assign _T_74 = _GEN_10 == 4'h6; // @[Seg7LED.scala 42:17:@62.4]
  assign _T_77 = _GEN_10 == 4'h7; // @[Seg7LED.scala 43:17:@63.4]
  assign _T_80 = _GEN_10 == 4'h8; // @[Seg7LED.scala 44:17:@64.4]
  assign _T_83 = _GEN_10 == 4'h9; // @[Seg7LED.scala 45:17:@65.4]
  assign _T_86 = _GEN_10 == 4'ha; // @[Seg7LED.scala 46:17:@66.4]
  assign _T_89 = _GEN_10 == 4'hb; // @[Seg7LED.scala 47:17:@67.4]
  assign _T_92 = _GEN_10 == 4'hc; // @[Seg7LED.scala 48:17:@68.4]
  assign _T_95 = _GEN_10 == 4'hd; // @[Seg7LED.scala 49:17:@69.4]
  assign _T_98 = _GEN_10 == 4'he; // @[Seg7LED.scala 50:17:@70.4]
  assign _T_101 = _GEN_10 == 4'hf; // @[Seg7LED.scala 51:17:@71.4]
  assign _T_103 = _T_101 ? 7'he : 7'h7f; // @[Mux.scala 61:16:@72.4]
  assign _T_104 = _T_98 ? 7'h6 : _T_103; // @[Mux.scala 61:16:@73.4]
  assign _T_105 = _T_95 ? 7'h21 : _T_104; // @[Mux.scala 61:16:@74.4]
  assign _T_106 = _T_92 ? 7'h46 : _T_105; // @[Mux.scala 61:16:@75.4]
  assign _T_107 = _T_89 ? 7'h3 : _T_106; // @[Mux.scala 61:16:@76.4]
  assign _T_108 = _T_86 ? 7'h8 : _T_107; // @[Mux.scala 61:16:@77.4]
  assign _T_109 = _T_83 ? 7'h10 : _T_108; // @[Mux.scala 61:16:@78.4]
  assign _T_110 = _T_80 ? 7'h0 : _T_109; // @[Mux.scala 61:16:@79.4]
  assign _T_111 = _T_77 ? 7'h58 : _T_110; // @[Mux.scala 61:16:@80.4]
  assign _T_112 = _T_74 ? 7'h2 : _T_111; // @[Mux.scala 61:16:@81.4]
  assign _T_113 = _T_71 ? 7'h12 : _T_112; // @[Mux.scala 61:16:@82.4]
  assign _T_114 = _T_68 ? 7'h19 : _T_113; // @[Mux.scala 61:16:@83.4]
  assign _T_115 = _T_65 ? 7'h30 : _T_114; // @[Mux.scala 61:16:@84.4]
  assign _T_116 = _T_62 ? 7'h24 : _T_115; // @[Mux.scala 61:16:@85.4]
  assign _T_117 = _T_59 ? 7'h79 : _T_116; // @[Mux.scala 61:16:@86.4]
  assign _T_121 = anodes[6:0]; // @[Seg7LED.scala 56:25:@91.6]
  assign _T_122 = anodes[7]; // @[Seg7LED.scala 56:39:@92.6]
  assign _T_123 = {_T_121,_T_122}; // @[Cat.scala 30:58:@93.6]
  assign _GEN_11 = digitChange ? _T_123 : anodes; // @[Seg7LED.scala 54:22:@90.4]
  assign io_seg7led_cathodes = _T_56 ? 7'h40 : _T_117; // @[Seg7LED.scala 34:23:@88.4]
  assign io_seg7led_anodes = anodes; // @[Seg7LED.scala 58:21:@96.4]
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
  value_1 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  anodes = _RAND_2[7:0];
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
      value_1 <= 3'h0;
    end else begin
      if (digitChange) begin
        value_1 <= _T_52;
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
module LCDDisplay( // @[:@99.2]
  input        clock, // @[:@100.4]
  input        reset, // @[:@101.4]
  output       io_lcd_serialClock, // @[:@102.4]
  output       io_lcd_dataCommand, // @[:@102.4]
  output       io_lcd_chipSelect, // @[:@102.4]
  output       io_lcd_masterOutSlaveIn, // @[:@102.4]
  input        io_lcd_masterInSlaveOut, // @[:@102.4]
  output       io_lcd_reset, // @[:@102.4]
  output       io_lcd_backLight, // @[:@102.4]
  input        io_operation_command_valid, // @[:@102.4]
  input  [7:0] io_operation_command_bits, // @[:@102.4]
  input        io_operation_exec, // @[:@102.4]
  input        io_operation_reset, // @[:@102.4]
  output [6:0] io_seg7LED_cathodes, // @[:@102.4]
  output       io_seg7LED_decimalPoint, // @[:@102.4]
  output [7:0] io_seg7LED_anodes // @[:@102.4]
);
  wire  Debounce_clock; // @[Debounce.scala 26:26:@123.4]
  wire  Debounce_reset; // @[Debounce.scala 26:26:@123.4]
  wire  Debounce_io_in; // @[Debounce.scala 26:26:@123.4]
  wire  Debounce_io_out; // @[Debounce.scala 26:26:@123.4]
  wire  seg7LED_clock; // @[LCDDisplay.scala 49:23:@133.4]
  wire  seg7LED_reset; // @[LCDDisplay.scala 49:23:@133.4]
  wire [3:0] seg7LED_io_digits_0; // @[LCDDisplay.scala 49:23:@133.4]
  wire [3:0] seg7LED_io_digits_1; // @[LCDDisplay.scala 49:23:@133.4]
  wire [3:0] seg7LED_io_digits_2; // @[LCDDisplay.scala 49:23:@133.4]
  wire [3:0] seg7LED_io_digits_3; // @[LCDDisplay.scala 49:23:@133.4]
  wire [3:0] seg7LED_io_digits_4; // @[LCDDisplay.scala 49:23:@133.4]
  wire [3:0] seg7LED_io_digits_5; // @[LCDDisplay.scala 49:23:@133.4]
  wire [3:0] seg7LED_io_digits_6; // @[LCDDisplay.scala 49:23:@133.4]
  wire [3:0] seg7LED_io_digits_7; // @[LCDDisplay.scala 49:23:@133.4]
  wire [6:0] seg7LED_io_seg7led_cathodes; // @[LCDDisplay.scala 49:23:@133.4]
  wire [7:0] seg7LED_io_seg7led_anodes; // @[LCDDisplay.scala 49:23:@133.4]
  reg [7:0] commandData_0; // @[LCDDisplay.scala 37:28:@121.4]
  reg [31:0] _RAND_0;
  reg [7:0] commandData_1; // @[LCDDisplay.scala 37:28:@121.4]
  reg [31:0] _RAND_1;
  reg [7:0] commandData_2; // @[LCDDisplay.scala 37:28:@121.4]
  reg [31:0] _RAND_2;
  reg [7:0] commandData_3; // @[LCDDisplay.scala 37:28:@121.4]
  reg [31:0] _RAND_3;
  reg [1:0] commandDataWriteIndex; // @[LCDDisplay.scala 38:38:@122.4]
  reg [31:0] _RAND_4;
  wire [7:0] _GEN_2; // @[LCDDisplay.scala 44:40:@128.6]
  wire [7:0] _GEN_3; // @[LCDDisplay.scala 44:40:@128.6]
  wire [7:0] _GEN_4; // @[LCDDisplay.scala 44:40:@128.6]
  wire [7:0] _GEN_5; // @[LCDDisplay.scala 44:40:@128.6]
  wire [2:0] _T_102; // @[LCDDisplay.scala 45:52:@129.6]
  wire [1:0] _T_103; // @[LCDDisplay.scala 45:52:@130.6]
  wire [7:0] _GEN_6; // @[LCDDisplay.scala 43:47:@127.4]
  wire [7:0] _GEN_7; // @[LCDDisplay.scala 43:47:@127.4]
  wire [7:0] _GEN_8; // @[LCDDisplay.scala 43:47:@127.4]
  wire [7:0] _GEN_9; // @[LCDDisplay.scala 43:47:@127.4]
  wire [1:0] _GEN_10; // @[LCDDisplay.scala 43:47:@127.4]
  Debounce Debounce ( // @[Debounce.scala 26:26:@123.4]
    .clock(Debounce_clock),
    .reset(Debounce_reset),
    .io_in(Debounce_io_in),
    .io_out(Debounce_io_out)
  );
  Seg7LED seg7LED ( // @[LCDDisplay.scala 49:23:@133.4]
    .clock(seg7LED_clock),
    .reset(seg7LED_reset),
    .io_digits_0(seg7LED_io_digits_0),
    .io_digits_1(seg7LED_io_digits_1),
    .io_digits_2(seg7LED_io_digits_2),
    .io_digits_3(seg7LED_io_digits_3),
    .io_digits_4(seg7LED_io_digits_4),
    .io_digits_5(seg7LED_io_digits_5),
    .io_digits_6(seg7LED_io_digits_6),
    .io_digits_7(seg7LED_io_digits_7),
    .io_seg7led_cathodes(seg7LED_io_seg7led_cathodes),
    .io_seg7led_anodes(seg7LED_io_seg7led_anodes)
  );
  assign _GEN_2 = 2'h0 == commandDataWriteIndex ? io_operation_command_bits : commandData_0; // @[LCDDisplay.scala 44:40:@128.6]
  assign _GEN_3 = 2'h1 == commandDataWriteIndex ? io_operation_command_bits : commandData_1; // @[LCDDisplay.scala 44:40:@128.6]
  assign _GEN_4 = 2'h2 == commandDataWriteIndex ? io_operation_command_bits : commandData_2; // @[LCDDisplay.scala 44:40:@128.6]
  assign _GEN_5 = 2'h3 == commandDataWriteIndex ? io_operation_command_bits : commandData_3; // @[LCDDisplay.scala 44:40:@128.6]
  assign _T_102 = commandDataWriteIndex + 2'h1; // @[LCDDisplay.scala 45:52:@129.6]
  assign _T_103 = commandDataWriteIndex + 2'h1; // @[LCDDisplay.scala 45:52:@130.6]
  assign _GEN_6 = Debounce_io_out ? _GEN_2 : commandData_0; // @[LCDDisplay.scala 43:47:@127.4]
  assign _GEN_7 = Debounce_io_out ? _GEN_3 : commandData_1; // @[LCDDisplay.scala 43:47:@127.4]
  assign _GEN_8 = Debounce_io_out ? _GEN_4 : commandData_2; // @[LCDDisplay.scala 43:47:@127.4]
  assign _GEN_9 = Debounce_io_out ? _GEN_5 : commandData_3; // @[LCDDisplay.scala 43:47:@127.4]
  assign _GEN_10 = Debounce_io_out ? _T_103 : commandDataWriteIndex; // @[LCDDisplay.scala 43:47:@127.4]
  assign io_lcd_serialClock = 1'h1; // @[LCDDisplay.scala 58:22:@156.4]
  assign io_lcd_dataCommand = 1'h0; // @[LCDDisplay.scala 59:22:@157.4]
  assign io_lcd_chipSelect = 1'h0; // @[LCDDisplay.scala 57:21:@155.4]
  assign io_lcd_masterOutSlaveIn = 1'h0; // @[LCDDisplay.scala 60:27:@158.4]
  assign io_lcd_reset = 1'h0; // @[LCDDisplay.scala 61:16:@159.4]
  assign io_lcd_backLight = 1'h1; // @[LCDDisplay.scala 62:20:@160.4]
  assign io_seg7LED_cathodes = seg7LED_io_seg7led_cathodes; // @[LCDDisplay.scala 54:14:@154.4]
  assign io_seg7LED_decimalPoint = 1'h1; // @[LCDDisplay.scala 54:14:@153.4]
  assign io_seg7LED_anodes = seg7LED_io_seg7led_anodes; // @[LCDDisplay.scala 54:14:@152.4]
  assign Debounce_clock = clock; // @[:@124.4]
  assign Debounce_reset = reset; // @[:@125.4]
  assign Debounce_io_in = io_operation_command_valid; // @[Debounce.scala 27:20:@126.4]
  assign seg7LED_clock = clock; // @[:@134.4]
  assign seg7LED_reset = reset; // @[:@135.4]
  assign seg7LED_io_digits_0 = commandData_3[3:0]; // @[LCDDisplay.scala 50:21:@144.4]
  assign seg7LED_io_digits_1 = commandData_3[7:4]; // @[LCDDisplay.scala 50:21:@145.4]
  assign seg7LED_io_digits_2 = commandData_2[3:0]; // @[LCDDisplay.scala 50:21:@146.4]
  assign seg7LED_io_digits_3 = commandData_2[7:4]; // @[LCDDisplay.scala 50:21:@147.4]
  assign seg7LED_io_digits_4 = commandData_1[3:0]; // @[LCDDisplay.scala 50:21:@148.4]
  assign seg7LED_io_digits_5 = commandData_1[7:4]; // @[LCDDisplay.scala 50:21:@149.4]
  assign seg7LED_io_digits_6 = commandData_0[3:0]; // @[LCDDisplay.scala 50:21:@150.4]
  assign seg7LED_io_digits_7 = commandData_0[7:4]; // @[LCDDisplay.scala 50:21:@151.4]
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
  commandData_0 = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  commandData_1 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  commandData_2 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  commandData_3 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  commandDataWriteIndex = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      commandData_0 <= 8'h0;
    end else begin
      if (Debounce_io_out) begin
        if (2'h0 == commandDataWriteIndex) begin
          commandData_0 <= io_operation_command_bits;
        end
      end
    end
    if (reset) begin
      commandData_1 <= 8'h0;
    end else begin
      if (Debounce_io_out) begin
        if (2'h1 == commandDataWriteIndex) begin
          commandData_1 <= io_operation_command_bits;
        end
      end
    end
    if (reset) begin
      commandData_2 <= 8'h0;
    end else begin
      if (Debounce_io_out) begin
        if (2'h2 == commandDataWriteIndex) begin
          commandData_2 <= io_operation_command_bits;
        end
      end
    end
    if (reset) begin
      commandData_3 <= 8'h0;
    end else begin
      if (Debounce_io_out) begin
        if (2'h3 == commandDataWriteIndex) begin
          commandData_3 <= io_operation_command_bits;
        end
      end
    end
    if (reset) begin
      commandDataWriteIndex <= 2'h0;
    end else begin
      if (Debounce_io_out) begin
        commandDataWriteIndex <= _T_103;
      end
    end
  end
endmodule
