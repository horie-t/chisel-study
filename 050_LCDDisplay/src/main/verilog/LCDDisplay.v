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
module ShiftRegisterPISO( // @[:@90.2]
  input        clock, // @[:@91.4]
  input        reset, // @[:@92.4]
  input  [7:0] io_d, // @[:@93.4]
  input        io_load, // @[:@93.4]
  input        io_enable, // @[:@93.4]
  output       io_shiftOut // @[:@93.4]
);
  reg [7:0] reg$; // @[ShiftRegister.scala 37:20:@95.4]
  reg [31:0] _RAND_0;
  wire [6:0] _T_15; // @[ShiftRegister.scala 41:19:@101.8]
  wire [7:0] _T_17; // @[Cat.scala 30:58:@102.8]
  wire [7:0] _GEN_0; // @[ShiftRegister.scala 40:27:@100.6]
  wire [7:0] _GEN_1; // @[ShiftRegister.scala 38:18:@96.4]
  assign _T_15 = reg$[6:0]; // @[ShiftRegister.scala 41:19:@101.8]
  assign _T_17 = {_T_15,1'h1}; // @[Cat.scala 30:58:@102.8]
  assign _GEN_0 = io_enable ? _T_17 : reg$; // @[ShiftRegister.scala 40:27:@100.6]
  assign _GEN_1 = io_load ? io_d : _GEN_0; // @[ShiftRegister.scala 38:18:@96.4]
  assign io_shiftOut = reg$[7]; // @[ShiftRegister.scala 44:15:@106.4]
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
  reg$ = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      reg$ <= 8'h0;
    end else begin
      if (io_load) begin
        reg$ <= io_d;
      end else begin
        if (io_enable) begin
          reg$ <= _T_17;
        end
      end
    end
  end
endmodule
module Seg7LED( // @[:@108.2]
  input        clock, // @[:@109.4]
  input        reset, // @[:@110.4]
  input  [3:0] io_digits_0, // @[:@111.4]
  input  [3:0] io_digits_1, // @[:@111.4]
  input  [3:0] io_digits_2, // @[:@111.4]
  input  [3:0] io_digits_3, // @[:@111.4]
  input  [3:0] io_digits_4, // @[:@111.4]
  input  [3:0] io_digits_5, // @[:@111.4]
  input  [3:0] io_digits_6, // @[:@111.4]
  input  [3:0] io_digits_7, // @[:@111.4]
  output [6:0] io_seg7led_cathodes, // @[:@111.4]
  output [7:0] io_seg7led_anodes // @[:@111.4]
);
  reg [16:0] value; // @[Counter.scala 26:33:@113.4]
  reg [31:0] _RAND_0;
  wire  digitChange; // @[Counter.scala 34:24:@115.6]
  wire [17:0] _T_43; // @[Counter.scala 35:22:@116.6]
  wire [16:0] _T_44; // @[Counter.scala 35:22:@117.6]
  wire [16:0] _GEN_0; // @[Counter.scala 37:21:@119.6]
  reg [2:0] value_1; // @[Counter.scala 26:33:@124.4]
  reg [31:0] _RAND_1;
  wire [3:0] _T_51; // @[Counter.scala 35:22:@127.6]
  wire [2:0] _T_52; // @[Counter.scala 35:22:@128.6]
  wire [2:0] _GEN_2; // @[Counter.scala 63:17:@125.4]
  wire [3:0] _GEN_4; // @[Seg7LED.scala 36:17:@132.4]
  wire [3:0] _GEN_5; // @[Seg7LED.scala 36:17:@132.4]
  wire [3:0] _GEN_6; // @[Seg7LED.scala 36:17:@132.4]
  wire [3:0] _GEN_7; // @[Seg7LED.scala 36:17:@132.4]
  wire [3:0] _GEN_8; // @[Seg7LED.scala 36:17:@132.4]
  wire [3:0] _GEN_9; // @[Seg7LED.scala 36:17:@132.4]
  wire [3:0] _GEN_10; // @[Seg7LED.scala 36:17:@132.4]
  wire  _T_56; // @[Seg7LED.scala 36:17:@132.4]
  wire  _T_59; // @[Seg7LED.scala 37:17:@133.4]
  wire  _T_62; // @[Seg7LED.scala 38:17:@134.4]
  wire  _T_65; // @[Seg7LED.scala 39:17:@135.4]
  wire  _T_68; // @[Seg7LED.scala 40:17:@136.4]
  wire  _T_71; // @[Seg7LED.scala 41:17:@137.4]
  wire  _T_74; // @[Seg7LED.scala 42:17:@138.4]
  wire  _T_77; // @[Seg7LED.scala 43:17:@139.4]
  wire  _T_80; // @[Seg7LED.scala 44:17:@140.4]
  wire  _T_83; // @[Seg7LED.scala 45:17:@141.4]
  wire  _T_86; // @[Seg7LED.scala 46:17:@142.4]
  wire  _T_89; // @[Seg7LED.scala 47:17:@143.4]
  wire  _T_92; // @[Seg7LED.scala 48:17:@144.4]
  wire  _T_95; // @[Seg7LED.scala 49:17:@145.4]
  wire  _T_98; // @[Seg7LED.scala 50:17:@146.4]
  wire  _T_101; // @[Seg7LED.scala 51:17:@147.4]
  wire [6:0] _T_103; // @[Mux.scala 61:16:@148.4]
  wire [6:0] _T_104; // @[Mux.scala 61:16:@149.4]
  wire [6:0] _T_105; // @[Mux.scala 61:16:@150.4]
  wire [6:0] _T_106; // @[Mux.scala 61:16:@151.4]
  wire [6:0] _T_107; // @[Mux.scala 61:16:@152.4]
  wire [6:0] _T_108; // @[Mux.scala 61:16:@153.4]
  wire [6:0] _T_109; // @[Mux.scala 61:16:@154.4]
  wire [6:0] _T_110; // @[Mux.scala 61:16:@155.4]
  wire [6:0] _T_111; // @[Mux.scala 61:16:@156.4]
  wire [6:0] _T_112; // @[Mux.scala 61:16:@157.4]
  wire [6:0] _T_113; // @[Mux.scala 61:16:@158.4]
  wire [6:0] _T_114; // @[Mux.scala 61:16:@159.4]
  wire [6:0] _T_115; // @[Mux.scala 61:16:@160.4]
  wire [6:0] _T_116; // @[Mux.scala 61:16:@161.4]
  wire [6:0] _T_117; // @[Mux.scala 61:16:@162.4]
  reg [7:0] anodes; // @[Seg7LED.scala 53:23:@165.4]
  reg [31:0] _RAND_2;
  wire [6:0] _T_121; // @[Seg7LED.scala 56:25:@167.6]
  wire  _T_122; // @[Seg7LED.scala 56:39:@168.6]
  wire [7:0] _T_123; // @[Cat.scala 30:58:@169.6]
  wire [7:0] _GEN_11; // @[Seg7LED.scala 54:22:@166.4]
  assign digitChange = value == 17'h1869f; // @[Counter.scala 34:24:@115.6]
  assign _T_43 = value + 17'h1; // @[Counter.scala 35:22:@116.6]
  assign _T_44 = value + 17'h1; // @[Counter.scala 35:22:@117.6]
  assign _GEN_0 = digitChange ? 17'h0 : _T_44; // @[Counter.scala 37:21:@119.6]
  assign _T_51 = value_1 + 3'h1; // @[Counter.scala 35:22:@127.6]
  assign _T_52 = value_1 + 3'h1; // @[Counter.scala 35:22:@128.6]
  assign _GEN_2 = digitChange ? _T_52 : value_1; // @[Counter.scala 63:17:@125.4]
  assign _GEN_4 = 3'h1 == value_1 ? io_digits_1 : io_digits_0; // @[Seg7LED.scala 36:17:@132.4]
  assign _GEN_5 = 3'h2 == value_1 ? io_digits_2 : _GEN_4; // @[Seg7LED.scala 36:17:@132.4]
  assign _GEN_6 = 3'h3 == value_1 ? io_digits_3 : _GEN_5; // @[Seg7LED.scala 36:17:@132.4]
  assign _GEN_7 = 3'h4 == value_1 ? io_digits_4 : _GEN_6; // @[Seg7LED.scala 36:17:@132.4]
  assign _GEN_8 = 3'h5 == value_1 ? io_digits_5 : _GEN_7; // @[Seg7LED.scala 36:17:@132.4]
  assign _GEN_9 = 3'h6 == value_1 ? io_digits_6 : _GEN_8; // @[Seg7LED.scala 36:17:@132.4]
  assign _GEN_10 = 3'h7 == value_1 ? io_digits_7 : _GEN_9; // @[Seg7LED.scala 36:17:@132.4]
  assign _T_56 = _GEN_10 == 4'h0; // @[Seg7LED.scala 36:17:@132.4]
  assign _T_59 = _GEN_10 == 4'h1; // @[Seg7LED.scala 37:17:@133.4]
  assign _T_62 = _GEN_10 == 4'h2; // @[Seg7LED.scala 38:17:@134.4]
  assign _T_65 = _GEN_10 == 4'h3; // @[Seg7LED.scala 39:17:@135.4]
  assign _T_68 = _GEN_10 == 4'h4; // @[Seg7LED.scala 40:17:@136.4]
  assign _T_71 = _GEN_10 == 4'h5; // @[Seg7LED.scala 41:17:@137.4]
  assign _T_74 = _GEN_10 == 4'h6; // @[Seg7LED.scala 42:17:@138.4]
  assign _T_77 = _GEN_10 == 4'h7; // @[Seg7LED.scala 43:17:@139.4]
  assign _T_80 = _GEN_10 == 4'h8; // @[Seg7LED.scala 44:17:@140.4]
  assign _T_83 = _GEN_10 == 4'h9; // @[Seg7LED.scala 45:17:@141.4]
  assign _T_86 = _GEN_10 == 4'ha; // @[Seg7LED.scala 46:17:@142.4]
  assign _T_89 = _GEN_10 == 4'hb; // @[Seg7LED.scala 47:17:@143.4]
  assign _T_92 = _GEN_10 == 4'hc; // @[Seg7LED.scala 48:17:@144.4]
  assign _T_95 = _GEN_10 == 4'hd; // @[Seg7LED.scala 49:17:@145.4]
  assign _T_98 = _GEN_10 == 4'he; // @[Seg7LED.scala 50:17:@146.4]
  assign _T_101 = _GEN_10 == 4'hf; // @[Seg7LED.scala 51:17:@147.4]
  assign _T_103 = _T_101 ? 7'he : 7'h7f; // @[Mux.scala 61:16:@148.4]
  assign _T_104 = _T_98 ? 7'h6 : _T_103; // @[Mux.scala 61:16:@149.4]
  assign _T_105 = _T_95 ? 7'h21 : _T_104; // @[Mux.scala 61:16:@150.4]
  assign _T_106 = _T_92 ? 7'h46 : _T_105; // @[Mux.scala 61:16:@151.4]
  assign _T_107 = _T_89 ? 7'h3 : _T_106; // @[Mux.scala 61:16:@152.4]
  assign _T_108 = _T_86 ? 7'h8 : _T_107; // @[Mux.scala 61:16:@153.4]
  assign _T_109 = _T_83 ? 7'h10 : _T_108; // @[Mux.scala 61:16:@154.4]
  assign _T_110 = _T_80 ? 7'h0 : _T_109; // @[Mux.scala 61:16:@155.4]
  assign _T_111 = _T_77 ? 7'h58 : _T_110; // @[Mux.scala 61:16:@156.4]
  assign _T_112 = _T_74 ? 7'h2 : _T_111; // @[Mux.scala 61:16:@157.4]
  assign _T_113 = _T_71 ? 7'h12 : _T_112; // @[Mux.scala 61:16:@158.4]
  assign _T_114 = _T_68 ? 7'h19 : _T_113; // @[Mux.scala 61:16:@159.4]
  assign _T_115 = _T_65 ? 7'h30 : _T_114; // @[Mux.scala 61:16:@160.4]
  assign _T_116 = _T_62 ? 7'h24 : _T_115; // @[Mux.scala 61:16:@161.4]
  assign _T_117 = _T_59 ? 7'h79 : _T_116; // @[Mux.scala 61:16:@162.4]
  assign _T_121 = anodes[6:0]; // @[Seg7LED.scala 56:25:@167.6]
  assign _T_122 = anodes[7]; // @[Seg7LED.scala 56:39:@168.6]
  assign _T_123 = {_T_121,_T_122}; // @[Cat.scala 30:58:@169.6]
  assign _GEN_11 = digitChange ? _T_123 : anodes; // @[Seg7LED.scala 54:22:@166.4]
  assign io_seg7led_cathodes = _T_56 ? 7'h40 : _T_117; // @[Seg7LED.scala 34:23:@164.4]
  assign io_seg7led_anodes = anodes; // @[Seg7LED.scala 58:21:@172.4]
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
module LCDDisplay( // @[:@175.2]
  input        clock, // @[:@176.4]
  input        reset, // @[:@177.4]
  output       io_lcd_serialClock, // @[:@178.4]
  output       io_lcd_dataCommand, // @[:@178.4]
  output       io_lcd_chipSelect, // @[:@178.4]
  output       io_lcd_masterOutSlaveIn, // @[:@178.4]
  input        io_lcd_masterInSlaveOut, // @[:@178.4]
  output       io_lcd_reset, // @[:@178.4]
  output       io_lcd_backLight, // @[:@178.4]
  input        io_operation_command_valid, // @[:@178.4]
  input  [7:0] io_operation_command_bits, // @[:@178.4]
  input        io_operation_exec, // @[:@178.4]
  input        io_operation_reset, // @[:@178.4]
  output [6:0] io_seg7LED_cathodes, // @[:@178.4]
  output       io_seg7LED_decimalPoint, // @[:@178.4]
  output [7:0] io_seg7LED_anodes // @[:@178.4]
);
  wire  Debounce_clock; // @[Debounce.scala 26:26:@181.4]
  wire  Debounce_reset; // @[Debounce.scala 26:26:@181.4]
  wire  Debounce_io_in; // @[Debounce.scala 26:26:@181.4]
  wire  Debounce_io_out; // @[Debounce.scala 26:26:@181.4]
  wire  Debounce_1_clock; // @[Debounce.scala 26:26:@216.4]
  wire  Debounce_1_reset; // @[Debounce.scala 26:26:@216.4]
  wire  Debounce_1_io_in; // @[Debounce.scala 26:26:@216.4]
  wire  Debounce_1_io_out; // @[Debounce.scala 26:26:@216.4]
  wire  Debounce_2_clock; // @[Debounce.scala 26:26:@226.4]
  wire  Debounce_2_reset; // @[Debounce.scala 26:26:@226.4]
  wire  Debounce_2_io_in; // @[Debounce.scala 26:26:@226.4]
  wire  Debounce_2_io_out; // @[Debounce.scala 26:26:@226.4]
  wire  sendShiftReg_clock; // @[LCDDisplay.scala 72:28:@238.4]
  wire  sendShiftReg_reset; // @[LCDDisplay.scala 72:28:@238.4]
  wire [7:0] sendShiftReg_io_d; // @[LCDDisplay.scala 72:28:@238.4]
  wire  sendShiftReg_io_load; // @[LCDDisplay.scala 72:28:@238.4]
  wire  sendShiftReg_io_enable; // @[LCDDisplay.scala 72:28:@238.4]
  wire  sendShiftReg_io_shiftOut; // @[LCDDisplay.scala 72:28:@238.4]
  wire  seg7LED_clock; // @[LCDDisplay.scala 102:23:@285.4]
  wire  seg7LED_reset; // @[LCDDisplay.scala 102:23:@285.4]
  wire [3:0] seg7LED_io_digits_0; // @[LCDDisplay.scala 102:23:@285.4]
  wire [3:0] seg7LED_io_digits_1; // @[LCDDisplay.scala 102:23:@285.4]
  wire [3:0] seg7LED_io_digits_2; // @[LCDDisplay.scala 102:23:@285.4]
  wire [3:0] seg7LED_io_digits_3; // @[LCDDisplay.scala 102:23:@285.4]
  wire [3:0] seg7LED_io_digits_4; // @[LCDDisplay.scala 102:23:@285.4]
  wire [3:0] seg7LED_io_digits_5; // @[LCDDisplay.scala 102:23:@285.4]
  wire [3:0] seg7LED_io_digits_6; // @[LCDDisplay.scala 102:23:@285.4]
  wire [3:0] seg7LED_io_digits_7; // @[LCDDisplay.scala 102:23:@285.4]
  wire [6:0] seg7LED_io_seg7led_cathodes; // @[LCDDisplay.scala 102:23:@285.4]
  wire [7:0] seg7LED_io_seg7led_anodes; // @[LCDDisplay.scala 102:23:@285.4]
  reg  state; // @[LCDDisplay.scala 34:22:@180.4]
  reg [31:0] _RAND_0;
  reg [3:0] value; // @[Counter.scala 26:33:@186.4]
  reg [31:0] _RAND_1;
  wire  _T_48; // @[Counter.scala 34:24:@188.6]
  wire [4:0] _T_50; // @[Counter.scala 35:22:@189.6]
  wire [3:0] _T_51; // @[Counter.scala 35:22:@190.6]
  wire [3:0] _GEN_0; // @[Counter.scala 37:21:@192.6]
  wire [3:0] _GEN_1; // @[Counter.scala 63:17:@187.4]
  wire  serialClockNegatePulse; // @[Counter.scala 64:20:@196.4]
  reg  serialClock; // @[LCDDisplay.scala 39:28:@197.4]
  reg [31:0] _RAND_2;
  wire  _T_55; // @[LCDDisplay.scala 40:15:@198.4]
  wire  _T_56; // @[LCDDisplay.scala 40:25:@199.4]
  wire  _T_58; // @[LCDDisplay.scala 43:20:@205.8]
  wire  _GEN_2; // @[LCDDisplay.scala 42:40:@204.6]
  wire  _GEN_3; // @[LCDDisplay.scala 40:39:@200.4]
  reg [7:0] commandData_0; // @[LCDDisplay.scala 48:28:@213.4]
  reg [31:0] _RAND_3;
  reg [7:0] commandData_1; // @[LCDDisplay.scala 48:28:@213.4]
  reg [31:0] _RAND_4;
  reg [7:0] commandData_2; // @[LCDDisplay.scala 48:28:@213.4]
  reg [31:0] _RAND_5;
  reg [7:0] commandData_3; // @[LCDDisplay.scala 48:28:@213.4]
  reg [31:0] _RAND_6;
  reg [1:0] commandDataWriteIndex; // @[LCDDisplay.scala 49:38:@214.4]
  reg [31:0] _RAND_7;
  reg [1:0] commandDataSendIndex; // @[LCDDisplay.scala 50:37:@215.4]
  reg [31:0] _RAND_8;
  wire [7:0] _GEN_4; // @[LCDDisplay.scala 57:40:@221.6]
  wire [7:0] _GEN_5; // @[LCDDisplay.scala 57:40:@221.6]
  wire [7:0] _GEN_6; // @[LCDDisplay.scala 57:40:@221.6]
  wire [7:0] _GEN_7; // @[LCDDisplay.scala 57:40:@221.6]
  wire [2:0] _T_108; // @[LCDDisplay.scala 58:52:@222.6]
  wire [1:0] _T_109; // @[LCDDisplay.scala 58:52:@223.6]
  wire [7:0] _GEN_8; // @[LCDDisplay.scala 56:47:@220.4]
  wire [7:0] _GEN_9; // @[LCDDisplay.scala 56:47:@220.4]
  wire [7:0] _GEN_10; // @[LCDDisplay.scala 56:47:@220.4]
  wire [7:0] _GEN_11; // @[LCDDisplay.scala 56:47:@220.4]
  wire [1:0] _GEN_12; // @[LCDDisplay.scala 56:47:@220.4]
  wire [7:0] _GEN_13; // @[LCDDisplay.scala 62:39:@230.4]
  wire [7:0] _GEN_14; // @[LCDDisplay.scala 62:39:@230.4]
  wire [7:0] _GEN_15; // @[LCDDisplay.scala 62:39:@230.4]
  wire [7:0] _GEN_16; // @[LCDDisplay.scala 62:39:@230.4]
  wire [1:0] _GEN_17; // @[LCDDisplay.scala 62:39:@230.4]
  wire  stateChange; // @[LCDDisplay.scala 70:33:@237.4]
  wire [7:0] _GEN_19; // @[LCDDisplay.scala 73:21:@241.4]
  wire [7:0] _GEN_20; // @[LCDDisplay.scala 73:21:@241.4]
  reg [2:0] value_1; // @[Counter.scala 26:33:@244.4]
  reg [31:0] _RAND_9;
  wire  _T_119; // @[Counter.scala 34:24:@246.6]
  wire [3:0] _T_121; // @[Counter.scala 35:22:@247.6]
  wire [2:0] _T_122; // @[Counter.scala 35:22:@248.6]
  wire [2:0] _GEN_22; // @[Counter.scala 63:17:@245.4]
  wire  sendShiftWrap; // @[Counter.scala 64:20:@251.4]
  wire [2:0] _T_127; // @[LCDDisplay.scala 81:50:@257.6]
  wire [1:0] _T_128; // @[LCDDisplay.scala 81:50:@258.6]
  wire  _T_129; // @[LCDDisplay.scala 84:34:@264.10]
  wire  _GEN_23; // @[LCDDisplay.scala 84:61:@265.10]
  wire [7:0] _GEN_24; // @[LCDDisplay.scala 84:61:@265.10]
  wire [7:0] _GEN_25; // @[LCDDisplay.scala 84:61:@265.10]
  wire [7:0] _GEN_26; // @[LCDDisplay.scala 84:61:@265.10]
  wire [7:0] _GEN_27; // @[LCDDisplay.scala 84:61:@265.10]
  wire [1:0] _GEN_28; // @[LCDDisplay.scala 84:61:@265.10]
  wire [1:0] _GEN_29; // @[LCDDisplay.scala 84:61:@265.10]
  wire  _GEN_30; // @[LCDDisplay.scala 84:61:@265.10]
  wire  _GEN_31; // @[LCDDisplay.scala 83:26:@263.8]
  wire [7:0] _GEN_32; // @[LCDDisplay.scala 83:26:@263.8]
  wire [7:0] _GEN_33; // @[LCDDisplay.scala 83:26:@263.8]
  wire [7:0] _GEN_34; // @[LCDDisplay.scala 83:26:@263.8]
  wire [7:0] _GEN_35; // @[LCDDisplay.scala 83:26:@263.8]
  wire [1:0] _GEN_36; // @[LCDDisplay.scala 83:26:@263.8]
  wire [1:0] _GEN_37; // @[LCDDisplay.scala 83:26:@263.8]
  wire  _GEN_38; // @[LCDDisplay.scala 83:26:@263.8]
  wire  _GEN_39; // @[LCDDisplay.scala 83:26:@263.8]
  wire  _GEN_40; // @[LCDDisplay.scala 82:29:@262.6]
  wire [7:0] _GEN_41; // @[LCDDisplay.scala 82:29:@262.6]
  wire [7:0] _GEN_42; // @[LCDDisplay.scala 82:29:@262.6]
  wire [7:0] _GEN_43; // @[LCDDisplay.scala 82:29:@262.6]
  wire [7:0] _GEN_44; // @[LCDDisplay.scala 82:29:@262.6]
  wire [1:0] _GEN_45; // @[LCDDisplay.scala 82:29:@262.6]
  wire [1:0] _GEN_46; // @[LCDDisplay.scala 82:29:@262.6]
  wire  _GEN_47; // @[LCDDisplay.scala 82:29:@262.6]
  wire  _GEN_48; // @[LCDDisplay.scala 82:29:@262.6]
  wire  _GEN_49; // @[LCDDisplay.scala 78:39:@254.4]
  wire [1:0] _GEN_51; // @[LCDDisplay.scala 78:39:@254.4]
  wire [7:0] _GEN_52; // @[LCDDisplay.scala 78:39:@254.4]
  wire [7:0] _GEN_53; // @[LCDDisplay.scala 78:39:@254.4]
  wire [7:0] _GEN_54; // @[LCDDisplay.scala 78:39:@254.4]
  wire [7:0] _GEN_55; // @[LCDDisplay.scala 78:39:@254.4]
  wire [1:0] _GEN_56; // @[LCDDisplay.scala 78:39:@254.4]
  Debounce Debounce ( // @[Debounce.scala 26:26:@181.4]
    .clock(Debounce_clock),
    .reset(Debounce_reset),
    .io_in(Debounce_io_in),
    .io_out(Debounce_io_out)
  );
  Debounce Debounce_1 ( // @[Debounce.scala 26:26:@216.4]
    .clock(Debounce_1_clock),
    .reset(Debounce_1_reset),
    .io_in(Debounce_1_io_in),
    .io_out(Debounce_1_io_out)
  );
  Debounce Debounce_2 ( // @[Debounce.scala 26:26:@226.4]
    .clock(Debounce_2_clock),
    .reset(Debounce_2_reset),
    .io_in(Debounce_2_io_in),
    .io_out(Debounce_2_io_out)
  );
  ShiftRegisterPISO sendShiftReg ( // @[LCDDisplay.scala 72:28:@238.4]
    .clock(sendShiftReg_clock),
    .reset(sendShiftReg_reset),
    .io_d(sendShiftReg_io_d),
    .io_load(sendShiftReg_io_load),
    .io_enable(sendShiftReg_io_enable),
    .io_shiftOut(sendShiftReg_io_shiftOut)
  );
  Seg7LED seg7LED ( // @[LCDDisplay.scala 102:23:@285.4]
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
  assign _T_48 = value == 4'h9; // @[Counter.scala 34:24:@188.6]
  assign _T_50 = value + 4'h1; // @[Counter.scala 35:22:@189.6]
  assign _T_51 = value + 4'h1; // @[Counter.scala 35:22:@190.6]
  assign _GEN_0 = _T_48 ? 4'h0 : _T_51; // @[Counter.scala 37:21:@192.6]
  assign _GEN_1 = state ? _GEN_0 : value; // @[Counter.scala 63:17:@187.4]
  assign serialClockNegatePulse = state & _T_48; // @[Counter.scala 64:20:@196.4]
  assign _T_55 = state == 1'h0; // @[LCDDisplay.scala 40:15:@198.4]
  assign _T_56 = _T_55 & Debounce_io_out; // @[LCDDisplay.scala 40:25:@199.4]
  assign _T_58 = ~ serialClock; // @[LCDDisplay.scala 43:20:@205.8]
  assign _GEN_2 = serialClockNegatePulse ? _T_58 : serialClock; // @[LCDDisplay.scala 42:40:@204.6]
  assign _GEN_3 = _T_56 ? 1'h0 : _GEN_2; // @[LCDDisplay.scala 40:39:@200.4]
  assign _GEN_4 = 2'h0 == commandDataWriteIndex ? io_operation_command_bits : commandData_0; // @[LCDDisplay.scala 57:40:@221.6]
  assign _GEN_5 = 2'h1 == commandDataWriteIndex ? io_operation_command_bits : commandData_1; // @[LCDDisplay.scala 57:40:@221.6]
  assign _GEN_6 = 2'h2 == commandDataWriteIndex ? io_operation_command_bits : commandData_2; // @[LCDDisplay.scala 57:40:@221.6]
  assign _GEN_7 = 2'h3 == commandDataWriteIndex ? io_operation_command_bits : commandData_3; // @[LCDDisplay.scala 57:40:@221.6]
  assign _T_108 = commandDataWriteIndex + 2'h1; // @[LCDDisplay.scala 58:52:@222.6]
  assign _T_109 = commandDataWriteIndex + 2'h1; // @[LCDDisplay.scala 58:52:@223.6]
  assign _GEN_8 = Debounce_1_io_out ? _GEN_4 : commandData_0; // @[LCDDisplay.scala 56:47:@220.4]
  assign _GEN_9 = Debounce_1_io_out ? _GEN_5 : commandData_1; // @[LCDDisplay.scala 56:47:@220.4]
  assign _GEN_10 = Debounce_1_io_out ? _GEN_6 : commandData_2; // @[LCDDisplay.scala 56:47:@220.4]
  assign _GEN_11 = Debounce_1_io_out ? _GEN_7 : commandData_3; // @[LCDDisplay.scala 56:47:@220.4]
  assign _GEN_12 = Debounce_1_io_out ? _T_109 : commandDataWriteIndex; // @[LCDDisplay.scala 56:47:@220.4]
  assign _GEN_13 = Debounce_2_io_out ? 8'h0 : _GEN_8; // @[LCDDisplay.scala 62:39:@230.4]
  assign _GEN_14 = Debounce_2_io_out ? 8'h0 : _GEN_9; // @[LCDDisplay.scala 62:39:@230.4]
  assign _GEN_15 = Debounce_2_io_out ? 8'h0 : _GEN_10; // @[LCDDisplay.scala 62:39:@230.4]
  assign _GEN_16 = Debounce_2_io_out ? 8'h0 : _GEN_11; // @[LCDDisplay.scala 62:39:@230.4]
  assign _GEN_17 = Debounce_2_io_out ? 2'h0 : _GEN_12; // @[LCDDisplay.scala 62:39:@230.4]
  assign stateChange = serialClock & serialClockNegatePulse; // @[LCDDisplay.scala 70:33:@237.4]
  assign _GEN_19 = 2'h1 == commandDataSendIndex ? commandData_1 : commandData_0; // @[LCDDisplay.scala 73:21:@241.4]
  assign _GEN_20 = 2'h2 == commandDataSendIndex ? commandData_2 : _GEN_19; // @[LCDDisplay.scala 73:21:@241.4]
  assign _T_119 = value_1 == 3'h7; // @[Counter.scala 34:24:@246.6]
  assign _T_121 = value_1 + 3'h1; // @[Counter.scala 35:22:@247.6]
  assign _T_122 = value_1 + 3'h1; // @[Counter.scala 35:22:@248.6]
  assign _GEN_22 = stateChange ? _T_122 : value_1; // @[Counter.scala 63:17:@245.4]
  assign sendShiftWrap = stateChange & _T_119; // @[Counter.scala 64:20:@251.4]
  assign _T_127 = commandDataSendIndex + 2'h1; // @[LCDDisplay.scala 81:50:@257.6]
  assign _T_128 = commandDataSendIndex + 2'h1; // @[LCDDisplay.scala 81:50:@258.6]
  assign _T_129 = commandDataSendIndex == commandDataWriteIndex; // @[LCDDisplay.scala 84:34:@264.10]
  assign _GEN_23 = _T_129 ? 1'h0 : state; // @[LCDDisplay.scala 84:61:@265.10]
  assign _GEN_24 = _T_129 ? 8'h0 : _GEN_13; // @[LCDDisplay.scala 84:61:@265.10]
  assign _GEN_25 = _T_129 ? 8'h0 : _GEN_14; // @[LCDDisplay.scala 84:61:@265.10]
  assign _GEN_26 = _T_129 ? 8'h0 : _GEN_15; // @[LCDDisplay.scala 84:61:@265.10]
  assign _GEN_27 = _T_129 ? 8'h0 : _GEN_16; // @[LCDDisplay.scala 84:61:@265.10]
  assign _GEN_28 = _T_129 ? 2'h0 : _GEN_17; // @[LCDDisplay.scala 84:61:@265.10]
  assign _GEN_29 = _T_129 ? 2'h0 : _T_128; // @[LCDDisplay.scala 84:61:@265.10]
  assign _GEN_30 = _T_129 ? 1'h0 : 1'h1; // @[LCDDisplay.scala 84:61:@265.10]
  assign _GEN_31 = sendShiftWrap ? _GEN_23 : state; // @[LCDDisplay.scala 83:26:@263.8]
  assign _GEN_32 = sendShiftWrap ? _GEN_24 : _GEN_13; // @[LCDDisplay.scala 83:26:@263.8]
  assign _GEN_33 = sendShiftWrap ? _GEN_25 : _GEN_14; // @[LCDDisplay.scala 83:26:@263.8]
  assign _GEN_34 = sendShiftWrap ? _GEN_26 : _GEN_15; // @[LCDDisplay.scala 83:26:@263.8]
  assign _GEN_35 = sendShiftWrap ? _GEN_27 : _GEN_16; // @[LCDDisplay.scala 83:26:@263.8]
  assign _GEN_36 = sendShiftWrap ? _GEN_28 : _GEN_17; // @[LCDDisplay.scala 83:26:@263.8]
  assign _GEN_37 = sendShiftWrap ? _GEN_29 : commandDataSendIndex; // @[LCDDisplay.scala 83:26:@263.8]
  assign _GEN_38 = sendShiftWrap ? _GEN_30 : 1'h0; // @[LCDDisplay.scala 83:26:@263.8]
  assign _GEN_39 = sendShiftWrap ? 1'h0 : 1'h1; // @[LCDDisplay.scala 83:26:@263.8]
  assign _GEN_40 = stateChange ? _GEN_31 : state; // @[LCDDisplay.scala 82:29:@262.6]
  assign _GEN_41 = stateChange ? _GEN_32 : _GEN_13; // @[LCDDisplay.scala 82:29:@262.6]
  assign _GEN_42 = stateChange ? _GEN_33 : _GEN_14; // @[LCDDisplay.scala 82:29:@262.6]
  assign _GEN_43 = stateChange ? _GEN_34 : _GEN_15; // @[LCDDisplay.scala 82:29:@262.6]
  assign _GEN_44 = stateChange ? _GEN_35 : _GEN_16; // @[LCDDisplay.scala 82:29:@262.6]
  assign _GEN_45 = stateChange ? _GEN_36 : _GEN_17; // @[LCDDisplay.scala 82:29:@262.6]
  assign _GEN_46 = stateChange ? _GEN_37 : commandDataSendIndex; // @[LCDDisplay.scala 82:29:@262.6]
  assign _GEN_47 = stateChange ? _GEN_38 : 1'h0; // @[LCDDisplay.scala 82:29:@262.6]
  assign _GEN_48 = stateChange ? _GEN_39 : 1'h0; // @[LCDDisplay.scala 82:29:@262.6]
  assign _GEN_49 = _T_56 ? 1'h1 : _GEN_40; // @[LCDDisplay.scala 78:39:@254.4]
  assign _GEN_51 = _T_56 ? _T_128 : _GEN_46; // @[LCDDisplay.scala 78:39:@254.4]
  assign _GEN_52 = _T_56 ? _GEN_13 : _GEN_41; // @[LCDDisplay.scala 78:39:@254.4]
  assign _GEN_53 = _T_56 ? _GEN_14 : _GEN_42; // @[LCDDisplay.scala 78:39:@254.4]
  assign _GEN_54 = _T_56 ? _GEN_15 : _GEN_43; // @[LCDDisplay.scala 78:39:@254.4]
  assign _GEN_55 = _T_56 ? _GEN_16 : _GEN_44; // @[LCDDisplay.scala 78:39:@254.4]
  assign _GEN_56 = _T_56 ? _GEN_17 : _GEN_45; // @[LCDDisplay.scala 78:39:@254.4]
  assign io_lcd_serialClock = serialClock; // @[LCDDisplay.scala 107:22:@309.4]
  assign io_lcd_dataCommand = commandDataSendIndex != 2'h1; // @[LCDDisplay.scala 108:22:@311.4]
  assign io_lcd_chipSelect = state == 1'h0; // @[LCDDisplay.scala 106:21:@308.4]
  assign io_lcd_masterOutSlaveIn = sendShiftReg_io_shiftOut; // @[LCDDisplay.scala 109:27:@312.4]
  assign io_lcd_reset = 1'h1; // @[LCDDisplay.scala 110:16:@313.4]
  assign io_lcd_backLight = 1'h1; // @[LCDDisplay.scala 111:20:@314.4]
  assign io_seg7LED_cathodes = seg7LED_io_seg7led_cathodes; // @[LCDDisplay.scala 104:14:@306.4]
  assign io_seg7LED_decimalPoint = 1'h1; // @[LCDDisplay.scala 104:14:@305.4]
  assign io_seg7LED_anodes = seg7LED_io_seg7led_anodes; // @[LCDDisplay.scala 104:14:@304.4]
  assign Debounce_clock = clock; // @[:@182.4]
  assign Debounce_reset = reset; // @[:@183.4]
  assign Debounce_io_in = io_operation_exec; // @[Debounce.scala 27:20:@184.4]
  assign Debounce_1_clock = clock; // @[:@217.4]
  assign Debounce_1_reset = reset; // @[:@218.4]
  assign Debounce_1_io_in = io_operation_command_valid; // @[Debounce.scala 27:20:@219.4]
  assign Debounce_2_clock = clock; // @[:@227.4]
  assign Debounce_2_reset = reset; // @[:@228.4]
  assign Debounce_2_io_in = io_operation_reset; // @[Debounce.scala 27:20:@229.4]
  assign sendShiftReg_clock = clock; // @[:@239.4]
  assign sendShiftReg_reset = reset; // @[:@240.4]
  assign sendShiftReg_io_d = 2'h3 == commandDataSendIndex ? commandData_3 : _GEN_20; // @[LCDDisplay.scala 73:21:@241.4]
  assign sendShiftReg_io_load = _T_56 ? 1'h1 : _GEN_47; // @[LCDDisplay.scala 74:24:@242.4 LCDDisplay.scala 80:26:@256.6 LCDDisplay.scala 90:30:@275.12]
  assign sendShiftReg_io_enable = _T_56 ? 1'h0 : _GEN_48; // @[LCDDisplay.scala 75:26:@243.4 LCDDisplay.scala 94:30:@282.10]
  assign seg7LED_clock = clock; // @[:@286.4]
  assign seg7LED_reset = reset; // @[:@287.4]
  assign seg7LED_io_digits_0 = commandData_3[3:0]; // @[LCDDisplay.scala 103:21:@296.4]
  assign seg7LED_io_digits_1 = commandData_3[7:4]; // @[LCDDisplay.scala 103:21:@297.4]
  assign seg7LED_io_digits_2 = commandData_2[3:0]; // @[LCDDisplay.scala 103:21:@298.4]
  assign seg7LED_io_digits_3 = commandData_2[7:4]; // @[LCDDisplay.scala 103:21:@299.4]
  assign seg7LED_io_digits_4 = commandData_1[3:0]; // @[LCDDisplay.scala 103:21:@300.4]
  assign seg7LED_io_digits_5 = commandData_1[7:4]; // @[LCDDisplay.scala 103:21:@301.4]
  assign seg7LED_io_digits_6 = commandData_0[3:0]; // @[LCDDisplay.scala 103:21:@302.4]
  assign seg7LED_io_digits_7 = commandData_0[7:4]; // @[LCDDisplay.scala 103:21:@303.4]
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
  state = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  value = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  serialClock = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  commandData_0 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  commandData_1 = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  commandData_2 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  commandData_3 = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  commandDataWriteIndex = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  commandDataSendIndex = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  value_1 = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 1'h0;
    end else begin
      if (_T_56) begin
        state <= 1'h1;
      end else begin
        if (stateChange) begin
          if (sendShiftWrap) begin
            if (_T_129) begin
              state <= 1'h0;
            end
          end
        end
      end
    end
    if (reset) begin
      value <= 4'h0;
    end else begin
      if (state) begin
        if (_T_48) begin
          value <= 4'h0;
        end else begin
          value <= _T_51;
        end
      end
    end
    if (reset) begin
      serialClock <= 1'h1;
    end else begin
      if (_T_56) begin
        serialClock <= 1'h0;
      end else begin
        if (serialClockNegatePulse) begin
          serialClock <= _T_58;
        end
      end
    end
    if (reset) begin
      commandData_0 <= 8'h0;
    end else begin
      if (_T_56) begin
        if (Debounce_2_io_out) begin
          commandData_0 <= 8'h0;
        end else begin
          if (Debounce_1_io_out) begin
            if (2'h0 == commandDataWriteIndex) begin
              commandData_0 <= io_operation_command_bits;
            end
          end
        end
      end else begin
        if (stateChange) begin
          if (sendShiftWrap) begin
            if (_T_129) begin
              commandData_0 <= 8'h0;
            end else begin
              if (Debounce_2_io_out) begin
                commandData_0 <= 8'h0;
              end else begin
                if (Debounce_1_io_out) begin
                  if (2'h0 == commandDataWriteIndex) begin
                    commandData_0 <= io_operation_command_bits;
                  end
                end
              end
            end
          end else begin
            if (Debounce_2_io_out) begin
              commandData_0 <= 8'h0;
            end else begin
              if (Debounce_1_io_out) begin
                if (2'h0 == commandDataWriteIndex) begin
                  commandData_0 <= io_operation_command_bits;
                end
              end
            end
          end
        end else begin
          if (Debounce_2_io_out) begin
            commandData_0 <= 8'h0;
          end else begin
            if (Debounce_1_io_out) begin
              if (2'h0 == commandDataWriteIndex) begin
                commandData_0 <= io_operation_command_bits;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      commandData_1 <= 8'h0;
    end else begin
      if (_T_56) begin
        if (Debounce_2_io_out) begin
          commandData_1 <= 8'h0;
        end else begin
          if (Debounce_1_io_out) begin
            if (2'h1 == commandDataWriteIndex) begin
              commandData_1 <= io_operation_command_bits;
            end
          end
        end
      end else begin
        if (stateChange) begin
          if (sendShiftWrap) begin
            if (_T_129) begin
              commandData_1 <= 8'h0;
            end else begin
              if (Debounce_2_io_out) begin
                commandData_1 <= 8'h0;
              end else begin
                if (Debounce_1_io_out) begin
                  if (2'h1 == commandDataWriteIndex) begin
                    commandData_1 <= io_operation_command_bits;
                  end
                end
              end
            end
          end else begin
            if (Debounce_2_io_out) begin
              commandData_1 <= 8'h0;
            end else begin
              if (Debounce_1_io_out) begin
                if (2'h1 == commandDataWriteIndex) begin
                  commandData_1 <= io_operation_command_bits;
                end
              end
            end
          end
        end else begin
          if (Debounce_2_io_out) begin
            commandData_1 <= 8'h0;
          end else begin
            if (Debounce_1_io_out) begin
              if (2'h1 == commandDataWriteIndex) begin
                commandData_1 <= io_operation_command_bits;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      commandData_2 <= 8'h0;
    end else begin
      if (_T_56) begin
        if (Debounce_2_io_out) begin
          commandData_2 <= 8'h0;
        end else begin
          if (Debounce_1_io_out) begin
            if (2'h2 == commandDataWriteIndex) begin
              commandData_2 <= io_operation_command_bits;
            end
          end
        end
      end else begin
        if (stateChange) begin
          if (sendShiftWrap) begin
            if (_T_129) begin
              commandData_2 <= 8'h0;
            end else begin
              if (Debounce_2_io_out) begin
                commandData_2 <= 8'h0;
              end else begin
                if (Debounce_1_io_out) begin
                  if (2'h2 == commandDataWriteIndex) begin
                    commandData_2 <= io_operation_command_bits;
                  end
                end
              end
            end
          end else begin
            if (Debounce_2_io_out) begin
              commandData_2 <= 8'h0;
            end else begin
              if (Debounce_1_io_out) begin
                if (2'h2 == commandDataWriteIndex) begin
                  commandData_2 <= io_operation_command_bits;
                end
              end
            end
          end
        end else begin
          if (Debounce_2_io_out) begin
            commandData_2 <= 8'h0;
          end else begin
            if (Debounce_1_io_out) begin
              if (2'h2 == commandDataWriteIndex) begin
                commandData_2 <= io_operation_command_bits;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      commandData_3 <= 8'h0;
    end else begin
      if (_T_56) begin
        if (Debounce_2_io_out) begin
          commandData_3 <= 8'h0;
        end else begin
          if (Debounce_1_io_out) begin
            if (2'h3 == commandDataWriteIndex) begin
              commandData_3 <= io_operation_command_bits;
            end
          end
        end
      end else begin
        if (stateChange) begin
          if (sendShiftWrap) begin
            if (_T_129) begin
              commandData_3 <= 8'h0;
            end else begin
              if (Debounce_2_io_out) begin
                commandData_3 <= 8'h0;
              end else begin
                if (Debounce_1_io_out) begin
                  if (2'h3 == commandDataWriteIndex) begin
                    commandData_3 <= io_operation_command_bits;
                  end
                end
              end
            end
          end else begin
            if (Debounce_2_io_out) begin
              commandData_3 <= 8'h0;
            end else begin
              if (Debounce_1_io_out) begin
                if (2'h3 == commandDataWriteIndex) begin
                  commandData_3 <= io_operation_command_bits;
                end
              end
            end
          end
        end else begin
          if (Debounce_2_io_out) begin
            commandData_3 <= 8'h0;
          end else begin
            if (Debounce_1_io_out) begin
              if (2'h3 == commandDataWriteIndex) begin
                commandData_3 <= io_operation_command_bits;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      commandDataWriteIndex <= 2'h0;
    end else begin
      if (_T_56) begin
        if (Debounce_2_io_out) begin
          commandDataWriteIndex <= 2'h0;
        end else begin
          if (Debounce_1_io_out) begin
            commandDataWriteIndex <= _T_109;
          end
        end
      end else begin
        if (stateChange) begin
          if (sendShiftWrap) begin
            if (_T_129) begin
              commandDataWriteIndex <= 2'h0;
            end else begin
              if (Debounce_2_io_out) begin
                commandDataWriteIndex <= 2'h0;
              end else begin
                if (Debounce_1_io_out) begin
                  commandDataWriteIndex <= _T_109;
                end
              end
            end
          end else begin
            if (Debounce_2_io_out) begin
              commandDataWriteIndex <= 2'h0;
            end else begin
              if (Debounce_1_io_out) begin
                commandDataWriteIndex <= _T_109;
              end
            end
          end
        end else begin
          if (Debounce_2_io_out) begin
            commandDataWriteIndex <= 2'h0;
          end else begin
            if (Debounce_1_io_out) begin
              commandDataWriteIndex <= _T_109;
            end
          end
        end
      end
    end
    if (reset) begin
      commandDataSendIndex <= 2'h0;
    end else begin
      if (_T_56) begin
        commandDataSendIndex <= _T_128;
      end else begin
        if (stateChange) begin
          if (sendShiftWrap) begin
            if (_T_129) begin
              commandDataSendIndex <= 2'h0;
            end else begin
              commandDataSendIndex <= _T_128;
            end
          end
        end
      end
    end
    if (reset) begin
      value_1 <= 3'h0;
    end else begin
      if (stateChange) begin
        value_1 <= _T_122;
      end
    end
  end
endmodule
