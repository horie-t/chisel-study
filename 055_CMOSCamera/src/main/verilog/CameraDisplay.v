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
  reg [2:0] state; // @[CMOSCamera.scala 146:22:@287.4]
  reg [31:0] _RAND_0;
  wire  _T_26; // @[CMOSCamera.scala 148:45:@288.4]
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
  reg [26:0] highImpedanceTiming; // @[CMOSCamera.scala 154:32:@308.4]
  reg [31:0] _RAND_3;
  reg [26:0] sendData; // @[CMOSCamera.scala 155:21:@309.4]
  reg [31:0] _RAND_4;
  wire  _T_44; // @[CMOSCamera.scala 156:37:@310.4]
  wire  _T_45; // @[CMOSCamera.scala 156:51:@311.4]
  reg [4:0] value_2; // @[Counter.scala 26:33:@312.4]
  reg [31:0] _RAND_5;
  wire  _T_49; // @[Counter.scala 34:24:@314.6]
  wire [5:0] _T_51; // @[Counter.scala 35:22:@315.6]
  wire [4:0] _T_52; // @[Counter.scala 35:22:@316.6]
  wire [4:0] _GEN_3; // @[Counter.scala 37:21:@318.6]
  wire [4:0] _GEN_4; // @[Counter.scala 63:17:@313.4]
  wire  sendDone; // @[Counter.scala 64:20:@322.4]
  wire  _T_54; // @[CMOSCamera.scala 157:37:@323.4]
  wire  _T_55; // @[CMOSCamera.scala 157:51:@324.4]
  reg [3:0] value_3; // @[Counter.scala 26:33:@325.4]
  reg [31:0] _RAND_6;
  wire  _T_59; // @[Counter.scala 34:24:@327.6]
  wire [4:0] _T_61; // @[Counter.scala 35:22:@328.6]
  wire [3:0] _T_62; // @[Counter.scala 35:22:@329.6]
  wire [3:0] _GEN_5; // @[Counter.scala 37:21:@331.6]
  wire [3:0] _GEN_6; // @[Counter.scala 63:17:@326.4]
  wire  waitDone; // @[Counter.scala 64:20:@335.4]
  wire  _T_64; // @[CMOSCamera.scala 160:15:@336.4]
  wire  _T_65; // @[CMOSCamera.scala 160:29:@337.4]
  wire [26:0] _T_73; // @[Cat.scala 30:58:@344.6]
  wire  _T_75; // @[CMOSCamera.scala 165:17:@350.8]
  wire [27:0] _GEN_31; // @[CMOSCamera.scala 168:28:@357.12]
  wire [27:0] _T_78; // @[CMOSCamera.scala 168:28:@357.12]
  wire [27:0] _GEN_32; // @[CMOSCamera.scala 169:50:@359.12]
  wire [27:0] _T_80; // @[CMOSCamera.scala 169:50:@359.12]
  wire [2:0] _GEN_7; // @[CMOSCamera.scala 170:23:@361.12]
  wire  _T_81; // @[CMOSCamera.scala 173:23:@366.12]
  wire [2:0] _GEN_8; // @[CMOSCamera.scala 175:27:@371.14]
  wire [2:0] _GEN_9; // @[CMOSCamera.scala 173:41:@367.12]
  wire [27:0] _GEN_10; // @[CMOSCamera.scala 167:38:@356.10]
  wire [27:0] _GEN_11; // @[CMOSCamera.scala 167:38:@356.10]
  wire [2:0] _GEN_12; // @[CMOSCamera.scala 167:38:@356.10]
  wire [2:0] _GEN_13; // @[CMOSCamera.scala 165:36:@351.8]
  wire [27:0] _GEN_14; // @[CMOSCamera.scala 165:36:@351.8]
  wire [27:0] _GEN_15; // @[CMOSCamera.scala 165:36:@351.8]
  wire [2:0] _GEN_16; // @[CMOSCamera.scala 164:29:@349.6]
  wire [27:0] _GEN_17; // @[CMOSCamera.scala 164:29:@349.6]
  wire [27:0] _GEN_18; // @[CMOSCamera.scala 164:29:@349.6]
  wire [2:0] _GEN_19; // @[CMOSCamera.scala 160:51:@338.4]
  wire [27:0] _GEN_20; // @[CMOSCamera.scala 160:51:@338.4]
  wire [27:0] _GEN_21; // @[CMOSCamera.scala 160:51:@338.4]
  wire  _T_87; // @[CMOSCamera.scala 186:38:@380.6]
  wire  _T_92; // @[CMOSCamera.scala 190:38:@388.8]
  wire  _T_94; // @[CMOSCamera.scala 190:65:@389.8]
  wire  _T_95; // @[CMOSCamera.scala 190:46:@390.8]
  wire  _T_96; // @[CMOSCamera.scala 191:31:@392.8]
  wire  _T_97; // @[CMOSCamera.scala 192:42:@394.8]
  wire  _T_100; // @[CMOSCamera.scala 194:38:@400.10]
  wire  _GEN_22; // @[CMOSCamera.scala 193:40:@399.8]
  wire  _GEN_23; // @[CMOSCamera.scala 193:40:@399.8]
  wire  _GEN_25; // @[CMOSCamera.scala 189:37:@387.6]
  wire  _GEN_26; // @[CMOSCamera.scala 189:37:@387.6]
  wire  _GEN_27; // @[CMOSCamera.scala 189:37:@387.6]
  assign _T_26 = state != 3'h0; // @[CMOSCamera.scala 148:45:@288.4]
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
  assign _T_44 = state == 3'h2; // @[CMOSCamera.scala 156:37:@310.4]
  assign _T_45 = _T_44 & stateChange; // @[CMOSCamera.scala 156:51:@311.4]
  assign _T_49 = value_2 == 5'h1a; // @[Counter.scala 34:24:@314.6]
  assign _T_51 = value_2 + 5'h1; // @[Counter.scala 35:22:@315.6]
  assign _T_52 = value_2 + 5'h1; // @[Counter.scala 35:22:@316.6]
  assign _GEN_3 = _T_49 ? 5'h0 : _T_52; // @[Counter.scala 37:21:@318.6]
  assign _GEN_4 = _T_45 ? _GEN_3 : value_2; // @[Counter.scala 63:17:@313.4]
  assign sendDone = _T_45 & _T_49; // @[Counter.scala 64:20:@322.4]
  assign _T_54 = state == 3'h4; // @[CMOSCamera.scala 157:37:@323.4]
  assign _T_55 = _T_54 & stateChange; // @[CMOSCamera.scala 157:51:@324.4]
  assign _T_59 = value_3 == 4'h9; // @[Counter.scala 34:24:@327.6]
  assign _T_61 = value_3 + 4'h1; // @[Counter.scala 35:22:@328.6]
  assign _T_62 = value_3 + 4'h1; // @[Counter.scala 35:22:@329.6]
  assign _GEN_5 = _T_59 ? 4'h0 : _T_62; // @[Counter.scala 37:21:@331.6]
  assign _GEN_6 = _T_55 ? _GEN_5 : value_3; // @[Counter.scala 63:17:@326.4]
  assign waitDone = _T_55 & _T_59; // @[Counter.scala 64:20:@335.4]
  assign _T_64 = state == 3'h0; // @[CMOSCamera.scala 160:15:@336.4]
  assign _T_65 = _T_64 & io_sendData_valid; // @[CMOSCamera.scala 160:29:@337.4]
  assign _T_73 = {9'h84,io_sendData_bits_regAddr,1'h0,io_sendData_bits_value,1'h0}; // @[Cat.scala 30:58:@344.6]
  assign _T_75 = state == 3'h1; // @[CMOSCamera.scala 165:17:@350.8]
  assign _GEN_31 = {{1'd0}, sendData}; // @[CMOSCamera.scala 168:28:@357.12]
  assign _T_78 = _GEN_31 << 1'h1; // @[CMOSCamera.scala 168:28:@357.12]
  assign _GEN_32 = {{1'd0}, highImpedanceTiming}; // @[CMOSCamera.scala 169:50:@359.12]
  assign _T_80 = _GEN_32 << 1'h1; // @[CMOSCamera.scala 169:50:@359.12]
  assign _GEN_7 = sendDone ? 3'h3 : state; // @[CMOSCamera.scala 170:23:@361.12]
  assign _T_81 = state == 3'h3; // @[CMOSCamera.scala 173:23:@366.12]
  assign _GEN_8 = waitDone ? 3'h0 : state; // @[CMOSCamera.scala 175:27:@371.14]
  assign _GEN_9 = _T_81 ? 3'h4 : _GEN_8; // @[CMOSCamera.scala 173:41:@367.12]
  assign _GEN_10 = _T_44 ? _T_78 : {{1'd0}, sendData}; // @[CMOSCamera.scala 167:38:@356.10]
  assign _GEN_11 = _T_44 ? _T_80 : {{1'd0}, highImpedanceTiming}; // @[CMOSCamera.scala 167:38:@356.10]
  assign _GEN_12 = _T_44 ? _GEN_7 : _GEN_9; // @[CMOSCamera.scala 167:38:@356.10]
  assign _GEN_13 = _T_75 ? 3'h2 : _GEN_12; // @[CMOSCamera.scala 165:36:@351.8]
  assign _GEN_14 = _T_75 ? {{1'd0}, sendData} : _GEN_10; // @[CMOSCamera.scala 165:36:@351.8]
  assign _GEN_15 = _T_75 ? {{1'd0}, highImpedanceTiming} : _GEN_11; // @[CMOSCamera.scala 165:36:@351.8]
  assign _GEN_16 = stateChange ? _GEN_13 : state; // @[CMOSCamera.scala 164:29:@349.6]
  assign _GEN_17 = stateChange ? _GEN_14 : {{1'd0}, sendData}; // @[CMOSCamera.scala 164:29:@349.6]
  assign _GEN_18 = stateChange ? _GEN_15 : {{1'd0}, highImpedanceTiming}; // @[CMOSCamera.scala 164:29:@349.6]
  assign _GEN_19 = _T_65 ? 3'h1 : _GEN_16; // @[CMOSCamera.scala 160:51:@338.4]
  assign _GEN_20 = _T_65 ? {{1'd0}, _T_73} : _GEN_17; // @[CMOSCamera.scala 160:51:@338.4]
  assign _GEN_21 = _T_65 ? 28'h40201 : _GEN_18; // @[CMOSCamera.scala 160:51:@338.4]
  assign _T_87 = value_1 != 2'h3; // @[CMOSCamera.scala 186:38:@380.6]
  assign _T_92 = value_1 == 2'h1; // @[CMOSCamera.scala 190:38:@388.8]
  assign _T_94 = value_1 == 2'h2; // @[CMOSCamera.scala 190:65:@389.8]
  assign _T_95 = _T_92 | _T_94; // @[CMOSCamera.scala 190:46:@390.8]
  assign _T_96 = sendData[26]; // @[CMOSCamera.scala 191:31:@392.8]
  assign _T_97 = highImpedanceTiming[26]; // @[CMOSCamera.scala 192:42:@394.8]
  assign _T_100 = value_1 != 2'h0; // @[CMOSCamera.scala 194:38:@400.10]
  assign _GEN_22 = _T_81 ? _T_100 : 1'h1; // @[CMOSCamera.scala 193:40:@399.8]
  assign _GEN_23 = _T_81 ? 1'h0 : 1'h1; // @[CMOSCamera.scala 193:40:@399.8]
  assign _GEN_25 = _T_44 ? _T_95 : _GEN_22; // @[CMOSCamera.scala 189:37:@387.6]
  assign _GEN_26 = _T_44 ? _T_96 : _GEN_23; // @[CMOSCamera.scala 189:37:@387.6]
  assign _GEN_27 = _T_44 ? _T_97 : 1'h0; // @[CMOSCamera.scala 189:37:@387.6]
  assign io_sccb_clock = _T_75 ? _T_87 : _GEN_25; // @[CMOSCamera.scala 181:17:@375.4 CMOSCamera.scala 186:19:@381.6 CMOSCamera.scala 190:19:@391.8 CMOSCamera.scala 194:19:@401.10]
  assign io_sccb_data_I = _T_75 ? 1'h0 : _GEN_26; // @[CMOSCamera.scala 182:18:@376.4 CMOSCamera.scala 187:20:@382.6 CMOSCamera.scala 191:20:@393.8 CMOSCamera.scala 195:20:@402.10]
  assign io_sccb_data_T = _T_75 ? 1'h0 : _GEN_27; // @[CMOSCamera.scala 183:18:@377.4 CMOSCamera.scala 188:20:@383.6 CMOSCamera.scala 192:20:@395.8 CMOSCamera.scala 196:20:@403.10]
  assign io_sendData_ready = state == 3'h0; // @[CMOSCamera.scala 199:21:@406.4]
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
  output [15:0] io_vramData, // @[:@422.4]
  output        io_sendData_ready, // @[:@422.4]
  input         io_sendData_valid, // @[:@422.4]
  input  [7:0]  io_sendData_bits_regAddr, // @[:@422.4]
  input  [7:0]  io_sendData_bits_value // @[:@422.4]
);
  wire  sccb_clock; // @[CMOSCamera.scala 215:20:@424.4]
  wire  sccb_reset; // @[CMOSCamera.scala 215:20:@424.4]
  wire  sccb_io_sccb_clock; // @[CMOSCamera.scala 215:20:@424.4]
  wire  sccb_io_sccb_data_I; // @[CMOSCamera.scala 215:20:@424.4]
  wire  sccb_io_sccb_data_T; // @[CMOSCamera.scala 215:20:@424.4]
  wire  sccb_io_sendData_ready; // @[CMOSCamera.scala 215:20:@424.4]
  wire  sccb_io_sendData_valid; // @[CMOSCamera.scala 215:20:@424.4]
  wire [7:0] sccb_io_sendData_bits_regAddr; // @[CMOSCamera.scala 215:20:@424.4]
  wire [7:0] sccb_io_sendData_bits_value; // @[CMOSCamera.scala 215:20:@424.4]
  wire  NegEdge_clock; // @[NegEdge.scala 21:25:@449.4]
  wire  NegEdge_reset; // @[NegEdge.scala 21:25:@449.4]
  wire  NegEdge_io_d; // @[NegEdge.scala 21:25:@449.4]
  wire  NegEdge_io_pulse; // @[NegEdge.scala 21:25:@449.4]
  reg  value; // @[Counter.scala 26:33:@431.4]
  reg [31:0] _RAND_0;
  wire [1:0] _T_89; // @[Counter.scala 35:22:@434.6]
  wire  _T_90; // @[Counter.scala 35:22:@435.6]
  reg  systemClock; // @[CMOSCamera.scala 222:28:@439.4]
  reg [31:0] _RAND_1;
  wire  _T_93; // @[CMOSCamera.scala 224:20:@441.6]
  wire  _GEN_1; // @[CMOSCamera.scala 223:33:@440.4]
  wire  pixelClock; // @[CMOSCamera.scala 228:49:@444.4]
  reg [9:0] _T_96; // @[CMOSCamera.scala 230:20:@445.4]
  reg [31:0] _RAND_2;
  reg [8:0] _T_99; // @[CMOSCamera.scala 231:20:@446.4]
  reg [31:0] _RAND_3;
  reg  _T_102; // @[CMOSCamera.scala 232:29:@447.4]
  reg [31:0] _RAND_4;
  reg [7:0] _T_105; // @[CMOSCamera.scala 233:31:@448.4]
  reg [31:0] _RAND_5;
  wire  _T_106; // @[CMOSCamera.scala 237:21:@454.6]
  wire [10:0] _T_108; // @[CMOSCamera.scala 241:16:@460.8]
  wire [9:0] _T_109; // @[CMOSCamera.scala 241:16:@461.8]
  wire [7:0] _GEN_2; // @[CMOSCamera.scala 238:25:@456.6]
  wire [9:0] _GEN_3; // @[CMOSCamera.scala 238:25:@456.6]
  wire  _GEN_4; // @[CMOSCamera.scala 236:37:@453.4]
  wire [7:0] _GEN_5; // @[CMOSCamera.scala 236:37:@453.4]
  wire [9:0] _GEN_6; // @[CMOSCamera.scala 236:37:@453.4]
  wire [9:0] _T_113; // @[CMOSCamera.scala 249:14:@470.6]
  wire [8:0] _T_114; // @[CMOSCamera.scala 249:14:@471.6]
  wire [8:0] _GEN_7; // @[CMOSCamera.scala 250:42:@475.6]
  wire [8:0] _GEN_8; // @[CMOSCamera.scala 248:26:@469.4]
  wire  _T_118; // @[CMOSCamera.scala 256:59:@480.4]
  wire  _T_119; // @[CMOSCamera.scala 256:52:@481.4]
  wire  _T_121; // @[CMOSCamera.scala 256:68:@482.4]
  wire  _T_122; // @[CMOSCamera.scala 256:63:@483.4]
  wire  _T_124; // @[CMOSCamera.scala 256:83:@484.4]
  wire  _T_125; // @[CMOSCamera.scala 256:76:@485.4]
  wire  _T_127; // @[CMOSCamera.scala 256:92:@486.4]
  wire  _T_128; // @[CMOSCamera.scala 256:87:@487.4]
  wire  _T_130; // @[CMOSCamera.scala 256:103:@488.4]
  wire [8:0] _T_132; // @[CMOSCamera.scala 257:21:@491.4]
  wire [16:0] _T_134; // @[CMOSCamera.scala 257:28:@492.4]
  wire [7:0] _T_135; // @[CMOSCamera.scala 257:39:@493.4]
  wire [16:0] _GEN_9; // @[CMOSCamera.scala 257:36:@494.4]
  wire [17:0] _T_136; // @[CMOSCamera.scala 257:36:@494.4]
  Ov7670sccb sccb ( // @[CMOSCamera.scala 215:20:@424.4]
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
  NegEdge NegEdge ( // @[NegEdge.scala 21:25:@449.4]
    .clock(NegEdge_clock),
    .reset(NegEdge_reset),
    .io_d(NegEdge_io_d),
    .io_pulse(NegEdge_io_pulse)
  );
  assign _T_89 = value + 1'h1; // @[Counter.scala 35:22:@434.6]
  assign _T_90 = value + 1'h1; // @[Counter.scala 35:22:@435.6]
  assign _T_93 = ~ systemClock; // @[CMOSCamera.scala 224:20:@441.6]
  assign _GEN_1 = value ? _T_93 : systemClock; // @[CMOSCamera.scala 223:33:@440.4]
  assign pixelClock = io_cmosCam_pixelClock; // @[CMOSCamera.scala 228:49:@444.4]
  assign _T_106 = ~ _T_102; // @[CMOSCamera.scala 237:21:@454.6]
  assign _T_108 = _T_96 + 10'h1; // @[CMOSCamera.scala 241:16:@460.8]
  assign _T_109 = _T_96 + 10'h1; // @[CMOSCamera.scala 241:16:@461.8]
  assign _GEN_2 = _T_102 ? io_cmosCam_pixcelData : _T_105; // @[CMOSCamera.scala 238:25:@456.6]
  assign _GEN_3 = _T_102 ? _T_96 : _T_109; // @[CMOSCamera.scala 238:25:@456.6]
  assign _GEN_4 = io_cmosCam_horizontalRef ? _T_106 : 1'h0; // @[CMOSCamera.scala 236:37:@453.4]
  assign _GEN_5 = io_cmosCam_horizontalRef ? _GEN_2 : _T_105; // @[CMOSCamera.scala 236:37:@453.4]
  assign _GEN_6 = io_cmosCam_horizontalRef ? _GEN_3 : 10'h0; // @[CMOSCamera.scala 236:37:@453.4]
  assign _T_113 = _T_99 + 9'h1; // @[CMOSCamera.scala 249:14:@470.6]
  assign _T_114 = _T_99 + 9'h1; // @[CMOSCamera.scala 249:14:@471.6]
  assign _GEN_7 = io_cmosCam_verticalSync ? 9'h0 : _T_99; // @[CMOSCamera.scala 250:42:@475.6]
  assign _GEN_8 = NegEdge_io_pulse ? _T_114 : _GEN_7; // @[CMOSCamera.scala 248:26:@469.4]
  assign _T_118 = 10'h0 < _T_96; // @[CMOSCamera.scala 256:59:@480.4]
  assign _T_119 = io_cmosCam_horizontalRef & _T_118; // @[CMOSCamera.scala 256:52:@481.4]
  assign _T_121 = _T_96 < 10'h280; // @[CMOSCamera.scala 256:68:@482.4]
  assign _T_122 = _T_119 & _T_121; // @[CMOSCamera.scala 256:63:@483.4]
  assign _T_124 = 9'h0 < _T_99; // @[CMOSCamera.scala 256:83:@484.4]
  assign _T_125 = _T_122 & _T_124; // @[CMOSCamera.scala 256:76:@485.4]
  assign _T_127 = _T_99 < 9'h1e0; // @[CMOSCamera.scala 256:92:@486.4]
  assign _T_128 = _T_125 & _T_127; // @[CMOSCamera.scala 256:87:@487.4]
  assign _T_130 = _T_102 == 1'h0; // @[CMOSCamera.scala 256:103:@488.4]
  assign _T_132 = _T_96[9:1]; // @[CMOSCamera.scala 257:21:@491.4]
  assign _T_134 = _T_132 * 9'hf0; // @[CMOSCamera.scala 257:28:@492.4]
  assign _T_135 = _T_99[8:1]; // @[CMOSCamera.scala 257:39:@493.4]
  assign _GEN_9 = {{9'd0}, _T_135}; // @[CMOSCamera.scala 257:36:@494.4]
  assign _T_136 = _T_134 + _GEN_9; // @[CMOSCamera.scala 257:36:@494.4]
  assign io_cmosCam_systemClock = systemClock; // @[CMOSCamera.scala 261:26:@499.4]
  assign io_cmosCam_sccb_clock = sccb_io_sccb_clock; // @[CMOSCamera.scala 262:25:@500.4]
  assign io_cmosCam_sccb_data_I = sccb_io_sccb_data_I; // @[CMOSCamera.scala 263:24:@502.4]
  assign io_cmosCam_sccb_data_T = sccb_io_sccb_data_T; // @[CMOSCamera.scala 263:24:@501.4]
  assign io_vramClock = io_cmosCam_pixelClock; // @[CMOSCamera.scala 254:18:@478.4]
  assign io_vramWriteEnable = _T_128 & _T_130; // @[CMOSCamera.scala 256:24:@490.4]
  assign io_vramAddr = _T_134 + _GEN_9; // @[CMOSCamera.scala 257:17:@496.4]
  assign io_vramData = {_T_105,io_cmosCam_pixcelData}; // @[CMOSCamera.scala 258:17:@498.4]
  assign io_sendData_ready = sccb_io_sendData_ready; // @[CMOSCamera.scala 218:20:@430.4]
  assign sccb_clock = clock; // @[:@425.4]
  assign sccb_reset = reset; // @[:@426.4]
  assign sccb_io_sendData_valid = io_sendData_valid; // @[CMOSCamera.scala 218:20:@429.4]
  assign sccb_io_sendData_bits_regAddr = io_sendData_bits_regAddr; // @[CMOSCamera.scala 218:20:@428.4]
  assign sccb_io_sendData_bits_value = io_sendData_bits_value; // @[CMOSCamera.scala 218:20:@427.4]
  assign NegEdge_clock = io_cmosCam_pixelClock; // @[:@450.4]
  assign NegEdge_reset = reset; // @[:@451.4]
  assign NegEdge_io_d = io_cmosCam_horizontalRef; // @[NegEdge.scala 22:18:@452.4]
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
  _T_96 = _RAND_2[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_99 = _RAND_3[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_102 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_105 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      value <= 1'h0;
    end else begin
      value <= _T_90;
    end
    if (reset) begin
      systemClock <= 1'h1;
    end else begin
      if (value) begin
        systemClock <= _T_93;
      end
    end
  end
  always @(posedge pixelClock) begin
    if (reset) begin
      _T_96 <= 10'h0;
    end else begin
      if (io_cmosCam_horizontalRef) begin
        if (!(_T_102)) begin
          _T_96 <= _T_109;
        end
      end else begin
        _T_96 <= 10'h0;
      end
    end
    if (reset) begin
      _T_99 <= 9'h0;
    end else begin
      if (NegEdge_io_pulse) begin
        _T_99 <= _T_114;
      end else begin
        if (io_cmosCam_verticalSync) begin
          _T_99 <= 9'h0;
        end
      end
    end
    if (reset) begin
      _T_102 <= 1'h1;
    end else begin
      if (io_cmosCam_horizontalRef) begin
        _T_102 <= _T_106;
      end else begin
        _T_102 <= 1'h0;
      end
    end
    if (reset) begin
      _T_105 <= 8'h0;
    end else begin
      if (io_cmosCam_horizontalRef) begin
        if (_T_102) begin
          _T_105 <= io_cmosCam_pixcelData;
        end
      end
    end
  end
endmodule
module Debounce( // @[:@520.2]
  input   clock, // @[:@521.4]
  input   reset, // @[:@522.4]
  input   io_in, // @[:@523.4]
  output  io_out // @[:@523.4]
);
  reg [23:0] value; // @[Counter.scala 26:33:@525.4]
  reg [31:0] _RAND_0;
  wire  enable; // @[Counter.scala 34:24:@527.6]
  wire [24:0] _T_15; // @[Counter.scala 35:22:@528.6]
  wire [23:0] _T_16; // @[Counter.scala 35:22:@529.6]
  wire [23:0] _GEN_0; // @[Counter.scala 37:21:@531.6]
  reg  reg0; // @[Reg.scala 19:20:@536.4]
  reg [31:0] _RAND_1;
  wire  _GEN_2; // @[Reg.scala 20:19:@537.4]
  reg  reg1; // @[Reg.scala 19:20:@540.4]
  reg [31:0] _RAND_2;
  wire  _GEN_3; // @[Reg.scala 20:19:@541.4]
  wire  _T_23; // @[Debounce.scala 19:21:@544.4]
  wire  _T_24; // @[Debounce.scala 19:18:@545.4]
  assign enable = value == 24'h98967f; // @[Counter.scala 34:24:@527.6]
  assign _T_15 = value + 24'h1; // @[Counter.scala 35:22:@528.6]
  assign _T_16 = value + 24'h1; // @[Counter.scala 35:22:@529.6]
  assign _GEN_0 = enable ? 24'h0 : _T_16; // @[Counter.scala 37:21:@531.6]
  assign _GEN_2 = enable ? io_in : reg0; // @[Reg.scala 20:19:@537.4]
  assign _GEN_3 = enable ? reg0 : reg1; // @[Reg.scala 20:19:@541.4]
  assign _T_23 = reg1 == 1'h0; // @[Debounce.scala 19:21:@544.4]
  assign _T_24 = reg0 & _T_23; // @[Debounce.scala 19:18:@545.4]
  assign io_out = _T_24 & enable; // @[Debounce.scala 19:10:@547.4]
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
module Seg7LED( // @[:@578.2]
  input        clock, // @[:@579.4]
  input        reset, // @[:@580.4]
  input  [3:0] io_digits_0, // @[:@581.4]
  input  [3:0] io_digits_1, // @[:@581.4]
  input  [3:0] io_digits_2, // @[:@581.4]
  input  [3:0] io_digits_3, // @[:@581.4]
  output [6:0] io_seg7led_cathodes, // @[:@581.4]
  output [7:0] io_seg7led_anodes // @[:@581.4]
);
  reg [16:0] value; // @[Counter.scala 26:33:@583.4]
  reg [31:0] _RAND_0;
  wire  digitChange; // @[Counter.scala 34:24:@585.6]
  wire [17:0] _T_41; // @[Counter.scala 35:22:@586.6]
  wire [16:0] _T_42; // @[Counter.scala 35:22:@587.6]
  wire [16:0] _GEN_0; // @[Counter.scala 37:21:@589.6]
  reg [2:0] value_1; // @[Counter.scala 26:33:@594.4]
  reg [31:0] _RAND_1;
  wire [3:0] _T_49; // @[Counter.scala 35:22:@597.6]
  wire [2:0] _T_50; // @[Counter.scala 35:22:@598.6]
  wire [2:0] _GEN_2; // @[Counter.scala 63:17:@595.4]
  wire [3:0] _GEN_4; // @[Seg7LED.scala 37:17:@602.4]
  wire [3:0] _GEN_5; // @[Seg7LED.scala 37:17:@602.4]
  wire [3:0] _GEN_6; // @[Seg7LED.scala 37:17:@602.4]
  wire [3:0] _GEN_7; // @[Seg7LED.scala 37:17:@602.4]
  wire [3:0] _GEN_8; // @[Seg7LED.scala 37:17:@602.4]
  wire [3:0] _GEN_9; // @[Seg7LED.scala 37:17:@602.4]
  wire [3:0] _GEN_10; // @[Seg7LED.scala 37:17:@602.4]
  wire  _T_54; // @[Seg7LED.scala 37:17:@602.4]
  wire  _T_57; // @[Seg7LED.scala 38:17:@603.4]
  wire  _T_60; // @[Seg7LED.scala 39:17:@604.4]
  wire  _T_63; // @[Seg7LED.scala 40:17:@605.4]
  wire  _T_66; // @[Seg7LED.scala 41:17:@606.4]
  wire  _T_69; // @[Seg7LED.scala 42:17:@607.4]
  wire  _T_72; // @[Seg7LED.scala 43:17:@608.4]
  wire  _T_75; // @[Seg7LED.scala 44:17:@609.4]
  wire  _T_78; // @[Seg7LED.scala 45:17:@610.4]
  wire  _T_81; // @[Seg7LED.scala 46:17:@611.4]
  wire  _T_84; // @[Seg7LED.scala 47:17:@612.4]
  wire  _T_87; // @[Seg7LED.scala 48:17:@613.4]
  wire  _T_90; // @[Seg7LED.scala 49:17:@614.4]
  wire  _T_93; // @[Seg7LED.scala 50:17:@615.4]
  wire  _T_96; // @[Seg7LED.scala 51:17:@616.4]
  wire  _T_99; // @[Seg7LED.scala 52:17:@617.4]
  wire [6:0] _T_101; // @[Mux.scala 61:16:@618.4]
  wire [6:0] _T_102; // @[Mux.scala 61:16:@619.4]
  wire [6:0] _T_103; // @[Mux.scala 61:16:@620.4]
  wire [6:0] _T_104; // @[Mux.scala 61:16:@621.4]
  wire [6:0] _T_105; // @[Mux.scala 61:16:@622.4]
  wire [6:0] _T_106; // @[Mux.scala 61:16:@623.4]
  wire [6:0] _T_107; // @[Mux.scala 61:16:@624.4]
  wire [6:0] _T_108; // @[Mux.scala 61:16:@625.4]
  wire [6:0] _T_109; // @[Mux.scala 61:16:@626.4]
  wire [6:0] _T_110; // @[Mux.scala 61:16:@627.4]
  wire [6:0] _T_111; // @[Mux.scala 61:16:@628.4]
  wire [6:0] _T_112; // @[Mux.scala 61:16:@629.4]
  wire [6:0] _T_113; // @[Mux.scala 61:16:@630.4]
  wire [6:0] _T_114; // @[Mux.scala 61:16:@631.4]
  wire [6:0] _T_115; // @[Mux.scala 61:16:@632.4]
  reg [7:0] anodes; // @[Seg7LED.scala 54:23:@635.4]
  reg [31:0] _RAND_2;
  wire [6:0] _T_119; // @[Seg7LED.scala 57:25:@637.6]
  wire  _T_120; // @[Seg7LED.scala 57:39:@638.6]
  wire [7:0] _T_121; // @[Cat.scala 30:58:@639.6]
  wire [7:0] _GEN_11; // @[Seg7LED.scala 55:22:@636.4]
  assign digitChange = value == 17'h1869f; // @[Counter.scala 34:24:@585.6]
  assign _T_41 = value + 17'h1; // @[Counter.scala 35:22:@586.6]
  assign _T_42 = value + 17'h1; // @[Counter.scala 35:22:@587.6]
  assign _GEN_0 = digitChange ? 17'h0 : _T_42; // @[Counter.scala 37:21:@589.6]
  assign _T_49 = value_1 + 3'h1; // @[Counter.scala 35:22:@597.6]
  assign _T_50 = value_1 + 3'h1; // @[Counter.scala 35:22:@598.6]
  assign _GEN_2 = digitChange ? _T_50 : value_1; // @[Counter.scala 63:17:@595.4]
  assign _GEN_4 = 3'h1 == value_1 ? io_digits_1 : io_digits_0; // @[Seg7LED.scala 37:17:@602.4]
  assign _GEN_5 = 3'h2 == value_1 ? io_digits_2 : _GEN_4; // @[Seg7LED.scala 37:17:@602.4]
  assign _GEN_6 = 3'h3 == value_1 ? io_digits_3 : _GEN_5; // @[Seg7LED.scala 37:17:@602.4]
  assign _GEN_7 = 3'h4 == value_1 ? 4'h0 : _GEN_6; // @[Seg7LED.scala 37:17:@602.4]
  assign _GEN_8 = 3'h5 == value_1 ? 4'h0 : _GEN_7; // @[Seg7LED.scala 37:17:@602.4]
  assign _GEN_9 = 3'h6 == value_1 ? 4'h0 : _GEN_8; // @[Seg7LED.scala 37:17:@602.4]
  assign _GEN_10 = 3'h7 == value_1 ? 4'h0 : _GEN_9; // @[Seg7LED.scala 37:17:@602.4]
  assign _T_54 = _GEN_10 == 4'h0; // @[Seg7LED.scala 37:17:@602.4]
  assign _T_57 = _GEN_10 == 4'h1; // @[Seg7LED.scala 38:17:@603.4]
  assign _T_60 = _GEN_10 == 4'h2; // @[Seg7LED.scala 39:17:@604.4]
  assign _T_63 = _GEN_10 == 4'h3; // @[Seg7LED.scala 40:17:@605.4]
  assign _T_66 = _GEN_10 == 4'h4; // @[Seg7LED.scala 41:17:@606.4]
  assign _T_69 = _GEN_10 == 4'h5; // @[Seg7LED.scala 42:17:@607.4]
  assign _T_72 = _GEN_10 == 4'h6; // @[Seg7LED.scala 43:17:@608.4]
  assign _T_75 = _GEN_10 == 4'h7; // @[Seg7LED.scala 44:17:@609.4]
  assign _T_78 = _GEN_10 == 4'h8; // @[Seg7LED.scala 45:17:@610.4]
  assign _T_81 = _GEN_10 == 4'h9; // @[Seg7LED.scala 46:17:@611.4]
  assign _T_84 = _GEN_10 == 4'ha; // @[Seg7LED.scala 47:17:@612.4]
  assign _T_87 = _GEN_10 == 4'hb; // @[Seg7LED.scala 48:17:@613.4]
  assign _T_90 = _GEN_10 == 4'hc; // @[Seg7LED.scala 49:17:@614.4]
  assign _T_93 = _GEN_10 == 4'hd; // @[Seg7LED.scala 50:17:@615.4]
  assign _T_96 = _GEN_10 == 4'he; // @[Seg7LED.scala 51:17:@616.4]
  assign _T_99 = _GEN_10 == 4'hf; // @[Seg7LED.scala 52:17:@617.4]
  assign _T_101 = _T_99 ? 7'he : 7'h7f; // @[Mux.scala 61:16:@618.4]
  assign _T_102 = _T_96 ? 7'h6 : _T_101; // @[Mux.scala 61:16:@619.4]
  assign _T_103 = _T_93 ? 7'h21 : _T_102; // @[Mux.scala 61:16:@620.4]
  assign _T_104 = _T_90 ? 7'h46 : _T_103; // @[Mux.scala 61:16:@621.4]
  assign _T_105 = _T_87 ? 7'h3 : _T_104; // @[Mux.scala 61:16:@622.4]
  assign _T_106 = _T_84 ? 7'h8 : _T_105; // @[Mux.scala 61:16:@623.4]
  assign _T_107 = _T_81 ? 7'h10 : _T_106; // @[Mux.scala 61:16:@624.4]
  assign _T_108 = _T_78 ? 7'h0 : _T_107; // @[Mux.scala 61:16:@625.4]
  assign _T_109 = _T_75 ? 7'h58 : _T_108; // @[Mux.scala 61:16:@626.4]
  assign _T_110 = _T_72 ? 7'h2 : _T_109; // @[Mux.scala 61:16:@627.4]
  assign _T_111 = _T_69 ? 7'h12 : _T_110; // @[Mux.scala 61:16:@628.4]
  assign _T_112 = _T_66 ? 7'h19 : _T_111; // @[Mux.scala 61:16:@629.4]
  assign _T_113 = _T_63 ? 7'h30 : _T_112; // @[Mux.scala 61:16:@630.4]
  assign _T_114 = _T_60 ? 7'h24 : _T_113; // @[Mux.scala 61:16:@631.4]
  assign _T_115 = _T_57 ? 7'h79 : _T_114; // @[Mux.scala 61:16:@632.4]
  assign _T_119 = anodes[6:0]; // @[Seg7LED.scala 57:25:@637.6]
  assign _T_120 = anodes[7]; // @[Seg7LED.scala 57:39:@638.6]
  assign _T_121 = {_T_119,_T_120}; // @[Cat.scala 30:58:@639.6]
  assign _GEN_11 = digitChange ? _T_121 : anodes; // @[Seg7LED.scala 55:22:@636.4]
  assign io_seg7led_cathodes = _T_54 ? 7'h40 : _T_115; // @[Seg7LED.scala 35:23:@634.4]
  assign io_seg7led_anodes = anodes; // @[Seg7LED.scala 65:21:@661.4]
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
module CameraDisplay( // @[:@673.2]
  input        clock, // @[:@674.4]
  input        reset, // @[:@675.4]
  output       io_lcdSpi_serialClock, // @[:@676.4]
  output       io_lcdSpi_dataCommand, // @[:@676.4]
  output       io_lcdSpi_chipSelectN, // @[:@676.4]
  output       io_lcdSpi_masterOutSlaveIn, // @[:@676.4]
  input        io_lcdSpi_masterInSlaveOut, // @[:@676.4]
  output       io_lcdSpi_resetN, // @[:@676.4]
  output       io_lcdSpi_backLight, // @[:@676.4]
  output       io_cmosCam_systemClock, // @[:@676.4]
  input        io_cmosCam_verticalSync, // @[:@676.4]
  input        io_cmosCam_horizontalRef, // @[:@676.4]
  input        io_cmosCam_pixelClock, // @[:@676.4]
  input  [7:0] io_cmosCam_pixcelData, // @[:@676.4]
  output       io_cmosCam_sccb_clock, // @[:@676.4]
  inout        io_cmosCam_sccb_ioBuf, // @[:@676.4]
  output       io_cmosCam_resetN, // @[:@676.4]
  output       io_cmosCam_powerDown, // @[:@676.4]
  output       io_sendData_ready, // @[:@676.4]
  input        io_sendData_valid, // @[:@676.4]
  input  [7:0] io_sendData_bits_regAddr, // @[:@676.4]
  input  [7:0] io_sendData_bits_value, // @[:@676.4]
  input        io_init, // @[:@676.4]
  output [6:0] io_seg7led_cathodes, // @[:@676.4]
  output       io_seg7led_decimalPoint, // @[:@676.4]
  output [7:0] io_seg7led_anodes // @[:@676.4]
);
  wire  lcdDisplay_clock; // @[CameraDisplay.scala 46:26:@678.4]
  wire  lcdDisplay_reset; // @[CameraDisplay.scala 46:26:@678.4]
  wire  lcdDisplay_io_lcdSpi_serialClock; // @[CameraDisplay.scala 46:26:@678.4]
  wire  lcdDisplay_io_lcdSpi_dataCommand; // @[CameraDisplay.scala 46:26:@678.4]
  wire  lcdDisplay_io_lcdSpi_chipSelectN; // @[CameraDisplay.scala 46:26:@678.4]
  wire  lcdDisplay_io_lcdSpi_masterOutSlaveIn; // @[CameraDisplay.scala 46:26:@678.4]
  wire  lcdDisplay_io_lcdSpi_resetN; // @[CameraDisplay.scala 46:26:@678.4]
  wire [16:0] lcdDisplay_io_vramAddr; // @[CameraDisplay.scala 46:26:@678.4]
  wire [15:0] lcdDisplay_io_vramData; // @[CameraDisplay.scala 46:26:@678.4]
  wire  cmosCamera_clock; // @[CameraDisplay.scala 47:26:@681.4]
  wire  cmosCamera_reset; // @[CameraDisplay.scala 47:26:@681.4]
  wire  cmosCamera_io_cmosCam_systemClock; // @[CameraDisplay.scala 47:26:@681.4]
  wire  cmosCamera_io_cmosCam_verticalSync; // @[CameraDisplay.scala 47:26:@681.4]
  wire  cmosCamera_io_cmosCam_horizontalRef; // @[CameraDisplay.scala 47:26:@681.4]
  wire  cmosCamera_io_cmosCam_pixelClock; // @[CameraDisplay.scala 47:26:@681.4]
  wire [7:0] cmosCamera_io_cmosCam_pixcelData; // @[CameraDisplay.scala 47:26:@681.4]
  wire  cmosCamera_io_cmosCam_sccb_clock; // @[CameraDisplay.scala 47:26:@681.4]
  wire  cmosCamera_io_cmosCam_sccb_data_I; // @[CameraDisplay.scala 47:26:@681.4]
  wire  cmosCamera_io_cmosCam_sccb_data_T; // @[CameraDisplay.scala 47:26:@681.4]
  wire  cmosCamera_io_vramClock; // @[CameraDisplay.scala 47:26:@681.4]
  wire  cmosCamera_io_vramWriteEnable; // @[CameraDisplay.scala 47:26:@681.4]
  wire [16:0] cmosCamera_io_vramAddr; // @[CameraDisplay.scala 47:26:@681.4]
  wire [15:0] cmosCamera_io_vramData; // @[CameraDisplay.scala 47:26:@681.4]
  wire  cmosCamera_io_sendData_ready; // @[CameraDisplay.scala 47:26:@681.4]
  wire  cmosCamera_io_sendData_valid; // @[CameraDisplay.scala 47:26:@681.4]
  wire [7:0] cmosCamera_io_sendData_bits_regAddr; // @[CameraDisplay.scala 47:26:@681.4]
  wire [7:0] cmosCamera_io_sendData_bits_value; // @[CameraDisplay.scala 47:26:@681.4]
  wire [15:0] vram_doutb; // @[CameraDisplay.scala 48:20:@684.4]
  wire [16:0] vram_addrb; // @[CameraDisplay.scala 48:20:@684.4]
  wire  vram_clkb; // @[CameraDisplay.scala 48:20:@684.4]
  wire [15:0] vram_dina; // @[CameraDisplay.scala 48:20:@684.4]
  wire [16:0] vram_addra; // @[CameraDisplay.scala 48:20:@684.4]
  wire  vram_wea; // @[CameraDisplay.scala 48:20:@684.4]
  wire  vram_ena; // @[CameraDisplay.scala 48:20:@684.4]
  wire  vram_clka; // @[CameraDisplay.scala 48:20:@684.4]
  wire  Debounce_clock; // @[Debounce.scala 26:26:@734.4]
  wire  Debounce_reset; // @[Debounce.scala 26:26:@734.4]
  wire  Debounce_io_in; // @[Debounce.scala 26:26:@734.4]
  wire  Debounce_io_out; // @[Debounce.scala 26:26:@734.4]
  wire  Debounce_1_clock; // @[Debounce.scala 26:26:@741.6]
  wire  Debounce_1_reset; // @[Debounce.scala 26:26:@741.6]
  wire  Debounce_1_io_in; // @[Debounce.scala 26:26:@741.6]
  wire  Debounce_1_io_out; // @[Debounce.scala 26:26:@741.6]
  wire  seg7led_clock; // @[CameraDisplay.scala 86:23:@769.4]
  wire  seg7led_reset; // @[CameraDisplay.scala 86:23:@769.4]
  wire [3:0] seg7led_io_digits_0; // @[CameraDisplay.scala 86:23:@769.4]
  wire [3:0] seg7led_io_digits_1; // @[CameraDisplay.scala 86:23:@769.4]
  wire [3:0] seg7led_io_digits_2; // @[CameraDisplay.scala 86:23:@769.4]
  wire [3:0] seg7led_io_digits_3; // @[CameraDisplay.scala 86:23:@769.4]
  wire [6:0] seg7led_io_seg7led_cathodes; // @[CameraDisplay.scala 86:23:@769.4]
  wire [7:0] seg7led_io_seg7led_anodes; // @[CameraDisplay.scala 86:23:@769.4]
  wire  IOBUF_T; // @[CMOSCamera.scala 20:23:@822.4]
  wire  IOBUF_O; // @[CMOSCamera.scala 20:23:@822.4]
  wire  IOBUF_I; // @[CMOSCamera.scala 20:23:@822.4]
  reg [7:0] programCounter; // @[CameraDisplay.scala 60:31:@728.4]
  reg [31:0] _RAND_0;
  reg  state; // @[CameraDisplay.scala 63:22:@729.4]
  reg [31:0] _RAND_1;
  wire  _T_76; // @[CameraDisplay.scala 67:15:@739.4]
  wire  _GEN_0; // @[CameraDisplay.scala 68:30:@745.6]
  wire [7:0] _GEN_1; // @[CameraDisplay.scala 68:30:@745.6]
  wire  _T_80; // @[CameraDisplay.scala 75:28:@753.8]
  wire [4:0] _T_83; // @[:@756.10]
  wire [7:0] _GEN_4; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_5; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_6; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_7; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_8; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_9; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_10; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_11; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_12; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_13; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_14; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_15; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_16; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_17; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_18; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_19; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_20; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_21; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_22; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_23; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_24; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_25; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_26; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_27; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_28; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_29; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_30; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_31; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_32; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_33; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_34; // @[CameraDisplay.scala 77:45:@757.10]
  wire [7:0] _GEN_35; // @[CameraDisplay.scala 77:45:@757.10]
  wire [8:0] _T_87; // @[CameraDisplay.scala 79:42:@760.10]
  wire [7:0] _T_88; // @[CameraDisplay.scala 79:42:@761.10]
  wire [7:0] _GEN_71; // @[CameraDisplay.scala 75:52:@754.8]
  wire [7:0] _GEN_72; // @[CameraDisplay.scala 75:52:@754.8]
  wire [7:0] _GEN_73; // @[CameraDisplay.scala 75:52:@754.8]
  wire  _GEN_74; // @[CameraDisplay.scala 75:52:@754.8]
  wire  _GEN_75; // @[CameraDisplay.scala 73:41:@751.6]
  wire [7:0] _GEN_76; // @[CameraDisplay.scala 73:41:@751.6]
  wire [7:0] _GEN_77; // @[CameraDisplay.scala 73:41:@751.6]
  wire [7:0] _GEN_78; // @[CameraDisplay.scala 73:41:@751.6]
  wire  _GEN_79; // @[CameraDisplay.scala 73:41:@751.6]
  wire  _GEN_80; // @[CameraDisplay.scala 67:30:@740.4]
  wire [7:0] _GEN_81; // @[CameraDisplay.scala 67:30:@740.4]
  LCDDisplay lcdDisplay ( // @[CameraDisplay.scala 46:26:@678.4]
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
  CMOSCamera cmosCamera ( // @[CameraDisplay.scala 47:26:@681.4]
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
    .io_vramData(cmosCamera_io_vramData),
    .io_sendData_ready(cmosCamera_io_sendData_ready),
    .io_sendData_valid(cmosCamera_io_sendData_valid),
    .io_sendData_bits_regAddr(cmosCamera_io_sendData_bits_regAddr),
    .io_sendData_bits_value(cmosCamera_io_sendData_bits_value)
  );
  Vram vram ( // @[CameraDisplay.scala 48:20:@684.4]
    .doutb(vram_doutb),
    .addrb(vram_addrb),
    .clkb(vram_clkb),
    .dina(vram_dina),
    .addra(vram_addra),
    .wea(vram_wea),
    .ena(vram_ena),
    .clka(vram_clka)
  );
  Debounce Debounce ( // @[Debounce.scala 26:26:@734.4]
    .clock(Debounce_clock),
    .reset(Debounce_reset),
    .io_in(Debounce_io_in),
    .io_out(Debounce_io_out)
  );
  Debounce Debounce_1 ( // @[Debounce.scala 26:26:@741.6]
    .clock(Debounce_1_clock),
    .reset(Debounce_1_reset),
    .io_in(Debounce_1_io_in),
    .io_out(Debounce_1_io_out)
  );
  Seg7LED seg7led ( // @[CameraDisplay.scala 86:23:@769.4]
    .clock(seg7led_clock),
    .reset(seg7led_reset),
    .io_digits_0(seg7led_io_digits_0),
    .io_digits_1(seg7led_io_digits_1),
    .io_digits_2(seg7led_io_digits_2),
    .io_digits_3(seg7led_io_digits_3),
    .io_seg7led_cathodes(seg7led_io_seg7led_cathodes),
    .io_seg7led_anodes(seg7led_io_seg7led_anodes)
  );
  IOBUF IOBUF ( // @[CMOSCamera.scala 20:23:@822.4]
    .T(IOBUF_T),
    .O(IOBUF_O),
    .I(IOBUF_I),
    .IO(io_cmosCam_sccb_ioBuf)
  );
  assign _T_76 = state == 1'h0; // @[CameraDisplay.scala 67:15:@739.4]
  assign _GEN_0 = Debounce_1_io_out ? 1'h1 : state; // @[CameraDisplay.scala 68:30:@745.6]
  assign _GEN_1 = Debounce_1_io_out ? 8'h0 : programCounter; // @[CameraDisplay.scala 68:30:@745.6]
  assign _T_80 = programCounter < 8'h11; // @[CameraDisplay.scala 75:28:@753.8]
  assign _T_83 = programCounter[4:0]; // @[:@756.10]
  assign _GEN_4 = 5'h1 == _T_83 ? 8'h12 : 8'h11; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_5 = 5'h1 == _T_83 ? 8'h4 : 8'h1; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_6 = 5'h2 == _T_83 ? 8'h14 : _GEN_4; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_7 = 5'h2 == _T_83 ? 8'h30 : _GEN_5; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_8 = 5'h3 == _T_83 ? 8'h3a : _GEN_6; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_9 = 5'h3 == _T_83 ? 8'h8 : _GEN_7; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_10 = 5'h4 == _T_83 ? 8'h40 : _GEN_8; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_11 = 5'h4 == _T_83 ? 8'h10 : _GEN_9; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_12 = 5'h5 == _T_83 ? 8'h41 : _GEN_10; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_13 = 5'h5 == _T_83 ? 8'h38 : _GEN_11; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_14 = 5'h6 == _T_83 ? 8'h8c : _GEN_12; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_15 = 5'h6 == _T_83 ? 8'h0 : _GEN_13; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_16 = 5'h7 == _T_83 ? 8'h4f : _GEN_14; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_17 = 5'h7 == _T_83 ? 8'h48 : _GEN_15; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_18 = 5'h8 == _T_83 ? 8'h50 : _GEN_16; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_19 = 5'h8 == _T_83 ? 8'h40 : _GEN_17; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_20 = 5'h9 == _T_83 ? 8'h51 : _GEN_18; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_21 = 5'h9 == _T_83 ? 8'h8 : _GEN_19; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_22 = 5'ha == _T_83 ? 8'h52 : _GEN_20; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_23 = 5'ha == _T_83 ? 8'h18 : _GEN_21; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_24 = 5'hb == _T_83 ? 8'h53 : _GEN_22; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_25 = 5'hb == _T_83 ? 8'h38 : _GEN_23; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_26 = 5'hc == _T_83 ? 8'h54 : _GEN_24; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_27 = 5'hc == _T_83 ? 8'h48 : _GEN_25; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_28 = 5'hd == _T_83 ? 8'h58 : _GEN_26; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_29 = 5'hd == _T_83 ? 8'h1e : _GEN_27; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_30 = 5'he == _T_83 ? 8'h6b : _GEN_28; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_31 = 5'he == _T_83 ? 8'h4a : _GEN_29; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_32 = 5'hf == _T_83 ? 8'hb0 : _GEN_30; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_33 = 5'hf == _T_83 ? 8'h84 : _GEN_31; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_34 = 5'h10 == _T_83 ? 8'hb1 : _GEN_32; // @[CameraDisplay.scala 77:45:@757.10]
  assign _GEN_35 = 5'h10 == _T_83 ? 8'h4 : _GEN_33; // @[CameraDisplay.scala 77:45:@757.10]
  assign _T_87 = programCounter + 8'h1; // @[CameraDisplay.scala 79:42:@760.10]
  assign _T_88 = programCounter + 8'h1; // @[CameraDisplay.scala 79:42:@761.10]
  assign _GEN_71 = _T_80 ? _GEN_34 : io_sendData_bits_regAddr; // @[CameraDisplay.scala 75:52:@754.8]
  assign _GEN_72 = _T_80 ? _GEN_35 : io_sendData_bits_value; // @[CameraDisplay.scala 75:52:@754.8]
  assign _GEN_73 = _T_80 ? _T_88 : programCounter; // @[CameraDisplay.scala 75:52:@754.8]
  assign _GEN_74 = _T_80 ? state : 1'h0; // @[CameraDisplay.scala 75:52:@754.8]
  assign _GEN_75 = cmosCamera_io_sendData_ready ? _T_80 : Debounce_io_out; // @[CameraDisplay.scala 73:41:@751.6]
  assign _GEN_76 = cmosCamera_io_sendData_ready ? _GEN_71 : io_sendData_bits_regAddr; // @[CameraDisplay.scala 73:41:@751.6]
  assign _GEN_77 = cmosCamera_io_sendData_ready ? _GEN_72 : io_sendData_bits_value; // @[CameraDisplay.scala 73:41:@751.6]
  assign _GEN_78 = cmosCamera_io_sendData_ready ? _GEN_73 : programCounter; // @[CameraDisplay.scala 73:41:@751.6]
  assign _GEN_79 = cmosCamera_io_sendData_ready ? _GEN_74 : state; // @[CameraDisplay.scala 73:41:@751.6]
  assign _GEN_80 = _T_76 ? _GEN_0 : _GEN_79; // @[CameraDisplay.scala 67:30:@740.4]
  assign _GEN_81 = _T_76 ? _GEN_1 : _GEN_78; // @[CameraDisplay.scala 67:30:@740.4]
  assign io_lcdSpi_serialClock = lcdDisplay_io_lcdSpi_serialClock; // @[CameraDisplay.scala 105:13:@815.4]
  assign io_lcdSpi_dataCommand = lcdDisplay_io_lcdSpi_dataCommand; // @[CameraDisplay.scala 105:13:@814.4]
  assign io_lcdSpi_chipSelectN = lcdDisplay_io_lcdSpi_chipSelectN; // @[CameraDisplay.scala 105:13:@813.4]
  assign io_lcdSpi_masterOutSlaveIn = lcdDisplay_io_lcdSpi_masterOutSlaveIn; // @[CameraDisplay.scala 105:13:@812.4]
  assign io_lcdSpi_resetN = lcdDisplay_io_lcdSpi_resetN; // @[CameraDisplay.scala 105:13:@810.4]
  assign io_lcdSpi_backLight = 1'h1; // @[CameraDisplay.scala 105:13:@809.4]
  assign io_cmosCam_systemClock = cmosCamera_io_cmosCam_systemClock; // @[CameraDisplay.scala 107:26:@816.4]
  assign io_cmosCam_sccb_clock = cmosCamera_io_cmosCam_sccb_clock; // @[CameraDisplay.scala 112:25:@821.4]
  assign io_cmosCam_resetN = 1'h1; // @[CameraDisplay.scala 114:21:@831.4]
  assign io_cmosCam_powerDown = 1'h0; // @[CameraDisplay.scala 115:24:@832.4]
  assign io_sendData_ready = cmosCamera_io_sendData_ready; // @[CameraDisplay.scala 65:26:@733.4]
  assign io_seg7led_cathodes = seg7led_io_seg7led_cathodes; // @[CameraDisplay.scala 93:14:@800.4]
  assign io_seg7led_decimalPoint = 1'h1; // @[CameraDisplay.scala 93:14:@799.4]
  assign io_seg7led_anodes = seg7led_io_seg7led_anodes; // @[CameraDisplay.scala 93:14:@798.4]
  assign lcdDisplay_clock = clock; // @[:@679.4]
  assign lcdDisplay_reset = reset; // @[:@680.4]
  assign lcdDisplay_io_vramData = vram_doutb; // @[CameraDisplay.scala 103:26:@808.4]
  assign cmosCamera_clock = clock; // @[:@682.4]
  assign cmosCamera_reset = reset; // @[:@683.4]
  assign cmosCamera_io_cmosCam_verticalSync = io_cmosCam_verticalSync; // @[CameraDisplay.scala 108:27:@817.4]
  assign cmosCamera_io_cmosCam_horizontalRef = io_cmosCam_horizontalRef; // @[CameraDisplay.scala 109:28:@818.4]
  assign cmosCamera_io_cmosCam_pixelClock = io_cmosCam_pixelClock; // @[CameraDisplay.scala 110:25:@819.4]
  assign cmosCamera_io_cmosCam_pixcelData = io_cmosCam_pixcelData; // @[CameraDisplay.scala 111:25:@820.4]
  assign cmosCamera_io_sendData_valid = _T_76 ? Debounce_io_out : _GEN_75; // @[CameraDisplay.scala 65:26:@732.4 CameraDisplay.scala 66:32:@738.4 CameraDisplay.scala 74:36:@752.8 CameraDisplay.scala 76:38:@755.10]
  assign cmosCamera_io_sendData_bits_regAddr = _T_76 ? io_sendData_bits_regAddr : _GEN_76; // @[CameraDisplay.scala 65:26:@731.4 CameraDisplay.scala 77:45:@757.10]
  assign cmosCamera_io_sendData_bits_value = _T_76 ? io_sendData_bits_value : _GEN_77; // @[CameraDisplay.scala 65:26:@730.4 CameraDisplay.scala 78:43:@759.10]
  assign vram_addrb = lcdDisplay_io_vramAddr; // @[CameraDisplay.scala 102:17:@807.4]
  assign vram_clkb = clock; // @[CameraDisplay.scala 101:16:@806.4]
  assign vram_dina = cmosCamera_io_vramData; // @[CameraDisplay.scala 99:16:@805.4]
  assign vram_addra = cmosCamera_io_vramAddr; // @[CameraDisplay.scala 98:17:@804.4]
  assign vram_wea = cmosCamera_io_vramWriteEnable; // @[CameraDisplay.scala 97:15:@803.4]
  assign vram_ena = 1'h1; // @[CameraDisplay.scala 96:15:@802.4]
  assign vram_clka = cmosCamera_io_vramClock; // @[CameraDisplay.scala 95:16:@801.4]
  assign Debounce_clock = clock; // @[:@735.4]
  assign Debounce_reset = reset; // @[:@736.4]
  assign Debounce_io_in = io_sendData_valid; // @[Debounce.scala 27:20:@737.4]
  assign Debounce_1_clock = clock; // @[:@742.6]
  assign Debounce_1_reset = reset; // @[:@743.6]
  assign Debounce_1_io_in = io_init; // @[Debounce.scala 27:20:@744.6]
  assign seg7led_clock = clock; // @[:@770.4]
  assign seg7led_reset = reset; // @[:@771.4]
  assign seg7led_io_digits_0 = io_sendData_bits_value[3:0]; // @[CameraDisplay.scala 87:21:@781.4 CameraDisplay.scala 88:24:@790.4]
  assign seg7led_io_digits_1 = io_sendData_bits_value[7:4]; // @[CameraDisplay.scala 87:21:@782.4 CameraDisplay.scala 89:24:@792.4]
  assign seg7led_io_digits_2 = io_sendData_bits_regAddr[3:0]; // @[CameraDisplay.scala 87:21:@783.4 CameraDisplay.scala 90:24:@794.4]
  assign seg7led_io_digits_3 = io_sendData_bits_regAddr[7:4]; // @[CameraDisplay.scala 87:21:@784.4 CameraDisplay.scala 91:24:@796.4]
  assign IOBUF_T = cmosCamera_io_cmosCam_sccb_data_T; // @[CMOSCamera.scala 23:16:@829.4]
  assign IOBUF_I = cmosCamera_io_cmosCam_sccb_data_I; // @[CMOSCamera.scala 22:16:@828.4]
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
  state = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      programCounter <= 8'h0;
    end else begin
      if (_T_76) begin
        if (Debounce_1_io_out) begin
          programCounter <= 8'h0;
        end
      end else begin
        if (cmosCamera_io_sendData_ready) begin
          if (_T_80) begin
            programCounter <= _T_88;
          end
        end
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else begin
      if (_T_76) begin
        if (Debounce_1_io_out) begin
          state <= 1'h1;
        end
      end else begin
        if (cmosCamera_io_sendData_ready) begin
          if (!(_T_80)) begin
            state <= 1'h0;
          end
        end
      end
    end
  end
endmodule
