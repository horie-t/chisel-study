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
  input         clock, // @[:@61.4]
  input         reset, // @[:@62.4]
  output        io_lcdSpi_serialClock, // @[:@63.4]
  output        io_lcdSpi_dataCommand, // @[:@63.4]
  output        io_lcdSpi_chipSelectN, // @[:@63.4]
  output        io_lcdSpi_masterOutSlaveIn, // @[:@63.4]
  output        io_lcdSpi_resetN, // @[:@63.4]
  output [17:0] io_vramAddr, // @[:@63.4]
  input  [7:0]  io_vramData // @[:@63.4]
);
  wire  ili9341Spi_clock; // @[LCDDisplay.scala 139:26:@171.4]
  wire  ili9341Spi_reset; // @[LCDDisplay.scala 139:26:@171.4]
  wire  ili9341Spi_io_lcdSpi_serialClock; // @[LCDDisplay.scala 139:26:@171.4]
  wire  ili9341Spi_io_lcdSpi_dataCommand; // @[LCDDisplay.scala 139:26:@171.4]
  wire  ili9341Spi_io_lcdSpi_chipSelectN; // @[LCDDisplay.scala 139:26:@171.4]
  wire  ili9341Spi_io_lcdSpi_masterOutSlaveIn; // @[LCDDisplay.scala 139:26:@171.4]
  wire  ili9341Spi_io_sendData_ready; // @[LCDDisplay.scala 139:26:@171.4]
  wire  ili9341Spi_io_sendData_valid; // @[LCDDisplay.scala 139:26:@171.4]
  wire  ili9341Spi_io_sendData_bits_isData; // @[LCDDisplay.scala 139:26:@171.4]
  wire [7:0] ili9341Spi_io_sendData_bits_value; // @[LCDDisplay.scala 139:26:@171.4]
  reg [2:0] state; // @[LCDDisplay.scala 137:22:@170.4]
  reg [31:0] _RAND_0;
  reg [7:0] programCounter; // @[LCDDisplay.scala 145:31:@177.4]
  reg [31:0] _RAND_1;
  wire  _T_190; // @[LCDDisplay.scala 146:37:@178.4]
  wire  _T_191; // @[LCDDisplay.scala 146:54:@179.4]
  reg [17:0] value; // @[Counter.scala 26:33:@180.4]
  reg [31:0] _RAND_2;
  wire  _T_195; // @[Counter.scala 34:24:@182.6]
  wire [18:0] _T_197; // @[Counter.scala 35:22:@183.6]
  wire [17:0] _T_198; // @[Counter.scala 35:22:@184.6]
  wire [17:0] _GEN_0; // @[Counter.scala 37:21:@186.6]
  wire [17:0] _GEN_1; // @[Counter.scala 63:17:@181.4]
  wire [10:0] _T_203; // @[LCDDisplay.scala 148:75:@191.4]
  wire  _T_204; // @[LCDDisplay.scala 148:75:@192.4]
  reg  stateHoldCount; // @[LCDDisplay.scala 148:31:@193.4]
  reg [31:0] _RAND_3;
  wire  _T_208; // @[LCDDisplay.scala 150:15:@196.4]
  wire  _T_209; // @[LCDDisplay.scala 150:39:@197.4]
  wire  _T_210; // @[LCDDisplay.scala 150:30:@198.4]
  wire  _T_211; // @[LCDDisplay.scala 150:72:@199.4]
  wire  _T_212; // @[LCDDisplay.scala 150:63:@200.4]
  wire [1:0] _T_214; // @[LCDDisplay.scala 151:38:@202.6]
  wire [1:0] _T_215; // @[LCDDisplay.scala 151:38:@203.6]
  wire  _T_216; // @[LCDDisplay.scala 151:38:@204.6]
  wire  _T_218; // @[LCDDisplay.scala 152:35:@206.6]
  wire  _GEN_2; // @[LCDDisplay.scala 150:91:@201.4]
  wire  stateChange; // @[LCDDisplay.scala 150:91:@201.4]
  wire [2:0] _GEN_4; // @[LCDDisplay.scala 166:43:@226.10]
  wire [2:0] _GEN_5; // @[LCDDisplay.scala 159:49:@217.8]
  wire [19:0] _GEN_6; // @[LCDDisplay.scala 159:49:@217.8]
  wire [7:0] _GEN_7; // @[LCDDisplay.scala 159:49:@217.8]
  wire [2:0] _GEN_10; // @[LCDDisplay.scala 156:33:@211.6]
  wire [24:0] _GEN_11; // @[LCDDisplay.scala 156:33:@211.6]
  wire [7:0] _GEN_12; // @[LCDDisplay.scala 156:33:@211.6]
  wire  _GEN_14; // @[LCDDisplay.scala 156:33:@211.6]
  wire  _T_227; // @[LCDDisplay.scala 169:22:@231.6]
  wire  _T_229; // @[LCDDisplay.scala 171:28:@234.10]
  wire [5:0] _T_231; // @[:@236.12]
  wire [7:0] _GEN_18; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_19; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_20; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_21; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_22; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_23; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_24; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_25; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_26; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_27; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_28; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_29; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_30; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_31; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_32; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_33; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_34; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_35; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_36; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_37; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_38; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_39; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_40; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_41; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_42; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_43; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_44; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_45; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_46; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_47; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_48; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_49; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_50; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_51; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_52; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_53; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_54; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_55; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_56; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_57; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_58; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_59; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_60; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_61; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_62; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_63; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_64; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_65; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_66; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_67; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_68; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_69; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_70; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_71; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_72; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_73; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_74; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_75; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_76; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_77; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_78; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_79; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_80; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_81; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_82; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_83; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_84; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_85; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_86; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_87; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_88; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_89; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_90; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_91; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_92; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_93; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_94; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_95; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_96; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_97; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_98; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_99; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_100; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_101; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_102; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_103; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_104; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_105; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_106; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_107; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_108; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_109; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_110; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_111; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_112; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_113; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_114; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_115; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_116; // @[LCDDisplay.scala 172:37:@237.12]
  wire  _GEN_117; // @[LCDDisplay.scala 172:37:@237.12]
  wire [7:0] _GEN_118; // @[LCDDisplay.scala 172:37:@237.12]
  wire [8:0] _T_234; // @[LCDDisplay.scala 175:42:@240.12]
  wire [7:0] _T_235; // @[LCDDisplay.scala 175:42:@241.12]
  wire [7:0] _GEN_119; // @[LCDDisplay.scala 171:52:@235.10]
  wire  _GEN_120; // @[LCDDisplay.scala 171:52:@235.10]
  wire [7:0] _GEN_122; // @[LCDDisplay.scala 171:52:@235.10]
  wire [2:0] _GEN_123; // @[LCDDisplay.scala 171:52:@235.10]
  wire [7:0] _GEN_124; // @[LCDDisplay.scala 170:41:@233.8]
  wire  _GEN_125; // @[LCDDisplay.scala 170:41:@233.8]
  wire  _GEN_126; // @[LCDDisplay.scala 170:41:@233.8]
  wire [7:0] _GEN_127; // @[LCDDisplay.scala 170:41:@233.8]
  wire [2:0] _GEN_128; // @[LCDDisplay.scala 170:41:@233.8]
  wire [7:0] _GEN_129; // @[LCDDisplay.scala 181:41:@252.10]
  wire  _GEN_130; // @[LCDDisplay.scala 181:41:@252.10]
  wire [7:0] _GEN_131; // @[LCDDisplay.scala 180:40:@251.8]
  wire  _GEN_132; // @[LCDDisplay.scala 180:40:@251.8]
  wire [7:0] _GEN_133; // @[LCDDisplay.scala 169:41:@232.6]
  wire  _GEN_134; // @[LCDDisplay.scala 169:41:@232.6]
  wire  _GEN_135; // @[LCDDisplay.scala 169:41:@232.6]
  wire [7:0] _GEN_136; // @[LCDDisplay.scala 169:41:@232.6]
  wire [2:0] _GEN_137; // @[LCDDisplay.scala 169:41:@232.6]
  wire [2:0] _GEN_138; // @[LCDDisplay.scala 155:22:@209.4]
  wire [24:0] _GEN_139; // @[LCDDisplay.scala 155:22:@209.4]
  wire [7:0] _GEN_143; // @[LCDDisplay.scala 155:22:@209.4]
  ILI9341SPI ili9341Spi ( // @[LCDDisplay.scala 139:26:@171.4]
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
  assign _T_190 = state == 3'h4; // @[LCDDisplay.scala 146:37:@178.4]
  assign _T_191 = _T_190 & ili9341Spi_io_sendData_ready; // @[LCDDisplay.scala 146:54:@179.4]
  assign _T_195 = value == 18'h257ff; // @[Counter.scala 34:24:@182.6]
  assign _T_197 = value + 18'h1; // @[Counter.scala 35:22:@183.6]
  assign _T_198 = value + 18'h1; // @[Counter.scala 35:22:@184.6]
  assign _GEN_0 = _T_195 ? 18'h0 : _T_198; // @[Counter.scala 37:21:@186.6]
  assign _GEN_1 = _T_191 ? _GEN_0 : value; // @[Counter.scala 63:17:@181.4]
  assign _T_203 = 11'h7d0 >> 5'h18; // @[LCDDisplay.scala 148:75:@191.4]
  assign _T_204 = _T_203[0]; // @[LCDDisplay.scala 148:75:@192.4]
  assign _T_208 = state == 3'h0; // @[LCDDisplay.scala 150:15:@196.4]
  assign _T_209 = state == 3'h1; // @[LCDDisplay.scala 150:39:@197.4]
  assign _T_210 = _T_208 | _T_209; // @[LCDDisplay.scala 150:30:@198.4]
  assign _T_211 = state == 3'h2; // @[LCDDisplay.scala 150:72:@199.4]
  assign _T_212 = _T_210 | _T_211; // @[LCDDisplay.scala 150:63:@200.4]
  assign _T_214 = stateHoldCount - 1'h1; // @[LCDDisplay.scala 151:38:@202.6]
  assign _T_215 = $unsigned(_T_214); // @[LCDDisplay.scala 151:38:@203.6]
  assign _T_216 = _T_215[0:0]; // @[LCDDisplay.scala 151:38:@204.6]
  assign _T_218 = stateHoldCount == 1'h0; // @[LCDDisplay.scala 152:35:@206.6]
  assign _GEN_2 = _T_212 ? _T_216 : stateHoldCount; // @[LCDDisplay.scala 150:91:@201.4]
  assign stateChange = _T_212 ? _T_218 : 1'h0; // @[LCDDisplay.scala 150:91:@201.4]
  assign _GEN_4 = _T_211 ? 3'h3 : state; // @[LCDDisplay.scala 166:43:@226.10]
  assign _GEN_5 = _T_209 ? 3'h2 : _GEN_4; // @[LCDDisplay.scala 159:49:@217.8]
  assign _GEN_6 = _T_209 ? 20'hf4240 : {{19'd0}, _GEN_2}; // @[LCDDisplay.scala 159:49:@217.8]
  assign _GEN_7 = _T_209 ? 8'h11 : 8'h0; // @[LCDDisplay.scala 159:49:@217.8]
  assign _GEN_10 = _T_208 ? 3'h1 : _GEN_5; // @[LCDDisplay.scala 156:33:@211.6]
  assign _GEN_11 = _T_208 ? 25'h1312d00 : {{5'd0}, _GEN_6}; // @[LCDDisplay.scala 156:33:@211.6]
  assign _GEN_12 = _T_208 ? 8'h0 : _GEN_7; // @[LCDDisplay.scala 156:33:@211.6]
  assign _GEN_14 = _T_208 ? 1'h0 : _T_209; // @[LCDDisplay.scala 156:33:@211.6]
  assign _T_227 = state == 3'h3; // @[LCDDisplay.scala 169:22:@231.6]
  assign _T_229 = programCounter < 8'h34; // @[LCDDisplay.scala 171:28:@234.10]
  assign _T_231 = programCounter[5:0]; // @[:@236.12]
  assign _GEN_18 = 6'h1 == _T_231 ? 8'hcb : 8'h28; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_19 = 6'h2 == _T_231; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_20 = 6'h2 == _T_231 ? 8'h39 : _GEN_18; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_21 = 6'h3 == _T_231 ? 1'h1 : _GEN_19; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_22 = 6'h3 == _T_231 ? 8'h2c : _GEN_20; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_23 = 6'h4 == _T_231 ? 1'h1 : _GEN_21; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_24 = 6'h4 == _T_231 ? 8'h0 : _GEN_22; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_25 = 6'h5 == _T_231 ? 1'h1 : _GEN_23; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_26 = 6'h5 == _T_231 ? 8'h34 : _GEN_24; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_27 = 6'h6 == _T_231 ? 1'h1 : _GEN_25; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_28 = 6'h6 == _T_231 ? 8'h2 : _GEN_26; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_29 = 6'h7 == _T_231 ? 1'h0 : _GEN_27; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_30 = 6'h7 == _T_231 ? 8'hcf : _GEN_28; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_31 = 6'h8 == _T_231 ? 1'h1 : _GEN_29; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_32 = 6'h8 == _T_231 ? 8'h0 : _GEN_30; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_33 = 6'h9 == _T_231 ? 1'h1 : _GEN_31; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_34 = 6'h9 == _T_231 ? 8'h81 : _GEN_32; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_35 = 6'ha == _T_231 ? 1'h1 : _GEN_33; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_36 = 6'ha == _T_231 ? 8'h30 : _GEN_34; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_37 = 6'hb == _T_231 ? 1'h0 : _GEN_35; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_38 = 6'hb == _T_231 ? 8'hed : _GEN_36; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_39 = 6'hc == _T_231 ? 1'h1 : _GEN_37; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_40 = 6'hc == _T_231 ? 8'h64 : _GEN_38; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_41 = 6'hd == _T_231 ? 1'h1 : _GEN_39; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_42 = 6'hd == _T_231 ? 8'h3 : _GEN_40; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_43 = 6'he == _T_231 ? 1'h1 : _GEN_41; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_44 = 6'he == _T_231 ? 8'h12 : _GEN_42; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_45 = 6'hf == _T_231 ? 1'h1 : _GEN_43; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_46 = 6'hf == _T_231 ? 8'h81 : _GEN_44; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_47 = 6'h10 == _T_231 ? 1'h0 : _GEN_45; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_48 = 6'h10 == _T_231 ? 8'he8 : _GEN_46; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_49 = 6'h11 == _T_231 ? 1'h1 : _GEN_47; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_50 = 6'h11 == _T_231 ? 8'h84 : _GEN_48; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_51 = 6'h12 == _T_231 ? 1'h1 : _GEN_49; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_52 = 6'h12 == _T_231 ? 8'h11 : _GEN_50; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_53 = 6'h13 == _T_231 ? 1'h1 : _GEN_51; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_54 = 6'h13 == _T_231 ? 8'h7a : _GEN_52; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_55 = 6'h14 == _T_231 ? 1'h0 : _GEN_53; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_56 = 6'h14 == _T_231 ? 8'hea : _GEN_54; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_57 = 6'h15 == _T_231 ? 1'h1 : _GEN_55; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_58 = 6'h15 == _T_231 ? 8'h66 : _GEN_56; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_59 = 6'h16 == _T_231 ? 1'h1 : _GEN_57; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_60 = 6'h16 == _T_231 ? 8'h0 : _GEN_58; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_61 = 6'h17 == _T_231 ? 1'h0 : _GEN_59; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_62 = 6'h17 == _T_231 ? 8'hf7 : _GEN_60; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_63 = 6'h18 == _T_231 ? 1'h1 : _GEN_61; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_64 = 6'h18 == _T_231 ? 8'h20 : _GEN_62; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_65 = 6'h19 == _T_231 ? 1'h0 : _GEN_63; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_66 = 6'h19 == _T_231 ? 8'hc0 : _GEN_64; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_67 = 6'h1a == _T_231 ? 1'h1 : _GEN_65; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_68 = 6'h1a == _T_231 ? 8'h21 : _GEN_66; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_69 = 6'h1b == _T_231 ? 1'h0 : _GEN_67; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_70 = 6'h1b == _T_231 ? 8'hc1 : _GEN_68; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_71 = 6'h1c == _T_231 ? 1'h1 : _GEN_69; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_72 = 6'h1c == _T_231 ? 8'h10 : _GEN_70; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_73 = 6'h1d == _T_231 ? 1'h0 : _GEN_71; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_74 = 6'h1d == _T_231 ? 8'hc5 : _GEN_72; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_75 = 6'h1e == _T_231 ? 1'h1 : _GEN_73; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_76 = 6'h1e == _T_231 ? 8'h31 : _GEN_74; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_77 = 6'h1f == _T_231 ? 1'h1 : _GEN_75; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_78 = 6'h1f == _T_231 ? 8'h3c : _GEN_76; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_79 = 6'h20 == _T_231 ? 1'h0 : _GEN_77; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_80 = 6'h20 == _T_231 ? 8'hc7 : _GEN_78; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_81 = 6'h21 == _T_231 ? 1'h1 : _GEN_79; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_82 = 6'h21 == _T_231 ? 8'hc0 : _GEN_80; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_83 = 6'h22 == _T_231 ? 1'h0 : _GEN_81; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_84 = 6'h22 == _T_231 ? 8'h3a : _GEN_82; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_85 = 6'h23 == _T_231 ? 1'h1 : _GEN_83; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_86 = 6'h23 == _T_231 ? 8'h55 : _GEN_84; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_87 = 6'h24 == _T_231 ? 1'h0 : _GEN_85; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_88 = 6'h24 == _T_231 ? 8'hb1 : _GEN_86; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_89 = 6'h25 == _T_231 ? 1'h1 : _GEN_87; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_90 = 6'h25 == _T_231 ? 8'h0 : _GEN_88; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_91 = 6'h26 == _T_231 ? 1'h1 : _GEN_89; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_92 = 6'h26 == _T_231 ? 8'h1b : _GEN_90; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_93 = 6'h27 == _T_231 ? 1'h0 : _GEN_91; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_94 = 6'h27 == _T_231 ? 8'h51 : _GEN_92; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_95 = 6'h28 == _T_231 ? 1'h1 : _GEN_93; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_96 = 6'h28 == _T_231 ? 8'hff : _GEN_94; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_97 = 6'h29 == _T_231 ? 1'h0 : _GEN_95; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_98 = 6'h29 == _T_231 ? 8'h26 : _GEN_96; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_99 = 6'h2a == _T_231 ? 1'h1 : _GEN_97; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_100 = 6'h2a == _T_231 ? 8'h1 : _GEN_98; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_101 = 6'h2b == _T_231 ? 1'h0 : _GEN_99; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_102 = 6'h2b == _T_231 ? 8'hb7 : _GEN_100; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_103 = 6'h2c == _T_231 ? 1'h1 : _GEN_101; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_104 = 6'h2c == _T_231 ? 8'h6 : _GEN_102; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_105 = 6'h2d == _T_231 ? 1'h0 : _GEN_103; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_106 = 6'h2d == _T_231 ? 8'hb6 : _GEN_104; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_107 = 6'h2e == _T_231 ? 1'h1 : _GEN_105; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_108 = 6'h2e == _T_231 ? 8'ha : _GEN_106; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_109 = 6'h2f == _T_231 ? 1'h1 : _GEN_107; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_110 = 6'h2f == _T_231 ? 8'h82 : _GEN_108; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_111 = 6'h30 == _T_231 ? 1'h1 : _GEN_109; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_112 = 6'h30 == _T_231 ? 8'h27 : _GEN_110; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_113 = 6'h31 == _T_231 ? 1'h1 : _GEN_111; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_114 = 6'h31 == _T_231 ? 8'h0 : _GEN_112; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_115 = 6'h32 == _T_231 ? 1'h0 : _GEN_113; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_116 = 6'h32 == _T_231 ? 8'h29 : _GEN_114; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_117 = 6'h33 == _T_231 ? 1'h0 : _GEN_115; // @[LCDDisplay.scala 172:37:@237.12]
  assign _GEN_118 = 6'h33 == _T_231 ? 8'h2c : _GEN_116; // @[LCDDisplay.scala 172:37:@237.12]
  assign _T_234 = programCounter + 8'h1; // @[LCDDisplay.scala 175:42:@240.12]
  assign _T_235 = programCounter + 8'h1; // @[LCDDisplay.scala 175:42:@241.12]
  assign _GEN_119 = _T_229 ? _GEN_118 : 8'h0; // @[LCDDisplay.scala 171:52:@235.10]
  assign _GEN_120 = _T_229 ? _GEN_117 : 1'h0; // @[LCDDisplay.scala 171:52:@235.10]
  assign _GEN_122 = _T_229 ? _T_235 : programCounter; // @[LCDDisplay.scala 171:52:@235.10]
  assign _GEN_123 = _T_229 ? state : 3'h4; // @[LCDDisplay.scala 171:52:@235.10]
  assign _GEN_124 = ili9341Spi_io_sendData_ready ? _GEN_119 : 8'h0; // @[LCDDisplay.scala 170:41:@233.8]
  assign _GEN_125 = ili9341Spi_io_sendData_ready ? _GEN_120 : 1'h0; // @[LCDDisplay.scala 170:41:@233.8]
  assign _GEN_126 = ili9341Spi_io_sendData_ready ? _T_229 : 1'h0; // @[LCDDisplay.scala 170:41:@233.8]
  assign _GEN_127 = ili9341Spi_io_sendData_ready ? _GEN_122 : programCounter; // @[LCDDisplay.scala 170:41:@233.8]
  assign _GEN_128 = ili9341Spi_io_sendData_ready ? _GEN_123 : state; // @[LCDDisplay.scala 170:41:@233.8]
  assign _GEN_129 = ili9341Spi_io_sendData_ready ? io_vramData : 8'h0; // @[LCDDisplay.scala 181:41:@252.10]
  assign _GEN_130 = ili9341Spi_io_sendData_ready; // @[LCDDisplay.scala 181:41:@252.10]
  assign _GEN_131 = _T_190 ? _GEN_129 : 8'h0; // @[LCDDisplay.scala 180:40:@251.8]
  assign _GEN_132 = _T_190 ? _GEN_130 : 1'h0; // @[LCDDisplay.scala 180:40:@251.8]
  assign _GEN_133 = _T_227 ? _GEN_124 : _GEN_131; // @[LCDDisplay.scala 169:41:@232.6]
  assign _GEN_134 = _T_227 ? _GEN_125 : _GEN_132; // @[LCDDisplay.scala 169:41:@232.6]
  assign _GEN_135 = _T_227 ? _GEN_126 : _GEN_132; // @[LCDDisplay.scala 169:41:@232.6]
  assign _GEN_136 = _T_227 ? _GEN_127 : programCounter; // @[LCDDisplay.scala 169:41:@232.6]
  assign _GEN_137 = _T_227 ? _GEN_128 : state; // @[LCDDisplay.scala 169:41:@232.6]
  assign _GEN_138 = stateChange ? _GEN_10 : _GEN_137; // @[LCDDisplay.scala 155:22:@209.4]
  assign _GEN_139 = stateChange ? _GEN_11 : {{24'd0}, _GEN_2}; // @[LCDDisplay.scala 155:22:@209.4]
  assign _GEN_143 = stateChange ? programCounter : _GEN_136; // @[LCDDisplay.scala 155:22:@209.4]
  assign io_lcdSpi_serialClock = ili9341Spi_io_lcdSpi_serialClock; // @[LCDDisplay.scala 188:13:@264.4]
  assign io_lcdSpi_dataCommand = ili9341Spi_io_lcdSpi_dataCommand; // @[LCDDisplay.scala 188:13:@263.4]
  assign io_lcdSpi_chipSelectN = ili9341Spi_io_lcdSpi_chipSelectN; // @[LCDDisplay.scala 188:13:@262.4]
  assign io_lcdSpi_masterOutSlaveIn = ili9341Spi_io_lcdSpi_masterOutSlaveIn; // @[LCDDisplay.scala 188:13:@261.4]
  assign io_lcdSpi_resetN = _T_208 ? 1'h0 : 1'h1; // @[LCDDisplay.scala 188:13:@259.4 LCDDisplay.scala 190:22:@267.6]
  assign io_vramAddr = value; // @[LCDDisplay.scala 192:15:@269.4]
  assign ili9341Spi_clock = clock; // @[:@172.4]
  assign ili9341Spi_reset = reset; // @[:@173.4]
  assign ili9341Spi_io_sendData_valid = stateChange ? _GEN_14 : _GEN_135; // @[LCDDisplay.scala 143:32:@176.4 LCDDisplay.scala 165:36:@222.10 LCDDisplay.scala 173:38:@239.12 LCDDisplay.scala 184:36:@255.12]
  assign ili9341Spi_io_sendData_bits_isData = stateChange ? 1'h0 : _GEN_134; // @[LCDDisplay.scala 141:38:@174.4 LCDDisplay.scala 164:42:@221.10 LCDDisplay.scala 172:37:@238.12 LCDDisplay.scala 183:42:@254.12]
  assign ili9341Spi_io_sendData_bits_value = stateChange ? _GEN_12 : _GEN_133; // @[LCDDisplay.scala 142:37:@175.4 LCDDisplay.scala 163:41:@220.10 LCDDisplay.scala 172:37:@237.12 LCDDisplay.scala 182:41:@253.12]
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
  programCounter = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  value = _RAND_2[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  stateHoldCount = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (stateChange) begin
        if (_T_208) begin
          state <= 3'h1;
        end else begin
          if (_T_209) begin
            state <= 3'h2;
          end else begin
            if (_T_211) begin
              state <= 3'h3;
            end
          end
        end
      end else begin
        if (_T_227) begin
          if (ili9341Spi_io_sendData_ready) begin
            if (!(_T_229)) begin
              state <= 3'h4;
            end
          end
        end
      end
    end
    if (reset) begin
      programCounter <= 8'h0;
    end else begin
      if (!(stateChange)) begin
        if (_T_227) begin
          if (ili9341Spi_io_sendData_ready) begin
            if (_T_229) begin
              programCounter <= _T_235;
            end
          end
        end
      end
    end
    if (reset) begin
      value <= 18'h0;
    end else begin
      if (_T_191) begin
        if (_T_195) begin
          value <= 18'h0;
        end else begin
          value <= _T_198;
        end
      end
    end
    if (reset) begin
      stateHoldCount <= _T_204;
    end else begin
      stateHoldCount <= _GEN_139[0];
    end
  end
endmodule
module Ov7670sccb( // @[:@271.2]
  input        clock, // @[:@272.4]
  input        reset, // @[:@273.4]
  output       io_sccb_clock, // @[:@274.4]
  output       io_sccb_data_O, // @[:@274.4]
  output       io_sccb_data_T, // @[:@274.4]
  output       io_sendData_ready, // @[:@274.4]
  input        io_sendData_valid, // @[:@274.4]
  input  [7:0] io_sendData_bits_regAddr, // @[:@274.4]
  input  [7:0] io_sendData_bits_value // @[:@274.4]
);
  reg  state; // @[CMOSCamera.scala 68:22:@276.4]
  reg [31:0] _RAND_0;
  reg [7:0] value; // @[Counter.scala 26:33:@278.4]
  reg [31:0] _RAND_1;
  wire  _T_30; // @[Counter.scala 34:24:@280.6]
  wire [8:0] _T_32; // @[Counter.scala 35:22:@281.6]
  wire [7:0] _T_33; // @[Counter.scala 35:22:@282.6]
  wire [7:0] _GEN_0; // @[Counter.scala 37:21:@284.6]
  wire [7:0] _GEN_1; // @[Counter.scala 63:17:@279.4]
  wire  sccbClockPhaseChange; // @[Counter.scala 64:20:@288.4]
  reg  sccbClock; // @[CMOSCamera.scala 71:26:@289.4]
  reg [31:0] _RAND_2;
  reg [28:0] sendData; // @[CMOSCamera.scala 74:25:@290.4]
  reg [31:0] _RAND_3;
  reg [4:0] sendCount; // @[CMOSCamera.scala 75:26:@291.4]
  reg [31:0] _RAND_4;
  wire  _T_41; // @[CMOSCamera.scala 81:14:@292.4]
  wire  _T_42; // @[CMOSCamera.scala 81:28:@293.4]
  wire [27:0] _T_53; // @[Cat.scala 30:58:@301.6]
  wire  _T_56; // @[CMOSCamera.scala 85:35:@307.6]
  wire  _T_57; // @[CMOSCamera.scala 86:18:@309.8]
  wire [5:0] _T_59; // @[CMOSCamera.scala 89:30:@312.10]
  wire [4:0] _T_60; // @[CMOSCamera.scala 89:30:@313.10]
  wire  _T_62; // @[CMOSCamera.scala 90:23:@315.10]
  wire  _GEN_2; // @[CMOSCamera.scala 90:33:@316.10]
  wire [4:0] _GEN_3; // @[CMOSCamera.scala 88:22:@311.8]
  wire  _GEN_4; // @[CMOSCamera.scala 88:22:@311.8]
  wire  _GEN_5; // @[CMOSCamera.scala 85:60:@308.6]
  wire [4:0] _GEN_6; // @[CMOSCamera.scala 85:60:@308.6]
  wire  _GEN_7; // @[CMOSCamera.scala 85:60:@308.6]
  wire  _GEN_8; // @[CMOSCamera.scala 81:50:@294.4]
  wire [28:0] _GEN_9; // @[CMOSCamera.scala 81:50:@294.4]
  wire [4:0] _GEN_10; // @[CMOSCamera.scala 81:50:@294.4]
  wire  _GEN_11; // @[CMOSCamera.scala 81:50:@294.4]
  wire [28:0] _T_65; // @[CMOSCamera.scala 99:31:@326.6]
  wire  _T_66; // @[CMOSCamera.scala 99:31:@327.6]
  wire [19:0] _T_67; // @[CMOSCamera.scala 100:38:@329.6]
  wire  _T_68; // @[CMOSCamera.scala 100:38:@330.6]
  assign _T_30 = value == 8'hf9; // @[Counter.scala 34:24:@280.6]
  assign _T_32 = value + 8'h1; // @[Counter.scala 35:22:@281.6]
  assign _T_33 = value + 8'h1; // @[Counter.scala 35:22:@282.6]
  assign _GEN_0 = _T_30 ? 8'h0 : _T_33; // @[Counter.scala 37:21:@284.6]
  assign _GEN_1 = state ? _GEN_0 : value; // @[Counter.scala 63:17:@279.4]
  assign sccbClockPhaseChange = state & _T_30; // @[Counter.scala 64:20:@288.4]
  assign _T_41 = state == 1'h0; // @[CMOSCamera.scala 81:14:@292.4]
  assign _T_42 = _T_41 & io_sendData_valid; // @[CMOSCamera.scala 81:28:@293.4]
  assign _T_53 = {9'h42,1'h0,io_sendData_bits_regAddr,1'h0,io_sendData_bits_value,1'h0}; // @[Cat.scala 30:58:@301.6]
  assign _T_56 = state & sccbClockPhaseChange; // @[CMOSCamera.scala 85:35:@307.6]
  assign _T_57 = ~ sccbClock; // @[CMOSCamera.scala 86:18:@309.8]
  assign _T_59 = sendCount + 5'h1; // @[CMOSCamera.scala 89:30:@312.10]
  assign _T_60 = sendCount + 5'h1; // @[CMOSCamera.scala 89:30:@313.10]
  assign _T_62 = sendCount == 5'h1c; // @[CMOSCamera.scala 90:23:@315.10]
  assign _GEN_2 = _T_62 ? 1'h0 : state; // @[CMOSCamera.scala 90:33:@316.10]
  assign _GEN_3 = sccbClock ? _T_60 : sendCount; // @[CMOSCamera.scala 88:22:@311.8]
  assign _GEN_4 = sccbClock ? _GEN_2 : state; // @[CMOSCamera.scala 88:22:@311.8]
  assign _GEN_5 = _T_56 ? _T_57 : sccbClock; // @[CMOSCamera.scala 85:60:@308.6]
  assign _GEN_6 = _T_56 ? _GEN_3 : sendCount; // @[CMOSCamera.scala 85:60:@308.6]
  assign _GEN_7 = _T_56 ? _GEN_4 : state; // @[CMOSCamera.scala 85:60:@308.6]
  assign _GEN_8 = _T_42 ? 1'h1 : _GEN_7; // @[CMOSCamera.scala 81:50:@294.4]
  assign _GEN_9 = _T_42 ? {{1'd0}, _T_53} : sendData; // @[CMOSCamera.scala 81:50:@294.4]
  assign _GEN_10 = _T_42 ? 5'h0 : _GEN_6; // @[CMOSCamera.scala 81:50:@294.4]
  assign _GEN_11 = _T_42 ? sccbClock : _GEN_5; // @[CMOSCamera.scala 81:50:@294.4]
  assign _T_65 = sendData >> sendCount; // @[CMOSCamera.scala 99:31:@326.6]
  assign _T_66 = _T_65[0]; // @[CMOSCamera.scala 99:31:@327.6]
  assign _T_67 = 20'h80402 >> sendCount; // @[CMOSCamera.scala 100:38:@329.6]
  assign _T_68 = _T_67[0]; // @[CMOSCamera.scala 100:38:@330.6]
  assign io_sccb_clock = sccbClock; // @[CMOSCamera.scala 97:17:@323.4]
  assign io_sccb_data_O = state ? _T_66 : 1'h1; // @[CMOSCamera.scala 99:20:@328.6 CMOSCamera.scala 102:20:@334.6]
  assign io_sccb_data_T = state ? _T_68 : 1'h0; // @[CMOSCamera.scala 100:20:@331.6 CMOSCamera.scala 103:20:@335.6]
  assign io_sendData_ready = state == 1'h0; // @[CMOSCamera.scala 96:21:@322.4]
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
  value = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  sccbClock = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  sendData = _RAND_3[28:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  sendCount = _RAND_4[4:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 1'h0;
    end else begin
      if (_T_42) begin
        state <= 1'h1;
      end else begin
        if (_T_56) begin
          if (sccbClock) begin
            if (_T_62) begin
              state <= 1'h0;
            end
          end
        end
      end
    end
    if (reset) begin
      value <= 8'h0;
    end else begin
      if (state) begin
        if (_T_30) begin
          value <= 8'h0;
        end else begin
          value <= _T_33;
        end
      end
    end
    if (reset) begin
      sccbClock <= 1'h1;
    end else begin
      if (!(_T_42)) begin
        if (_T_56) begin
          sccbClock <= _T_57;
        end
      end
    end
    if (reset) begin
      sendData <= 29'h0;
    end else begin
      if (_T_42) begin
        sendData <= {{1'd0}, _T_53};
      end
    end
    if (reset) begin
      sendCount <= 5'h0;
    end else begin
      if (_T_42) begin
        sendCount <= 5'h0;
      end else begin
        if (_T_56) begin
          if (sccbClock) begin
            sendCount <= _T_60;
          end
        end
      end
    end
  end
endmodule
module NegEdge( // @[:@338.2]
  input   clock, // @[:@339.4]
  input   reset, // @[:@340.4]
  input   io_d, // @[:@341.4]
  output  io_pulse // @[:@341.4]
);
  reg  reg$; // @[NegEdge.scala 14:20:@343.4]
  reg [31:0] _RAND_0;
  wire  _T_12; // @[NegEdge.scala 16:22:@345.4]
  assign _T_12 = io_d == 1'h0; // @[NegEdge.scala 16:22:@345.4]
  assign io_pulse = reg$ & _T_12; // @[NegEdge.scala 16:12:@347.4]
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
  reg$ = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      reg$ <= 1'h0;
    end else begin
      reg$ <= io_d;
    end
  end
endmodule
module CMOSCamera( // @[:@349.2]
  input         clock, // @[:@350.4]
  input         reset, // @[:@351.4]
  output        io_cmosCam_systemClock, // @[:@352.4]
  input         io_cmosCam_verticalSync, // @[:@352.4]
  input         io_cmosCam_horizontalRef, // @[:@352.4]
  input         io_cmosCam_pixelClock, // @[:@352.4]
  input  [7:0]  io_cmosCam_pixcelData, // @[:@352.4]
  output        io_cmosCam_sccb_clock, // @[:@352.4]
  output        io_cmosCam_sccb_data_O, // @[:@352.4]
  output        io_cmosCam_sccb_data_T, // @[:@352.4]
  output        io_vramClock, // @[:@352.4]
  output        io_vramWriteEnable, // @[:@352.4]
  output [17:0] io_vramAddr, // @[:@352.4]
  output [7:0]  io_vramData, // @[:@352.4]
  output        io_sendData_ready, // @[:@352.4]
  input         io_sendData_valid, // @[:@352.4]
  input  [7:0]  io_sendData_bits_regAddr, // @[:@352.4]
  input  [7:0]  io_sendData_bits_value // @[:@352.4]
);
  wire  sccb_clock; // @[CMOSCamera.scala 120:20:@354.4]
  wire  sccb_reset; // @[CMOSCamera.scala 120:20:@354.4]
  wire  sccb_io_sccb_clock; // @[CMOSCamera.scala 120:20:@354.4]
  wire  sccb_io_sccb_data_O; // @[CMOSCamera.scala 120:20:@354.4]
  wire  sccb_io_sccb_data_T; // @[CMOSCamera.scala 120:20:@354.4]
  wire  sccb_io_sendData_ready; // @[CMOSCamera.scala 120:20:@354.4]
  wire  sccb_io_sendData_valid; // @[CMOSCamera.scala 120:20:@354.4]
  wire [7:0] sccb_io_sendData_bits_regAddr; // @[CMOSCamera.scala 120:20:@354.4]
  wire [7:0] sccb_io_sendData_bits_value; // @[CMOSCamera.scala 120:20:@354.4]
  wire  NegEdge_clock; // @[NegEdge.scala 21:25:@378.4]
  wire  NegEdge_reset; // @[NegEdge.scala 21:25:@378.4]
  wire  NegEdge_io_d; // @[NegEdge.scala 21:25:@378.4]
  wire  NegEdge_io_pulse; // @[NegEdge.scala 21:25:@378.4]
  reg  value; // @[Counter.scala 26:33:@361.4]
  reg [31:0] _RAND_0;
  wire [1:0] _T_55; // @[Counter.scala 35:22:@364.6]
  wire  _T_56; // @[Counter.scala 35:22:@365.6]
  reg  systemClock; // @[CMOSCamera.scala 127:28:@369.4]
  reg [31:0] _RAND_1;
  wire  _T_59; // @[CMOSCamera.scala 129:20:@371.6]
  wire  _GEN_1; // @[CMOSCamera.scala 128:33:@370.4]
  wire  pixelClock; // @[CMOSCamera.scala 133:49:@374.4]
  reg [9:0] _T_62; // @[CMOSCamera.scala 135:20:@375.4]
  reg [31:0] _RAND_2;
  reg [8:0] _T_65; // @[CMOSCamera.scala 136:20:@376.4]
  reg [31:0] _RAND_3;
  reg  _T_68; // @[CMOSCamera.scala 137:29:@377.4]
  reg [31:0] _RAND_4;
  wire  _T_69; // @[CMOSCamera.scala 141:21:@383.6]
  wire [10:0] _T_71; // @[CMOSCamera.scala 143:16:@386.8]
  wire [9:0] _T_72; // @[CMOSCamera.scala 143:16:@387.8]
  wire [9:0] _GEN_2; // @[CMOSCamera.scala 142:25:@385.6]
  wire  _GEN_3; // @[CMOSCamera.scala 140:37:@382.4]
  wire [9:0] _GEN_4; // @[CMOSCamera.scala 140:37:@382.4]
  wire [9:0] _T_76; // @[CMOSCamera.scala 151:14:@396.6]
  wire [8:0] _T_77; // @[CMOSCamera.scala 151:14:@397.6]
  wire [8:0] _GEN_5; // @[CMOSCamera.scala 152:42:@401.6]
  wire [8:0] _GEN_6; // @[CMOSCamera.scala 150:26:@395.4]
  wire  _T_81; // @[CMOSCamera.scala 158:59:@406.4]
  wire  _T_82; // @[CMOSCamera.scala 158:52:@407.4]
  wire  _T_84; // @[CMOSCamera.scala 158:68:@408.4]
  wire  _T_85; // @[CMOSCamera.scala 158:63:@409.4]
  wire  _T_87; // @[CMOSCamera.scala 158:83:@410.4]
  wire  _T_88; // @[CMOSCamera.scala 158:76:@411.4]
  wire  _T_90; // @[CMOSCamera.scala 158:92:@412.4]
  wire [17:0] _T_93; // @[CMOSCamera.scala 159:23:@415.4]
  wire [17:0] _GEN_7; // @[CMOSCamera.scala 159:31:@416.4]
  wire [18:0] _T_94; // @[CMOSCamera.scala 159:31:@416.4]
  wire [17:0] _T_95; // @[CMOSCamera.scala 159:31:@417.4]
  wire [19:0] _T_97; // @[CMOSCamera.scala 159:36:@418.4]
  wire [19:0] _GEN_8; // @[CMOSCamera.scala 159:42:@419.4]
  wire [20:0] _T_98; // @[CMOSCamera.scala 159:42:@419.4]
  wire [19:0] _T_99; // @[CMOSCamera.scala 159:42:@420.4]
  Ov7670sccb sccb ( // @[CMOSCamera.scala 120:20:@354.4]
    .clock(sccb_clock),
    .reset(sccb_reset),
    .io_sccb_clock(sccb_io_sccb_clock),
    .io_sccb_data_O(sccb_io_sccb_data_O),
    .io_sccb_data_T(sccb_io_sccb_data_T),
    .io_sendData_ready(sccb_io_sendData_ready),
    .io_sendData_valid(sccb_io_sendData_valid),
    .io_sendData_bits_regAddr(sccb_io_sendData_bits_regAddr),
    .io_sendData_bits_value(sccb_io_sendData_bits_value)
  );
  NegEdge NegEdge ( // @[NegEdge.scala 21:25:@378.4]
    .clock(NegEdge_clock),
    .reset(NegEdge_reset),
    .io_d(NegEdge_io_d),
    .io_pulse(NegEdge_io_pulse)
  );
  assign _T_55 = value + 1'h1; // @[Counter.scala 35:22:@364.6]
  assign _T_56 = value + 1'h1; // @[Counter.scala 35:22:@365.6]
  assign _T_59 = ~ systemClock; // @[CMOSCamera.scala 129:20:@371.6]
  assign _GEN_1 = value ? _T_59 : systemClock; // @[CMOSCamera.scala 128:33:@370.4]
  assign pixelClock = io_cmosCam_pixelClock; // @[CMOSCamera.scala 133:49:@374.4]
  assign _T_69 = ~ _T_68; // @[CMOSCamera.scala 141:21:@383.6]
  assign _T_71 = _T_62 + 10'h1; // @[CMOSCamera.scala 143:16:@386.8]
  assign _T_72 = _T_62 + 10'h1; // @[CMOSCamera.scala 143:16:@387.8]
  assign _GEN_2 = _T_68 ? _T_72 : _T_62; // @[CMOSCamera.scala 142:25:@385.6]
  assign _GEN_3 = io_cmosCam_horizontalRef ? _T_69 : 1'h0; // @[CMOSCamera.scala 140:37:@382.4]
  assign _GEN_4 = io_cmosCam_horizontalRef ? _GEN_2 : 10'h0; // @[CMOSCamera.scala 140:37:@382.4]
  assign _T_76 = _T_65 + 9'h1; // @[CMOSCamera.scala 151:14:@396.6]
  assign _T_77 = _T_65 + 9'h1; // @[CMOSCamera.scala 151:14:@397.6]
  assign _GEN_5 = io_cmosCam_verticalSync ? 9'h0 : _T_65; // @[CMOSCamera.scala 152:42:@401.6]
  assign _GEN_6 = NegEdge_io_pulse ? _T_77 : _GEN_5; // @[CMOSCamera.scala 150:26:@395.4]
  assign _T_81 = 10'h0 < _T_62; // @[CMOSCamera.scala 158:59:@406.4]
  assign _T_82 = io_cmosCam_horizontalRef & _T_81; // @[CMOSCamera.scala 158:52:@407.4]
  assign _T_84 = _T_62 < 10'h13f; // @[CMOSCamera.scala 158:68:@408.4]
  assign _T_85 = _T_82 & _T_84; // @[CMOSCamera.scala 158:63:@409.4]
  assign _T_87 = 9'h0 < _T_65; // @[CMOSCamera.scala 158:83:@410.4]
  assign _T_88 = _T_85 & _T_87; // @[CMOSCamera.scala 158:76:@411.4]
  assign _T_90 = _T_65 < 9'hef; // @[CMOSCamera.scala 158:92:@412.4]
  assign _T_93 = _T_62 * 10'hf0; // @[CMOSCamera.scala 159:23:@415.4]
  assign _GEN_7 = {{9'd0}, _T_65}; // @[CMOSCamera.scala 159:31:@416.4]
  assign _T_94 = _T_93 + _GEN_7; // @[CMOSCamera.scala 159:31:@416.4]
  assign _T_95 = _T_93 + _GEN_7; // @[CMOSCamera.scala 159:31:@417.4]
  assign _T_97 = _T_95 * 18'h2; // @[CMOSCamera.scala 159:36:@418.4]
  assign _GEN_8 = {{19'd0}, _T_68}; // @[CMOSCamera.scala 159:42:@419.4]
  assign _T_98 = _T_97 + _GEN_8; // @[CMOSCamera.scala 159:42:@419.4]
  assign _T_99 = _T_97 + _GEN_8; // @[CMOSCamera.scala 159:42:@420.4]
  assign io_cmosCam_systemClock = systemClock; // @[CMOSCamera.scala 163:26:@423.4]
  assign io_cmosCam_sccb_clock = sccb_io_sccb_clock; // @[CMOSCamera.scala 164:25:@424.4]
  assign io_cmosCam_sccb_data_O = sccb_io_sccb_data_O; // @[CMOSCamera.scala 165:24:@427.4]
  assign io_cmosCam_sccb_data_T = sccb_io_sccb_data_T; // @[CMOSCamera.scala 165:24:@425.4]
  assign io_vramClock = io_cmosCam_pixelClock; // @[CMOSCamera.scala 156:18:@404.4]
  assign io_vramWriteEnable = _T_88 & _T_90; // @[CMOSCamera.scala 158:24:@414.4]
  assign io_vramAddr = _T_99[17:0]; // @[CMOSCamera.scala 159:17:@421.4]
  assign io_vramData = io_cmosCam_pixcelData; // @[CMOSCamera.scala 160:17:@422.4]
  assign io_sendData_ready = sccb_io_sendData_ready; // @[CMOSCamera.scala 123:20:@360.4]
  assign sccb_clock = clock; // @[:@355.4]
  assign sccb_reset = reset; // @[:@356.4]
  assign sccb_io_sendData_valid = io_sendData_valid; // @[CMOSCamera.scala 123:20:@359.4]
  assign sccb_io_sendData_bits_regAddr = io_sendData_bits_regAddr; // @[CMOSCamera.scala 123:20:@358.4]
  assign sccb_io_sendData_bits_value = io_sendData_bits_value; // @[CMOSCamera.scala 123:20:@357.4]
  assign NegEdge_clock = io_cmosCam_pixelClock; // @[:@379.4]
  assign NegEdge_reset = reset; // @[:@380.4]
  assign NegEdge_io_d = io_cmosCam_horizontalRef; // @[NegEdge.scala 22:18:@381.4]
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
  value = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  systemClock = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_62 = _RAND_2[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_65 = _RAND_3[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_68 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      value <= 1'h0;
    end else begin
      value <= _T_56;
    end
    if (reset) begin
      systemClock <= 1'h1;
    end else begin
      if (value) begin
        systemClock <= _T_59;
      end
    end
  end
  always @(posedge pixelClock) begin
    if (reset) begin
      _T_62 <= 10'h0;
    end else begin
      if (io_cmosCam_horizontalRef) begin
        if (_T_68) begin
          _T_62 <= _T_72;
        end
      end else begin
        _T_62 <= 10'h0;
      end
    end
    if (reset) begin
      _T_65 <= 9'h0;
    end else begin
      if (NegEdge_io_pulse) begin
        _T_65 <= _T_77;
      end else begin
        if (io_cmosCam_verticalSync) begin
          _T_65 <= 9'h0;
        end
      end
    end
    if (reset) begin
      _T_68 <= 1'h0;
    end else begin
      if (io_cmosCam_horizontalRef) begin
        _T_68 <= _T_69;
      end else begin
        _T_68 <= 1'h0;
      end
    end
  end
endmodule
module Debounce( // @[:@444.2]
  input   clock, // @[:@445.4]
  input   reset, // @[:@446.4]
  input   io_in, // @[:@447.4]
  output  io_out // @[:@447.4]
);
  reg [23:0] value; // @[Counter.scala 26:33:@449.4]
  reg [31:0] _RAND_0;
  wire  enable; // @[Counter.scala 34:24:@451.6]
  wire [24:0] _T_15; // @[Counter.scala 35:22:@452.6]
  wire [23:0] _T_16; // @[Counter.scala 35:22:@453.6]
  wire [23:0] _GEN_0; // @[Counter.scala 37:21:@455.6]
  reg  reg0; // @[Reg.scala 19:20:@460.4]
  reg [31:0] _RAND_1;
  wire  _GEN_2; // @[Reg.scala 20:19:@461.4]
  reg  reg1; // @[Reg.scala 19:20:@464.4]
  reg [31:0] _RAND_2;
  wire  _GEN_3; // @[Reg.scala 20:19:@465.4]
  wire  _T_23; // @[Debounce.scala 19:21:@468.4]
  wire  _T_24; // @[Debounce.scala 19:18:@469.4]
  assign enable = value == 24'h98967f; // @[Counter.scala 34:24:@451.6]
  assign _T_15 = value + 24'h1; // @[Counter.scala 35:22:@452.6]
  assign _T_16 = value + 24'h1; // @[Counter.scala 35:22:@453.6]
  assign _GEN_0 = enable ? 24'h0 : _T_16; // @[Counter.scala 37:21:@455.6]
  assign _GEN_2 = enable ? io_in : reg0; // @[Reg.scala 20:19:@461.4]
  assign _GEN_3 = enable ? reg0 : reg1; // @[Reg.scala 20:19:@465.4]
  assign _T_23 = reg1 == 1'h0; // @[Debounce.scala 19:21:@468.4]
  assign _T_24 = reg0 & _T_23; // @[Debounce.scala 19:18:@469.4]
  assign io_out = _T_24 & enable; // @[Debounce.scala 19:10:@471.4]
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
  value = _RAND_0[23:0];
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
      value <= 24'h0;
    end else begin
      if (enable) begin
        value <= 24'h0;
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
module Seg7LED( // @[:@473.2]
  input        clock, // @[:@474.4]
  input        reset, // @[:@475.4]
  input  [3:0] io_digits_0, // @[:@476.4]
  input  [3:0] io_digits_1, // @[:@476.4]
  input  [3:0] io_digits_2, // @[:@476.4]
  input  [3:0] io_digits_3, // @[:@476.4]
  output [6:0] io_seg7led_cathodes, // @[:@476.4]
  output [7:0] io_seg7led_anodes // @[:@476.4]
);
  reg [16:0] value; // @[Counter.scala 26:33:@478.4]
  reg [31:0] _RAND_0;
  wire  digitChange; // @[Counter.scala 34:24:@480.6]
  wire [17:0] _T_41; // @[Counter.scala 35:22:@481.6]
  wire [16:0] _T_42; // @[Counter.scala 35:22:@482.6]
  wire [16:0] _GEN_0; // @[Counter.scala 37:21:@484.6]
  reg [2:0] value_1; // @[Counter.scala 26:33:@489.4]
  reg [31:0] _RAND_1;
  wire [3:0] _T_49; // @[Counter.scala 35:22:@492.6]
  wire [2:0] _T_50; // @[Counter.scala 35:22:@493.6]
  wire [2:0] _GEN_2; // @[Counter.scala 63:17:@490.4]
  wire [3:0] _GEN_4; // @[Seg7LED.scala 37:17:@497.4]
  wire [3:0] _GEN_5; // @[Seg7LED.scala 37:17:@497.4]
  wire [3:0] _GEN_6; // @[Seg7LED.scala 37:17:@497.4]
  wire [3:0] _GEN_7; // @[Seg7LED.scala 37:17:@497.4]
  wire [3:0] _GEN_8; // @[Seg7LED.scala 37:17:@497.4]
  wire [3:0] _GEN_9; // @[Seg7LED.scala 37:17:@497.4]
  wire [3:0] _GEN_10; // @[Seg7LED.scala 37:17:@497.4]
  wire  _T_54; // @[Seg7LED.scala 37:17:@497.4]
  wire  _T_57; // @[Seg7LED.scala 38:17:@498.4]
  wire  _T_60; // @[Seg7LED.scala 39:17:@499.4]
  wire  _T_63; // @[Seg7LED.scala 40:17:@500.4]
  wire  _T_66; // @[Seg7LED.scala 41:17:@501.4]
  wire  _T_69; // @[Seg7LED.scala 42:17:@502.4]
  wire  _T_72; // @[Seg7LED.scala 43:17:@503.4]
  wire  _T_75; // @[Seg7LED.scala 44:17:@504.4]
  wire  _T_78; // @[Seg7LED.scala 45:17:@505.4]
  wire  _T_81; // @[Seg7LED.scala 46:17:@506.4]
  wire  _T_84; // @[Seg7LED.scala 47:17:@507.4]
  wire  _T_87; // @[Seg7LED.scala 48:17:@508.4]
  wire  _T_90; // @[Seg7LED.scala 49:17:@509.4]
  wire  _T_93; // @[Seg7LED.scala 50:17:@510.4]
  wire  _T_96; // @[Seg7LED.scala 51:17:@511.4]
  wire  _T_99; // @[Seg7LED.scala 52:17:@512.4]
  wire [6:0] _T_101; // @[Mux.scala 61:16:@513.4]
  wire [6:0] _T_102; // @[Mux.scala 61:16:@514.4]
  wire [6:0] _T_103; // @[Mux.scala 61:16:@515.4]
  wire [6:0] _T_104; // @[Mux.scala 61:16:@516.4]
  wire [6:0] _T_105; // @[Mux.scala 61:16:@517.4]
  wire [6:0] _T_106; // @[Mux.scala 61:16:@518.4]
  wire [6:0] _T_107; // @[Mux.scala 61:16:@519.4]
  wire [6:0] _T_108; // @[Mux.scala 61:16:@520.4]
  wire [6:0] _T_109; // @[Mux.scala 61:16:@521.4]
  wire [6:0] _T_110; // @[Mux.scala 61:16:@522.4]
  wire [6:0] _T_111; // @[Mux.scala 61:16:@523.4]
  wire [6:0] _T_112; // @[Mux.scala 61:16:@524.4]
  wire [6:0] _T_113; // @[Mux.scala 61:16:@525.4]
  wire [6:0] _T_114; // @[Mux.scala 61:16:@526.4]
  wire [6:0] _T_115; // @[Mux.scala 61:16:@527.4]
  reg [7:0] anodes; // @[Seg7LED.scala 54:23:@530.4]
  reg [31:0] _RAND_2;
  wire [6:0] _T_119; // @[Seg7LED.scala 57:25:@532.6]
  wire  _T_120; // @[Seg7LED.scala 57:39:@533.6]
  wire [7:0] _T_121; // @[Cat.scala 30:58:@534.6]
  wire [7:0] _GEN_11; // @[Seg7LED.scala 55:22:@531.4]
  assign digitChange = value == 17'h1869f; // @[Counter.scala 34:24:@480.6]
  assign _T_41 = value + 17'h1; // @[Counter.scala 35:22:@481.6]
  assign _T_42 = value + 17'h1; // @[Counter.scala 35:22:@482.6]
  assign _GEN_0 = digitChange ? 17'h0 : _T_42; // @[Counter.scala 37:21:@484.6]
  assign _T_49 = value_1 + 3'h1; // @[Counter.scala 35:22:@492.6]
  assign _T_50 = value_1 + 3'h1; // @[Counter.scala 35:22:@493.6]
  assign _GEN_2 = digitChange ? _T_50 : value_1; // @[Counter.scala 63:17:@490.4]
  assign _GEN_4 = 3'h1 == value_1 ? io_digits_1 : io_digits_0; // @[Seg7LED.scala 37:17:@497.4]
  assign _GEN_5 = 3'h2 == value_1 ? io_digits_2 : _GEN_4; // @[Seg7LED.scala 37:17:@497.4]
  assign _GEN_6 = 3'h3 == value_1 ? io_digits_3 : _GEN_5; // @[Seg7LED.scala 37:17:@497.4]
  assign _GEN_7 = 3'h4 == value_1 ? 4'h0 : _GEN_6; // @[Seg7LED.scala 37:17:@497.4]
  assign _GEN_8 = 3'h5 == value_1 ? 4'h0 : _GEN_7; // @[Seg7LED.scala 37:17:@497.4]
  assign _GEN_9 = 3'h6 == value_1 ? 4'h0 : _GEN_8; // @[Seg7LED.scala 37:17:@497.4]
  assign _GEN_10 = 3'h7 == value_1 ? 4'h0 : _GEN_9; // @[Seg7LED.scala 37:17:@497.4]
  assign _T_54 = _GEN_10 == 4'h0; // @[Seg7LED.scala 37:17:@497.4]
  assign _T_57 = _GEN_10 == 4'h1; // @[Seg7LED.scala 38:17:@498.4]
  assign _T_60 = _GEN_10 == 4'h2; // @[Seg7LED.scala 39:17:@499.4]
  assign _T_63 = _GEN_10 == 4'h3; // @[Seg7LED.scala 40:17:@500.4]
  assign _T_66 = _GEN_10 == 4'h4; // @[Seg7LED.scala 41:17:@501.4]
  assign _T_69 = _GEN_10 == 4'h5; // @[Seg7LED.scala 42:17:@502.4]
  assign _T_72 = _GEN_10 == 4'h6; // @[Seg7LED.scala 43:17:@503.4]
  assign _T_75 = _GEN_10 == 4'h7; // @[Seg7LED.scala 44:17:@504.4]
  assign _T_78 = _GEN_10 == 4'h8; // @[Seg7LED.scala 45:17:@505.4]
  assign _T_81 = _GEN_10 == 4'h9; // @[Seg7LED.scala 46:17:@506.4]
  assign _T_84 = _GEN_10 == 4'ha; // @[Seg7LED.scala 47:17:@507.4]
  assign _T_87 = _GEN_10 == 4'hb; // @[Seg7LED.scala 48:17:@508.4]
  assign _T_90 = _GEN_10 == 4'hc; // @[Seg7LED.scala 49:17:@509.4]
  assign _T_93 = _GEN_10 == 4'hd; // @[Seg7LED.scala 50:17:@510.4]
  assign _T_96 = _GEN_10 == 4'he; // @[Seg7LED.scala 51:17:@511.4]
  assign _T_99 = _GEN_10 == 4'hf; // @[Seg7LED.scala 52:17:@512.4]
  assign _T_101 = _T_99 ? 7'he : 7'h7f; // @[Mux.scala 61:16:@513.4]
  assign _T_102 = _T_96 ? 7'h6 : _T_101; // @[Mux.scala 61:16:@514.4]
  assign _T_103 = _T_93 ? 7'h21 : _T_102; // @[Mux.scala 61:16:@515.4]
  assign _T_104 = _T_90 ? 7'h46 : _T_103; // @[Mux.scala 61:16:@516.4]
  assign _T_105 = _T_87 ? 7'h3 : _T_104; // @[Mux.scala 61:16:@517.4]
  assign _T_106 = _T_84 ? 7'h8 : _T_105; // @[Mux.scala 61:16:@518.4]
  assign _T_107 = _T_81 ? 7'h10 : _T_106; // @[Mux.scala 61:16:@519.4]
  assign _T_108 = _T_78 ? 7'h0 : _T_107; // @[Mux.scala 61:16:@520.4]
  assign _T_109 = _T_75 ? 7'h58 : _T_108; // @[Mux.scala 61:16:@521.4]
  assign _T_110 = _T_72 ? 7'h2 : _T_109; // @[Mux.scala 61:16:@522.4]
  assign _T_111 = _T_69 ? 7'h12 : _T_110; // @[Mux.scala 61:16:@523.4]
  assign _T_112 = _T_66 ? 7'h19 : _T_111; // @[Mux.scala 61:16:@524.4]
  assign _T_113 = _T_63 ? 7'h30 : _T_112; // @[Mux.scala 61:16:@525.4]
  assign _T_114 = _T_60 ? 7'h24 : _T_113; // @[Mux.scala 61:16:@526.4]
  assign _T_115 = _T_57 ? 7'h79 : _T_114; // @[Mux.scala 61:16:@527.4]
  assign _T_119 = anodes[6:0]; // @[Seg7LED.scala 57:25:@532.6]
  assign _T_120 = anodes[7]; // @[Seg7LED.scala 57:39:@533.6]
  assign _T_121 = {_T_119,_T_120}; // @[Cat.scala 30:58:@534.6]
  assign _GEN_11 = digitChange ? _T_121 : anodes; // @[Seg7LED.scala 55:22:@531.4]
  assign io_seg7led_cathodes = _T_54 ? 7'h40 : _T_115; // @[Seg7LED.scala 35:23:@529.4]
  assign io_seg7led_anodes = anodes; // @[Seg7LED.scala 65:21:@556.4]
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
        value <= _T_42;
      end
    end
    if (reset) begin
      value_1 <= 3'h0;
    end else begin
      if (digitChange) begin
        value_1 <= _T_50;
      end
    end
    if (reset) begin
      anodes <= 8'hfe;
    end else begin
      if (digitChange) begin
        anodes <= _T_121;
      end
    end
  end
endmodule
module CameraDisplay( // @[:@568.2]
  input        clock, // @[:@569.4]
  input        reset, // @[:@570.4]
  output       io_lcdSpi_serialClock, // @[:@571.4]
  output       io_lcdSpi_dataCommand, // @[:@571.4]
  output       io_lcdSpi_chipSelectN, // @[:@571.4]
  output       io_lcdSpi_masterOutSlaveIn, // @[:@571.4]
  input        io_lcdSpi_masterInSlaveOut, // @[:@571.4]
  output       io_lcdSpi_resetN, // @[:@571.4]
  output       io_lcdSpi_backLight, // @[:@571.4]
  output       io_cmosCam_systemClock, // @[:@571.4]
  input        io_cmosCam_verticalSync, // @[:@571.4]
  input        io_cmosCam_horizontalRef, // @[:@571.4]
  input        io_cmosCam_pixelClock, // @[:@571.4]
  input  [7:0] io_cmosCam_pixcelData, // @[:@571.4]
  output       io_cmosCam_sccb_clock, // @[:@571.4]
  inout        io_cmosCam_sccb_ioBuf, // @[:@571.4]
  output       io_cmosCam_resetN, // @[:@571.4]
  output       io_cmosCam_powerDown, // @[:@571.4]
  output       io_sendData_ready, // @[:@571.4]
  input        io_sendData_valid, // @[:@571.4]
  input  [7:0] io_sendData_bits_regAddr, // @[:@571.4]
  input  [7:0] io_sendData_bits_value, // @[:@571.4]
  output [6:0] io_seg7led_cathodes, // @[:@571.4]
  output       io_seg7led_decimalPoint, // @[:@571.4]
  output [7:0] io_seg7led_anodes // @[:@571.4]
);
  wire  lcdDisplay_clock; // @[CameraDisplay.scala 43:26:@573.4]
  wire  lcdDisplay_reset; // @[CameraDisplay.scala 43:26:@573.4]
  wire  lcdDisplay_io_lcdSpi_serialClock; // @[CameraDisplay.scala 43:26:@573.4]
  wire  lcdDisplay_io_lcdSpi_dataCommand; // @[CameraDisplay.scala 43:26:@573.4]
  wire  lcdDisplay_io_lcdSpi_chipSelectN; // @[CameraDisplay.scala 43:26:@573.4]
  wire  lcdDisplay_io_lcdSpi_masterOutSlaveIn; // @[CameraDisplay.scala 43:26:@573.4]
  wire  lcdDisplay_io_lcdSpi_resetN; // @[CameraDisplay.scala 43:26:@573.4]
  wire [17:0] lcdDisplay_io_vramAddr; // @[CameraDisplay.scala 43:26:@573.4]
  wire [7:0] lcdDisplay_io_vramData; // @[CameraDisplay.scala 43:26:@573.4]
  wire  cmosCamera_clock; // @[CameraDisplay.scala 44:26:@576.4]
  wire  cmosCamera_reset; // @[CameraDisplay.scala 44:26:@576.4]
  wire  cmosCamera_io_cmosCam_systemClock; // @[CameraDisplay.scala 44:26:@576.4]
  wire  cmosCamera_io_cmosCam_verticalSync; // @[CameraDisplay.scala 44:26:@576.4]
  wire  cmosCamera_io_cmosCam_horizontalRef; // @[CameraDisplay.scala 44:26:@576.4]
  wire  cmosCamera_io_cmosCam_pixelClock; // @[CameraDisplay.scala 44:26:@576.4]
  wire [7:0] cmosCamera_io_cmosCam_pixcelData; // @[CameraDisplay.scala 44:26:@576.4]
  wire  cmosCamera_io_cmosCam_sccb_clock; // @[CameraDisplay.scala 44:26:@576.4]
  wire  cmosCamera_io_cmosCam_sccb_data_O; // @[CameraDisplay.scala 44:26:@576.4]
  wire  cmosCamera_io_cmosCam_sccb_data_T; // @[CameraDisplay.scala 44:26:@576.4]
  wire  cmosCamera_io_vramClock; // @[CameraDisplay.scala 44:26:@576.4]
  wire  cmosCamera_io_vramWriteEnable; // @[CameraDisplay.scala 44:26:@576.4]
  wire [17:0] cmosCamera_io_vramAddr; // @[CameraDisplay.scala 44:26:@576.4]
  wire [7:0] cmosCamera_io_vramData; // @[CameraDisplay.scala 44:26:@576.4]
  wire  cmosCamera_io_sendData_ready; // @[CameraDisplay.scala 44:26:@576.4]
  wire  cmosCamera_io_sendData_valid; // @[CameraDisplay.scala 44:26:@576.4]
  wire [7:0] cmosCamera_io_sendData_bits_regAddr; // @[CameraDisplay.scala 44:26:@576.4]
  wire [7:0] cmosCamera_io_sendData_bits_value; // @[CameraDisplay.scala 44:26:@576.4]
  wire [7:0] vram_doutb; // @[CameraDisplay.scala 45:20:@579.4]
  wire [17:0] vram_addrb; // @[CameraDisplay.scala 45:20:@579.4]
  wire  vram_clkb; // @[CameraDisplay.scala 45:20:@579.4]
  wire [7:0] vram_dina; // @[CameraDisplay.scala 45:20:@579.4]
  wire [17:0] vram_addra; // @[CameraDisplay.scala 45:20:@579.4]
  wire  vram_wea; // @[CameraDisplay.scala 45:20:@579.4]
  wire  vram_ena; // @[CameraDisplay.scala 45:20:@579.4]
  wire  vram_clka; // @[CameraDisplay.scala 45:20:@579.4]
  wire  Debounce_clock; // @[Debounce.scala 26:26:@592.4]
  wire  Debounce_reset; // @[Debounce.scala 26:26:@592.4]
  wire  Debounce_io_in; // @[Debounce.scala 26:26:@592.4]
  wire  Debounce_io_out; // @[Debounce.scala 26:26:@592.4]
  wire  seg7led_clock; // @[CameraDisplay.scala 50:23:@597.4]
  wire  seg7led_reset; // @[CameraDisplay.scala 50:23:@597.4]
  wire [3:0] seg7led_io_digits_0; // @[CameraDisplay.scala 50:23:@597.4]
  wire [3:0] seg7led_io_digits_1; // @[CameraDisplay.scala 50:23:@597.4]
  wire [3:0] seg7led_io_digits_2; // @[CameraDisplay.scala 50:23:@597.4]
  wire [3:0] seg7led_io_digits_3; // @[CameraDisplay.scala 50:23:@597.4]
  wire [6:0] seg7led_io_seg7led_cathodes; // @[CameraDisplay.scala 50:23:@597.4]
  wire [7:0] seg7led_io_seg7led_anodes; // @[CameraDisplay.scala 50:23:@597.4]
  wire  IOBUF_T; // @[CMOSCamera.scala 20:23:@650.4]
  wire  IOBUF_I; // @[CMOSCamera.scala 20:23:@650.4]
  wire  IOBUF_O; // @[CMOSCamera.scala 20:23:@650.4]
  LCDDisplay lcdDisplay ( // @[CameraDisplay.scala 43:26:@573.4]
    .clock(lcdDisplay_clock),
    .reset(lcdDisplay_reset),
    .io_lcdSpi_serialClock(lcdDisplay_io_lcdSpi_serialClock),
    .io_lcdSpi_dataCommand(lcdDisplay_io_lcdSpi_dataCommand),
    .io_lcdSpi_chipSelectN(lcdDisplay_io_lcdSpi_chipSelectN),
    .io_lcdSpi_masterOutSlaveIn(lcdDisplay_io_lcdSpi_masterOutSlaveIn),
    .io_lcdSpi_resetN(lcdDisplay_io_lcdSpi_resetN),
    .io_vramAddr(lcdDisplay_io_vramAddr),
    .io_vramData(lcdDisplay_io_vramData)
  );
  CMOSCamera cmosCamera ( // @[CameraDisplay.scala 44:26:@576.4]
    .clock(cmosCamera_clock),
    .reset(cmosCamera_reset),
    .io_cmosCam_systemClock(cmosCamera_io_cmosCam_systemClock),
    .io_cmosCam_verticalSync(cmosCamera_io_cmosCam_verticalSync),
    .io_cmosCam_horizontalRef(cmosCamera_io_cmosCam_horizontalRef),
    .io_cmosCam_pixelClock(cmosCamera_io_cmosCam_pixelClock),
    .io_cmosCam_pixcelData(cmosCamera_io_cmosCam_pixcelData),
    .io_cmosCam_sccb_clock(cmosCamera_io_cmosCam_sccb_clock),
    .io_cmosCam_sccb_data_O(cmosCamera_io_cmosCam_sccb_data_O),
    .io_cmosCam_sccb_data_T(cmosCamera_io_cmosCam_sccb_data_T),
    .io_vramClock(cmosCamera_io_vramClock),
    .io_vramWriteEnable(cmosCamera_io_vramWriteEnable),
    .io_vramAddr(cmosCamera_io_vramAddr),
    .io_vramData(cmosCamera_io_vramData),
    .io_sendData_ready(cmosCamera_io_sendData_ready),
    .io_sendData_valid(cmosCamera_io_sendData_valid),
    .io_sendData_bits_regAddr(cmosCamera_io_sendData_bits_regAddr),
    .io_sendData_bits_value(cmosCamera_io_sendData_bits_value)
  );
  Vram vram ( // @[CameraDisplay.scala 45:20:@579.4]
    .doutb(vram_doutb),
    .addrb(vram_addrb),
    .clkb(vram_clkb),
    .dina(vram_dina),
    .addra(vram_addra),
    .wea(vram_wea),
    .ena(vram_ena),
    .clka(vram_clka)
  );
  Debounce Debounce ( // @[Debounce.scala 26:26:@592.4]
    .clock(Debounce_clock),
    .reset(Debounce_reset),
    .io_in(Debounce_io_in),
    .io_out(Debounce_io_out)
  );
  Seg7LED seg7led ( // @[CameraDisplay.scala 50:23:@597.4]
    .clock(seg7led_clock),
    .reset(seg7led_reset),
    .io_digits_0(seg7led_io_digits_0),
    .io_digits_1(seg7led_io_digits_1),
    .io_digits_2(seg7led_io_digits_2),
    .io_digits_3(seg7led_io_digits_3),
    .io_seg7led_cathodes(seg7led_io_seg7led_cathodes),
    .io_seg7led_anodes(seg7led_io_seg7led_anodes)
  );
  IOBUF IOBUF ( // @[CMOSCamera.scala 20:23:@650.4]
    .T(IOBUF_T),
    .I(IOBUF_I),
    .O(IOBUF_O),
    .IO(io_cmosCam_sccb_ioBuf)
  );
  assign io_lcdSpi_serialClock = lcdDisplay_io_lcdSpi_serialClock; // @[CameraDisplay.scala 69:13:@643.4]
  assign io_lcdSpi_dataCommand = lcdDisplay_io_lcdSpi_dataCommand; // @[CameraDisplay.scala 69:13:@642.4]
  assign io_lcdSpi_chipSelectN = lcdDisplay_io_lcdSpi_chipSelectN; // @[CameraDisplay.scala 69:13:@641.4]
  assign io_lcdSpi_masterOutSlaveIn = lcdDisplay_io_lcdSpi_masterOutSlaveIn; // @[CameraDisplay.scala 69:13:@640.4]
  assign io_lcdSpi_resetN = lcdDisplay_io_lcdSpi_resetN; // @[CameraDisplay.scala 69:13:@638.4]
  assign io_lcdSpi_backLight = 1'h1; // @[CameraDisplay.scala 69:13:@637.4]
  assign io_cmosCam_systemClock = cmosCamera_io_cmosCam_systemClock; // @[CameraDisplay.scala 71:26:@644.4]
  assign io_cmosCam_sccb_clock = cmosCamera_io_cmosCam_sccb_clock; // @[CameraDisplay.scala 76:25:@649.4]
  assign io_cmosCam_resetN = 1'h1; // @[CameraDisplay.scala 78:21:@659.4]
  assign io_cmosCam_powerDown = 1'h0; // @[CameraDisplay.scala 79:24:@660.4]
  assign io_sendData_ready = cmosCamera_io_sendData_ready; // @[CameraDisplay.scala 48:26:@591.4]
  assign io_seg7led_cathodes = seg7led_io_seg7led_cathodes; // @[CameraDisplay.scala 57:14:@628.4]
  assign io_seg7led_decimalPoint = 1'h1; // @[CameraDisplay.scala 57:14:@627.4]
  assign io_seg7led_anodes = seg7led_io_seg7led_anodes; // @[CameraDisplay.scala 57:14:@626.4]
  assign lcdDisplay_clock = clock; // @[:@574.4]
  assign lcdDisplay_reset = reset; // @[:@575.4]
  assign lcdDisplay_io_vramData = vram_doutb; // @[CameraDisplay.scala 67:26:@636.4]
  assign cmosCamera_clock = clock; // @[:@577.4]
  assign cmosCamera_reset = reset; // @[:@578.4]
  assign cmosCamera_io_cmosCam_verticalSync = io_cmosCam_verticalSync; // @[CameraDisplay.scala 72:27:@645.4]
  assign cmosCamera_io_cmosCam_horizontalRef = io_cmosCam_horizontalRef; // @[CameraDisplay.scala 73:28:@646.4]
  assign cmosCamera_io_cmosCam_pixelClock = io_cmosCam_pixelClock; // @[CameraDisplay.scala 74:25:@647.4]
  assign cmosCamera_io_cmosCam_pixcelData = io_cmosCam_pixcelData; // @[CameraDisplay.scala 75:25:@648.4]
  assign cmosCamera_io_sendData_valid = Debounce_io_out; // @[CameraDisplay.scala 48:26:@590.4 CameraDisplay.scala 49:32:@596.4]
  assign cmosCamera_io_sendData_bits_regAddr = io_sendData_bits_regAddr; // @[CameraDisplay.scala 48:26:@589.4]
  assign cmosCamera_io_sendData_bits_value = io_sendData_bits_value; // @[CameraDisplay.scala 48:26:@588.4]
  assign vram_addrb = lcdDisplay_io_vramAddr; // @[CameraDisplay.scala 66:17:@635.4]
  assign vram_clkb = clock; // @[CameraDisplay.scala 65:16:@634.4]
  assign vram_dina = cmosCamera_io_vramData; // @[CameraDisplay.scala 63:16:@633.4]
  assign vram_addra = cmosCamera_io_vramAddr; // @[CameraDisplay.scala 62:17:@632.4]
  assign vram_wea = cmosCamera_io_vramWriteEnable; // @[CameraDisplay.scala 61:15:@631.4]
  assign vram_ena = 1'h1; // @[CameraDisplay.scala 60:15:@630.4]
  assign vram_clka = cmosCamera_io_vramClock; // @[CameraDisplay.scala 59:16:@629.4]
  assign Debounce_clock = clock; // @[:@593.4]
  assign Debounce_reset = reset; // @[:@594.4]
  assign Debounce_io_in = io_sendData_valid; // @[Debounce.scala 27:20:@595.4]
  assign seg7led_clock = clock; // @[:@598.4]
  assign seg7led_reset = reset; // @[:@599.4]
  assign seg7led_io_digits_0 = io_sendData_bits_value[3:0]; // @[CameraDisplay.scala 51:21:@609.4 CameraDisplay.scala 52:24:@618.4]
  assign seg7led_io_digits_1 = io_sendData_bits_value[7:4]; // @[CameraDisplay.scala 51:21:@610.4 CameraDisplay.scala 53:24:@620.4]
  assign seg7led_io_digits_2 = io_sendData_bits_regAddr[3:0]; // @[CameraDisplay.scala 51:21:@611.4 CameraDisplay.scala 54:24:@622.4]
  assign seg7led_io_digits_3 = io_sendData_bits_regAddr[7:4]; // @[CameraDisplay.scala 51:21:@612.4 CameraDisplay.scala 55:24:@624.4]
  assign IOBUF_T = cmosCamera_io_cmosCam_sccb_data_T; // @[CMOSCamera.scala 23:16:@657.4]
  assign IOBUF_O = cmosCamera_io_cmosCam_sccb_data_O; // @[CMOSCamera.scala 21:16:@655.4]
endmodule
