module Mcp3008( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  output       io_config_ready, // @[:@6.4]
  input        io_config_valid, // @[:@6.4]
  input  [3:0] io_config_bits, // @[:@6.4]
  output       io_data_valid, // @[:@6.4]
  output [9:0] io_data_bits, // @[:@6.4]
  output       io_spi_nCs, // @[:@6.4]
  output       io_spi_sclk, // @[:@6.4]
  output       io_spi_mosi, // @[:@6.4]
  input        io_spi_miso // @[:@6.4]
);
  reg [2:0] state; // @[Crawler.scala 25:22:@8.4]
  reg [31:0] _RAND_0;
  reg [5:0] value; // @[Counter.scala 26:33:@9.4]
  reg [31:0] _RAND_1;
  wire  sclkPhaseChange; // @[Counter.scala 34:24:@11.6]
  wire [6:0] _T_36; // @[Counter.scala 35:22:@12.6]
  wire [5:0] _T_37; // @[Counter.scala 35:22:@13.6]
  wire [5:0] _GEN_0; // @[Counter.scala 37:21:@15.6]
  reg  sclk; // @[Crawler.scala 28:21:@20.4]
  reg [31:0] _RAND_2;
  wire  _T_41; // @[Crawler.scala 29:15:@21.4]
  wire  _T_42; // @[Crawler.scala 29:25:@22.4]
  wire  _T_44; // @[Crawler.scala 31:22:@27.6]
  wire  _T_45; // @[Crawler.scala 31:32:@28.6]
  wire  _T_46; // @[Crawler.scala 32:13:@30.8]
  wire  _GEN_2; // @[Crawler.scala 31:52:@29.6]
  wire  _GEN_3; // @[Crawler.scala 29:45:@23.4]
  reg [3:0] config$; // @[Crawler.scala 36:23:@33.4]
  reg [31:0] _RAND_3;
  reg  receiveValue_0; // @[Crawler.scala 38:29:@45.4]
  reg [31:0] _RAND_4;
  reg  receiveValue_1; // @[Crawler.scala 38:29:@45.4]
  reg [31:0] _RAND_5;
  reg  receiveValue_2; // @[Crawler.scala 38:29:@45.4]
  reg [31:0] _RAND_6;
  reg  receiveValue_3; // @[Crawler.scala 38:29:@45.4]
  reg [31:0] _RAND_7;
  reg  receiveValue_4; // @[Crawler.scala 38:29:@45.4]
  reg [31:0] _RAND_8;
  reg  receiveValue_5; // @[Crawler.scala 38:29:@45.4]
  reg [31:0] _RAND_9;
  reg  receiveValue_6; // @[Crawler.scala 38:29:@45.4]
  reg [31:0] _RAND_10;
  reg  receiveValue_7; // @[Crawler.scala 38:29:@45.4]
  reg [31:0] _RAND_11;
  reg  receiveValue_8; // @[Crawler.scala 38:29:@45.4]
  reg [31:0] _RAND_12;
  reg  receiveValue_9; // @[Crawler.scala 38:29:@45.4]
  reg [31:0] _RAND_13;
  reg  received; // @[Crawler.scala 39:25:@46.4]
  reg [31:0] _RAND_14;
  reg [1:0] sendCount; // @[Crawler.scala 44:26:@47.4]
  reg [31:0] _RAND_15;
  reg [3:0] receiveCount; // @[Crawler.scala 45:29:@48.4]
  reg [31:0] _RAND_16;
  wire  changeState; // @[Crawler.scala 47:37:@49.4]
  wire [2:0] _GEN_4; // @[Crawler.scala 49:28:@52.6]
  wire [3:0] _GEN_5; // @[Crawler.scala 49:28:@52.6]
  wire  _GEN_6; // @[Crawler.scala 49:28:@52.6]
  wire  _T_141; // @[Crawler.scala 55:17:@60.8]
  wire  _T_143; // @[Crawler.scala 58:24:@66.10]
  wire  _T_145; // @[Crawler.scala 59:23:@68.12]
  wire [2:0] _T_147; // @[Crawler.scala 62:32:@73.14]
  wire [1:0] _T_148; // @[Crawler.scala 62:32:@74.14]
  wire [2:0] _GEN_7; // @[Crawler.scala 59:32:@69.12]
  wire [1:0] _GEN_8; // @[Crawler.scala 59:32:@69.12]
  wire  _T_149; // @[Crawler.scala 64:24:@79.12]
  wire  _T_150; // @[Crawler.scala 66:24:@84.14]
  wire  _T_152; // @[Crawler.scala 69:24:@90.16]
  wire  _T_154; // @[Crawler.scala 70:26:@92.18]
  wire [4:0] _T_156; // @[Crawler.scala 73:38:@97.20]
  wire [3:0] _T_157; // @[Crawler.scala 73:38:@98.20]
  wire [2:0] _GEN_9; // @[Crawler.scala 70:35:@93.18]
  wire [3:0] _GEN_10; // @[Crawler.scala 70:35:@93.18]
  wire  _GEN_11; // @[Crawler.scala 70:35:@93.18]
  wire  _T_159; // @[Crawler.scala 76:24:@104.18]
  wire [2:0] _GEN_12; // @[Crawler.scala 76:35:@105.18]
  wire [2:0] _GEN_13; // @[Crawler.scala 69:38:@91.16]
  wire [3:0] _GEN_14; // @[Crawler.scala 69:38:@91.16]
  wire  _GEN_15; // @[Crawler.scala 69:38:@91.16]
  wire [2:0] _GEN_16; // @[Crawler.scala 66:38:@85.14]
  wire [3:0] _GEN_17; // @[Crawler.scala 66:38:@85.14]
  wire  _GEN_18; // @[Crawler.scala 66:38:@85.14]
  wire [2:0] _GEN_19; // @[Crawler.scala 64:39:@80.12]
  wire [3:0] _GEN_20; // @[Crawler.scala 64:39:@80.12]
  wire  _GEN_21; // @[Crawler.scala 64:39:@80.12]
  wire [2:0] _GEN_22; // @[Crawler.scala 58:35:@67.10]
  wire [1:0] _GEN_23; // @[Crawler.scala 58:35:@67.10]
  wire [3:0] _GEN_24; // @[Crawler.scala 58:35:@67.10]
  wire  _GEN_25; // @[Crawler.scala 58:35:@67.10]
  wire [2:0] _GEN_26; // @[Crawler.scala 55:29:@61.8]
  wire [1:0] _GEN_27; // @[Crawler.scala 55:29:@61.8]
  wire [3:0] _GEN_28; // @[Crawler.scala 55:29:@61.8]
  wire  _GEN_29; // @[Crawler.scala 55:29:@61.8]
  wire [2:0] _GEN_30; // @[Crawler.scala 54:29:@59.6]
  wire [1:0] _GEN_31; // @[Crawler.scala 54:29:@59.6]
  wire [3:0] _GEN_32; // @[Crawler.scala 54:29:@59.6]
  wire  _GEN_33; // @[Crawler.scala 54:29:@59.6]
  wire [2:0] _GEN_34; // @[Crawler.scala 48:26:@51.4]
  wire [3:0] _GEN_35; // @[Crawler.scala 48:26:@51.4]
  wire  _GEN_36; // @[Crawler.scala 48:26:@51.4]
  wire [1:0] _GEN_37; // @[Crawler.scala 48:26:@51.4]
  wire [3:0] _GEN_38; // @[Crawler.scala 48:26:@51.4]
  wire  _T_162; // @[Crawler.scala 84:50:@110.4]
  wire  _T_163; // @[Crawler.scala 84:48:@111.4]
  wire  _T_164; // @[Crawler.scala 84:28:@112.4]
  wire  _GEN_39; // @[Crawler.scala 85:32:@114.6]
  wire  _GEN_40; // @[Crawler.scala 85:32:@114.6]
  wire  _GEN_41; // @[Crawler.scala 85:32:@114.6]
  wire  _GEN_42; // @[Crawler.scala 85:32:@114.6]
  wire  _GEN_43; // @[Crawler.scala 85:32:@114.6]
  wire  _GEN_44; // @[Crawler.scala 85:32:@114.6]
  wire  _GEN_45; // @[Crawler.scala 85:32:@114.6]
  wire  _GEN_46; // @[Crawler.scala 85:32:@114.6]
  wire  _GEN_47; // @[Crawler.scala 85:32:@114.6]
  wire  _GEN_48; // @[Crawler.scala 85:32:@114.6]
  wire  _GEN_49; // @[Crawler.scala 84:58:@113.4]
  wire  _GEN_50; // @[Crawler.scala 84:58:@113.4]
  wire  _GEN_51; // @[Crawler.scala 84:58:@113.4]
  wire  _GEN_52; // @[Crawler.scala 84:58:@113.4]
  wire  _GEN_53; // @[Crawler.scala 84:58:@113.4]
  wire  _GEN_54; // @[Crawler.scala 84:58:@113.4]
  wire  _GEN_55; // @[Crawler.scala 84:58:@113.4]
  wire  _GEN_56; // @[Crawler.scala 84:58:@113.4]
  wire  _GEN_57; // @[Crawler.scala 84:58:@113.4]
  wire  _GEN_58; // @[Crawler.scala 84:58:@113.4]
  wire [9:0] _T_177; // @[Crawler.scala 94:46:@127.4]
  wire [7:0] _T_178; // @[Bitwise.scala 109:18:@128.4]
  wire [3:0] _T_183; // @[Bitwise.scala 103:21:@131.4]
  wire [7:0] _T_184; // @[Bitwise.scala 103:31:@132.4]
  wire [3:0] _T_185; // @[Bitwise.scala 103:46:@133.4]
  wire [7:0] _GEN_60; // @[Bitwise.scala 103:65:@134.4]
  wire [7:0] _T_186; // @[Bitwise.scala 103:65:@134.4]
  wire [7:0] _T_188; // @[Bitwise.scala 103:75:@136.4]
  wire [7:0] _T_189; // @[Bitwise.scala 103:39:@137.4]
  wire [5:0] _T_193; // @[Bitwise.scala 103:21:@141.4]
  wire [7:0] _GEN_61; // @[Bitwise.scala 103:31:@142.4]
  wire [7:0] _T_194; // @[Bitwise.scala 103:31:@142.4]
  wire [5:0] _T_195; // @[Bitwise.scala 103:46:@143.4]
  wire [7:0] _GEN_62; // @[Bitwise.scala 103:65:@144.4]
  wire [7:0] _T_196; // @[Bitwise.scala 103:65:@144.4]
  wire [7:0] _T_198; // @[Bitwise.scala 103:75:@146.4]
  wire [7:0] _T_199; // @[Bitwise.scala 103:39:@147.4]
  wire [6:0] _T_203; // @[Bitwise.scala 103:21:@151.4]
  wire [7:0] _GEN_63; // @[Bitwise.scala 103:31:@152.4]
  wire [7:0] _T_204; // @[Bitwise.scala 103:31:@152.4]
  wire [6:0] _T_205; // @[Bitwise.scala 103:46:@153.4]
  wire [7:0] _GEN_64; // @[Bitwise.scala 103:65:@154.4]
  wire [7:0] _T_206; // @[Bitwise.scala 103:65:@154.4]
  wire [7:0] _T_208; // @[Bitwise.scala 103:75:@156.4]
  wire [7:0] _T_209; // @[Bitwise.scala 103:39:@157.4]
  wire [1:0] _T_210; // @[Bitwise.scala 109:44:@158.4]
  wire  _T_211; // @[Bitwise.scala 109:18:@159.4]
  wire  _T_212; // @[Bitwise.scala 109:44:@160.4]
  wire [1:0] _T_213; // @[Cat.scala 30:58:@161.4]
  wire [1:0] _T_220; // @[Bitwise.scala 109:18:@172.6]
  wire  _T_221; // @[Bitwise.scala 109:18:@173.6]
  wire  _T_222; // @[Bitwise.scala 109:44:@174.6]
  wire [1:0] _T_224; // @[Bitwise.scala 109:44:@176.6]
  wire  _T_225; // @[Bitwise.scala 109:18:@177.6]
  wire  _T_226; // @[Bitwise.scala 109:44:@178.6]
  wire [3:0] _T_228; // @[Cat.scala 30:58:@180.6]
  wire [3:0] _T_229; // @[Crawler.scala 101:35:@181.6]
  wire  _T_230; // @[Crawler.scala 101:35:@182.6]
  assign sclkPhaseChange = value == 6'h31; // @[Counter.scala 34:24:@11.6]
  assign _T_36 = value + 6'h1; // @[Counter.scala 35:22:@12.6]
  assign _T_37 = value + 6'h1; // @[Counter.scala 35:22:@13.6]
  assign _GEN_0 = sclkPhaseChange ? 6'h0 : _T_37; // @[Counter.scala 37:21:@15.6]
  assign _T_41 = state == 3'h0; // @[Crawler.scala 29:15:@21.4]
  assign _T_42 = _T_41 & io_config_valid; // @[Crawler.scala 29:25:@22.4]
  assign _T_44 = state != 3'h0; // @[Crawler.scala 31:22:@27.6]
  assign _T_45 = _T_44 & sclkPhaseChange; // @[Crawler.scala 31:32:@28.6]
  assign _T_46 = ~ sclk; // @[Crawler.scala 32:13:@30.8]
  assign _GEN_2 = _T_45 ? _T_46 : sclk; // @[Crawler.scala 31:52:@29.6]
  assign _GEN_3 = _T_42 ? 1'h0 : _GEN_2; // @[Crawler.scala 29:45:@23.4]
  assign changeState = sclkPhaseChange & sclk; // @[Crawler.scala 47:37:@49.4]
  assign _GEN_4 = io_config_valid ? 3'h1 : state; // @[Crawler.scala 49:28:@52.6]
  assign _GEN_5 = io_config_valid ? io_config_bits : config$; // @[Crawler.scala 49:28:@52.6]
  assign _GEN_6 = io_config_valid ? 1'h0 : received; // @[Crawler.scala 49:28:@52.6]
  assign _T_141 = state == 3'h1; // @[Crawler.scala 55:17:@60.8]
  assign _T_143 = state == 3'h2; // @[Crawler.scala 58:24:@66.10]
  assign _T_145 = sendCount == 2'h3; // @[Crawler.scala 59:23:@68.12]
  assign _T_147 = sendCount + 2'h1; // @[Crawler.scala 62:32:@73.14]
  assign _T_148 = sendCount + 2'h1; // @[Crawler.scala 62:32:@74.14]
  assign _GEN_7 = _T_145 ? 3'h3 : state; // @[Crawler.scala 59:32:@69.12]
  assign _GEN_8 = _T_145 ? sendCount : _T_148; // @[Crawler.scala 59:32:@69.12]
  assign _T_149 = state == 3'h3; // @[Crawler.scala 64:24:@79.12]
  assign _T_150 = state == 3'h4; // @[Crawler.scala 66:24:@84.14]
  assign _T_152 = state == 3'h5; // @[Crawler.scala 69:24:@90.16]
  assign _T_154 = receiveCount == 4'h9; // @[Crawler.scala 70:26:@92.18]
  assign _T_156 = receiveCount + 4'h1; // @[Crawler.scala 73:38:@97.20]
  assign _T_157 = receiveCount + 4'h1; // @[Crawler.scala 73:38:@98.20]
  assign _GEN_9 = _T_154 ? 3'h6 : state; // @[Crawler.scala 70:35:@93.18]
  assign _GEN_10 = _T_154 ? receiveCount : _T_157; // @[Crawler.scala 70:35:@93.18]
  assign _GEN_11 = _T_154 ? received : 1'h1; // @[Crawler.scala 70:35:@93.18]
  assign _T_159 = state == 3'h6; // @[Crawler.scala 76:24:@104.18]
  assign _GEN_12 = _T_159 ? 3'h0 : state; // @[Crawler.scala 76:35:@105.18]
  assign _GEN_13 = _T_152 ? _GEN_9 : _GEN_12; // @[Crawler.scala 69:38:@91.16]
  assign _GEN_14 = _T_152 ? _GEN_10 : receiveCount; // @[Crawler.scala 69:38:@91.16]
  assign _GEN_15 = _T_152 ? _GEN_11 : received; // @[Crawler.scala 69:38:@91.16]
  assign _GEN_16 = _T_150 ? 3'h5 : _GEN_13; // @[Crawler.scala 66:38:@85.14]
  assign _GEN_17 = _T_150 ? 4'h0 : _GEN_14; // @[Crawler.scala 66:38:@85.14]
  assign _GEN_18 = _T_150 ? received : _GEN_15; // @[Crawler.scala 66:38:@85.14]
  assign _GEN_19 = _T_149 ? 3'h4 : _GEN_16; // @[Crawler.scala 64:39:@80.12]
  assign _GEN_20 = _T_149 ? receiveCount : _GEN_17; // @[Crawler.scala 64:39:@80.12]
  assign _GEN_21 = _T_149 ? received : _GEN_18; // @[Crawler.scala 64:39:@80.12]
  assign _GEN_22 = _T_143 ? _GEN_7 : _GEN_19; // @[Crawler.scala 58:35:@67.10]
  assign _GEN_23 = _T_143 ? _GEN_8 : sendCount; // @[Crawler.scala 58:35:@67.10]
  assign _GEN_24 = _T_143 ? receiveCount : _GEN_20; // @[Crawler.scala 58:35:@67.10]
  assign _GEN_25 = _T_143 ? received : _GEN_21; // @[Crawler.scala 58:35:@67.10]
  assign _GEN_26 = _T_141 ? 3'h2 : _GEN_22; // @[Crawler.scala 55:29:@61.8]
  assign _GEN_27 = _T_141 ? 2'h0 : _GEN_23; // @[Crawler.scala 55:29:@61.8]
  assign _GEN_28 = _T_141 ? receiveCount : _GEN_24; // @[Crawler.scala 55:29:@61.8]
  assign _GEN_29 = _T_141 ? received : _GEN_25; // @[Crawler.scala 55:29:@61.8]
  assign _GEN_30 = changeState ? _GEN_26 : state; // @[Crawler.scala 54:29:@59.6]
  assign _GEN_31 = changeState ? _GEN_27 : sendCount; // @[Crawler.scala 54:29:@59.6]
  assign _GEN_32 = changeState ? _GEN_28 : receiveCount; // @[Crawler.scala 54:29:@59.6]
  assign _GEN_33 = changeState ? _GEN_29 : received; // @[Crawler.scala 54:29:@59.6]
  assign _GEN_34 = _T_41 ? _GEN_4 : _GEN_30; // @[Crawler.scala 48:26:@51.4]
  assign _GEN_35 = _T_41 ? _GEN_5 : config$; // @[Crawler.scala 48:26:@51.4]
  assign _GEN_36 = _T_41 ? _GEN_6 : _GEN_33; // @[Crawler.scala 48:26:@51.4]
  assign _GEN_37 = _T_41 ? sendCount : _GEN_31; // @[Crawler.scala 48:26:@51.4]
  assign _GEN_38 = _T_41 ? receiveCount : _GEN_32; // @[Crawler.scala 48:26:@51.4]
  assign _T_162 = sclk == 1'h0; // @[Crawler.scala 84:50:@110.4]
  assign _T_163 = sclkPhaseChange & _T_162; // @[Crawler.scala 84:48:@111.4]
  assign _T_164 = _T_152 & _T_163; // @[Crawler.scala 84:28:@112.4]
  assign _GEN_39 = 4'h0 == receiveCount ? io_spi_miso : receiveValue_0; // @[Crawler.scala 85:32:@114.6]
  assign _GEN_40 = 4'h1 == receiveCount ? io_spi_miso : receiveValue_1; // @[Crawler.scala 85:32:@114.6]
  assign _GEN_41 = 4'h2 == receiveCount ? io_spi_miso : receiveValue_2; // @[Crawler.scala 85:32:@114.6]
  assign _GEN_42 = 4'h3 == receiveCount ? io_spi_miso : receiveValue_3; // @[Crawler.scala 85:32:@114.6]
  assign _GEN_43 = 4'h4 == receiveCount ? io_spi_miso : receiveValue_4; // @[Crawler.scala 85:32:@114.6]
  assign _GEN_44 = 4'h5 == receiveCount ? io_spi_miso : receiveValue_5; // @[Crawler.scala 85:32:@114.6]
  assign _GEN_45 = 4'h6 == receiveCount ? io_spi_miso : receiveValue_6; // @[Crawler.scala 85:32:@114.6]
  assign _GEN_46 = 4'h7 == receiveCount ? io_spi_miso : receiveValue_7; // @[Crawler.scala 85:32:@114.6]
  assign _GEN_47 = 4'h8 == receiveCount ? io_spi_miso : receiveValue_8; // @[Crawler.scala 85:32:@114.6]
  assign _GEN_48 = 4'h9 == receiveCount ? io_spi_miso : receiveValue_9; // @[Crawler.scala 85:32:@114.6]
  assign _GEN_49 = _T_164 ? _GEN_39 : receiveValue_0; // @[Crawler.scala 84:58:@113.4]
  assign _GEN_50 = _T_164 ? _GEN_40 : receiveValue_1; // @[Crawler.scala 84:58:@113.4]
  assign _GEN_51 = _T_164 ? _GEN_41 : receiveValue_2; // @[Crawler.scala 84:58:@113.4]
  assign _GEN_52 = _T_164 ? _GEN_42 : receiveValue_3; // @[Crawler.scala 84:58:@113.4]
  assign _GEN_53 = _T_164 ? _GEN_43 : receiveValue_4; // @[Crawler.scala 84:58:@113.4]
  assign _GEN_54 = _T_164 ? _GEN_44 : receiveValue_5; // @[Crawler.scala 84:58:@113.4]
  assign _GEN_55 = _T_164 ? _GEN_45 : receiveValue_6; // @[Crawler.scala 84:58:@113.4]
  assign _GEN_56 = _T_164 ? _GEN_46 : receiveValue_7; // @[Crawler.scala 84:58:@113.4]
  assign _GEN_57 = _T_164 ? _GEN_47 : receiveValue_8; // @[Crawler.scala 84:58:@113.4]
  assign _GEN_58 = _T_164 ? _GEN_48 : receiveValue_9; // @[Crawler.scala 84:58:@113.4]
  assign _T_177 = {receiveValue_9,receiveValue_8,receiveValue_7,receiveValue_6,receiveValue_5,receiveValue_4,receiveValue_3,receiveValue_2,receiveValue_1,receiveValue_0}; // @[Crawler.scala 94:46:@127.4]
  assign _T_178 = _T_177[7:0]; // @[Bitwise.scala 109:18:@128.4]
  assign _T_183 = _T_178[7:4]; // @[Bitwise.scala 103:21:@131.4]
  assign _T_184 = {{4'd0}, _T_183}; // @[Bitwise.scala 103:31:@132.4]
  assign _T_185 = _T_178[3:0]; // @[Bitwise.scala 103:46:@133.4]
  assign _GEN_60 = {{4'd0}, _T_185}; // @[Bitwise.scala 103:65:@134.4]
  assign _T_186 = _GEN_60 << 4; // @[Bitwise.scala 103:65:@134.4]
  assign _T_188 = _T_186 & 8'hf0; // @[Bitwise.scala 103:75:@136.4]
  assign _T_189 = _T_184 | _T_188; // @[Bitwise.scala 103:39:@137.4]
  assign _T_193 = _T_189[7:2]; // @[Bitwise.scala 103:21:@141.4]
  assign _GEN_61 = {{2'd0}, _T_193}; // @[Bitwise.scala 103:31:@142.4]
  assign _T_194 = _GEN_61 & 8'h33; // @[Bitwise.scala 103:31:@142.4]
  assign _T_195 = _T_189[5:0]; // @[Bitwise.scala 103:46:@143.4]
  assign _GEN_62 = {{2'd0}, _T_195}; // @[Bitwise.scala 103:65:@144.4]
  assign _T_196 = _GEN_62 << 2; // @[Bitwise.scala 103:65:@144.4]
  assign _T_198 = _T_196 & 8'hcc; // @[Bitwise.scala 103:75:@146.4]
  assign _T_199 = _T_194 | _T_198; // @[Bitwise.scala 103:39:@147.4]
  assign _T_203 = _T_199[7:1]; // @[Bitwise.scala 103:21:@151.4]
  assign _GEN_63 = {{1'd0}, _T_203}; // @[Bitwise.scala 103:31:@152.4]
  assign _T_204 = _GEN_63 & 8'h55; // @[Bitwise.scala 103:31:@152.4]
  assign _T_205 = _T_199[6:0]; // @[Bitwise.scala 103:46:@153.4]
  assign _GEN_64 = {{1'd0}, _T_205}; // @[Bitwise.scala 103:65:@154.4]
  assign _T_206 = _GEN_64 << 1; // @[Bitwise.scala 103:65:@154.4]
  assign _T_208 = _T_206 & 8'haa; // @[Bitwise.scala 103:75:@156.4]
  assign _T_209 = _T_204 | _T_208; // @[Bitwise.scala 103:39:@157.4]
  assign _T_210 = _T_177[9:8]; // @[Bitwise.scala 109:44:@158.4]
  assign _T_211 = _T_210[0]; // @[Bitwise.scala 109:18:@159.4]
  assign _T_212 = _T_210[1]; // @[Bitwise.scala 109:44:@160.4]
  assign _T_213 = {_T_211,_T_212}; // @[Cat.scala 30:58:@161.4]
  assign _T_220 = config$[1:0]; // @[Bitwise.scala 109:18:@172.6]
  assign _T_221 = _T_220[0]; // @[Bitwise.scala 109:18:@173.6]
  assign _T_222 = _T_220[1]; // @[Bitwise.scala 109:44:@174.6]
  assign _T_224 = config$[3:2]; // @[Bitwise.scala 109:44:@176.6]
  assign _T_225 = _T_224[0]; // @[Bitwise.scala 109:18:@177.6]
  assign _T_226 = _T_224[1]; // @[Bitwise.scala 109:44:@178.6]
  assign _T_228 = {_T_221,_T_222,_T_225,_T_226}; // @[Cat.scala 30:58:@180.6]
  assign _T_229 = _T_228 >> sendCount; // @[Crawler.scala 101:35:@181.6]
  assign _T_230 = _T_229[0]; // @[Crawler.scala 101:35:@182.6]
  assign io_config_ready = state == 3'h0; // @[Crawler.scala 91:19:@117.4]
  assign io_data_valid = received; // @[Crawler.scala 93:17:@118.4]
  assign io_data_bits = {_T_209,_T_213}; // @[Crawler.scala 94:16:@163.4]
  assign io_spi_nCs = _T_41 | _T_159; // @[Crawler.scala 97:14:@168.4]
  assign io_spi_sclk = sclk; // @[Crawler.scala 96:15:@164.4]
  assign io_spi_mosi = _T_143 ? _T_230 : 1'h1; // @[Crawler.scala 99:15:@169.4 Crawler.scala 101:17:@183.6]
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
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  value = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  sclk = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  config$ = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  receiveValue_0 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  receiveValue_1 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  receiveValue_2 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  receiveValue_3 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  receiveValue_4 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  receiveValue_5 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  receiveValue_6 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  receiveValue_7 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  receiveValue_8 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  receiveValue_9 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  received = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  sendCount = _RAND_15[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  receiveCount = _RAND_16[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_41) begin
        if (io_config_valid) begin
          state <= 3'h1;
        end
      end else begin
        if (changeState) begin
          if (_T_141) begin
            state <= 3'h2;
          end else begin
            if (_T_143) begin
              if (_T_145) begin
                state <= 3'h3;
              end
            end else begin
              if (_T_149) begin
                state <= 3'h4;
              end else begin
                if (_T_150) begin
                  state <= 3'h5;
                end else begin
                  if (_T_152) begin
                    if (_T_154) begin
                      state <= 3'h6;
                    end
                  end else begin
                    if (_T_159) begin
                      state <= 3'h0;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      value <= 6'h0;
    end else begin
      if (sclkPhaseChange) begin
        value <= 6'h0;
      end else begin
        value <= _T_37;
      end
    end
    if (reset) begin
      sclk <= 1'h1;
    end else begin
      if (_T_42) begin
        sclk <= 1'h0;
      end else begin
        if (_T_45) begin
          sclk <= _T_46;
        end
      end
    end
    if (reset) begin
      config$ <= 4'h0;
    end else begin
      if (_T_41) begin
        if (io_config_valid) begin
          config$ <= io_config_bits;
        end
      end
    end
    if (reset) begin
      receiveValue_0 <= 1'h0;
    end else begin
      if (_T_164) begin
        if (4'h0 == receiveCount) begin
          receiveValue_0 <= io_spi_miso;
        end
      end
    end
    if (reset) begin
      receiveValue_1 <= 1'h0;
    end else begin
      if (_T_164) begin
        if (4'h1 == receiveCount) begin
          receiveValue_1 <= io_spi_miso;
        end
      end
    end
    if (reset) begin
      receiveValue_2 <= 1'h0;
    end else begin
      if (_T_164) begin
        if (4'h2 == receiveCount) begin
          receiveValue_2 <= io_spi_miso;
        end
      end
    end
    if (reset) begin
      receiveValue_3 <= 1'h0;
    end else begin
      if (_T_164) begin
        if (4'h3 == receiveCount) begin
          receiveValue_3 <= io_spi_miso;
        end
      end
    end
    if (reset) begin
      receiveValue_4 <= 1'h0;
    end else begin
      if (_T_164) begin
        if (4'h4 == receiveCount) begin
          receiveValue_4 <= io_spi_miso;
        end
      end
    end
    if (reset) begin
      receiveValue_5 <= 1'h0;
    end else begin
      if (_T_164) begin
        if (4'h5 == receiveCount) begin
          receiveValue_5 <= io_spi_miso;
        end
      end
    end
    if (reset) begin
      receiveValue_6 <= 1'h0;
    end else begin
      if (_T_164) begin
        if (4'h6 == receiveCount) begin
          receiveValue_6 <= io_spi_miso;
        end
      end
    end
    if (reset) begin
      receiveValue_7 <= 1'h0;
    end else begin
      if (_T_164) begin
        if (4'h7 == receiveCount) begin
          receiveValue_7 <= io_spi_miso;
        end
      end
    end
    if (reset) begin
      receiveValue_8 <= 1'h0;
    end else begin
      if (_T_164) begin
        if (4'h8 == receiveCount) begin
          receiveValue_8 <= io_spi_miso;
        end
      end
    end
    if (reset) begin
      receiveValue_9 <= 1'h0;
    end else begin
      if (_T_164) begin
        if (4'h9 == receiveCount) begin
          receiveValue_9 <= io_spi_miso;
        end
      end
    end
    if (reset) begin
      received <= 1'h0;
    end else begin
      if (_T_41) begin
        if (io_config_valid) begin
          received <= 1'h0;
        end
      end else begin
        if (changeState) begin
          if (!(_T_141)) begin
            if (!(_T_143)) begin
              if (!(_T_149)) begin
                if (!(_T_150)) begin
                  if (_T_152) begin
                    if (!(_T_154)) begin
                      received <= 1'h1;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      sendCount <= 2'h0;
    end else begin
      if (!(_T_41)) begin
        if (changeState) begin
          if (_T_141) begin
            sendCount <= 2'h0;
          end else begin
            if (_T_143) begin
              if (!(_T_145)) begin
                sendCount <= _T_148;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      receiveCount <= 4'h0;
    end else begin
      if (!(_T_41)) begin
        if (changeState) begin
          if (!(_T_141)) begin
            if (!(_T_143)) begin
              if (!(_T_149)) begin
                if (_T_150) begin
                  receiveCount <= 4'h0;
                end else begin
                  if (_T_152) begin
                    if (!(_T_154)) begin
                      receiveCount <= _T_157;
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
endmodule
module Drv8835SingleDrive( // @[:@186.2]
  input        clock, // @[:@187.4]
  input        reset, // @[:@188.4]
  input  [7:0] io_speed, // @[:@189.4]
  output       io_driverIn1 // @[:@189.4]
);
  reg [13:0] value; // @[Counter.scala 26:33:@191.4]
  reg [31:0] _RAND_0;
  wire  changePulse; // @[Counter.scala 34:24:@193.6]
  wire [14:0] _T_19; // @[Counter.scala 35:22:@194.6]
  wire [13:0] _T_20; // @[Counter.scala 35:22:@195.6]
  wire [13:0] _GEN_0; // @[Counter.scala 37:21:@197.6]
  reg [2:0] value_1; // @[Counter.scala 26:33:@202.4]
  reg [31:0] _RAND_1;
  wire [3:0] _T_27; // @[Counter.scala 35:22:@205.6]
  wire [2:0] _T_28; // @[Counter.scala 35:22:@206.6]
  wire [2:0] _GEN_2; // @[Counter.scala 63:17:@203.4]
  wire  _T_30; // @[Crawler.scala 125:18:@210.4]
  wire [8:0] _T_34; // @[Crawler.scala 130:46:@217.8]
  wire [8:0] _T_35; // @[Crawler.scala 130:46:@218.8]
  wire [7:0] _T_36; // @[Crawler.scala 130:46:@219.8]
  wire [7:0] _GEN_7; // @[Crawler.scala 130:34:@220.8]
  wire  _T_37; // @[Crawler.scala 130:34:@220.8]
  assign changePulse = value == 14'h30d3; // @[Counter.scala 34:24:@193.6]
  assign _T_19 = value + 14'h1; // @[Counter.scala 35:22:@194.6]
  assign _T_20 = value + 14'h1; // @[Counter.scala 35:22:@195.6]
  assign _GEN_0 = changePulse ? 14'h0 : _T_20; // @[Counter.scala 37:21:@197.6]
  assign _T_27 = value_1 + 3'h1; // @[Counter.scala 35:22:@205.6]
  assign _T_28 = value_1 + 3'h1; // @[Counter.scala 35:22:@206.6]
  assign _GEN_2 = changePulse ? _T_28 : value_1; // @[Counter.scala 63:17:@203.4]
  assign _T_30 = io_speed == 8'h0; // @[Crawler.scala 125:18:@210.4]
  assign _T_34 = io_speed - 8'h1; // @[Crawler.scala 130:46:@217.8]
  assign _T_35 = $unsigned(_T_34); // @[Crawler.scala 130:46:@218.8]
  assign _T_36 = _T_35[7:0]; // @[Crawler.scala 130:46:@219.8]
  assign _GEN_7 = {{5'd0}, value_1}; // @[Crawler.scala 130:34:@220.8]
  assign _T_37 = _GEN_7 <= _T_36; // @[Crawler.scala 130:34:@220.8]
  assign io_driverIn1 = _T_30 ? 1'h0 : _T_37; // @[Crawler.scala 126:18:@212.6 Crawler.scala 130:20:@221.8 Crawler.scala 133:20:@225.8]
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
  value = _RAND_0[13:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  value_1 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      value <= 14'h0;
    end else begin
      if (changePulse) begin
        value <= 14'h0;
      end else begin
        value <= _T_20;
      end
    end
    if (reset) begin
      value_1 <= 3'h0;
    end else begin
      if (changePulse) begin
        value_1 <= _T_28;
      end
    end
  end
endmodule
module Crawler( // @[:@282.2]
  input   clock, // @[:@283.4]
  input   reset, // @[:@284.4]
  output  io_spi_nCs, // @[:@285.4]
  output  io_spi_sclk, // @[:@285.4]
  output  io_spi_mosi, // @[:@285.4]
  input   io_spi_miso, // @[:@285.4]
  output  io_drv8835_a_driverIn1, // @[:@285.4]
  output  io_drv8835_a_driverIn2, // @[:@285.4]
  output  io_drv8835_b_driverIn1, // @[:@285.4]
  output  io_drv8835_b_driverIn2 // @[:@285.4]
);
  wire  mcp3008_clock; // @[Crawler.scala 162:23:@298.4]
  wire  mcp3008_reset; // @[Crawler.scala 162:23:@298.4]
  wire  mcp3008_io_config_ready; // @[Crawler.scala 162:23:@298.4]
  wire  mcp3008_io_config_valid; // @[Crawler.scala 162:23:@298.4]
  wire [3:0] mcp3008_io_config_bits; // @[Crawler.scala 162:23:@298.4]
  wire  mcp3008_io_data_valid; // @[Crawler.scala 162:23:@298.4]
  wire [9:0] mcp3008_io_data_bits; // @[Crawler.scala 162:23:@298.4]
  wire  mcp3008_io_spi_nCs; // @[Crawler.scala 162:23:@298.4]
  wire  mcp3008_io_spi_sclk; // @[Crawler.scala 162:23:@298.4]
  wire  mcp3008_io_spi_mosi; // @[Crawler.scala 162:23:@298.4]
  wire  mcp3008_io_spi_miso; // @[Crawler.scala 162:23:@298.4]
  wire  motorDriveA_clock; // @[Crawler.scala 202:27:@341.4]
  wire  motorDriveA_reset; // @[Crawler.scala 202:27:@341.4]
  wire [7:0] motorDriveA_io_speed; // @[Crawler.scala 202:27:@341.4]
  wire  motorDriveA_io_driverIn1; // @[Crawler.scala 202:27:@341.4]
  wire  motorDriveB_clock; // @[Crawler.scala 203:27:@344.4]
  wire  motorDriveB_reset; // @[Crawler.scala 203:27:@344.4]
  wire [7:0] motorDriveB_io_speed; // @[Crawler.scala 203:27:@344.4]
  wire  motorDriveB_io_driverIn1; // @[Crawler.scala 203:27:@344.4]
  reg [26:0] value; // @[Counter.scala 26:33:@287.4]
  reg [31:0] _RAND_0;
  wire  measureSig; // @[Counter.scala 34:24:@289.6]
  wire [27:0] _T_27; // @[Counter.scala 35:22:@290.6]
  wire [26:0] _T_28; // @[Counter.scala 35:22:@291.6]
  wire [26:0] _GEN_0; // @[Counter.scala 37:21:@293.6]
  reg [1:0] stateMcp3008; // @[Crawler.scala 167:29:@301.4]
  reg [31:0] _RAND_1;
  reg [9:0] channel1; // @[Crawler.scala 173:25:@306.4]
  reg [31:0] _RAND_2;
  reg [9:0] channel2; // @[Crawler.scala 174:25:@307.4]
  reg [31:0] _RAND_3;
  wire  _T_41; // @[Crawler.scala 179:22:@310.4]
  wire  _T_42; // @[Crawler.scala 179:32:@311.4]
  wire  _T_43; // @[Crawler.scala 181:29:@316.6]
  wire [9:0] _GEN_2; // @[Crawler.scala 185:41:@323.10]
  wire [1:0] _GEN_3; // @[Crawler.scala 185:41:@323.10]
  wire [3:0] _GEN_4; // @[Crawler.scala 182:36:@318.8]
  wire  _GEN_5; // @[Crawler.scala 182:36:@318.8]
  wire [9:0] _GEN_6; // @[Crawler.scala 182:36:@318.8]
  wire [1:0] _GEN_7; // @[Crawler.scala 182:36:@318.8]
  wire  _T_45; // @[Crawler.scala 189:29:@329.8]
  wire [9:0] _GEN_8; // @[Crawler.scala 193:41:@336.12]
  wire [1:0] _GEN_9; // @[Crawler.scala 193:41:@336.12]
  wire [3:0] _GEN_10; // @[Crawler.scala 190:36:@331.10]
  wire [9:0] _GEN_11; // @[Crawler.scala 190:36:@331.10]
  wire [1:0] _GEN_12; // @[Crawler.scala 190:36:@331.10]
  wire [3:0] _GEN_13; // @[Crawler.scala 189:44:@330.8]
  wire  _GEN_14; // @[Crawler.scala 189:44:@330.8]
  wire [9:0] _GEN_15; // @[Crawler.scala 189:44:@330.8]
  wire [1:0] _GEN_16; // @[Crawler.scala 189:44:@330.8]
  wire [3:0] _GEN_17; // @[Crawler.scala 181:44:@317.6]
  wire  _GEN_18; // @[Crawler.scala 181:44:@317.6]
  wire [9:0] _GEN_19; // @[Crawler.scala 181:44:@317.6]
  wire [1:0] _GEN_20; // @[Crawler.scala 181:44:@317.6]
  wire [9:0] _GEN_21; // @[Crawler.scala 181:44:@317.6]
  wire [1:0] _GEN_22; // @[Crawler.scala 179:47:@312.4]
  wire [9:0] _GEN_25; // @[Crawler.scala 179:47:@312.4]
  wire [9:0] _GEN_26; // @[Crawler.scala 179:47:@312.4]
  Mcp3008 mcp3008 ( // @[Crawler.scala 162:23:@298.4]
    .clock(mcp3008_clock),
    .reset(mcp3008_reset),
    .io_config_ready(mcp3008_io_config_ready),
    .io_config_valid(mcp3008_io_config_valid),
    .io_config_bits(mcp3008_io_config_bits),
    .io_data_valid(mcp3008_io_data_valid),
    .io_data_bits(mcp3008_io_data_bits),
    .io_spi_nCs(mcp3008_io_spi_nCs),
    .io_spi_sclk(mcp3008_io_spi_sclk),
    .io_spi_mosi(mcp3008_io_spi_mosi),
    .io_spi_miso(mcp3008_io_spi_miso)
  );
  Drv8835SingleDrive motorDriveA ( // @[Crawler.scala 202:27:@341.4]
    .clock(motorDriveA_clock),
    .reset(motorDriveA_reset),
    .io_speed(motorDriveA_io_speed),
    .io_driverIn1(motorDriveA_io_driverIn1)
  );
  Drv8835SingleDrive motorDriveB ( // @[Crawler.scala 203:27:@344.4]
    .clock(motorDriveB_clock),
    .reset(motorDriveB_reset),
    .io_speed(motorDriveB_io_speed),
    .io_driverIn1(motorDriveB_io_driverIn1)
  );
  assign measureSig = value == 27'h5f5e0ff; // @[Counter.scala 34:24:@289.6]
  assign _T_27 = value + 27'h1; // @[Counter.scala 35:22:@290.6]
  assign _T_28 = value + 27'h1; // @[Counter.scala 35:22:@291.6]
  assign _GEN_0 = measureSig ? 27'h0 : _T_28; // @[Counter.scala 37:21:@293.6]
  assign _T_41 = stateMcp3008 == 2'h0; // @[Crawler.scala 179:22:@310.4]
  assign _T_42 = _T_41 & measureSig; // @[Crawler.scala 179:32:@311.4]
  assign _T_43 = stateMcp3008 == 2'h1; // @[Crawler.scala 181:29:@316.6]
  assign _GEN_2 = mcp3008_io_data_valid ? mcp3008_io_data_bits : channel1; // @[Crawler.scala 185:41:@323.10]
  assign _GEN_3 = mcp3008_io_data_valid ? 2'h2 : stateMcp3008; // @[Crawler.scala 185:41:@323.10]
  assign _GEN_4 = mcp3008_io_config_ready ? 4'h8 : 4'h0; // @[Crawler.scala 182:36:@318.8]
  assign _GEN_5 = mcp3008_io_config_ready; // @[Crawler.scala 182:36:@318.8]
  assign _GEN_6 = mcp3008_io_config_ready ? channel1 : _GEN_2; // @[Crawler.scala 182:36:@318.8]
  assign _GEN_7 = mcp3008_io_config_ready ? stateMcp3008 : _GEN_3; // @[Crawler.scala 182:36:@318.8]
  assign _T_45 = stateMcp3008 == 2'h2; // @[Crawler.scala 189:29:@329.8]
  assign _GEN_8 = mcp3008_io_data_valid ? mcp3008_io_data_bits : channel2; // @[Crawler.scala 193:41:@336.12]
  assign _GEN_9 = mcp3008_io_data_valid ? 2'h0 : stateMcp3008; // @[Crawler.scala 193:41:@336.12]
  assign _GEN_10 = mcp3008_io_config_ready ? 4'h9 : 4'h0; // @[Crawler.scala 190:36:@331.10]
  assign _GEN_11 = mcp3008_io_config_ready ? channel2 : _GEN_8; // @[Crawler.scala 190:36:@331.10]
  assign _GEN_12 = mcp3008_io_config_ready ? stateMcp3008 : _GEN_9; // @[Crawler.scala 190:36:@331.10]
  assign _GEN_13 = _T_45 ? _GEN_10 : 4'h0; // @[Crawler.scala 189:44:@330.8]
  assign _GEN_14 = _T_45 ? _GEN_5 : 1'h0; // @[Crawler.scala 189:44:@330.8]
  assign _GEN_15 = _T_45 ? _GEN_11 : channel2; // @[Crawler.scala 189:44:@330.8]
  assign _GEN_16 = _T_45 ? _GEN_12 : stateMcp3008; // @[Crawler.scala 189:44:@330.8]
  assign _GEN_17 = _T_43 ? _GEN_4 : _GEN_13; // @[Crawler.scala 181:44:@317.6]
  assign _GEN_18 = _T_43 ? _GEN_5 : _GEN_14; // @[Crawler.scala 181:44:@317.6]
  assign _GEN_19 = _T_43 ? _GEN_6 : channel1; // @[Crawler.scala 181:44:@317.6]
  assign _GEN_20 = _T_43 ? _GEN_7 : _GEN_16; // @[Crawler.scala 181:44:@317.6]
  assign _GEN_21 = _T_43 ? channel2 : _GEN_15; // @[Crawler.scala 181:44:@317.6]
  assign _GEN_22 = _T_42 ? 2'h1 : _GEN_20; // @[Crawler.scala 179:47:@312.4]
  assign _GEN_25 = _T_42 ? channel1 : _GEN_19; // @[Crawler.scala 179:47:@312.4]
  assign _GEN_26 = _T_42 ? channel2 : _GEN_21; // @[Crawler.scala 179:47:@312.4]
  assign io_spi_nCs = mcp3008_io_spi_nCs; // @[Crawler.scala 215:10:@356.4]
  assign io_spi_sclk = mcp3008_io_spi_sclk; // @[Crawler.scala 215:10:@355.4]
  assign io_spi_mosi = mcp3008_io_spi_mosi; // @[Crawler.scala 215:10:@354.4]
  assign io_drv8835_a_driverIn1 = motorDriveA_io_driverIn1; // @[Crawler.scala 220:26:@357.4]
  assign io_drv8835_a_driverIn2 = 1'h0; // @[Crawler.scala 221:26:@358.4]
  assign io_drv8835_b_driverIn1 = motorDriveB_io_driverIn1; // @[Crawler.scala 222:26:@359.4]
  assign io_drv8835_b_driverIn2 = 1'h0; // @[Crawler.scala 223:26:@360.4]
  assign mcp3008_clock = clock; // @[:@299.4]
  assign mcp3008_reset = reset; // @[:@300.4]
  assign mcp3008_io_config_valid = _T_42 ? 1'h0 : _GEN_18; // @[Crawler.scala 178:27:@309.4 Crawler.scala 184:31:@320.10 Crawler.scala 192:31:@333.12]
  assign mcp3008_io_config_bits = _T_42 ? 4'h0 : _GEN_17; // @[Crawler.scala 177:26:@308.4 Crawler.scala 183:30:@319.10 Crawler.scala 191:30:@332.12]
  assign mcp3008_io_spi_miso = io_spi_miso; // @[Crawler.scala 215:10:@353.4]
  assign motorDriveA_clock = clock; // @[:@342.4]
  assign motorDriveA_reset = reset; // @[:@343.4]
  assign motorDriveA_io_speed = channel1[9:2]; // @[Crawler.scala 206:24:@349.4]
  assign motorDriveB_clock = clock; // @[:@345.4]
  assign motorDriveB_reset = reset; // @[:@346.4]
  assign motorDriveB_io_speed = channel2[9:2]; // @[Crawler.scala 209:24:@352.4]
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
  value = _RAND_0[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  stateMcp3008 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  channel1 = _RAND_2[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  channel2 = _RAND_3[9:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      value <= 27'h0;
    end else begin
      if (measureSig) begin
        value <= 27'h0;
      end else begin
        value <= _T_28;
      end
    end
    if (reset) begin
      stateMcp3008 <= 2'h0;
    end else begin
      if (_T_42) begin
        stateMcp3008 <= 2'h1;
      end else begin
        if (_T_43) begin
          if (!(mcp3008_io_config_ready)) begin
            if (mcp3008_io_data_valid) begin
              stateMcp3008 <= 2'h2;
            end
          end
        end else begin
          if (_T_45) begin
            if (!(mcp3008_io_config_ready)) begin
              if (mcp3008_io_data_valid) begin
                stateMcp3008 <= 2'h0;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      channel1 <= 10'h0;
    end else begin
      if (!(_T_42)) begin
        if (_T_43) begin
          if (!(mcp3008_io_config_ready)) begin
            if (mcp3008_io_data_valid) begin
              channel1 <= mcp3008_io_data_bits;
            end
          end
        end
      end
    end
    if (reset) begin
      channel2 <= 10'h0;
    end else begin
      if (!(_T_42)) begin
        if (!(_T_43)) begin
          if (_T_45) begin
            if (!(mcp3008_io_config_ready)) begin
              if (mcp3008_io_data_valid) begin
                channel2 <= mcp3008_io_data_bits;
              end
            end
          end
        end
      end
    end
  end
endmodule
