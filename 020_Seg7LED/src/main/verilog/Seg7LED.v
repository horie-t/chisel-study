module Seg7LED( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [3:0] io_digits_0, // @[:@6.4]
  input  [3:0] io_digits_1, // @[:@6.4]
  input  [3:0] io_digits_2, // @[:@6.4]
  input  [3:0] io_digits_3, // @[:@6.4]
  output [6:0] io_seg7led_cathodes, // @[:@6.4]
  output [3:0] io_seg7led_anodes // @[:@6.4]
);
  reg [16:0] value; // @[Counter.scala 26:33:@8.4]
  reg [31:0] _RAND_0;
  wire  digitChange; // @[Counter.scala 34:24:@10.6]
  wire [17:0] _T_33; // @[Counter.scala 35:22:@11.6]
  wire [16:0] _T_34; // @[Counter.scala 35:22:@12.6]
  wire [16:0] _GEN_0; // @[Counter.scala 37:21:@14.6]
  reg [1:0] value_1; // @[Counter.scala 26:33:@19.4]
  reg [31:0] _RAND_1;
  wire [2:0] _T_41; // @[Counter.scala 35:22:@22.6]
  wire [1:0] _T_42; // @[Counter.scala 35:22:@23.6]
  wire [1:0] _GEN_2; // @[Counter.scala 63:17:@20.4]
  wire [3:0] _GEN_4; // @[Seg7LED.scala 34:17:@27.4]
  wire [3:0] _GEN_5; // @[Seg7LED.scala 34:17:@27.4]
  wire [3:0] _GEN_6; // @[Seg7LED.scala 34:17:@27.4]
  wire  _T_46; // @[Seg7LED.scala 34:17:@27.4]
  wire  _T_49; // @[Seg7LED.scala 35:17:@28.4]
  wire  _T_52; // @[Seg7LED.scala 36:17:@29.4]
  wire  _T_55; // @[Seg7LED.scala 37:17:@30.4]
  wire  _T_58; // @[Seg7LED.scala 38:17:@31.4]
  wire  _T_61; // @[Seg7LED.scala 39:17:@32.4]
  wire  _T_64; // @[Seg7LED.scala 40:17:@33.4]
  wire  _T_67; // @[Seg7LED.scala 41:17:@34.4]
  wire  _T_70; // @[Seg7LED.scala 42:17:@35.4]
  wire  _T_73; // @[Seg7LED.scala 43:17:@36.4]
  wire  _T_76; // @[Seg7LED.scala 44:17:@37.4]
  wire  _T_79; // @[Seg7LED.scala 45:17:@38.4]
  wire  _T_82; // @[Seg7LED.scala 46:17:@39.4]
  wire  _T_85; // @[Seg7LED.scala 47:17:@40.4]
  wire  _T_88; // @[Seg7LED.scala 48:17:@41.4]
  wire  _T_91; // @[Seg7LED.scala 49:17:@42.4]
  wire [6:0] _T_93; // @[Mux.scala 61:16:@43.4]
  wire [6:0] _T_94; // @[Mux.scala 61:16:@44.4]
  wire [6:0] _T_95; // @[Mux.scala 61:16:@45.4]
  wire [6:0] _T_96; // @[Mux.scala 61:16:@46.4]
  wire [6:0] _T_97; // @[Mux.scala 61:16:@47.4]
  wire [6:0] _T_98; // @[Mux.scala 61:16:@48.4]
  wire [6:0] _T_99; // @[Mux.scala 61:16:@49.4]
  wire [6:0] _T_100; // @[Mux.scala 61:16:@50.4]
  wire [6:0] _T_101; // @[Mux.scala 61:16:@51.4]
  wire [6:0] _T_102; // @[Mux.scala 61:16:@52.4]
  wire [6:0] _T_103; // @[Mux.scala 61:16:@53.4]
  wire [6:0] _T_104; // @[Mux.scala 61:16:@54.4]
  wire [6:0] _T_105; // @[Mux.scala 61:16:@55.4]
  wire [6:0] _T_106; // @[Mux.scala 61:16:@56.4]
  wire [6:0] _T_107; // @[Mux.scala 61:16:@57.4]
  reg [3:0] anodes; // @[Seg7LED.scala 51:23:@60.4]
  reg [31:0] _RAND_2;
  wire [2:0] _T_111; // @[Seg7LED.scala 54:25:@62.6]
  wire  _T_112; // @[Seg7LED.scala 54:39:@63.6]
  wire [3:0] _T_113; // @[Cat.scala 30:58:@64.6]
  wire [3:0] _GEN_7; // @[Seg7LED.scala 52:22:@61.4]
  assign digitChange = value == 17'h1869f; // @[Counter.scala 34:24:@10.6]
  assign _T_33 = value + 17'h1; // @[Counter.scala 35:22:@11.6]
  assign _T_34 = value + 17'h1; // @[Counter.scala 35:22:@12.6]
  assign _GEN_0 = digitChange ? 17'h0 : _T_34; // @[Counter.scala 37:21:@14.6]
  assign _T_41 = value_1 + 2'h1; // @[Counter.scala 35:22:@22.6]
  assign _T_42 = value_1 + 2'h1; // @[Counter.scala 35:22:@23.6]
  assign _GEN_2 = digitChange ? _T_42 : value_1; // @[Counter.scala 63:17:@20.4]
  assign _GEN_4 = 2'h1 == value_1 ? io_digits_1 : io_digits_0; // @[Seg7LED.scala 34:17:@27.4]
  assign _GEN_5 = 2'h2 == value_1 ? io_digits_2 : _GEN_4; // @[Seg7LED.scala 34:17:@27.4]
  assign _GEN_6 = 2'h3 == value_1 ? io_digits_3 : _GEN_5; // @[Seg7LED.scala 34:17:@27.4]
  assign _T_46 = _GEN_6 == 4'h0; // @[Seg7LED.scala 34:17:@27.4]
  assign _T_49 = _GEN_6 == 4'h1; // @[Seg7LED.scala 35:17:@28.4]
  assign _T_52 = _GEN_6 == 4'h2; // @[Seg7LED.scala 36:17:@29.4]
  assign _T_55 = _GEN_6 == 4'h3; // @[Seg7LED.scala 37:17:@30.4]
  assign _T_58 = _GEN_6 == 4'h4; // @[Seg7LED.scala 38:17:@31.4]
  assign _T_61 = _GEN_6 == 4'h5; // @[Seg7LED.scala 39:17:@32.4]
  assign _T_64 = _GEN_6 == 4'h6; // @[Seg7LED.scala 40:17:@33.4]
  assign _T_67 = _GEN_6 == 4'h7; // @[Seg7LED.scala 41:17:@34.4]
  assign _T_70 = _GEN_6 == 4'h8; // @[Seg7LED.scala 42:17:@35.4]
  assign _T_73 = _GEN_6 == 4'h9; // @[Seg7LED.scala 43:17:@36.4]
  assign _T_76 = _GEN_6 == 4'ha; // @[Seg7LED.scala 44:17:@37.4]
  assign _T_79 = _GEN_6 == 4'hb; // @[Seg7LED.scala 45:17:@38.4]
  assign _T_82 = _GEN_6 == 4'hc; // @[Seg7LED.scala 46:17:@39.4]
  assign _T_85 = _GEN_6 == 4'hd; // @[Seg7LED.scala 47:17:@40.4]
  assign _T_88 = _GEN_6 == 4'he; // @[Seg7LED.scala 48:17:@41.4]
  assign _T_91 = _GEN_6 == 4'hf; // @[Seg7LED.scala 49:17:@42.4]
  assign _T_93 = _T_91 ? 7'he : 7'h7f; // @[Mux.scala 61:16:@43.4]
  assign _T_94 = _T_88 ? 7'h6 : _T_93; // @[Mux.scala 61:16:@44.4]
  assign _T_95 = _T_85 ? 7'h21 : _T_94; // @[Mux.scala 61:16:@45.4]
  assign _T_96 = _T_82 ? 7'h46 : _T_95; // @[Mux.scala 61:16:@46.4]
  assign _T_97 = _T_79 ? 7'h3 : _T_96; // @[Mux.scala 61:16:@47.4]
  assign _T_98 = _T_76 ? 7'h8 : _T_97; // @[Mux.scala 61:16:@48.4]
  assign _T_99 = _T_73 ? 7'h10 : _T_98; // @[Mux.scala 61:16:@49.4]
  assign _T_100 = _T_70 ? 7'h0 : _T_99; // @[Mux.scala 61:16:@50.4]
  assign _T_101 = _T_67 ? 7'h58 : _T_100; // @[Mux.scala 61:16:@51.4]
  assign _T_102 = _T_64 ? 7'h2 : _T_101; // @[Mux.scala 61:16:@52.4]
  assign _T_103 = _T_61 ? 7'h12 : _T_102; // @[Mux.scala 61:16:@53.4]
  assign _T_104 = _T_58 ? 7'h19 : _T_103; // @[Mux.scala 61:16:@54.4]
  assign _T_105 = _T_55 ? 7'h30 : _T_104; // @[Mux.scala 61:16:@55.4]
  assign _T_106 = _T_52 ? 7'h24 : _T_105; // @[Mux.scala 61:16:@56.4]
  assign _T_107 = _T_49 ? 7'h79 : _T_106; // @[Mux.scala 61:16:@57.4]
  assign _T_111 = anodes[2:0]; // @[Seg7LED.scala 54:25:@62.6]
  assign _T_112 = anodes[3]; // @[Seg7LED.scala 54:39:@63.6]
  assign _T_113 = {_T_111,_T_112}; // @[Cat.scala 30:58:@64.6]
  assign _GEN_7 = digitChange ? _T_113 : anodes; // @[Seg7LED.scala 52:22:@61.4]
  assign io_seg7led_cathodes = _T_46 ? 7'h40 : _T_107; // @[Seg7LED.scala 32:23:@59.4]
  assign io_seg7led_anodes = anodes; // @[Seg7LED.scala 56:21:@67.4]
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
  value_1 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  anodes = _RAND_2[3:0];
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
        value <= _T_34;
      end
    end
    if (reset) begin
      value_1 <= 2'h0;
    end else begin
      if (digitChange) begin
        value_1 <= _T_42;
      end
    end
    if (reset) begin
      anodes <= 4'h1;
    end else begin
      if (digitChange) begin
        anodes <= _T_113;
      end
    end
  end
endmodule
