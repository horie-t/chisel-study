module ILI9341SPI( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  output       io_lcdSpi_serialClock, // @[:@6.4]
  output       io_lcdSpi_dataCommand, // @[:@6.4]
  output       io_lcdSpi_chipSelectN, // @[:@6.4]
  output       io_lcdSpi_masterOutSlaveIn, // @[:@6.4]
  output       io_sendData_ready, // @[:@6.4]
  input        io_sendData_valid, // @[:@6.4]
  input        io_sendData_bits_isData, // @[:@6.4]
  input  [7:0] io_sendData_bits_value // @[:@6.4]
);
  reg  spiClock; // @[LCDDisplay.scala 26:25:@8.4]
  reg [31:0] _RAND_0;
  reg [7:0] sendValue; // @[LCDDisplay.scala 28:26:@9.4]
  reg [31:0] _RAND_1;
  reg [2:0] sendBitCount; // @[LCDDisplay.scala 29:29:@10.4]
  reg [31:0] _RAND_2;
  reg  dataCommand; // @[LCDDisplay.scala 30:28:@11.4]
  reg [31:0] _RAND_3;
  reg  state; // @[LCDDisplay.scala 34:22:@12.4]
  reg [31:0] _RAND_4;
  wire  _T_40; // @[LCDDisplay.scala 37:14:@13.4]
  wire  _T_41; // @[LCDDisplay.scala 37:28:@14.4]
  wire  _T_43; // @[LCDDisplay.scala 42:17:@23.8]
  wire [6:0] _T_44; // @[LCDDisplay.scala 44:33:@26.10]
  wire [7:0] _T_46; // @[Cat.scala 30:58:@27.10]
  wire [3:0] _T_48; // @[LCDDisplay.scala 45:36:@29.10]
  wire [2:0] _T_49; // @[LCDDisplay.scala 45:36:@30.10]
  wire  _T_51; // @[LCDDisplay.scala 46:26:@32.10]
  wire [7:0] _GEN_0; // @[LCDDisplay.scala 47:34:@34.12]
  wire  _GEN_1; // @[LCDDisplay.scala 47:34:@34.12]
  wire  _GEN_2; // @[LCDDisplay.scala 47:34:@34.12]
  wire [7:0] _GEN_3; // @[LCDDisplay.scala 46:35:@33.10]
  wire  _GEN_4; // @[LCDDisplay.scala 46:35:@33.10]
  wire  _GEN_5; // @[LCDDisplay.scala 46:35:@33.10]
  wire [7:0] _GEN_6; // @[LCDDisplay.scala 43:21:@25.8]
  wire [2:0] _GEN_7; // @[LCDDisplay.scala 43:21:@25.8]
  wire  _GEN_8; // @[LCDDisplay.scala 43:21:@25.8]
  wire  _GEN_9; // @[LCDDisplay.scala 43:21:@25.8]
  wire  _GEN_10; // @[LCDDisplay.scala 41:36:@22.6]
  wire [7:0] _GEN_11; // @[LCDDisplay.scala 41:36:@22.6]
  wire [2:0] _GEN_12; // @[LCDDisplay.scala 41:36:@22.6]
  wire  _GEN_13; // @[LCDDisplay.scala 41:36:@22.6]
  wire  _GEN_14; // @[LCDDisplay.scala 41:36:@22.6]
  wire  _GEN_15; // @[LCDDisplay.scala 37:50:@15.4]
  wire [7:0] _GEN_16; // @[LCDDisplay.scala 37:50:@15.4]
  wire  _GEN_17; // @[LCDDisplay.scala 37:50:@15.4]
  wire  _GEN_18; // @[LCDDisplay.scala 37:50:@15.4]
  wire [2:0] _GEN_19; // @[LCDDisplay.scala 37:50:@15.4]
  wire  _T_60; // @[LCDDisplay.scala 67:26:@55.4]
  wire  _T_61; // @[LCDDisplay.scala 67:50:@56.4]
  assign _T_40 = state == 1'h0; // @[LCDDisplay.scala 37:14:@13.4]
  assign _T_41 = _T_40 & io_sendData_valid; // @[LCDDisplay.scala 37:28:@14.4]
  assign _T_43 = ~ spiClock; // @[LCDDisplay.scala 42:17:@23.8]
  assign _T_44 = sendValue[6:0]; // @[LCDDisplay.scala 44:33:@26.10]
  assign _T_46 = {_T_44,1'h0}; // @[Cat.scala 30:58:@27.10]
  assign _T_48 = sendBitCount + 3'h1; // @[LCDDisplay.scala 45:36:@29.10]
  assign _T_49 = sendBitCount + 3'h1; // @[LCDDisplay.scala 45:36:@30.10]
  assign _T_51 = sendBitCount == 3'h7; // @[LCDDisplay.scala 46:26:@32.10]
  assign _GEN_0 = io_sendData_valid ? io_sendData_bits_value : _T_46; // @[LCDDisplay.scala 47:34:@34.12]
  assign _GEN_1 = io_sendData_valid ? io_sendData_bits_isData : dataCommand; // @[LCDDisplay.scala 47:34:@34.12]
  assign _GEN_2 = io_sendData_valid ? state : 1'h0; // @[LCDDisplay.scala 47:34:@34.12]
  assign _GEN_3 = _T_51 ? _GEN_0 : _T_46; // @[LCDDisplay.scala 46:35:@33.10]
  assign _GEN_4 = _T_51 ? _GEN_1 : dataCommand; // @[LCDDisplay.scala 46:35:@33.10]
  assign _GEN_5 = _T_51 ? _GEN_2 : state; // @[LCDDisplay.scala 46:35:@33.10]
  assign _GEN_6 = spiClock ? _GEN_3 : sendValue; // @[LCDDisplay.scala 43:21:@25.8]
  assign _GEN_7 = spiClock ? _T_49 : sendBitCount; // @[LCDDisplay.scala 43:21:@25.8]
  assign _GEN_8 = spiClock ? _GEN_4 : dataCommand; // @[LCDDisplay.scala 43:21:@25.8]
  assign _GEN_9 = spiClock ? _GEN_5 : state; // @[LCDDisplay.scala 43:21:@25.8]
  assign _GEN_10 = state ? _T_43 : spiClock; // @[LCDDisplay.scala 41:36:@22.6]
  assign _GEN_11 = state ? _GEN_6 : sendValue; // @[LCDDisplay.scala 41:36:@22.6]
  assign _GEN_12 = state ? _GEN_7 : sendBitCount; // @[LCDDisplay.scala 41:36:@22.6]
  assign _GEN_13 = state ? _GEN_8 : dataCommand; // @[LCDDisplay.scala 41:36:@22.6]
  assign _GEN_14 = state ? _GEN_9 : state; // @[LCDDisplay.scala 41:36:@22.6]
  assign _GEN_15 = _T_41 ? 1'h1 : _GEN_14; // @[LCDDisplay.scala 37:50:@15.4]
  assign _GEN_16 = _T_41 ? io_sendData_bits_value : _GEN_11; // @[LCDDisplay.scala 37:50:@15.4]
  assign _GEN_17 = _T_41 ? io_sendData_bits_isData : _GEN_13; // @[LCDDisplay.scala 37:50:@15.4]
  assign _GEN_18 = _T_41 ? spiClock : _GEN_10; // @[LCDDisplay.scala 37:50:@15.4]
  assign _GEN_19 = _T_41 ? sendBitCount : _GEN_12; // @[LCDDisplay.scala 37:50:@15.4]
  assign _T_60 = state & _T_51; // @[LCDDisplay.scala 67:26:@55.4]
  assign _T_61 = _T_60 & spiClock; // @[LCDDisplay.scala 67:50:@56.4]
  assign io_lcdSpi_serialClock = spiClock; // @[LCDDisplay.scala 58:25:@44.4]
  assign io_lcdSpi_dataCommand = dataCommand; // @[LCDDisplay.scala 59:25:@45.4]
  assign io_lcdSpi_chipSelectN = state != 1'h1; // @[LCDDisplay.scala 60:25:@47.4]
  assign io_lcdSpi_masterOutSlaveIn = sendValue[7]; // @[LCDDisplay.scala 61:30:@49.4]
  assign io_sendData_ready = _T_40 | _T_61; // @[LCDDisplay.scala 66:21:@58.4]
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
  spiClock = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  sendValue = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  sendBitCount = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  dataCommand = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  state = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      spiClock <= 1'h0;
    end else begin
      if (!(_T_41)) begin
        if (state) begin
          spiClock <= _T_43;
        end
      end
    end
    if (reset) begin
      sendValue <= 8'h0;
    end else begin
      if (_T_41) begin
        sendValue <= io_sendData_bits_value;
      end else begin
        if (state) begin
          if (spiClock) begin
            if (_T_51) begin
              if (io_sendData_valid) begin
                sendValue <= io_sendData_bits_value;
              end else begin
                sendValue <= _T_46;
              end
            end else begin
              sendValue <= _T_46;
            end
          end
        end
      end
    end
    if (reset) begin
      sendBitCount <= 3'h0;
    end else begin
      if (!(_T_41)) begin
        if (state) begin
          if (spiClock) begin
            sendBitCount <= _T_49;
          end
        end
      end
    end
    if (reset) begin
      dataCommand <= 1'h0;
    end else begin
      if (_T_41) begin
        dataCommand <= io_sendData_bits_isData;
      end else begin
        if (state) begin
          if (spiClock) begin
            if (_T_51) begin
              if (io_sendData_valid) begin
                dataCommand <= io_sendData_bits_isData;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else begin
      if (_T_41) begin
        state <= 1'h1;
      end else begin
        if (state) begin
          if (spiClock) begin
            if (_T_51) begin
              if (!(io_sendData_valid)) begin
                state <= 1'h0;
              end
            end
          end
        end
      end
    end
  end
endmodule
module LCDDisplay( // @[:@60.2]
  input   clock, // @[:@61.4]
  input   reset, // @[:@62.4]
  output  io_lcdSpi_serialClock, // @[:@63.4]
  output  io_lcdSpi_dataCommand, // @[:@63.4]
  output  io_lcdSpi_chipSelectN, // @[:@63.4]
  output  io_lcdSpi_masterOutSlaveIn, // @[:@63.4]
  output  io_lcdSpi_resetN // @[:@63.4]
);
  wire  ili9341Spi_clock; // @[LCDDisplay.scala 139:26:@172.4]
  wire  ili9341Spi_reset; // @[LCDDisplay.scala 139:26:@172.4]
  wire  ili9341Spi_io_lcdSpi_serialClock; // @[LCDDisplay.scala 139:26:@172.4]
  wire  ili9341Spi_io_lcdSpi_dataCommand; // @[LCDDisplay.scala 139:26:@172.4]
  wire  ili9341Spi_io_lcdSpi_chipSelectN; // @[LCDDisplay.scala 139:26:@172.4]
  wire  ili9341Spi_io_lcdSpi_masterOutSlaveIn; // @[LCDDisplay.scala 139:26:@172.4]
  wire  ili9341Spi_io_sendData_ready; // @[LCDDisplay.scala 139:26:@172.4]
  wire  ili9341Spi_io_sendData_valid; // @[LCDDisplay.scala 139:26:@172.4]
  wire  ili9341Spi_io_sendData_bits_isData; // @[LCDDisplay.scala 139:26:@172.4]
  wire [7:0] ili9341Spi_io_sendData_bits_value; // @[LCDDisplay.scala 139:26:@172.4]
  reg [7:0] programCounter; // @[LCDDisplay.scala 134:31:@170.4]
  reg [31:0] _RAND_0;
  reg [2:0] state; // @[LCDDisplay.scala 137:22:@171.4]
  reg [31:0] _RAND_1;
  wire [10:0] _T_188; // @[LCDDisplay.scala 145:75:@178.4]
  wire  _T_189; // @[LCDDisplay.scala 145:75:@179.4]
  reg  stateHoldCount; // @[LCDDisplay.scala 145:31:@180.4]
  reg [31:0] _RAND_2;
  wire  _T_193; // @[LCDDisplay.scala 147:15:@183.4]
  wire  _T_194; // @[LCDDisplay.scala 147:39:@184.4]
  wire  _T_195; // @[LCDDisplay.scala 147:30:@185.4]
  wire  _T_196; // @[LCDDisplay.scala 147:72:@186.4]
  wire  _T_197; // @[LCDDisplay.scala 147:63:@187.4]
  wire [1:0] _T_199; // @[LCDDisplay.scala 148:38:@189.6]
  wire [1:0] _T_200; // @[LCDDisplay.scala 148:38:@190.6]
  wire  _T_201; // @[LCDDisplay.scala 148:38:@191.6]
  wire  _T_203; // @[LCDDisplay.scala 149:35:@193.6]
  wire  _GEN_0; // @[LCDDisplay.scala 147:91:@188.4]
  wire  stateChange; // @[LCDDisplay.scala 147:91:@188.4]
  wire [2:0] _GEN_2; // @[LCDDisplay.scala 163:43:@213.10]
  wire [2:0] _GEN_3; // @[LCDDisplay.scala 156:49:@204.8]
  wire [19:0] _GEN_4; // @[LCDDisplay.scala 156:49:@204.8]
  wire [7:0] _GEN_5; // @[LCDDisplay.scala 156:49:@204.8]
  wire [2:0] _GEN_8; // @[LCDDisplay.scala 153:33:@198.6]
  wire [24:0] _GEN_9; // @[LCDDisplay.scala 153:33:@198.6]
  wire [7:0] _GEN_10; // @[LCDDisplay.scala 153:33:@198.6]
  wire  _GEN_12; // @[LCDDisplay.scala 153:33:@198.6]
  wire  _T_212; // @[LCDDisplay.scala 166:22:@218.6]
  wire  _T_214; // @[LCDDisplay.scala 168:28:@221.10]
  wire [5:0] _T_216; // @[:@223.12]
  wire [7:0] _GEN_16; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_17; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_18; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_19; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_20; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_21; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_22; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_23; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_24; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_25; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_26; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_27; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_28; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_29; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_30; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_31; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_32; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_33; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_34; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_35; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_36; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_37; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_38; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_39; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_40; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_41; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_42; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_43; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_44; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_45; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_46; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_47; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_48; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_49; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_50; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_51; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_52; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_53; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_54; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_55; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_56; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_57; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_58; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_59; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_60; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_61; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_62; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_63; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_64; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_65; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_66; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_67; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_68; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_69; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_70; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_71; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_72; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_73; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_74; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_75; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_76; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_77; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_78; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_79; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_80; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_81; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_82; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_83; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_84; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_85; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_86; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_87; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_88; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_89; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_90; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_91; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_92; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_93; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_94; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_95; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_96; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_97; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_98; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_99; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_100; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_101; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_102; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_103; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_104; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_105; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_106; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_107; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_108; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_109; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_110; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_111; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_112; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_113; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_114; // @[LCDDisplay.scala 169:37:@224.12]
  wire  _GEN_115; // @[LCDDisplay.scala 169:37:@224.12]
  wire [7:0] _GEN_116; // @[LCDDisplay.scala 169:37:@224.12]
  wire [8:0] _T_219; // @[LCDDisplay.scala 172:42:@227.12]
  wire [7:0] _T_220; // @[LCDDisplay.scala 172:42:@228.12]
  wire [7:0] _GEN_117; // @[LCDDisplay.scala 168:52:@222.10]
  wire  _GEN_118; // @[LCDDisplay.scala 168:52:@222.10]
  wire [7:0] _GEN_120; // @[LCDDisplay.scala 168:52:@222.10]
  wire [2:0] _GEN_121; // @[LCDDisplay.scala 168:52:@222.10]
  wire [7:0] _GEN_122; // @[LCDDisplay.scala 167:41:@220.8]
  wire  _GEN_123; // @[LCDDisplay.scala 167:41:@220.8]
  wire  _GEN_124; // @[LCDDisplay.scala 167:41:@220.8]
  wire [7:0] _GEN_125; // @[LCDDisplay.scala 167:41:@220.8]
  wire [2:0] _GEN_126; // @[LCDDisplay.scala 167:41:@220.8]
  wire  _T_221; // @[LCDDisplay.scala 177:22:@237.8]
  wire [7:0] _GEN_127; // @[LCDDisplay.scala 178:41:@239.10]
  wire  _GEN_128; // @[LCDDisplay.scala 178:41:@239.10]
  wire [7:0] _GEN_129; // @[LCDDisplay.scala 177:37:@238.8]
  wire  _GEN_130; // @[LCDDisplay.scala 177:37:@238.8]
  wire [7:0] _GEN_131; // @[LCDDisplay.scala 166:41:@219.6]
  wire  _GEN_132; // @[LCDDisplay.scala 166:41:@219.6]
  wire  _GEN_133; // @[LCDDisplay.scala 166:41:@219.6]
  wire [7:0] _GEN_134; // @[LCDDisplay.scala 166:41:@219.6]
  wire [2:0] _GEN_135; // @[LCDDisplay.scala 166:41:@219.6]
  wire [2:0] _GEN_136; // @[LCDDisplay.scala 152:22:@196.4]
  wire [24:0] _GEN_137; // @[LCDDisplay.scala 152:22:@196.4]
  wire [7:0] _GEN_141; // @[LCDDisplay.scala 152:22:@196.4]
  ILI9341SPI ili9341Spi ( // @[LCDDisplay.scala 139:26:@172.4]
    .clock(ili9341Spi_clock),
    .reset(ili9341Spi_reset),
    .io_lcdSpi_serialClock(ili9341Spi_io_lcdSpi_serialClock),
    .io_lcdSpi_dataCommand(ili9341Spi_io_lcdSpi_dataCommand),
    .io_lcdSpi_chipSelectN(ili9341Spi_io_lcdSpi_chipSelectN),
    .io_lcdSpi_masterOutSlaveIn(ili9341Spi_io_lcdSpi_masterOutSlaveIn),
    .io_sendData_ready(ili9341Spi_io_sendData_ready),
    .io_sendData_valid(ili9341Spi_io_sendData_valid),
    .io_sendData_bits_isData(ili9341Spi_io_sendData_bits_isData),
    .io_sendData_bits_value(ili9341Spi_io_sendData_bits_value)
  );
  assign _T_188 = 11'h7d0 >> 5'h18; // @[LCDDisplay.scala 145:75:@178.4]
  assign _T_189 = _T_188[0]; // @[LCDDisplay.scala 145:75:@179.4]
  assign _T_193 = state == 3'h0; // @[LCDDisplay.scala 147:15:@183.4]
  assign _T_194 = state == 3'h1; // @[LCDDisplay.scala 147:39:@184.4]
  assign _T_195 = _T_193 | _T_194; // @[LCDDisplay.scala 147:30:@185.4]
  assign _T_196 = state == 3'h2; // @[LCDDisplay.scala 147:72:@186.4]
  assign _T_197 = _T_195 | _T_196; // @[LCDDisplay.scala 147:63:@187.4]
  assign _T_199 = stateHoldCount - 1'h1; // @[LCDDisplay.scala 148:38:@189.6]
  assign _T_200 = $unsigned(_T_199); // @[LCDDisplay.scala 148:38:@190.6]
  assign _T_201 = _T_200[0:0]; // @[LCDDisplay.scala 148:38:@191.6]
  assign _T_203 = stateHoldCount == 1'h0; // @[LCDDisplay.scala 149:35:@193.6]
  assign _GEN_0 = _T_197 ? _T_201 : stateHoldCount; // @[LCDDisplay.scala 147:91:@188.4]
  assign stateChange = _T_197 ? _T_203 : 1'h0; // @[LCDDisplay.scala 147:91:@188.4]
  assign _GEN_2 = _T_196 ? 3'h3 : state; // @[LCDDisplay.scala 163:43:@213.10]
  assign _GEN_3 = _T_194 ? 3'h2 : _GEN_2; // @[LCDDisplay.scala 156:49:@204.8]
  assign _GEN_4 = _T_194 ? 20'hf4240 : {{19'd0}, _GEN_0}; // @[LCDDisplay.scala 156:49:@204.8]
  assign _GEN_5 = _T_194 ? 8'h11 : 8'h0; // @[LCDDisplay.scala 156:49:@204.8]
  assign _GEN_8 = _T_193 ? 3'h1 : _GEN_3; // @[LCDDisplay.scala 153:33:@198.6]
  assign _GEN_9 = _T_193 ? 25'h1312d00 : {{5'd0}, _GEN_4}; // @[LCDDisplay.scala 153:33:@198.6]
  assign _GEN_10 = _T_193 ? 8'h0 : _GEN_5; // @[LCDDisplay.scala 153:33:@198.6]
  assign _GEN_12 = _T_193 ? 1'h0 : _T_194; // @[LCDDisplay.scala 153:33:@198.6]
  assign _T_212 = state == 3'h3; // @[LCDDisplay.scala 166:22:@218.6]
  assign _T_214 = programCounter < 8'h34; // @[LCDDisplay.scala 168:28:@221.10]
  assign _T_216 = programCounter[5:0]; // @[:@223.12]
  assign _GEN_16 = 6'h1 == _T_216 ? 8'hcb : 8'h28; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_17 = 6'h2 == _T_216; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_18 = 6'h2 == _T_216 ? 8'h39 : _GEN_16; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_19 = 6'h3 == _T_216 ? 1'h1 : _GEN_17; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_20 = 6'h3 == _T_216 ? 8'h2c : _GEN_18; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_21 = 6'h4 == _T_216 ? 1'h1 : _GEN_19; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_22 = 6'h4 == _T_216 ? 8'h0 : _GEN_20; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_23 = 6'h5 == _T_216 ? 1'h1 : _GEN_21; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_24 = 6'h5 == _T_216 ? 8'h34 : _GEN_22; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_25 = 6'h6 == _T_216 ? 1'h1 : _GEN_23; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_26 = 6'h6 == _T_216 ? 8'h2 : _GEN_24; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_27 = 6'h7 == _T_216 ? 1'h0 : _GEN_25; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_28 = 6'h7 == _T_216 ? 8'hcf : _GEN_26; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_29 = 6'h8 == _T_216 ? 1'h1 : _GEN_27; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_30 = 6'h8 == _T_216 ? 8'h0 : _GEN_28; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_31 = 6'h9 == _T_216 ? 1'h1 : _GEN_29; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_32 = 6'h9 == _T_216 ? 8'h81 : _GEN_30; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_33 = 6'ha == _T_216 ? 1'h1 : _GEN_31; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_34 = 6'ha == _T_216 ? 8'h30 : _GEN_32; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_35 = 6'hb == _T_216 ? 1'h0 : _GEN_33; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_36 = 6'hb == _T_216 ? 8'hed : _GEN_34; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_37 = 6'hc == _T_216 ? 1'h1 : _GEN_35; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_38 = 6'hc == _T_216 ? 8'h64 : _GEN_36; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_39 = 6'hd == _T_216 ? 1'h1 : _GEN_37; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_40 = 6'hd == _T_216 ? 8'h3 : _GEN_38; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_41 = 6'he == _T_216 ? 1'h1 : _GEN_39; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_42 = 6'he == _T_216 ? 8'h12 : _GEN_40; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_43 = 6'hf == _T_216 ? 1'h1 : _GEN_41; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_44 = 6'hf == _T_216 ? 8'h81 : _GEN_42; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_45 = 6'h10 == _T_216 ? 1'h0 : _GEN_43; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_46 = 6'h10 == _T_216 ? 8'he8 : _GEN_44; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_47 = 6'h11 == _T_216 ? 1'h1 : _GEN_45; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_48 = 6'h11 == _T_216 ? 8'h84 : _GEN_46; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_49 = 6'h12 == _T_216 ? 1'h1 : _GEN_47; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_50 = 6'h12 == _T_216 ? 8'h11 : _GEN_48; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_51 = 6'h13 == _T_216 ? 1'h1 : _GEN_49; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_52 = 6'h13 == _T_216 ? 8'h7a : _GEN_50; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_53 = 6'h14 == _T_216 ? 1'h0 : _GEN_51; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_54 = 6'h14 == _T_216 ? 8'hea : _GEN_52; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_55 = 6'h15 == _T_216 ? 1'h1 : _GEN_53; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_56 = 6'h15 == _T_216 ? 8'h66 : _GEN_54; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_57 = 6'h16 == _T_216 ? 1'h1 : _GEN_55; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_58 = 6'h16 == _T_216 ? 8'h0 : _GEN_56; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_59 = 6'h17 == _T_216 ? 1'h0 : _GEN_57; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_60 = 6'h17 == _T_216 ? 8'hf7 : _GEN_58; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_61 = 6'h18 == _T_216 ? 1'h1 : _GEN_59; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_62 = 6'h18 == _T_216 ? 8'h20 : _GEN_60; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_63 = 6'h19 == _T_216 ? 1'h0 : _GEN_61; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_64 = 6'h19 == _T_216 ? 8'hc0 : _GEN_62; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_65 = 6'h1a == _T_216 ? 1'h1 : _GEN_63; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_66 = 6'h1a == _T_216 ? 8'h21 : _GEN_64; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_67 = 6'h1b == _T_216 ? 1'h0 : _GEN_65; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_68 = 6'h1b == _T_216 ? 8'hc1 : _GEN_66; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_69 = 6'h1c == _T_216 ? 1'h1 : _GEN_67; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_70 = 6'h1c == _T_216 ? 8'h10 : _GEN_68; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_71 = 6'h1d == _T_216 ? 1'h0 : _GEN_69; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_72 = 6'h1d == _T_216 ? 8'hc5 : _GEN_70; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_73 = 6'h1e == _T_216 ? 1'h1 : _GEN_71; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_74 = 6'h1e == _T_216 ? 8'h31 : _GEN_72; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_75 = 6'h1f == _T_216 ? 1'h1 : _GEN_73; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_76 = 6'h1f == _T_216 ? 8'h3c : _GEN_74; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_77 = 6'h20 == _T_216 ? 1'h0 : _GEN_75; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_78 = 6'h20 == _T_216 ? 8'hc7 : _GEN_76; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_79 = 6'h21 == _T_216 ? 1'h1 : _GEN_77; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_80 = 6'h21 == _T_216 ? 8'hc0 : _GEN_78; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_81 = 6'h22 == _T_216 ? 1'h0 : _GEN_79; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_82 = 6'h22 == _T_216 ? 8'h3a : _GEN_80; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_83 = 6'h23 == _T_216 ? 1'h1 : _GEN_81; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_84 = 6'h23 == _T_216 ? 8'h55 : _GEN_82; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_85 = 6'h24 == _T_216 ? 1'h0 : _GEN_83; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_86 = 6'h24 == _T_216 ? 8'hb1 : _GEN_84; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_87 = 6'h25 == _T_216 ? 1'h1 : _GEN_85; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_88 = 6'h25 == _T_216 ? 8'h0 : _GEN_86; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_89 = 6'h26 == _T_216 ? 1'h1 : _GEN_87; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_90 = 6'h26 == _T_216 ? 8'h1b : _GEN_88; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_91 = 6'h27 == _T_216 ? 1'h0 : _GEN_89; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_92 = 6'h27 == _T_216 ? 8'h51 : _GEN_90; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_93 = 6'h28 == _T_216 ? 1'h1 : _GEN_91; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_94 = 6'h28 == _T_216 ? 8'hff : _GEN_92; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_95 = 6'h29 == _T_216 ? 1'h0 : _GEN_93; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_96 = 6'h29 == _T_216 ? 8'h26 : _GEN_94; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_97 = 6'h2a == _T_216 ? 1'h1 : _GEN_95; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_98 = 6'h2a == _T_216 ? 8'h1 : _GEN_96; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_99 = 6'h2b == _T_216 ? 1'h0 : _GEN_97; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_100 = 6'h2b == _T_216 ? 8'hb7 : _GEN_98; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_101 = 6'h2c == _T_216 ? 1'h1 : _GEN_99; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_102 = 6'h2c == _T_216 ? 8'h6 : _GEN_100; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_103 = 6'h2d == _T_216 ? 1'h0 : _GEN_101; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_104 = 6'h2d == _T_216 ? 8'hb6 : _GEN_102; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_105 = 6'h2e == _T_216 ? 1'h1 : _GEN_103; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_106 = 6'h2e == _T_216 ? 8'ha : _GEN_104; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_107 = 6'h2f == _T_216 ? 1'h1 : _GEN_105; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_108 = 6'h2f == _T_216 ? 8'h82 : _GEN_106; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_109 = 6'h30 == _T_216 ? 1'h1 : _GEN_107; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_110 = 6'h30 == _T_216 ? 8'h27 : _GEN_108; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_111 = 6'h31 == _T_216 ? 1'h1 : _GEN_109; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_112 = 6'h31 == _T_216 ? 8'h0 : _GEN_110; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_113 = 6'h32 == _T_216 ? 1'h0 : _GEN_111; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_114 = 6'h32 == _T_216 ? 8'h29 : _GEN_112; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_115 = 6'h33 == _T_216 ? 1'h0 : _GEN_113; // @[LCDDisplay.scala 169:37:@224.12]
  assign _GEN_116 = 6'h33 == _T_216 ? 8'h2c : _GEN_114; // @[LCDDisplay.scala 169:37:@224.12]
  assign _T_219 = programCounter + 8'h1; // @[LCDDisplay.scala 172:42:@227.12]
  assign _T_220 = programCounter + 8'h1; // @[LCDDisplay.scala 172:42:@228.12]
  assign _GEN_117 = _T_214 ? _GEN_116 : 8'h0; // @[LCDDisplay.scala 168:52:@222.10]
  assign _GEN_118 = _T_214 ? _GEN_115 : 1'h0; // @[LCDDisplay.scala 168:52:@222.10]
  assign _GEN_120 = _T_214 ? _T_220 : programCounter; // @[LCDDisplay.scala 168:52:@222.10]
  assign _GEN_121 = _T_214 ? state : 3'h4; // @[LCDDisplay.scala 168:52:@222.10]
  assign _GEN_122 = ili9341Spi_io_sendData_ready ? _GEN_117 : 8'h0; // @[LCDDisplay.scala 167:41:@220.8]
  assign _GEN_123 = ili9341Spi_io_sendData_ready ? _GEN_118 : 1'h0; // @[LCDDisplay.scala 167:41:@220.8]
  assign _GEN_124 = ili9341Spi_io_sendData_ready ? _T_214 : 1'h0; // @[LCDDisplay.scala 167:41:@220.8]
  assign _GEN_125 = ili9341Spi_io_sendData_ready ? _GEN_120 : programCounter; // @[LCDDisplay.scala 167:41:@220.8]
  assign _GEN_126 = ili9341Spi_io_sendData_ready ? _GEN_121 : state; // @[LCDDisplay.scala 167:41:@220.8]
  assign _T_221 = state == 3'h4; // @[LCDDisplay.scala 177:22:@237.8]
  assign _GEN_127 = ili9341Spi_io_sendData_ready ? 8'hf0 : 8'h0; // @[LCDDisplay.scala 178:41:@239.10]
  assign _GEN_128 = ili9341Spi_io_sendData_ready; // @[LCDDisplay.scala 178:41:@239.10]
  assign _GEN_129 = _T_221 ? _GEN_127 : 8'h0; // @[LCDDisplay.scala 177:37:@238.8]
  assign _GEN_130 = _T_221 ? _GEN_128 : 1'h0; // @[LCDDisplay.scala 177:37:@238.8]
  assign _GEN_131 = _T_212 ? _GEN_122 : _GEN_129; // @[LCDDisplay.scala 166:41:@219.6]
  assign _GEN_132 = _T_212 ? _GEN_123 : _GEN_130; // @[LCDDisplay.scala 166:41:@219.6]
  assign _GEN_133 = _T_212 ? _GEN_124 : _GEN_130; // @[LCDDisplay.scala 166:41:@219.6]
  assign _GEN_134 = _T_212 ? _GEN_125 : programCounter; // @[LCDDisplay.scala 166:41:@219.6]
  assign _GEN_135 = _T_212 ? _GEN_126 : state; // @[LCDDisplay.scala 166:41:@219.6]
  assign _GEN_136 = stateChange ? _GEN_8 : _GEN_135; // @[LCDDisplay.scala 152:22:@196.4]
  assign _GEN_137 = stateChange ? _GEN_9 : {{24'd0}, _GEN_0}; // @[LCDDisplay.scala 152:22:@196.4]
  assign _GEN_141 = stateChange ? programCounter : _GEN_134; // @[LCDDisplay.scala 152:22:@196.4]
  assign io_lcdSpi_serialClock = ili9341Spi_io_lcdSpi_serialClock; // @[LCDDisplay.scala 185:13:@251.4]
  assign io_lcdSpi_dataCommand = ili9341Spi_io_lcdSpi_dataCommand; // @[LCDDisplay.scala 185:13:@250.4]
  assign io_lcdSpi_chipSelectN = ili9341Spi_io_lcdSpi_chipSelectN; // @[LCDDisplay.scala 185:13:@249.4]
  assign io_lcdSpi_masterOutSlaveIn = ili9341Spi_io_lcdSpi_masterOutSlaveIn; // @[LCDDisplay.scala 185:13:@248.4]
  assign io_lcdSpi_resetN = _T_193 ? 1'h0 : 1'h1; // @[LCDDisplay.scala 185:13:@246.4 LCDDisplay.scala 187:22:@254.6]
  assign ili9341Spi_clock = clock; // @[:@173.4]
  assign ili9341Spi_reset = reset; // @[:@174.4]
  assign ili9341Spi_io_sendData_valid = stateChange ? _GEN_12 : _GEN_133; // @[LCDDisplay.scala 143:32:@177.4 LCDDisplay.scala 162:36:@209.10 LCDDisplay.scala 170:38:@226.12 LCDDisplay.scala 181:36:@242.12]
  assign ili9341Spi_io_sendData_bits_isData = stateChange ? 1'h0 : _GEN_132; // @[LCDDisplay.scala 141:38:@175.4 LCDDisplay.scala 161:42:@208.10 LCDDisplay.scala 169:37:@225.12 LCDDisplay.scala 180:42:@241.12]
  assign ili9341Spi_io_sendData_bits_value = stateChange ? _GEN_10 : _GEN_131; // @[LCDDisplay.scala 142:37:@176.4 LCDDisplay.scala 160:41:@207.10 LCDDisplay.scala 169:37:@224.12 LCDDisplay.scala 179:41:@240.12]
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
  programCounter = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  state = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  stateHoldCount = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      programCounter <= 8'h0;
    end else begin
      if (!(stateChange)) begin
        if (_T_212) begin
          if (ili9341Spi_io_sendData_ready) begin
            if (_T_214) begin
              programCounter <= _T_220;
            end
          end
        end
      end
    end
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (stateChange) begin
        if (_T_193) begin
          state <= 3'h1;
        end else begin
          if (_T_194) begin
            state <= 3'h2;
          end else begin
            if (_T_196) begin
              state <= 3'h3;
            end
          end
        end
      end else begin
        if (_T_212) begin
          if (ili9341Spi_io_sendData_ready) begin
            if (!(_T_214)) begin
              state <= 3'h4;
            end
          end
        end
      end
    end
    if (reset) begin
      stateHoldCount <= _T_189;
    end else begin
      stateHoldCount <= _GEN_137[0];
    end
  end
endmodule
module CameraDisplay( // @[:@268.2]
  input        clock, // @[:@269.4]
  input        reset, // @[:@270.4]
  output       io_lcdSpi_serialClock, // @[:@271.4]
  output       io_lcdSpi_dataCommand, // @[:@271.4]
  output       io_lcdSpi_chipSelectN, // @[:@271.4]
  output       io_lcdSpi_masterOutSlaveIn, // @[:@271.4]
  input        io_lcdSpi_masterInSlaveOut, // @[:@271.4]
  output       io_lcdSpi_resetN, // @[:@271.4]
  output       io_lcdSpi_backLight, // @[:@271.4]
  output       io_cmosCam_systemClock, // @[:@271.4]
  input        io_cmosCam_verticalSync, // @[:@271.4]
  input        io_cmosCam_horizontalRef, // @[:@271.4]
  input        io_cmosCam_pixelclock, // @[:@271.4]
  input  [7:0] io_cmosCam_pixcelData, // @[:@271.4]
  output       io_cmosCam_sccbClock, // @[:@271.4]
  output       io_cmosCam_sccbData, // @[:@271.4]
  output       io_cmosCam_resetN, // @[:@271.4]
  output       io_cmosCam_powerDown // @[:@271.4]
);
  wire  lcdDisplay_clock; // @[CameraDisplay.scala 10:26:@273.4]
  wire  lcdDisplay_reset; // @[CameraDisplay.scala 10:26:@273.4]
  wire  lcdDisplay_io_lcdSpi_serialClock; // @[CameraDisplay.scala 10:26:@273.4]
  wire  lcdDisplay_io_lcdSpi_dataCommand; // @[CameraDisplay.scala 10:26:@273.4]
  wire  lcdDisplay_io_lcdSpi_chipSelectN; // @[CameraDisplay.scala 10:26:@273.4]
  wire  lcdDisplay_io_lcdSpi_masterOutSlaveIn; // @[CameraDisplay.scala 10:26:@273.4]
  wire  lcdDisplay_io_lcdSpi_resetN; // @[CameraDisplay.scala 10:26:@273.4]
  LCDDisplay lcdDisplay ( // @[CameraDisplay.scala 10:26:@273.4]
    .clock(lcdDisplay_clock),
    .reset(lcdDisplay_reset),
    .io_lcdSpi_serialClock(lcdDisplay_io_lcdSpi_serialClock),
    .io_lcdSpi_dataCommand(lcdDisplay_io_lcdSpi_dataCommand),
    .io_lcdSpi_chipSelectN(lcdDisplay_io_lcdSpi_chipSelectN),
    .io_lcdSpi_masterOutSlaveIn(lcdDisplay_io_lcdSpi_masterOutSlaveIn),
    .io_lcdSpi_resetN(lcdDisplay_io_lcdSpi_resetN)
  );
  assign io_lcdSpi_serialClock = lcdDisplay_io_lcdSpi_serialClock; // @[CameraDisplay.scala 13:13:@285.4]
  assign io_lcdSpi_dataCommand = lcdDisplay_io_lcdSpi_dataCommand; // @[CameraDisplay.scala 13:13:@284.4]
  assign io_lcdSpi_chipSelectN = lcdDisplay_io_lcdSpi_chipSelectN; // @[CameraDisplay.scala 13:13:@283.4]
  assign io_lcdSpi_masterOutSlaveIn = lcdDisplay_io_lcdSpi_masterOutSlaveIn; // @[CameraDisplay.scala 13:13:@282.4]
  assign io_lcdSpi_resetN = lcdDisplay_io_lcdSpi_resetN; // @[CameraDisplay.scala 13:13:@280.4]
  assign io_lcdSpi_backLight = 1'h1; // @[CameraDisplay.scala 13:13:@279.4]
  assign io_cmosCam_systemClock = 1'h1; // @[CameraDisplay.scala 14:14:@294.4]
  assign io_cmosCam_sccbClock = 1'h1; // @[CameraDisplay.scala 14:14:@289.4]
  assign io_cmosCam_sccbData = 1'h1; // @[CameraDisplay.scala 14:14:@288.4]
  assign io_cmosCam_resetN = 1'h1; // @[CameraDisplay.scala 14:14:@287.4]
  assign io_cmosCam_powerDown = 1'h0; // @[CameraDisplay.scala 14:14:@286.4]
  assign lcdDisplay_clock = clock; // @[:@274.4]
  assign lcdDisplay_reset = reset; // @[:@275.4]
endmodule
