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
  output [16:0] io_vramAddr, // @[:@63.4]
  input  [15:0] io_vramData // @[:@63.4]
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
  reg  isLowByte; // @[LCDDisplay.scala 146:26:@178.4]
  reg [31:0] _RAND_2;
  wire  _T_192; // @[LCDDisplay.scala 147:37:@179.4]
  wire  _T_193; // @[LCDDisplay.scala 147:54:@180.4]
  wire  _T_194; // @[LCDDisplay.scala 147:86:@181.4]
  reg [16:0] value; // @[Counter.scala 26:33:@182.4]
  reg [31:0] _RAND_3;
  wire  _T_198; // @[Counter.scala 34:24:@184.6]
  wire [17:0] _T_200; // @[Counter.scala 35:22:@185.6]
  wire [16:0] _T_201; // @[Counter.scala 35:22:@186.6]
  wire [16:0] _GEN_0; // @[Counter.scala 37:21:@188.6]
  wire [16:0] _GEN_1; // @[Counter.scala 63:17:@183.4]
  wire [10:0] _T_206; // @[LCDDisplay.scala 150:75:@193.4]
  wire  _T_207; // @[LCDDisplay.scala 150:75:@194.4]
  reg  stateHoldCount; // @[LCDDisplay.scala 150:31:@195.4]
  reg [31:0] _RAND_4;
  wire  _T_211; // @[LCDDisplay.scala 152:15:@198.4]
  wire  _T_212; // @[LCDDisplay.scala 152:39:@199.4]
  wire  _T_213; // @[LCDDisplay.scala 152:30:@200.4]
  wire  _T_214; // @[LCDDisplay.scala 152:72:@201.4]
  wire  _T_215; // @[LCDDisplay.scala 152:63:@202.4]
  wire [1:0] _T_217; // @[LCDDisplay.scala 153:38:@204.6]
  wire [1:0] _T_218; // @[LCDDisplay.scala 153:38:@205.6]
  wire  _T_219; // @[LCDDisplay.scala 153:38:@206.6]
  wire  _T_221; // @[LCDDisplay.scala 154:35:@208.6]
  wire  _GEN_2; // @[LCDDisplay.scala 152:91:@203.4]
  wire  stateChange; // @[LCDDisplay.scala 152:91:@203.4]
  wire [2:0] _GEN_4; // @[LCDDisplay.scala 168:43:@228.10]
  wire [2:0] _GEN_5; // @[LCDDisplay.scala 161:49:@219.8]
  wire [19:0] _GEN_6; // @[LCDDisplay.scala 161:49:@219.8]
  wire [7:0] _GEN_7; // @[LCDDisplay.scala 161:49:@219.8]
  wire [2:0] _GEN_10; // @[LCDDisplay.scala 158:33:@213.6]
  wire [24:0] _GEN_11; // @[LCDDisplay.scala 158:33:@213.6]
  wire [7:0] _GEN_12; // @[LCDDisplay.scala 158:33:@213.6]
  wire  _GEN_14; // @[LCDDisplay.scala 158:33:@213.6]
  wire  _T_230; // @[LCDDisplay.scala 171:22:@233.6]
  wire  _T_232; // @[LCDDisplay.scala 173:28:@236.10]
  wire [5:0] _T_234; // @[:@238.12]
  wire [7:0] _GEN_18; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_19; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_20; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_21; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_22; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_23; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_24; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_25; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_26; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_27; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_28; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_29; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_30; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_31; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_32; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_33; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_34; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_35; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_36; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_37; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_38; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_39; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_40; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_41; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_42; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_43; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_44; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_45; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_46; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_47; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_48; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_49; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_50; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_51; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_52; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_53; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_54; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_55; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_56; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_57; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_58; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_59; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_60; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_61; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_62; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_63; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_64; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_65; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_66; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_67; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_68; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_69; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_70; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_71; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_72; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_73; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_74; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_75; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_76; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_77; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_78; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_79; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_80; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_81; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_82; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_83; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_84; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_85; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_86; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_87; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_88; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_89; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_90; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_91; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_92; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_93; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_94; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_95; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_96; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_97; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_98; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_99; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_100; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_101; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_102; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_103; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_104; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_105; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_106; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_107; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_108; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_109; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_110; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_111; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_112; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_113; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_114; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_115; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_116; // @[LCDDisplay.scala 174:37:@239.12]
  wire  _GEN_117; // @[LCDDisplay.scala 174:37:@239.12]
  wire [7:0] _GEN_118; // @[LCDDisplay.scala 174:37:@239.12]
  wire [8:0] _T_237; // @[LCDDisplay.scala 177:42:@242.12]
  wire [7:0] _T_238; // @[LCDDisplay.scala 177:42:@243.12]
  wire [7:0] _GEN_119; // @[LCDDisplay.scala 173:52:@237.10]
  wire  _GEN_120; // @[LCDDisplay.scala 173:52:@237.10]
  wire [7:0] _GEN_122; // @[LCDDisplay.scala 173:52:@237.10]
  wire [2:0] _GEN_123; // @[LCDDisplay.scala 173:52:@237.10]
  wire [7:0] _GEN_124; // @[LCDDisplay.scala 172:41:@235.8]
  wire  _GEN_125; // @[LCDDisplay.scala 172:41:@235.8]
  wire  _GEN_126; // @[LCDDisplay.scala 172:41:@235.8]
  wire [7:0] _GEN_127; // @[LCDDisplay.scala 172:41:@235.8]
  wire [2:0] _GEN_128; // @[LCDDisplay.scala 172:41:@235.8]
  wire  _T_240; // @[LCDDisplay.scala 184:20:@255.12]
  wire [2:0] _T_241; // @[LCDDisplay.scala 186:24:@257.12]
  wire [4:0] _T_242; // @[LCDDisplay.scala 186:43:@258.12]
  wire [7:0] _T_243; // @[Cat.scala 30:58:@259.12]
  wire [4:0] _T_244; // @[LCDDisplay.scala 187:24:@260.12]
  wire [2:0] _T_245; // @[LCDDisplay.scala 187:43:@261.12]
  wire [7:0] _T_246; // @[Cat.scala 30:58:@262.12]
  wire [7:0] _T_247; // @[LCDDisplay.scala 185:47:@263.12]
  wire  _GEN_129; // @[LCDDisplay.scala 183:41:@254.10]
  wire [7:0] _GEN_130; // @[LCDDisplay.scala 183:41:@254.10]
  wire  _GEN_131; // @[LCDDisplay.scala 183:41:@254.10]
  wire  _GEN_132; // @[LCDDisplay.scala 182:40:@253.8]
  wire [7:0] _GEN_133; // @[LCDDisplay.scala 182:40:@253.8]
  wire  _GEN_134; // @[LCDDisplay.scala 182:40:@253.8]
  wire [7:0] _GEN_135; // @[LCDDisplay.scala 171:41:@234.6]
  wire  _GEN_136; // @[LCDDisplay.scala 171:41:@234.6]
  wire  _GEN_137; // @[LCDDisplay.scala 171:41:@234.6]
  wire [7:0] _GEN_138; // @[LCDDisplay.scala 171:41:@234.6]
  wire [2:0] _GEN_139; // @[LCDDisplay.scala 171:41:@234.6]
  wire  _GEN_140; // @[LCDDisplay.scala 171:41:@234.6]
  wire [2:0] _GEN_141; // @[LCDDisplay.scala 157:22:@211.4]
  wire [24:0] _GEN_142; // @[LCDDisplay.scala 157:22:@211.4]
  wire [7:0] _GEN_146; // @[LCDDisplay.scala 157:22:@211.4]
  wire  _GEN_147; // @[LCDDisplay.scala 157:22:@211.4]
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
  assign _T_192 = state == 3'h4; // @[LCDDisplay.scala 147:37:@179.4]
  assign _T_193 = _T_192 & ili9341Spi_io_sendData_ready; // @[LCDDisplay.scala 147:54:@180.4]
  assign _T_194 = _T_193 & isLowByte; // @[LCDDisplay.scala 147:86:@181.4]
  assign _T_198 = value == 17'h12bff; // @[Counter.scala 34:24:@184.6]
  assign _T_200 = value + 17'h1; // @[Counter.scala 35:22:@185.6]
  assign _T_201 = value + 17'h1; // @[Counter.scala 35:22:@186.6]
  assign _GEN_0 = _T_198 ? 17'h0 : _T_201; // @[Counter.scala 37:21:@188.6]
  assign _GEN_1 = _T_194 ? _GEN_0 : value; // @[Counter.scala 63:17:@183.4]
  assign _T_206 = 11'h7d0 >> 5'h18; // @[LCDDisplay.scala 150:75:@193.4]
  assign _T_207 = _T_206[0]; // @[LCDDisplay.scala 150:75:@194.4]
  assign _T_211 = state == 3'h0; // @[LCDDisplay.scala 152:15:@198.4]
  assign _T_212 = state == 3'h1; // @[LCDDisplay.scala 152:39:@199.4]
  assign _T_213 = _T_211 | _T_212; // @[LCDDisplay.scala 152:30:@200.4]
  assign _T_214 = state == 3'h2; // @[LCDDisplay.scala 152:72:@201.4]
  assign _T_215 = _T_213 | _T_214; // @[LCDDisplay.scala 152:63:@202.4]
  assign _T_217 = stateHoldCount - 1'h1; // @[LCDDisplay.scala 153:38:@204.6]
  assign _T_218 = $unsigned(_T_217); // @[LCDDisplay.scala 153:38:@205.6]
  assign _T_219 = _T_218[0:0]; // @[LCDDisplay.scala 153:38:@206.6]
  assign _T_221 = stateHoldCount == 1'h0; // @[LCDDisplay.scala 154:35:@208.6]
  assign _GEN_2 = _T_215 ? _T_219 : stateHoldCount; // @[LCDDisplay.scala 152:91:@203.4]
  assign stateChange = _T_215 ? _T_221 : 1'h0; // @[LCDDisplay.scala 152:91:@203.4]
  assign _GEN_4 = _T_214 ? 3'h3 : state; // @[LCDDisplay.scala 168:43:@228.10]
  assign _GEN_5 = _T_212 ? 3'h2 : _GEN_4; // @[LCDDisplay.scala 161:49:@219.8]
  assign _GEN_6 = _T_212 ? 20'hf4240 : {{19'd0}, _GEN_2}; // @[LCDDisplay.scala 161:49:@219.8]
  assign _GEN_7 = _T_212 ? 8'h11 : 8'h0; // @[LCDDisplay.scala 161:49:@219.8]
  assign _GEN_10 = _T_211 ? 3'h1 : _GEN_5; // @[LCDDisplay.scala 158:33:@213.6]
  assign _GEN_11 = _T_211 ? 25'h1312d00 : {{5'd0}, _GEN_6}; // @[LCDDisplay.scala 158:33:@213.6]
  assign _GEN_12 = _T_211 ? 8'h0 : _GEN_7; // @[LCDDisplay.scala 158:33:@213.6]
  assign _GEN_14 = _T_211 ? 1'h0 : _T_212; // @[LCDDisplay.scala 158:33:@213.6]
  assign _T_230 = state == 3'h3; // @[LCDDisplay.scala 171:22:@233.6]
  assign _T_232 = programCounter < 8'h34; // @[LCDDisplay.scala 173:28:@236.10]
  assign _T_234 = programCounter[5:0]; // @[:@238.12]
  assign _GEN_18 = 6'h1 == _T_234 ? 8'hcb : 8'h28; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_19 = 6'h2 == _T_234; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_20 = 6'h2 == _T_234 ? 8'h39 : _GEN_18; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_21 = 6'h3 == _T_234 ? 1'h1 : _GEN_19; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_22 = 6'h3 == _T_234 ? 8'h2c : _GEN_20; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_23 = 6'h4 == _T_234 ? 1'h1 : _GEN_21; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_24 = 6'h4 == _T_234 ? 8'h0 : _GEN_22; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_25 = 6'h5 == _T_234 ? 1'h1 : _GEN_23; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_26 = 6'h5 == _T_234 ? 8'h34 : _GEN_24; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_27 = 6'h6 == _T_234 ? 1'h1 : _GEN_25; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_28 = 6'h6 == _T_234 ? 8'h2 : _GEN_26; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_29 = 6'h7 == _T_234 ? 1'h0 : _GEN_27; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_30 = 6'h7 == _T_234 ? 8'hcf : _GEN_28; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_31 = 6'h8 == _T_234 ? 1'h1 : _GEN_29; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_32 = 6'h8 == _T_234 ? 8'h0 : _GEN_30; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_33 = 6'h9 == _T_234 ? 1'h1 : _GEN_31; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_34 = 6'h9 == _T_234 ? 8'h81 : _GEN_32; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_35 = 6'ha == _T_234 ? 1'h1 : _GEN_33; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_36 = 6'ha == _T_234 ? 8'h30 : _GEN_34; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_37 = 6'hb == _T_234 ? 1'h0 : _GEN_35; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_38 = 6'hb == _T_234 ? 8'hed : _GEN_36; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_39 = 6'hc == _T_234 ? 1'h1 : _GEN_37; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_40 = 6'hc == _T_234 ? 8'h64 : _GEN_38; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_41 = 6'hd == _T_234 ? 1'h1 : _GEN_39; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_42 = 6'hd == _T_234 ? 8'h3 : _GEN_40; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_43 = 6'he == _T_234 ? 1'h1 : _GEN_41; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_44 = 6'he == _T_234 ? 8'h12 : _GEN_42; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_45 = 6'hf == _T_234 ? 1'h1 : _GEN_43; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_46 = 6'hf == _T_234 ? 8'h81 : _GEN_44; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_47 = 6'h10 == _T_234 ? 1'h0 : _GEN_45; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_48 = 6'h10 == _T_234 ? 8'he8 : _GEN_46; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_49 = 6'h11 == _T_234 ? 1'h1 : _GEN_47; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_50 = 6'h11 == _T_234 ? 8'h84 : _GEN_48; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_51 = 6'h12 == _T_234 ? 1'h1 : _GEN_49; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_52 = 6'h12 == _T_234 ? 8'h11 : _GEN_50; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_53 = 6'h13 == _T_234 ? 1'h1 : _GEN_51; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_54 = 6'h13 == _T_234 ? 8'h7a : _GEN_52; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_55 = 6'h14 == _T_234 ? 1'h0 : _GEN_53; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_56 = 6'h14 == _T_234 ? 8'hea : _GEN_54; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_57 = 6'h15 == _T_234 ? 1'h1 : _GEN_55; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_58 = 6'h15 == _T_234 ? 8'h66 : _GEN_56; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_59 = 6'h16 == _T_234 ? 1'h1 : _GEN_57; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_60 = 6'h16 == _T_234 ? 8'h0 : _GEN_58; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_61 = 6'h17 == _T_234 ? 1'h0 : _GEN_59; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_62 = 6'h17 == _T_234 ? 8'hf7 : _GEN_60; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_63 = 6'h18 == _T_234 ? 1'h1 : _GEN_61; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_64 = 6'h18 == _T_234 ? 8'h20 : _GEN_62; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_65 = 6'h19 == _T_234 ? 1'h0 : _GEN_63; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_66 = 6'h19 == _T_234 ? 8'hc0 : _GEN_64; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_67 = 6'h1a == _T_234 ? 1'h1 : _GEN_65; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_68 = 6'h1a == _T_234 ? 8'h21 : _GEN_66; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_69 = 6'h1b == _T_234 ? 1'h0 : _GEN_67; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_70 = 6'h1b == _T_234 ? 8'hc1 : _GEN_68; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_71 = 6'h1c == _T_234 ? 1'h1 : _GEN_69; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_72 = 6'h1c == _T_234 ? 8'h10 : _GEN_70; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_73 = 6'h1d == _T_234 ? 1'h0 : _GEN_71; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_74 = 6'h1d == _T_234 ? 8'hc5 : _GEN_72; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_75 = 6'h1e == _T_234 ? 1'h1 : _GEN_73; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_76 = 6'h1e == _T_234 ? 8'h31 : _GEN_74; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_77 = 6'h1f == _T_234 ? 1'h1 : _GEN_75; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_78 = 6'h1f == _T_234 ? 8'h3c : _GEN_76; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_79 = 6'h20 == _T_234 ? 1'h0 : _GEN_77; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_80 = 6'h20 == _T_234 ? 8'hc7 : _GEN_78; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_81 = 6'h21 == _T_234 ? 1'h1 : _GEN_79; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_82 = 6'h21 == _T_234 ? 8'hc0 : _GEN_80; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_83 = 6'h22 == _T_234 ? 1'h0 : _GEN_81; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_84 = 6'h22 == _T_234 ? 8'h3a : _GEN_82; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_85 = 6'h23 == _T_234 ? 1'h1 : _GEN_83; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_86 = 6'h23 == _T_234 ? 8'h55 : _GEN_84; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_87 = 6'h24 == _T_234 ? 1'h0 : _GEN_85; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_88 = 6'h24 == _T_234 ? 8'hb1 : _GEN_86; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_89 = 6'h25 == _T_234 ? 1'h1 : _GEN_87; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_90 = 6'h25 == _T_234 ? 8'h0 : _GEN_88; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_91 = 6'h26 == _T_234 ? 1'h1 : _GEN_89; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_92 = 6'h26 == _T_234 ? 8'h1b : _GEN_90; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_93 = 6'h27 == _T_234 ? 1'h0 : _GEN_91; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_94 = 6'h27 == _T_234 ? 8'h51 : _GEN_92; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_95 = 6'h28 == _T_234 ? 1'h1 : _GEN_93; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_96 = 6'h28 == _T_234 ? 8'hff : _GEN_94; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_97 = 6'h29 == _T_234 ? 1'h0 : _GEN_95; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_98 = 6'h29 == _T_234 ? 8'h26 : _GEN_96; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_99 = 6'h2a == _T_234 ? 1'h1 : _GEN_97; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_100 = 6'h2a == _T_234 ? 8'h1 : _GEN_98; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_101 = 6'h2b == _T_234 ? 1'h0 : _GEN_99; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_102 = 6'h2b == _T_234 ? 8'hb7 : _GEN_100; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_103 = 6'h2c == _T_234 ? 1'h1 : _GEN_101; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_104 = 6'h2c == _T_234 ? 8'h6 : _GEN_102; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_105 = 6'h2d == _T_234 ? 1'h0 : _GEN_103; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_106 = 6'h2d == _T_234 ? 8'hb6 : _GEN_104; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_107 = 6'h2e == _T_234 ? 1'h1 : _GEN_105; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_108 = 6'h2e == _T_234 ? 8'ha : _GEN_106; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_109 = 6'h2f == _T_234 ? 1'h1 : _GEN_107; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_110 = 6'h2f == _T_234 ? 8'h82 : _GEN_108; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_111 = 6'h30 == _T_234 ? 1'h1 : _GEN_109; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_112 = 6'h30 == _T_234 ? 8'h27 : _GEN_110; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_113 = 6'h31 == _T_234 ? 1'h1 : _GEN_111; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_114 = 6'h31 == _T_234 ? 8'h0 : _GEN_112; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_115 = 6'h32 == _T_234 ? 1'h0 : _GEN_113; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_116 = 6'h32 == _T_234 ? 8'h29 : _GEN_114; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_117 = 6'h33 == _T_234 ? 1'h0 : _GEN_115; // @[LCDDisplay.scala 174:37:@239.12]
  assign _GEN_118 = 6'h33 == _T_234 ? 8'h2c : _GEN_116; // @[LCDDisplay.scala 174:37:@239.12]
  assign _T_237 = programCounter + 8'h1; // @[LCDDisplay.scala 177:42:@242.12]
  assign _T_238 = programCounter + 8'h1; // @[LCDDisplay.scala 177:42:@243.12]
  assign _GEN_119 = _T_232 ? _GEN_118 : 8'h0; // @[LCDDisplay.scala 173:52:@237.10]
  assign _GEN_120 = _T_232 ? _GEN_117 : 1'h0; // @[LCDDisplay.scala 173:52:@237.10]
  assign _GEN_122 = _T_232 ? _T_238 : programCounter; // @[LCDDisplay.scala 173:52:@237.10]
  assign _GEN_123 = _T_232 ? state : 3'h4; // @[LCDDisplay.scala 173:52:@237.10]
  assign _GEN_124 = ili9341Spi_io_sendData_ready ? _GEN_119 : 8'h0; // @[LCDDisplay.scala 172:41:@235.8]
  assign _GEN_125 = ili9341Spi_io_sendData_ready ? _GEN_120 : 1'h0; // @[LCDDisplay.scala 172:41:@235.8]
  assign _GEN_126 = ili9341Spi_io_sendData_ready ? _T_232 : 1'h0; // @[LCDDisplay.scala 172:41:@235.8]
  assign _GEN_127 = ili9341Spi_io_sendData_ready ? _GEN_122 : programCounter; // @[LCDDisplay.scala 172:41:@235.8]
  assign _GEN_128 = ili9341Spi_io_sendData_ready ? _GEN_123 : state; // @[LCDDisplay.scala 172:41:@235.8]
  assign _T_240 = ~ isLowByte; // @[LCDDisplay.scala 184:20:@255.12]
  assign _T_241 = io_vramData[7:5]; // @[LCDDisplay.scala 186:24:@257.12]
  assign _T_242 = io_vramData[15:11]; // @[LCDDisplay.scala 186:43:@258.12]
  assign _T_243 = {_T_241,_T_242}; // @[Cat.scala 30:58:@259.12]
  assign _T_244 = io_vramData[4:0]; // @[LCDDisplay.scala 187:24:@260.12]
  assign _T_245 = io_vramData[10:8]; // @[LCDDisplay.scala 187:43:@261.12]
  assign _T_246 = {_T_244,_T_245}; // @[Cat.scala 30:58:@262.12]
  assign _T_247 = isLowByte ? _T_243 : _T_246; // @[LCDDisplay.scala 185:47:@263.12]
  assign _GEN_129 = ili9341Spi_io_sendData_ready ? _T_240 : isLowByte; // @[LCDDisplay.scala 183:41:@254.10]
  assign _GEN_130 = ili9341Spi_io_sendData_ready ? _T_247 : 8'h0; // @[LCDDisplay.scala 183:41:@254.10]
  assign _GEN_131 = ili9341Spi_io_sendData_ready; // @[LCDDisplay.scala 183:41:@254.10]
  assign _GEN_132 = _T_192 ? _GEN_129 : isLowByte; // @[LCDDisplay.scala 182:40:@253.8]
  assign _GEN_133 = _T_192 ? _GEN_130 : 8'h0; // @[LCDDisplay.scala 182:40:@253.8]
  assign _GEN_134 = _T_192 ? _GEN_131 : 1'h0; // @[LCDDisplay.scala 182:40:@253.8]
  assign _GEN_135 = _T_230 ? _GEN_124 : _GEN_133; // @[LCDDisplay.scala 171:41:@234.6]
  assign _GEN_136 = _T_230 ? _GEN_125 : _GEN_134; // @[LCDDisplay.scala 171:41:@234.6]
  assign _GEN_137 = _T_230 ? _GEN_126 : _GEN_134; // @[LCDDisplay.scala 171:41:@234.6]
  assign _GEN_138 = _T_230 ? _GEN_127 : programCounter; // @[LCDDisplay.scala 171:41:@234.6]
  assign _GEN_139 = _T_230 ? _GEN_128 : state; // @[LCDDisplay.scala 171:41:@234.6]
  assign _GEN_140 = _T_230 ? isLowByte : _GEN_132; // @[LCDDisplay.scala 171:41:@234.6]
  assign _GEN_141 = stateChange ? _GEN_10 : _GEN_139; // @[LCDDisplay.scala 157:22:@211.4]
  assign _GEN_142 = stateChange ? _GEN_11 : {{24'd0}, _GEN_2}; // @[LCDDisplay.scala 157:22:@211.4]
  assign _GEN_146 = stateChange ? programCounter : _GEN_138; // @[LCDDisplay.scala 157:22:@211.4]
  assign _GEN_147 = stateChange ? isLowByte : _GEN_140; // @[LCDDisplay.scala 157:22:@211.4]
  assign io_lcdSpi_serialClock = ili9341Spi_io_lcdSpi_serialClock; // @[LCDDisplay.scala 193:13:@275.4]
  assign io_lcdSpi_dataCommand = ili9341Spi_io_lcdSpi_dataCommand; // @[LCDDisplay.scala 193:13:@274.4]
  assign io_lcdSpi_chipSelectN = ili9341Spi_io_lcdSpi_chipSelectN; // @[LCDDisplay.scala 193:13:@273.4]
  assign io_lcdSpi_masterOutSlaveIn = ili9341Spi_io_lcdSpi_masterOutSlaveIn; // @[LCDDisplay.scala 193:13:@272.4]
  assign io_lcdSpi_resetN = _T_211 ? 1'h0 : 1'h1; // @[LCDDisplay.scala 193:13:@270.4 LCDDisplay.scala 195:22:@278.6]
  assign io_vramAddr = value; // @[LCDDisplay.scala 197:15:@280.4]
  assign ili9341Spi_clock = clock; // @[:@172.4]
  assign ili9341Spi_reset = reset; // @[:@173.4]
  assign ili9341Spi_io_sendData_valid = stateChange ? _GEN_14 : _GEN_137; // @[LCDDisplay.scala 143:32:@176.4 LCDDisplay.scala 167:36:@224.10 LCDDisplay.scala 175:38:@241.12 LCDDisplay.scala 189:36:@266.12]
  assign ili9341Spi_io_sendData_bits_isData = stateChange ? 1'h0 : _GEN_136; // @[LCDDisplay.scala 141:38:@174.4 LCDDisplay.scala 166:42:@223.10 LCDDisplay.scala 174:37:@240.12 LCDDisplay.scala 188:42:@265.12]
  assign ili9341Spi_io_sendData_bits_value = stateChange ? _GEN_12 : _GEN_135; // @[LCDDisplay.scala 142:37:@175.4 LCDDisplay.scala 165:41:@222.10 LCDDisplay.scala 174:37:@239.12 LCDDisplay.scala 185:41:@264.12]
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
  isLowByte = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  value = _RAND_3[16:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  stateHoldCount = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (stateChange) begin
        if (_T_211) begin
          state <= 3'h1;
        end else begin
          if (_T_212) begin
            state <= 3'h2;
          end else begin
            if (_T_214) begin
              state <= 3'h3;
            end
          end
        end
      end else begin
        if (_T_230) begin
          if (ili9341Spi_io_sendData_ready) begin
            if (!(_T_232)) begin
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
        if (_T_230) begin
          if (ili9341Spi_io_sendData_ready) begin
            if (_T_232) begin
              programCounter <= _T_238;
            end
          end
        end
      end
    end
    if (reset) begin
      isLowByte <= 1'h0;
    end else begin
      if (!(stateChange)) begin
        if (!(_T_230)) begin
          if (_T_192) begin
            if (ili9341Spi_io_sendData_ready) begin
              isLowByte <= _T_240;
            end
          end
        end
      end
    end
    if (reset) begin
      value <= 17'h0;
    end else begin
      if (_T_194) begin
        if (_T_198) begin
          value <= 17'h0;
        end else begin
          value <= _T_201;
        end
      end
    end
    if (reset) begin
      stateHoldCount <= _T_207;
    end else begin
      stateHoldCount <= _GEN_142[0];
    end
  end
endmodule
module Ov7670sccb( // @[:@282.2]
  input        clock, // @[:@283.4]
  input        reset, // @[:@284.4]
  output       io_sccb_clock, // @[:@285.4]
  output       io_sccb_data_I, // @[:@285.4]
  output       io_sccb_data_T, // @[:@285.4]
  output       io_sendData_ready, // @[:@285.4]
  input        io_sendData_valid, // @[:@285.4]
  input  [7:0] io_sendData_bits_regAddr, // @[:@285.4]
  input  [7:0] io_sendData_bits_value // @[:@285.4]
);
  reg [2:0] state; // @[CMOSCamera.scala 142:22:@287.4]
  reg [31:0] _RAND_0;
  wire  _T_26; // @[CMOSCamera.scala 144:45:@288.4]
  reg [8:0] value; // @[Counter.scala 26:33:@289.4]
  reg [31:0] _RAND_1;
  wire  _T_30; // @[Counter.scala 34:24:@291.6]
  wire [9:0] _T_32; // @[Counter.scala 35:22:@292.6]
  wire [8:0] _T_33; // @[Counter.scala 35:22:@293.6]
  wire [8:0] _GEN_0; // @[Counter.scala 37:21:@295.6]
  wire [8:0] _GEN_1; // @[Counter.scala 63:17:@290.4]
  wire  clockPhaseChange; // @[Counter.scala 64:20:@299.4]
  reg [1:0] value_1; // @[Counter.scala 26:33:@300.4]
  reg [31:0] _RAND_2;
  wire  _T_38; // @[Counter.scala 34:24:@302.6]
  wire [2:0] _T_40; // @[Counter.scala 35:22:@303.6]
  wire [1:0] _T_41; // @[Counter.scala 35:22:@304.6]
  wire [1:0] _GEN_2; // @[Counter.scala 63:17:@301.4]
  wire  stateChange; // @[Counter.scala 64:20:@307.4]
  reg [26:0] highImpedanceTiming; // @[CMOSCamera.scala 150:32:@308.4]
  reg [31:0] _RAND_3;
  reg [26:0] sendData; // @[CMOSCamera.scala 151:21:@309.4]
  reg [31:0] _RAND_4;
  wire  _T_44; // @[CMOSCamera.scala 152:37:@310.4]
  wire  _T_45; // @[CMOSCamera.scala 152:51:@311.4]
  reg [4:0] value_2; // @[Counter.scala 26:33:@312.4]
  reg [31:0] _RAND_5;
  wire  _T_49; // @[Counter.scala 34:24:@314.6]
  wire [5:0] _T_51; // @[Counter.scala 35:22:@315.6]
  wire [4:0] _T_52; // @[Counter.scala 35:22:@316.6]
  wire [4:0] _GEN_3; // @[Counter.scala 37:21:@318.6]
  wire [4:0] _GEN_4; // @[Counter.scala 63:17:@313.4]
  wire  sendDone; // @[Counter.scala 64:20:@322.4]
  wire  _T_54; // @[CMOSCamera.scala 153:37:@323.4]
  wire  _T_55; // @[CMOSCamera.scala 153:51:@324.4]
  reg [3:0] value_3; // @[Counter.scala 26:33:@325.4]
  reg [31:0] _RAND_6;
  wire  _T_59; // @[Counter.scala 34:24:@327.6]
  wire [4:0] _T_61; // @[Counter.scala 35:22:@328.6]
  wire [3:0] _T_62; // @[Counter.scala 35:22:@329.6]
  wire [3:0] _GEN_5; // @[Counter.scala 37:21:@331.6]
  wire [3:0] _GEN_6; // @[Counter.scala 63:17:@326.4]
  wire  waitDone; // @[Counter.scala 64:20:@335.4]
  wire  _T_64; // @[CMOSCamera.scala 156:15:@336.4]
  wire  _T_65; // @[CMOSCamera.scala 156:29:@337.4]
  wire [26:0] _T_73; // @[Cat.scala 30:58:@344.6]
  wire  _T_75; // @[CMOSCamera.scala 161:17:@350.8]
  wire [27:0] _GEN_31; // @[CMOSCamera.scala 164:28:@357.12]
  wire [27:0] _T_78; // @[CMOSCamera.scala 164:28:@357.12]
  wire [27:0] _GEN_32; // @[CMOSCamera.scala 165:50:@359.12]
  wire [27:0] _T_80; // @[CMOSCamera.scala 165:50:@359.12]
  wire [2:0] _GEN_7; // @[CMOSCamera.scala 166:23:@361.12]
  wire  _T_81; // @[CMOSCamera.scala 169:23:@366.12]
  wire [2:0] _GEN_8; // @[CMOSCamera.scala 171:27:@371.14]
  wire [2:0] _GEN_9; // @[CMOSCamera.scala 169:41:@367.12]
  wire [27:0] _GEN_10; // @[CMOSCamera.scala 163:38:@356.10]
  wire [27:0] _GEN_11; // @[CMOSCamera.scala 163:38:@356.10]
  wire [2:0] _GEN_12; // @[CMOSCamera.scala 163:38:@356.10]
  wire [2:0] _GEN_13; // @[CMOSCamera.scala 161:36:@351.8]
  wire [27:0] _GEN_14; // @[CMOSCamera.scala 161:36:@351.8]
  wire [27:0] _GEN_15; // @[CMOSCamera.scala 161:36:@351.8]
  wire [2:0] _GEN_16; // @[CMOSCamera.scala 160:29:@349.6]
  wire [27:0] _GEN_17; // @[CMOSCamera.scala 160:29:@349.6]
  wire [27:0] _GEN_18; // @[CMOSCamera.scala 160:29:@349.6]
  wire [2:0] _GEN_19; // @[CMOSCamera.scala 156:51:@338.4]
  wire [27:0] _GEN_20; // @[CMOSCamera.scala 156:51:@338.4]
  wire [27:0] _GEN_21; // @[CMOSCamera.scala 156:51:@338.4]
  wire  _T_87; // @[CMOSCamera.scala 182:38:@380.6]
  wire  _T_92; // @[CMOSCamera.scala 186:38:@388.8]
  wire  _T_94; // @[CMOSCamera.scala 186:65:@389.8]
  wire  _T_95; // @[CMOSCamera.scala 186:46:@390.8]
  wire  _T_96; // @[CMOSCamera.scala 187:31:@392.8]
  wire  _T_97; // @[CMOSCamera.scala 188:42:@394.8]
  wire  _T_100; // @[CMOSCamera.scala 190:38:@400.10]
  wire  _GEN_22; // @[CMOSCamera.scala 189:40:@399.8]
  wire  _GEN_23; // @[CMOSCamera.scala 189:40:@399.8]
  wire  _GEN_25; // @[CMOSCamera.scala 185:37:@387.6]
  wire  _GEN_26; // @[CMOSCamera.scala 185:37:@387.6]
  wire  _GEN_27; // @[CMOSCamera.scala 185:37:@387.6]
  assign _T_26 = state != 3'h0; // @[CMOSCamera.scala 144:45:@288.4]
  assign _T_30 = value == 9'h1f3; // @[Counter.scala 34:24:@291.6]
  assign _T_32 = value + 9'h1; // @[Counter.scala 35:22:@292.6]
  assign _T_33 = value + 9'h1; // @[Counter.scala 35:22:@293.6]
  assign _GEN_0 = _T_30 ? 9'h0 : _T_33; // @[Counter.scala 37:21:@295.6]
  assign _GEN_1 = _T_26 ? _GEN_0 : value; // @[Counter.scala 63:17:@290.4]
  assign clockPhaseChange = _T_26 & _T_30; // @[Counter.scala 64:20:@299.4]
  assign _T_38 = value_1 == 2'h3; // @[Counter.scala 34:24:@302.6]
  assign _T_40 = value_1 + 2'h1; // @[Counter.scala 35:22:@303.6]
  assign _T_41 = value_1 + 2'h1; // @[Counter.scala 35:22:@304.6]
  assign _GEN_2 = clockPhaseChange ? _T_41 : value_1; // @[Counter.scala 63:17:@301.4]
  assign stateChange = clockPhaseChange & _T_38; // @[Counter.scala 64:20:@307.4]
  assign _T_44 = state == 3'h2; // @[CMOSCamera.scala 152:37:@310.4]
  assign _T_45 = _T_44 & stateChange; // @[CMOSCamera.scala 152:51:@311.4]
  assign _T_49 = value_2 == 5'h1a; // @[Counter.scala 34:24:@314.6]
  assign _T_51 = value_2 + 5'h1; // @[Counter.scala 35:22:@315.6]
  assign _T_52 = value_2 + 5'h1; // @[Counter.scala 35:22:@316.6]
  assign _GEN_3 = _T_49 ? 5'h0 : _T_52; // @[Counter.scala 37:21:@318.6]
  assign _GEN_4 = _T_45 ? _GEN_3 : value_2; // @[Counter.scala 63:17:@313.4]
  assign sendDone = _T_45 & _T_49; // @[Counter.scala 64:20:@322.4]
  assign _T_54 = state == 3'h4; // @[CMOSCamera.scala 153:37:@323.4]
  assign _T_55 = _T_54 & stateChange; // @[CMOSCamera.scala 153:51:@324.4]
  assign _T_59 = value_3 == 4'h9; // @[Counter.scala 34:24:@327.6]
  assign _T_61 = value_3 + 4'h1; // @[Counter.scala 35:22:@328.6]
  assign _T_62 = value_3 + 4'h1; // @[Counter.scala 35:22:@329.6]
  assign _GEN_5 = _T_59 ? 4'h0 : _T_62; // @[Counter.scala 37:21:@331.6]
  assign _GEN_6 = _T_55 ? _GEN_5 : value_3; // @[Counter.scala 63:17:@326.4]
  assign waitDone = _T_55 & _T_59; // @[Counter.scala 64:20:@335.4]
  assign _T_64 = state == 3'h0; // @[CMOSCamera.scala 156:15:@336.4]
  assign _T_65 = _T_64 & io_sendData_valid; // @[CMOSCamera.scala 156:29:@337.4]
  assign _T_73 = {9'h84,io_sendData_bits_regAddr,1'h0,io_sendData_bits_value,1'h0}; // @[Cat.scala 30:58:@344.6]
  assign _T_75 = state == 3'h1; // @[CMOSCamera.scala 161:17:@350.8]
  assign _GEN_31 = {{1'd0}, sendData}; // @[CMOSCamera.scala 164:28:@357.12]
  assign _T_78 = _GEN_31 << 1'h1; // @[CMOSCamera.scala 164:28:@357.12]
  assign _GEN_32 = {{1'd0}, highImpedanceTiming}; // @[CMOSCamera.scala 165:50:@359.12]
  assign _T_80 = _GEN_32 << 1'h1; // @[CMOSCamera.scala 165:50:@359.12]
  assign _GEN_7 = sendDone ? 3'h3 : state; // @[CMOSCamera.scala 166:23:@361.12]
  assign _T_81 = state == 3'h3; // @[CMOSCamera.scala 169:23:@366.12]
  assign _GEN_8 = waitDone ? 3'h0 : state; // @[CMOSCamera.scala 171:27:@371.14]
  assign _GEN_9 = _T_81 ? 3'h4 : _GEN_8; // @[CMOSCamera.scala 169:41:@367.12]
  assign _GEN_10 = _T_44 ? _T_78 : {{1'd0}, sendData}; // @[CMOSCamera.scala 163:38:@356.10]
  assign _GEN_11 = _T_44 ? _T_80 : {{1'd0}, highImpedanceTiming}; // @[CMOSCamera.scala 163:38:@356.10]
  assign _GEN_12 = _T_44 ? _GEN_7 : _GEN_9; // @[CMOSCamera.scala 163:38:@356.10]
  assign _GEN_13 = _T_75 ? 3'h2 : _GEN_12; // @[CMOSCamera.scala 161:36:@351.8]
  assign _GEN_14 = _T_75 ? {{1'd0}, sendData} : _GEN_10; // @[CMOSCamera.scala 161:36:@351.8]
  assign _GEN_15 = _T_75 ? {{1'd0}, highImpedanceTiming} : _GEN_11; // @[CMOSCamera.scala 161:36:@351.8]
  assign _GEN_16 = stateChange ? _GEN_13 : state; // @[CMOSCamera.scala 160:29:@349.6]
  assign _GEN_17 = stateChange ? _GEN_14 : {{1'd0}, sendData}; // @[CMOSCamera.scala 160:29:@349.6]
  assign _GEN_18 = stateChange ? _GEN_15 : {{1'd0}, highImpedanceTiming}; // @[CMOSCamera.scala 160:29:@349.6]
  assign _GEN_19 = _T_65 ? 3'h1 : _GEN_16; // @[CMOSCamera.scala 156:51:@338.4]
  assign _GEN_20 = _T_65 ? {{1'd0}, _T_73} : _GEN_17; // @[CMOSCamera.scala 156:51:@338.4]
  assign _GEN_21 = _T_65 ? 28'h40201 : _GEN_18; // @[CMOSCamera.scala 156:51:@338.4]
  assign _T_87 = value_1 != 2'h3; // @[CMOSCamera.scala 182:38:@380.6]
  assign _T_92 = value_1 == 2'h1; // @[CMOSCamera.scala 186:38:@388.8]
  assign _T_94 = value_1 == 2'h2; // @[CMOSCamera.scala 186:65:@389.8]
  assign _T_95 = _T_92 | _T_94; // @[CMOSCamera.scala 186:46:@390.8]
  assign _T_96 = sendData[26]; // @[CMOSCamera.scala 187:31:@392.8]
  assign _T_97 = highImpedanceTiming[26]; // @[CMOSCamera.scala 188:42:@394.8]
  assign _T_100 = value_1 != 2'h0; // @[CMOSCamera.scala 190:38:@400.10]
  assign _GEN_22 = _T_81 ? _T_100 : 1'h1; // @[CMOSCamera.scala 189:40:@399.8]
  assign _GEN_23 = _T_81 ? 1'h0 : 1'h1; // @[CMOSCamera.scala 189:40:@399.8]
  assign _GEN_25 = _T_44 ? _T_95 : _GEN_22; // @[CMOSCamera.scala 185:37:@387.6]
  assign _GEN_26 = _T_44 ? _T_96 : _GEN_23; // @[CMOSCamera.scala 185:37:@387.6]
  assign _GEN_27 = _T_44 ? _T_97 : 1'h0; // @[CMOSCamera.scala 185:37:@387.6]
  assign io_sccb_clock = _T_75 ? _T_87 : _GEN_25; // @[CMOSCamera.scala 177:17:@375.4 CMOSCamera.scala 182:19:@381.6 CMOSCamera.scala 186:19:@391.8 CMOSCamera.scala 190:19:@401.10]
  assign io_sccb_data_I = _T_75 ? 1'h0 : _GEN_26; // @[CMOSCamera.scala 178:18:@376.4 CMOSCamera.scala 183:20:@382.6 CMOSCamera.scala 187:20:@393.8 CMOSCamera.scala 191:20:@402.10]
  assign io_sccb_data_T = _T_75 ? 1'h0 : _GEN_27; // @[CMOSCamera.scala 179:18:@377.4 CMOSCamera.scala 184:20:@383.6 CMOSCamera.scala 188:20:@395.8 CMOSCamera.scala 192:20:@403.10]
  assign io_sendData_ready = state == 3'h0; // @[CMOSCamera.scala 195:21:@406.4]
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
  value = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  value_1 = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  highImpedanceTiming = _RAND_3[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  sendData = _RAND_4[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  value_2 = _RAND_5[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  value_3 = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_65) begin
        state <= 3'h1;
      end else begin
        if (stateChange) begin
          if (_T_75) begin
            state <= 3'h2;
          end else begin
            if (_T_44) begin
              if (sendDone) begin
                state <= 3'h3;
              end
            end else begin
              if (_T_81) begin
                state <= 3'h4;
              end else begin
                if (waitDone) begin
                  state <= 3'h0;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      value <= 9'h0;
    end else begin
      if (_T_26) begin
        if (_T_30) begin
          value <= 9'h0;
        end else begin
          value <= _T_33;
        end
      end
    end
    if (reset) begin
      value_1 <= 2'h0;
    end else begin
      if (clockPhaseChange) begin
        value_1 <= _T_41;
      end
    end
    highImpedanceTiming <= _GEN_21[26:0];
    sendData <= _GEN_20[26:0];
    if (reset) begin
      value_2 <= 5'h0;
    end else begin
      if (_T_45) begin
        if (_T_49) begin
          value_2 <= 5'h0;
        end else begin
          value_2 <= _T_52;
        end
      end
    end
    if (reset) begin
      value_3 <= 4'h0;
    end else begin
      if (_T_55) begin
        if (_T_59) begin
          value_3 <= 4'h0;
        end else begin
          value_3 <= _T_62;
        end
      end
    end
  end
endmodule
module NegEdge( // @[:@408.2]
  input   clock, // @[:@409.4]
  input   reset, // @[:@410.4]
  input   io_d, // @[:@411.4]
  output  io_pulse // @[:@411.4]
);
  reg  reg$; // @[NegEdge.scala 14:20:@413.4]
  reg [31:0] _RAND_0;
  wire  _T_12; // @[NegEdge.scala 16:22:@415.4]
  assign _T_12 = io_d == 1'h0; // @[NegEdge.scala 16:22:@415.4]
  assign io_pulse = reg$ & _T_12; // @[NegEdge.scala 16:12:@417.4]
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
module CMOSCamera( // @[:@419.2]
  input         clock, // @[:@420.4]
  input         reset, // @[:@421.4]
  output        io_cmosCam_systemClock, // @[:@422.4]
  input         io_cmosCam_verticalSync, // @[:@422.4]
  input         io_cmosCam_horizontalRef, // @[:@422.4]
  input         io_cmosCam_pixelClock, // @[:@422.4]
  input  [7:0]  io_cmosCam_pixcelData, // @[:@422.4]
  output        io_cmosCam_sccb_clock, // @[:@422.4]
  output        io_cmosCam_sccb_data_I, // @[:@422.4]
  output        io_cmosCam_sccb_data_T, // @[:@422.4]
  output        io_vramClock, // @[:@422.4]
  output        io_vramWriteEnable, // @[:@422.4]
  output [16:0] io_vramAddr, // @[:@422.4]
  output [15:0] io_vramData // @[:@422.4]
);
  wire  sccb_clock; // @[CMOSCamera.scala 228:20:@463.4]
  wire  sccb_reset; // @[CMOSCamera.scala 228:20:@463.4]
  wire  sccb_io_sccb_clock; // @[CMOSCamera.scala 228:20:@463.4]
  wire  sccb_io_sccb_data_I; // @[CMOSCamera.scala 228:20:@463.4]
  wire  sccb_io_sccb_data_T; // @[CMOSCamera.scala 228:20:@463.4]
  wire  sccb_io_sendData_ready; // @[CMOSCamera.scala 228:20:@463.4]
  wire  sccb_io_sendData_valid; // @[CMOSCamera.scala 228:20:@463.4]
  wire [7:0] sccb_io_sendData_bits_regAddr; // @[CMOSCamera.scala 228:20:@463.4]
  wire [7:0] sccb_io_sendData_bits_value; // @[CMOSCamera.scala 228:20:@463.4]
  wire  NegEdge_clock; // @[NegEdge.scala 21:25:@524.4]
  wire  NegEdge_reset; // @[NegEdge.scala 21:25:@524.4]
  wire  NegEdge_io_d; // @[NegEdge.scala 21:25:@524.4]
  wire  NegEdge_io_pulse; // @[NegEdge.scala 21:25:@524.4]
  reg [1:0] state; // @[CMOSCamera.scala 225:22:@459.4]
  reg [31:0] _RAND_0;
  wire  _T_96; // @[CMOSCamera.scala 226:35:@460.4]
  reg  stateHoldCount; // @[CMOSCamera.scala 226:31:@462.4]
  reg [31:0] _RAND_1;
  reg [7:0] programCounter; // @[CMOSCamera.scala 229:31:@466.4]
  reg [31:0] _RAND_2;
  wire  _T_104; // @[CMOSCamera.scala 234:15:@470.4]
  wire  _T_105; // @[CMOSCamera.scala 236:22:@475.6]
  wire [1:0] _T_107; // @[CMOSCamera.scala 237:38:@477.8]
  wire  _T_108; // @[CMOSCamera.scala 237:38:@478.8]
  wire [24:0] _GEN_105; // @[CMOSCamera.scala 238:26:@480.8]
  wire  _T_110; // @[CMOSCamera.scala 238:26:@480.8]
  wire [1:0] _GEN_0; // @[CMOSCamera.scala 238:76:@481.8]
  wire  _T_111; // @[CMOSCamera.scala 241:22:@486.8]
  wire  _T_114; // @[CMOSCamera.scala 244:28:@490.12]
  wire [4:0] _T_117; // @[:@493.14]
  wire [7:0] _GEN_3; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_4; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_5; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_6; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_7; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_8; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_9; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_10; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_11; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_12; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_13; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_14; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_15; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_16; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_17; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_18; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_19; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_20; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_21; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_22; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_23; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_24; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_25; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_26; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_27; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_28; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_29; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_30; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_31; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_32; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_33; // @[CMOSCamera.scala 246:39:@494.14]
  wire [7:0] _GEN_34; // @[CMOSCamera.scala 246:39:@494.14]
  wire [8:0] _T_121; // @[CMOSCamera.scala 248:42:@497.14]
  wire [7:0] _T_122; // @[CMOSCamera.scala 248:42:@498.14]
  wire [7:0] _GEN_70; // @[CMOSCamera.scala 244:52:@491.12]
  wire [7:0] _GEN_71; // @[CMOSCamera.scala 244:52:@491.12]
  wire [7:0] _GEN_72; // @[CMOSCamera.scala 244:52:@491.12]
  wire [1:0] _GEN_73; // @[CMOSCamera.scala 244:52:@491.12]
  wire  _GEN_74; // @[CMOSCamera.scala 242:35:@488.10]
  wire [7:0] _GEN_75; // @[CMOSCamera.scala 242:35:@488.10]
  wire [7:0] _GEN_76; // @[CMOSCamera.scala 242:35:@488.10]
  wire [7:0] _GEN_77; // @[CMOSCamera.scala 242:35:@488.10]
  wire [1:0] _GEN_78; // @[CMOSCamera.scala 242:35:@488.10]
  wire  _GEN_79; // @[CMOSCamera.scala 241:38:@487.8]
  wire [7:0] _GEN_80; // @[CMOSCamera.scala 241:38:@487.8]
  wire [7:0] _GEN_81; // @[CMOSCamera.scala 241:38:@487.8]
  wire [7:0] _GEN_82; // @[CMOSCamera.scala 241:38:@487.8]
  wire [1:0] _GEN_83; // @[CMOSCamera.scala 241:38:@487.8]
  wire  _GEN_84; // @[CMOSCamera.scala 236:47:@476.6]
  wire [1:0] _GEN_85; // @[CMOSCamera.scala 236:47:@476.6]
  wire  _GEN_86; // @[CMOSCamera.scala 236:47:@476.6]
  wire [7:0] _GEN_87; // @[CMOSCamera.scala 236:47:@476.6]
  wire [7:0] _GEN_88; // @[CMOSCamera.scala 236:47:@476.6]
  wire [7:0] _GEN_89; // @[CMOSCamera.scala 236:47:@476.6]
  wire [1:0] _GEN_90; // @[CMOSCamera.scala 234:31:@471.4]
  wire  _GEN_91; // @[CMOSCamera.scala 234:31:@471.4]
  wire [7:0] _GEN_95; // @[CMOSCamera.scala 234:31:@471.4]
  reg  value; // @[Counter.scala 26:33:@506.4]
  reg [31:0] _RAND_3;
  wire [1:0] _T_129; // @[Counter.scala 35:22:@509.6]
  wire  _T_130; // @[Counter.scala 35:22:@510.6]
  reg  systemClock; // @[CMOSCamera.scala 257:28:@514.4]
  reg [31:0] _RAND_4;
  wire  _T_133; // @[CMOSCamera.scala 259:20:@516.6]
  wire  _GEN_97; // @[CMOSCamera.scala 258:33:@515.4]
  wire  pixelClock; // @[CMOSCamera.scala 263:49:@519.4]
  reg [9:0] _T_136; // @[CMOSCamera.scala 265:20:@520.4]
  reg [31:0] _RAND_5;
  reg [8:0] _T_139; // @[CMOSCamera.scala 266:20:@521.4]
  reg [31:0] _RAND_6;
  reg  _T_142; // @[CMOSCamera.scala 267:29:@522.4]
  reg [31:0] _RAND_7;
  reg [7:0] _T_145; // @[CMOSCamera.scala 268:31:@523.4]
  reg [31:0] _RAND_8;
  wire  _T_146; // @[CMOSCamera.scala 272:21:@529.6]
  wire [10:0] _T_148; // @[CMOSCamera.scala 276:16:@535.8]
  wire [9:0] _T_149; // @[CMOSCamera.scala 276:16:@536.8]
  wire [7:0] _GEN_98; // @[CMOSCamera.scala 273:25:@531.6]
  wire [9:0] _GEN_99; // @[CMOSCamera.scala 273:25:@531.6]
  wire  _GEN_100; // @[CMOSCamera.scala 271:37:@528.4]
  wire [7:0] _GEN_101; // @[CMOSCamera.scala 271:37:@528.4]
  wire [9:0] _GEN_102; // @[CMOSCamera.scala 271:37:@528.4]
  wire [9:0] _T_153; // @[CMOSCamera.scala 284:14:@545.6]
  wire [8:0] _T_154; // @[CMOSCamera.scala 284:14:@546.6]
  wire [8:0] _GEN_103; // @[CMOSCamera.scala 285:42:@550.6]
  wire [8:0] _GEN_104; // @[CMOSCamera.scala 283:26:@544.4]
  wire  _T_158; // @[CMOSCamera.scala 291:59:@555.4]
  wire  _T_159; // @[CMOSCamera.scala 291:52:@556.4]
  wire  _T_161; // @[CMOSCamera.scala 291:68:@557.4]
  wire  _T_162; // @[CMOSCamera.scala 291:63:@558.4]
  wire  _T_164; // @[CMOSCamera.scala 291:83:@559.4]
  wire  _T_165; // @[CMOSCamera.scala 291:76:@560.4]
  wire  _T_167; // @[CMOSCamera.scala 291:92:@561.4]
  wire  _T_168; // @[CMOSCamera.scala 291:87:@562.4]
  wire  _T_170; // @[CMOSCamera.scala 291:103:@563.4]
  wire [8:0] _T_172; // @[CMOSCamera.scala 292:21:@566.4]
  wire [16:0] _T_174; // @[CMOSCamera.scala 292:28:@567.4]
  wire [7:0] _T_175; // @[CMOSCamera.scala 292:39:@568.4]
  wire [16:0] _GEN_106; // @[CMOSCamera.scala 292:36:@569.4]
  wire [17:0] _T_176; // @[CMOSCamera.scala 292:36:@569.4]
  Ov7670sccb sccb ( // @[CMOSCamera.scala 228:20:@463.4]
    .clock(sccb_clock),
    .reset(sccb_reset),
    .io_sccb_clock(sccb_io_sccb_clock),
    .io_sccb_data_I(sccb_io_sccb_data_I),
    .io_sccb_data_T(sccb_io_sccb_data_T),
    .io_sendData_ready(sccb_io_sendData_ready),
    .io_sendData_valid(sccb_io_sendData_valid),
    .io_sendData_bits_regAddr(sccb_io_sendData_bits_regAddr),
    .io_sendData_bits_value(sccb_io_sendData_bits_value)
  );
  NegEdge NegEdge ( // @[NegEdge.scala 21:25:@524.4]
    .clock(NegEdge_clock),
    .reset(NegEdge_reset),
    .io_d(NegEdge_io_d),
    .io_pulse(NegEdge_io_pulse)
  );
  assign _T_96 = 1'h0 >> 5'h18; // @[CMOSCamera.scala 226:35:@460.4]
  assign _T_104 = state == 2'h0; // @[CMOSCamera.scala 234:15:@470.4]
  assign _T_105 = state == 2'h1; // @[CMOSCamera.scala 236:22:@475.6]
  assign _T_107 = stateHoldCount + 1'h1; // @[CMOSCamera.scala 237:38:@477.8]
  assign _T_108 = stateHoldCount + 1'h1; // @[CMOSCamera.scala 237:38:@478.8]
  assign _GEN_105 = {{24'd0}, stateHoldCount}; // @[CMOSCamera.scala 238:26:@480.8]
  assign _T_110 = _GEN_105 == 25'h1312d00; // @[CMOSCamera.scala 238:26:@480.8]
  assign _GEN_0 = _T_110 ? 2'h2 : state; // @[CMOSCamera.scala 238:76:@481.8]
  assign _T_111 = state == 2'h2; // @[CMOSCamera.scala 241:22:@486.8]
  assign _T_114 = programCounter < 8'h11; // @[CMOSCamera.scala 244:28:@490.12]
  assign _T_117 = programCounter[4:0]; // @[:@493.14]
  assign _GEN_3 = 5'h1 == _T_117 ? 8'h12 : 8'h11; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_4 = 5'h1 == _T_117 ? 8'h4 : 8'h1; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_5 = 5'h2 == _T_117 ? 8'h14 : _GEN_3; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_6 = 5'h2 == _T_117 ? 8'h30 : _GEN_4; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_7 = 5'h3 == _T_117 ? 8'h3a : _GEN_5; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_8 = 5'h3 == _T_117 ? 8'h8 : _GEN_6; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_9 = 5'h4 == _T_117 ? 8'h40 : _GEN_7; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_10 = 5'h4 == _T_117 ? 8'h10 : _GEN_8; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_11 = 5'h5 == _T_117 ? 8'h41 : _GEN_9; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_12 = 5'h5 == _T_117 ? 8'h38 : _GEN_10; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_13 = 5'h6 == _T_117 ? 8'h8c : _GEN_11; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_14 = 5'h6 == _T_117 ? 8'h0 : _GEN_12; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_15 = 5'h7 == _T_117 ? 8'h4f : _GEN_13; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_16 = 5'h7 == _T_117 ? 8'h48 : _GEN_14; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_17 = 5'h8 == _T_117 ? 8'h50 : _GEN_15; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_18 = 5'h8 == _T_117 ? 8'h40 : _GEN_16; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_19 = 5'h9 == _T_117 ? 8'h51 : _GEN_17; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_20 = 5'h9 == _T_117 ? 8'h8 : _GEN_18; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_21 = 5'ha == _T_117 ? 8'h52 : _GEN_19; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_22 = 5'ha == _T_117 ? 8'h18 : _GEN_20; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_23 = 5'hb == _T_117 ? 8'h53 : _GEN_21; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_24 = 5'hb == _T_117 ? 8'h38 : _GEN_22; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_25 = 5'hc == _T_117 ? 8'h54 : _GEN_23; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_26 = 5'hc == _T_117 ? 8'h48 : _GEN_24; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_27 = 5'hd == _T_117 ? 8'h58 : _GEN_25; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_28 = 5'hd == _T_117 ? 8'h1e : _GEN_26; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_29 = 5'he == _T_117 ? 8'h6b : _GEN_27; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_30 = 5'he == _T_117 ? 8'h4a : _GEN_28; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_31 = 5'hf == _T_117 ? 8'hb0 : _GEN_29; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_32 = 5'hf == _T_117 ? 8'h84 : _GEN_30; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_33 = 5'h10 == _T_117 ? 8'hb1 : _GEN_31; // @[CMOSCamera.scala 246:39:@494.14]
  assign _GEN_34 = 5'h10 == _T_117 ? 8'h4 : _GEN_32; // @[CMOSCamera.scala 246:39:@494.14]
  assign _T_121 = programCounter + 8'h1; // @[CMOSCamera.scala 248:42:@497.14]
  assign _T_122 = programCounter + 8'h1; // @[CMOSCamera.scala 248:42:@498.14]
  assign _GEN_70 = _T_114 ? _GEN_33 : 8'h0; // @[CMOSCamera.scala 244:52:@491.12]
  assign _GEN_71 = _T_114 ? _GEN_34 : 8'h0; // @[CMOSCamera.scala 244:52:@491.12]
  assign _GEN_72 = _T_114 ? _T_122 : programCounter; // @[CMOSCamera.scala 244:52:@491.12]
  assign _GEN_73 = _T_114 ? state : 2'h3; // @[CMOSCamera.scala 244:52:@491.12]
  assign _GEN_74 = sccb_io_sendData_ready ? _T_114 : 1'h0; // @[CMOSCamera.scala 242:35:@488.10]
  assign _GEN_75 = sccb_io_sendData_ready ? _GEN_70 : 8'h0; // @[CMOSCamera.scala 242:35:@488.10]
  assign _GEN_76 = sccb_io_sendData_ready ? _GEN_71 : 8'h0; // @[CMOSCamera.scala 242:35:@488.10]
  assign _GEN_77 = sccb_io_sendData_ready ? _GEN_72 : programCounter; // @[CMOSCamera.scala 242:35:@488.10]
  assign _GEN_78 = sccb_io_sendData_ready ? _GEN_73 : state; // @[CMOSCamera.scala 242:35:@488.10]
  assign _GEN_79 = _T_111 ? _GEN_74 : 1'h0; // @[CMOSCamera.scala 241:38:@487.8]
  assign _GEN_80 = _T_111 ? _GEN_75 : 8'h0; // @[CMOSCamera.scala 241:38:@487.8]
  assign _GEN_81 = _T_111 ? _GEN_76 : 8'h0; // @[CMOSCamera.scala 241:38:@487.8]
  assign _GEN_82 = _T_111 ? _GEN_77 : programCounter; // @[CMOSCamera.scala 241:38:@487.8]
  assign _GEN_83 = _T_111 ? _GEN_78 : state; // @[CMOSCamera.scala 241:38:@487.8]
  assign _GEN_84 = _T_105 ? _T_108 : stateHoldCount; // @[CMOSCamera.scala 236:47:@476.6]
  assign _GEN_85 = _T_105 ? _GEN_0 : _GEN_83; // @[CMOSCamera.scala 236:47:@476.6]
  assign _GEN_86 = _T_105 ? 1'h0 : _GEN_79; // @[CMOSCamera.scala 236:47:@476.6]
  assign _GEN_87 = _T_105 ? 8'h0 : _GEN_80; // @[CMOSCamera.scala 236:47:@476.6]
  assign _GEN_88 = _T_105 ? 8'h0 : _GEN_81; // @[CMOSCamera.scala 236:47:@476.6]
  assign _GEN_89 = _T_105 ? programCounter : _GEN_82; // @[CMOSCamera.scala 236:47:@476.6]
  assign _GEN_90 = _T_104 ? 2'h1 : _GEN_85; // @[CMOSCamera.scala 234:31:@471.4]
  assign _GEN_91 = _T_104 ? stateHoldCount : _GEN_84; // @[CMOSCamera.scala 234:31:@471.4]
  assign _GEN_95 = _T_104 ? programCounter : _GEN_89; // @[CMOSCamera.scala 234:31:@471.4]
  assign _T_129 = value + 1'h1; // @[Counter.scala 35:22:@509.6]
  assign _T_130 = value + 1'h1; // @[Counter.scala 35:22:@510.6]
  assign _T_133 = ~ systemClock; // @[CMOSCamera.scala 259:20:@516.6]
  assign _GEN_97 = value ? _T_133 : systemClock; // @[CMOSCamera.scala 258:33:@515.4]
  assign pixelClock = io_cmosCam_pixelClock; // @[CMOSCamera.scala 263:49:@519.4]
  assign _T_146 = ~ _T_142; // @[CMOSCamera.scala 272:21:@529.6]
  assign _T_148 = _T_136 + 10'h1; // @[CMOSCamera.scala 276:16:@535.8]
  assign _T_149 = _T_136 + 10'h1; // @[CMOSCamera.scala 276:16:@536.8]
  assign _GEN_98 = _T_142 ? io_cmosCam_pixcelData : _T_145; // @[CMOSCamera.scala 273:25:@531.6]
  assign _GEN_99 = _T_142 ? _T_136 : _T_149; // @[CMOSCamera.scala 273:25:@531.6]
  assign _GEN_100 = io_cmosCam_horizontalRef ? _T_146 : 1'h0; // @[CMOSCamera.scala 271:37:@528.4]
  assign _GEN_101 = io_cmosCam_horizontalRef ? _GEN_98 : _T_145; // @[CMOSCamera.scala 271:37:@528.4]
  assign _GEN_102 = io_cmosCam_horizontalRef ? _GEN_99 : 10'h0; // @[CMOSCamera.scala 271:37:@528.4]
  assign _T_153 = _T_139 + 9'h1; // @[CMOSCamera.scala 284:14:@545.6]
  assign _T_154 = _T_139 + 9'h1; // @[CMOSCamera.scala 284:14:@546.6]
  assign _GEN_103 = io_cmosCam_verticalSync ? 9'h0 : _T_139; // @[CMOSCamera.scala 285:42:@550.6]
  assign _GEN_104 = NegEdge_io_pulse ? _T_154 : _GEN_103; // @[CMOSCamera.scala 283:26:@544.4]
  assign _T_158 = 10'h0 < _T_136; // @[CMOSCamera.scala 291:59:@555.4]
  assign _T_159 = io_cmosCam_horizontalRef & _T_158; // @[CMOSCamera.scala 291:52:@556.4]
  assign _T_161 = _T_136 < 10'h280; // @[CMOSCamera.scala 291:68:@557.4]
  assign _T_162 = _T_159 & _T_161; // @[CMOSCamera.scala 291:63:@558.4]
  assign _T_164 = 9'h0 < _T_139; // @[CMOSCamera.scala 291:83:@559.4]
  assign _T_165 = _T_162 & _T_164; // @[CMOSCamera.scala 291:76:@560.4]
  assign _T_167 = _T_139 < 9'h1e0; // @[CMOSCamera.scala 291:92:@561.4]
  assign _T_168 = _T_165 & _T_167; // @[CMOSCamera.scala 291:87:@562.4]
  assign _T_170 = _T_142 == 1'h0; // @[CMOSCamera.scala 291:103:@563.4]
  assign _T_172 = _T_136[9:1]; // @[CMOSCamera.scala 292:21:@566.4]
  assign _T_174 = _T_172 * 9'hf0; // @[CMOSCamera.scala 292:28:@567.4]
  assign _T_175 = _T_139[8:1]; // @[CMOSCamera.scala 292:39:@568.4]
  assign _GEN_106 = {{9'd0}, _T_175}; // @[CMOSCamera.scala 292:36:@569.4]
  assign _T_176 = _T_174 + _GEN_106; // @[CMOSCamera.scala 292:36:@569.4]
  assign io_cmosCam_systemClock = systemClock; // @[CMOSCamera.scala 296:26:@574.4]
  assign io_cmosCam_sccb_clock = sccb_io_sccb_clock; // @[CMOSCamera.scala 297:25:@575.4]
  assign io_cmosCam_sccb_data_I = sccb_io_sccb_data_I; // @[CMOSCamera.scala 298:24:@577.4]
  assign io_cmosCam_sccb_data_T = sccb_io_sccb_data_T; // @[CMOSCamera.scala 298:24:@576.4]
  assign io_vramClock = io_cmosCam_pixelClock; // @[CMOSCamera.scala 289:18:@553.4]
  assign io_vramWriteEnable = _T_168 & _T_170; // @[CMOSCamera.scala 291:24:@565.4]
  assign io_vramAddr = _T_174 + _GEN_106; // @[CMOSCamera.scala 292:17:@571.4]
  assign io_vramData = {_T_145,io_cmosCam_pixcelData}; // @[CMOSCamera.scala 293:17:@573.4]
  assign sccb_clock = clock; // @[:@464.4]
  assign sccb_reset = reset; // @[:@465.4]
  assign sccb_io_sendData_valid = _T_104 ? 1'h0 : _GEN_86; // @[CMOSCamera.scala 231:26:@467.4 CMOSCamera.scala 243:30:@489.12 CMOSCamera.scala 245:32:@492.14]
  assign sccb_io_sendData_bits_regAddr = _T_104 ? 8'h0 : _GEN_87; // @[CMOSCamera.scala 232:33:@468.4 CMOSCamera.scala 246:39:@494.14]
  assign sccb_io_sendData_bits_value = _T_104 ? 8'h0 : _GEN_88; // @[CMOSCamera.scala 233:31:@469.4 CMOSCamera.scala 247:37:@496.14]
  assign NegEdge_clock = io_cmosCam_pixelClock; // @[:@525.4]
  assign NegEdge_reset = reset; // @[:@526.4]
  assign NegEdge_io_d = io_cmosCam_horizontalRef; // @[NegEdge.scala 22:18:@527.4]
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
  state = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  stateHoldCount = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  programCounter = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  value = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  systemClock = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_136 = _RAND_5[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_139 = _RAND_6[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_142 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_145 = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_104) begin
        state <= 2'h1;
      end else begin
        if (_T_105) begin
          if (_T_110) begin
            state <= 2'h2;
          end
        end else begin
          if (_T_111) begin
            if (sccb_io_sendData_ready) begin
              if (!(_T_114)) begin
                state <= 2'h3;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      stateHoldCount <= _T_96;
    end else begin
      if (!(_T_104)) begin
        if (_T_105) begin
          stateHoldCount <= _T_108;
        end
      end
    end
    if (reset) begin
      programCounter <= 8'h0;
    end else begin
      if (!(_T_104)) begin
        if (!(_T_105)) begin
          if (_T_111) begin
            if (sccb_io_sendData_ready) begin
              if (_T_114) begin
                programCounter <= _T_122;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      value <= 1'h0;
    end else begin
      value <= _T_130;
    end
    if (reset) begin
      systemClock <= 1'h1;
    end else begin
      if (value) begin
        systemClock <= _T_133;
      end
    end
  end
  always @(posedge pixelClock) begin
    if (reset) begin
      _T_136 <= 10'h0;
    end else begin
      if (io_cmosCam_horizontalRef) begin
        if (!(_T_142)) begin
          _T_136 <= _T_149;
        end
      end else begin
        _T_136 <= 10'h0;
      end
    end
    if (reset) begin
      _T_139 <= 9'h0;
    end else begin
      if (NegEdge_io_pulse) begin
        _T_139 <= _T_154;
      end else begin
        if (io_cmosCam_verticalSync) begin
          _T_139 <= 9'h0;
        end
      end
    end
    if (reset) begin
      _T_142 <= 1'h1;
    end else begin
      if (io_cmosCam_horizontalRef) begin
        _T_142 <= _T_146;
      end else begin
        _T_142 <= 1'h0;
      end
    end
    if (reset) begin
      _T_145 <= 8'h0;
    end else begin
      if (io_cmosCam_horizontalRef) begin
        if (_T_142) begin
          _T_145 <= io_cmosCam_pixcelData;
        end
      end
    end
  end
endmodule
module CameraDisplay( // @[:@604.2]
  input        clock, // @[:@605.4]
  input        reset, // @[:@606.4]
  output       io_lcdSpi_serialClock, // @[:@607.4]
  output       io_lcdSpi_dataCommand, // @[:@607.4]
  output       io_lcdSpi_chipSelectN, // @[:@607.4]
  output       io_lcdSpi_masterOutSlaveIn, // @[:@607.4]
  input        io_lcdSpi_masterInSlaveOut, // @[:@607.4]
  output       io_lcdSpi_resetN, // @[:@607.4]
  output       io_lcdSpi_backLight, // @[:@607.4]
  output       io_cmosCam_systemClock, // @[:@607.4]
  input        io_cmosCam_verticalSync, // @[:@607.4]
  input        io_cmosCam_horizontalRef, // @[:@607.4]
  input        io_cmosCam_pixelClock, // @[:@607.4]
  input  [7:0] io_cmosCam_pixcelData, // @[:@607.4]
  output       io_cmosCam_sccb_clock, // @[:@607.4]
  inout        io_cmosCam_sccb_ioBuf, // @[:@607.4]
  output       io_cmosCam_resetN, // @[:@607.4]
  output       io_cmosCam_powerDown // @[:@607.4]
);
  wire  lcdDisplay_clock; // @[CameraDisplay.scala 38:26:@609.4]
  wire  lcdDisplay_reset; // @[CameraDisplay.scala 38:26:@609.4]
  wire  lcdDisplay_io_lcdSpi_serialClock; // @[CameraDisplay.scala 38:26:@609.4]
  wire  lcdDisplay_io_lcdSpi_dataCommand; // @[CameraDisplay.scala 38:26:@609.4]
  wire  lcdDisplay_io_lcdSpi_chipSelectN; // @[CameraDisplay.scala 38:26:@609.4]
  wire  lcdDisplay_io_lcdSpi_masterOutSlaveIn; // @[CameraDisplay.scala 38:26:@609.4]
  wire  lcdDisplay_io_lcdSpi_resetN; // @[CameraDisplay.scala 38:26:@609.4]
  wire [16:0] lcdDisplay_io_vramAddr; // @[CameraDisplay.scala 38:26:@609.4]
  wire [15:0] lcdDisplay_io_vramData; // @[CameraDisplay.scala 38:26:@609.4]
  wire  cmosCamera_clock; // @[CameraDisplay.scala 39:26:@612.4]
  wire  cmosCamera_reset; // @[CameraDisplay.scala 39:26:@612.4]
  wire  cmosCamera_io_cmosCam_systemClock; // @[CameraDisplay.scala 39:26:@612.4]
  wire  cmosCamera_io_cmosCam_verticalSync; // @[CameraDisplay.scala 39:26:@612.4]
  wire  cmosCamera_io_cmosCam_horizontalRef; // @[CameraDisplay.scala 39:26:@612.4]
  wire  cmosCamera_io_cmosCam_pixelClock; // @[CameraDisplay.scala 39:26:@612.4]
  wire [7:0] cmosCamera_io_cmosCam_pixcelData; // @[CameraDisplay.scala 39:26:@612.4]
  wire  cmosCamera_io_cmosCam_sccb_clock; // @[CameraDisplay.scala 39:26:@612.4]
  wire  cmosCamera_io_cmosCam_sccb_data_I; // @[CameraDisplay.scala 39:26:@612.4]
  wire  cmosCamera_io_cmosCam_sccb_data_T; // @[CameraDisplay.scala 39:26:@612.4]
  wire  cmosCamera_io_vramClock; // @[CameraDisplay.scala 39:26:@612.4]
  wire  cmosCamera_io_vramWriteEnable; // @[CameraDisplay.scala 39:26:@612.4]
  wire [16:0] cmosCamera_io_vramAddr; // @[CameraDisplay.scala 39:26:@612.4]
  wire [15:0] cmosCamera_io_vramData; // @[CameraDisplay.scala 39:26:@612.4]
  wire [15:0] vram_doutb; // @[CameraDisplay.scala 40:20:@615.4]
  wire [16:0] vram_addrb; // @[CameraDisplay.scala 40:20:@615.4]
  wire  vram_clkb; // @[CameraDisplay.scala 40:20:@615.4]
  wire [15:0] vram_dina; // @[CameraDisplay.scala 40:20:@615.4]
  wire [16:0] vram_addra; // @[CameraDisplay.scala 40:20:@615.4]
  wire  vram_wea; // @[CameraDisplay.scala 40:20:@615.4]
  wire  vram_ena; // @[CameraDisplay.scala 40:20:@615.4]
  wire  vram_clka; // @[CameraDisplay.scala 40:20:@615.4]
  wire  IOBUF_T; // @[CMOSCamera.scala 20:23:@645.4]
  wire  IOBUF_O; // @[CMOSCamera.scala 20:23:@645.4]
  wire  IOBUF_I; // @[CMOSCamera.scala 20:23:@645.4]
  LCDDisplay lcdDisplay ( // @[CameraDisplay.scala 38:26:@609.4]
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
  CMOSCamera cmosCamera ( // @[CameraDisplay.scala 39:26:@612.4]
    .clock(cmosCamera_clock),
    .reset(cmosCamera_reset),
    .io_cmosCam_systemClock(cmosCamera_io_cmosCam_systemClock),
    .io_cmosCam_verticalSync(cmosCamera_io_cmosCam_verticalSync),
    .io_cmosCam_horizontalRef(cmosCamera_io_cmosCam_horizontalRef),
    .io_cmosCam_pixelClock(cmosCamera_io_cmosCam_pixelClock),
    .io_cmosCam_pixcelData(cmosCamera_io_cmosCam_pixcelData),
    .io_cmosCam_sccb_clock(cmosCamera_io_cmosCam_sccb_clock),
    .io_cmosCam_sccb_data_I(cmosCamera_io_cmosCam_sccb_data_I),
    .io_cmosCam_sccb_data_T(cmosCamera_io_cmosCam_sccb_data_T),
    .io_vramClock(cmosCamera_io_vramClock),
    .io_vramWriteEnable(cmosCamera_io_vramWriteEnable),
    .io_vramAddr(cmosCamera_io_vramAddr),
    .io_vramData(cmosCamera_io_vramData)
  );
  Vram vram ( // @[CameraDisplay.scala 40:20:@615.4]
    .doutb(vram_doutb),
    .addrb(vram_addrb),
    .clkb(vram_clkb),
    .dina(vram_dina),
    .addra(vram_addra),
    .wea(vram_wea),
    .ena(vram_ena),
    .clka(vram_clka)
  );
  IOBUF IOBUF ( // @[CMOSCamera.scala 20:23:@645.4]
    .T(IOBUF_T),
    .O(IOBUF_O),
    .I(IOBUF_I),
    .IO(io_cmosCam_sccb_ioBuf)
  );
  assign io_lcdSpi_serialClock = lcdDisplay_io_lcdSpi_serialClock; // @[CameraDisplay.scala 52:13:@638.4]
  assign io_lcdSpi_dataCommand = lcdDisplay_io_lcdSpi_dataCommand; // @[CameraDisplay.scala 52:13:@637.4]
  assign io_lcdSpi_chipSelectN = lcdDisplay_io_lcdSpi_chipSelectN; // @[CameraDisplay.scala 52:13:@636.4]
  assign io_lcdSpi_masterOutSlaveIn = lcdDisplay_io_lcdSpi_masterOutSlaveIn; // @[CameraDisplay.scala 52:13:@635.4]
  assign io_lcdSpi_resetN = lcdDisplay_io_lcdSpi_resetN; // @[CameraDisplay.scala 52:13:@633.4]
  assign io_lcdSpi_backLight = 1'h1; // @[CameraDisplay.scala 52:13:@632.4]
  assign io_cmosCam_systemClock = cmosCamera_io_cmosCam_systemClock; // @[CameraDisplay.scala 54:26:@639.4]
  assign io_cmosCam_sccb_clock = cmosCamera_io_cmosCam_sccb_clock; // @[CameraDisplay.scala 59:25:@644.4]
  assign io_cmosCam_resetN = 1'h1; // @[CameraDisplay.scala 61:21:@654.4]
  assign io_cmosCam_powerDown = 1'h0; // @[CameraDisplay.scala 62:24:@655.4]
  assign lcdDisplay_clock = clock; // @[:@610.4]
  assign lcdDisplay_reset = reset; // @[:@611.4]
  assign lcdDisplay_io_vramData = vram_doutb; // @[CameraDisplay.scala 50:26:@631.4]
  assign cmosCamera_clock = clock; // @[:@613.4]
  assign cmosCamera_reset = reset; // @[:@614.4]
  assign cmosCamera_io_cmosCam_verticalSync = io_cmosCam_verticalSync; // @[CameraDisplay.scala 55:27:@640.4]
  assign cmosCamera_io_cmosCam_horizontalRef = io_cmosCam_horizontalRef; // @[CameraDisplay.scala 56:28:@641.4]
  assign cmosCamera_io_cmosCam_pixelClock = io_cmosCam_pixelClock; // @[CameraDisplay.scala 57:25:@642.4]
  assign cmosCamera_io_cmosCam_pixcelData = io_cmosCam_pixcelData; // @[CameraDisplay.scala 58:25:@643.4]
  assign vram_addrb = lcdDisplay_io_vramAddr; // @[CameraDisplay.scala 49:17:@630.4]
  assign vram_clkb = clock; // @[CameraDisplay.scala 48:16:@629.4]
  assign vram_dina = cmosCamera_io_vramData; // @[CameraDisplay.scala 46:16:@628.4]
  assign vram_addra = cmosCamera_io_vramAddr; // @[CameraDisplay.scala 45:17:@627.4]
  assign vram_wea = cmosCamera_io_vramWriteEnable; // @[CameraDisplay.scala 44:15:@626.4]
  assign vram_ena = 1'h1; // @[CameraDisplay.scala 43:15:@625.4]
  assign vram_clka = cmosCamera_io_vramClock; // @[CameraDisplay.scala 42:16:@624.4]
  assign IOBUF_T = cmosCamera_io_cmosCam_sccb_data_T; // @[CMOSCamera.scala 23:16:@652.4]
  assign IOBUF_I = cmosCamera_io_cmosCam_sccb_data_I; // @[CMOSCamera.scala 22:16:@651.4]
endmodule
