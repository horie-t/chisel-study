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
  input   io_lcdSpi_masterInSlaveOut, // @[:@63.4]
  output  io_lcdSpi_resetN, // @[:@63.4]
  output  io_lcdSpi_backLight // @[:@63.4]
);
  wire  ili9341Spi_clock; // @[LCDDisplay.scala 152:26:@183.4]
  wire  ili9341Spi_reset; // @[LCDDisplay.scala 152:26:@183.4]
  wire  ili9341Spi_io_lcdSpi_serialClock; // @[LCDDisplay.scala 152:26:@183.4]
  wire  ili9341Spi_io_lcdSpi_dataCommand; // @[LCDDisplay.scala 152:26:@183.4]
  wire  ili9341Spi_io_lcdSpi_chipSelectN; // @[LCDDisplay.scala 152:26:@183.4]
  wire  ili9341Spi_io_lcdSpi_masterOutSlaveIn; // @[LCDDisplay.scala 152:26:@183.4]
  wire  ili9341Spi_io_sendData_ready; // @[LCDDisplay.scala 152:26:@183.4]
  wire  ili9341Spi_io_sendData_valid; // @[LCDDisplay.scala 152:26:@183.4]
  wire  ili9341Spi_io_sendData_bits_isData; // @[LCDDisplay.scala 152:26:@183.4]
  wire [7:0] ili9341Spi_io_sendData_bits_value; // @[LCDDisplay.scala 152:26:@183.4]
  reg [7:0] programCounter; // @[LCDDisplay.scala 145:31:@179.4]
  reg [31:0] _RAND_0;
  reg [7:0] x; // @[LCDDisplay.scala 146:18:@180.4]
  reg [31:0] _RAND_1;
  reg  imageHighByte; // @[LCDDisplay.scala 147:30:@181.4]
  reg [31:0] _RAND_2;
  reg [2:0] state; // @[LCDDisplay.scala 150:22:@182.4]
  reg [31:0] _RAND_3;
  wire [10:0] _T_213; // @[LCDDisplay.scala 158:75:@189.4]
  wire  _T_214; // @[LCDDisplay.scala 158:75:@190.4]
  reg  stateHoldCount; // @[LCDDisplay.scala 158:31:@191.4]
  reg [31:0] _RAND_4;
  wire  _T_218; // @[LCDDisplay.scala 160:15:@194.4]
  wire  _T_219; // @[LCDDisplay.scala 160:39:@195.4]
  wire  _T_220; // @[LCDDisplay.scala 160:30:@196.4]
  wire  _T_221; // @[LCDDisplay.scala 160:72:@197.4]
  wire  _T_222; // @[LCDDisplay.scala 160:63:@198.4]
  wire [1:0] _T_224; // @[LCDDisplay.scala 161:38:@200.6]
  wire [1:0] _T_225; // @[LCDDisplay.scala 161:38:@201.6]
  wire  _T_226; // @[LCDDisplay.scala 161:38:@202.6]
  wire  _T_228; // @[LCDDisplay.scala 162:35:@204.6]
  wire  _GEN_0; // @[LCDDisplay.scala 160:91:@199.4]
  wire  stateChange; // @[LCDDisplay.scala 160:91:@199.4]
  wire [2:0] _GEN_2; // @[LCDDisplay.scala 176:43:@224.10]
  wire [2:0] _GEN_3; // @[LCDDisplay.scala 169:49:@215.8]
  wire [19:0] _GEN_4; // @[LCDDisplay.scala 169:49:@215.8]
  wire [7:0] _GEN_5; // @[LCDDisplay.scala 169:49:@215.8]
  wire [2:0] _GEN_8; // @[LCDDisplay.scala 166:33:@209.6]
  wire [24:0] _GEN_9; // @[LCDDisplay.scala 166:33:@209.6]
  wire [7:0] _GEN_10; // @[LCDDisplay.scala 166:33:@209.6]
  wire  _GEN_12; // @[LCDDisplay.scala 166:33:@209.6]
  wire  _T_237; // @[LCDDisplay.scala 179:22:@229.6]
  wire  _T_239; // @[LCDDisplay.scala 181:28:@232.10]
  wire [5:0] _T_241; // @[:@234.12]
  wire [7:0] _GEN_16; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_17; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_18; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_19; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_20; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_21; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_22; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_23; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_24; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_25; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_26; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_27; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_28; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_29; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_30; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_31; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_32; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_33; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_34; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_35; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_36; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_37; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_38; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_39; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_40; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_41; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_42; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_43; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_44; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_45; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_46; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_47; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_48; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_49; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_50; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_51; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_52; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_53; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_54; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_55; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_56; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_57; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_58; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_59; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_60; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_61; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_62; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_63; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_64; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_65; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_66; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_67; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_68; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_69; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_70; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_71; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_72; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_73; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_74; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_75; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_76; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_77; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_78; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_79; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_80; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_81; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_82; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_83; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_84; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_85; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_86; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_87; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_88; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_89; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_90; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_91; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_92; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_93; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_94; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_95; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_96; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_97; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_98; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_99; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_100; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_101; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_102; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_103; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_104; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_105; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_106; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_107; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_108; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_109; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_110; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_111; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_112; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_113; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_114; // @[LCDDisplay.scala 182:37:@235.12]
  wire  _GEN_115; // @[LCDDisplay.scala 182:37:@235.12]
  wire [7:0] _GEN_116; // @[LCDDisplay.scala 182:37:@235.12]
  wire [8:0] _T_244; // @[LCDDisplay.scala 185:42:@238.12]
  wire [7:0] _T_245; // @[LCDDisplay.scala 185:42:@239.12]
  wire [7:0] _GEN_117; // @[LCDDisplay.scala 181:52:@233.10]
  wire  _GEN_118; // @[LCDDisplay.scala 181:52:@233.10]
  wire [7:0] _GEN_120; // @[LCDDisplay.scala 181:52:@233.10]
  wire [2:0] _GEN_121; // @[LCDDisplay.scala 181:52:@233.10]
  wire [7:0] _GEN_122; // @[LCDDisplay.scala 180:41:@231.8]
  wire  _GEN_123; // @[LCDDisplay.scala 180:41:@231.8]
  wire  _GEN_124; // @[LCDDisplay.scala 180:41:@231.8]
  wire [7:0] _GEN_125; // @[LCDDisplay.scala 180:41:@231.8]
  wire [2:0] _GEN_126; // @[LCDDisplay.scala 180:41:@231.8]
  wire  _T_246; // @[LCDDisplay.scala 190:22:@248.8]
  wire [7:0] _T_248; // @[LCDDisplay.scala 192:28:@251.12]
  wire [2:0] _T_250; // @[:@252.12]
  wire  _T_251; // @[LCDDisplay.scala 193:24:@253.12]
  wire  _T_253; // @[LCDDisplay.scala 194:13:@255.12]
  wire  _T_255; // @[LCDDisplay.scala 195:17:@257.14]
  wire [8:0] _T_258; // @[LCDDisplay.scala 198:18:@262.16]
  wire [7:0] _T_259; // @[LCDDisplay.scala 198:18:@263.16]
  wire [7:0] _GEN_127; // @[LCDDisplay.scala 195:28:@258.14]
  wire [7:0] _GEN_128; // @[LCDDisplay.scala 194:29:@256.12]
  wire [15:0] _GEN_130; // @[LCDDisplay.scala 201:68:@267.12]
  wire [15:0] _GEN_131; // @[LCDDisplay.scala 201:68:@267.12]
  wire [15:0] _GEN_132; // @[LCDDisplay.scala 201:68:@267.12]
  wire [15:0] _GEN_133; // @[LCDDisplay.scala 201:68:@267.12]
  wire [15:0] _GEN_134; // @[LCDDisplay.scala 201:68:@267.12]
  wire [15:0] _GEN_135; // @[LCDDisplay.scala 201:68:@267.12]
  wire [15:0] _GEN_136; // @[LCDDisplay.scala 201:68:@267.12]
  wire [7:0] _T_260; // @[LCDDisplay.scala 201:68:@267.12]
  wire [7:0] _T_261; // @[LCDDisplay.scala 201:82:@268.12]
  wire [7:0] _T_262; // @[LCDDisplay.scala 201:47:@269.12]
  wire  _GEN_137; // @[LCDDisplay.scala 191:41:@250.10]
  wire [7:0] _GEN_138; // @[LCDDisplay.scala 191:41:@250.10]
  wire [7:0] _GEN_139; // @[LCDDisplay.scala 191:41:@250.10]
  wire  _GEN_140; // @[LCDDisplay.scala 191:41:@250.10]
  wire  _GEN_141; // @[LCDDisplay.scala 190:37:@249.8]
  wire [7:0] _GEN_142; // @[LCDDisplay.scala 190:37:@249.8]
  wire [7:0] _GEN_143; // @[LCDDisplay.scala 190:37:@249.8]
  wire  _GEN_144; // @[LCDDisplay.scala 190:37:@249.8]
  wire [7:0] _GEN_145; // @[LCDDisplay.scala 179:41:@230.6]
  wire  _GEN_146; // @[LCDDisplay.scala 179:41:@230.6]
  wire  _GEN_147; // @[LCDDisplay.scala 179:41:@230.6]
  wire [7:0] _GEN_148; // @[LCDDisplay.scala 179:41:@230.6]
  wire [2:0] _GEN_149; // @[LCDDisplay.scala 179:41:@230.6]
  wire  _GEN_150; // @[LCDDisplay.scala 179:41:@230.6]
  wire [7:0] _GEN_151; // @[LCDDisplay.scala 179:41:@230.6]
  wire [2:0] _GEN_152; // @[LCDDisplay.scala 165:22:@207.4]
  wire [24:0] _GEN_153; // @[LCDDisplay.scala 165:22:@207.4]
  wire [7:0] _GEN_157; // @[LCDDisplay.scala 165:22:@207.4]
  wire  _GEN_158; // @[LCDDisplay.scala 165:22:@207.4]
  wire [7:0] _GEN_159; // @[LCDDisplay.scala 165:22:@207.4]
  ILI9341SPI ili9341Spi ( // @[LCDDisplay.scala 152:26:@183.4]
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
  assign _T_213 = 11'h7d0 >> 5'h18; // @[LCDDisplay.scala 158:75:@189.4]
  assign _T_214 = _T_213[0]; // @[LCDDisplay.scala 158:75:@190.4]
  assign _T_218 = state == 3'h0; // @[LCDDisplay.scala 160:15:@194.4]
  assign _T_219 = state == 3'h1; // @[LCDDisplay.scala 160:39:@195.4]
  assign _T_220 = _T_218 | _T_219; // @[LCDDisplay.scala 160:30:@196.4]
  assign _T_221 = state == 3'h2; // @[LCDDisplay.scala 160:72:@197.4]
  assign _T_222 = _T_220 | _T_221; // @[LCDDisplay.scala 160:63:@198.4]
  assign _T_224 = stateHoldCount - 1'h1; // @[LCDDisplay.scala 161:38:@200.6]
  assign _T_225 = $unsigned(_T_224); // @[LCDDisplay.scala 161:38:@201.6]
  assign _T_226 = _T_225[0:0]; // @[LCDDisplay.scala 161:38:@202.6]
  assign _T_228 = stateHoldCount == 1'h0; // @[LCDDisplay.scala 162:35:@204.6]
  assign _GEN_0 = _T_222 ? _T_226 : stateHoldCount; // @[LCDDisplay.scala 160:91:@199.4]
  assign stateChange = _T_222 ? _T_228 : 1'h0; // @[LCDDisplay.scala 160:91:@199.4]
  assign _GEN_2 = _T_221 ? 3'h3 : state; // @[LCDDisplay.scala 176:43:@224.10]
  assign _GEN_3 = _T_219 ? 3'h2 : _GEN_2; // @[LCDDisplay.scala 169:49:@215.8]
  assign _GEN_4 = _T_219 ? 20'hf4240 : {{19'd0}, _GEN_0}; // @[LCDDisplay.scala 169:49:@215.8]
  assign _GEN_5 = _T_219 ? 8'h11 : 8'h0; // @[LCDDisplay.scala 169:49:@215.8]
  assign _GEN_8 = _T_218 ? 3'h1 : _GEN_3; // @[LCDDisplay.scala 166:33:@209.6]
  assign _GEN_9 = _T_218 ? 25'h1312d00 : {{5'd0}, _GEN_4}; // @[LCDDisplay.scala 166:33:@209.6]
  assign _GEN_10 = _T_218 ? 8'h0 : _GEN_5; // @[LCDDisplay.scala 166:33:@209.6]
  assign _GEN_12 = _T_218 ? 1'h0 : _T_219; // @[LCDDisplay.scala 166:33:@209.6]
  assign _T_237 = state == 3'h3; // @[LCDDisplay.scala 179:22:@229.6]
  assign _T_239 = programCounter < 8'h34; // @[LCDDisplay.scala 181:28:@232.10]
  assign _T_241 = programCounter[5:0]; // @[:@234.12]
  assign _GEN_16 = 6'h1 == _T_241 ? 8'hcb : 8'h28; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_17 = 6'h2 == _T_241; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_18 = 6'h2 == _T_241 ? 8'h39 : _GEN_16; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_19 = 6'h3 == _T_241 ? 1'h1 : _GEN_17; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_20 = 6'h3 == _T_241 ? 8'h2c : _GEN_18; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_21 = 6'h4 == _T_241 ? 1'h1 : _GEN_19; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_22 = 6'h4 == _T_241 ? 8'h0 : _GEN_20; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_23 = 6'h5 == _T_241 ? 1'h1 : _GEN_21; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_24 = 6'h5 == _T_241 ? 8'h34 : _GEN_22; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_25 = 6'h6 == _T_241 ? 1'h1 : _GEN_23; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_26 = 6'h6 == _T_241 ? 8'h2 : _GEN_24; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_27 = 6'h7 == _T_241 ? 1'h0 : _GEN_25; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_28 = 6'h7 == _T_241 ? 8'hcf : _GEN_26; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_29 = 6'h8 == _T_241 ? 1'h1 : _GEN_27; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_30 = 6'h8 == _T_241 ? 8'h0 : _GEN_28; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_31 = 6'h9 == _T_241 ? 1'h1 : _GEN_29; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_32 = 6'h9 == _T_241 ? 8'h81 : _GEN_30; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_33 = 6'ha == _T_241 ? 1'h1 : _GEN_31; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_34 = 6'ha == _T_241 ? 8'h30 : _GEN_32; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_35 = 6'hb == _T_241 ? 1'h0 : _GEN_33; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_36 = 6'hb == _T_241 ? 8'hed : _GEN_34; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_37 = 6'hc == _T_241 ? 1'h1 : _GEN_35; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_38 = 6'hc == _T_241 ? 8'h64 : _GEN_36; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_39 = 6'hd == _T_241 ? 1'h1 : _GEN_37; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_40 = 6'hd == _T_241 ? 8'h3 : _GEN_38; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_41 = 6'he == _T_241 ? 1'h1 : _GEN_39; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_42 = 6'he == _T_241 ? 8'h12 : _GEN_40; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_43 = 6'hf == _T_241 ? 1'h1 : _GEN_41; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_44 = 6'hf == _T_241 ? 8'h81 : _GEN_42; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_45 = 6'h10 == _T_241 ? 1'h0 : _GEN_43; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_46 = 6'h10 == _T_241 ? 8'he8 : _GEN_44; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_47 = 6'h11 == _T_241 ? 1'h1 : _GEN_45; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_48 = 6'h11 == _T_241 ? 8'h84 : _GEN_46; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_49 = 6'h12 == _T_241 ? 1'h1 : _GEN_47; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_50 = 6'h12 == _T_241 ? 8'h11 : _GEN_48; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_51 = 6'h13 == _T_241 ? 1'h1 : _GEN_49; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_52 = 6'h13 == _T_241 ? 8'h7a : _GEN_50; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_53 = 6'h14 == _T_241 ? 1'h0 : _GEN_51; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_54 = 6'h14 == _T_241 ? 8'hea : _GEN_52; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_55 = 6'h15 == _T_241 ? 1'h1 : _GEN_53; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_56 = 6'h15 == _T_241 ? 8'h66 : _GEN_54; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_57 = 6'h16 == _T_241 ? 1'h1 : _GEN_55; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_58 = 6'h16 == _T_241 ? 8'h0 : _GEN_56; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_59 = 6'h17 == _T_241 ? 1'h0 : _GEN_57; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_60 = 6'h17 == _T_241 ? 8'hf7 : _GEN_58; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_61 = 6'h18 == _T_241 ? 1'h1 : _GEN_59; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_62 = 6'h18 == _T_241 ? 8'h20 : _GEN_60; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_63 = 6'h19 == _T_241 ? 1'h0 : _GEN_61; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_64 = 6'h19 == _T_241 ? 8'hc0 : _GEN_62; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_65 = 6'h1a == _T_241 ? 1'h1 : _GEN_63; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_66 = 6'h1a == _T_241 ? 8'h21 : _GEN_64; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_67 = 6'h1b == _T_241 ? 1'h0 : _GEN_65; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_68 = 6'h1b == _T_241 ? 8'hc1 : _GEN_66; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_69 = 6'h1c == _T_241 ? 1'h1 : _GEN_67; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_70 = 6'h1c == _T_241 ? 8'h10 : _GEN_68; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_71 = 6'h1d == _T_241 ? 1'h0 : _GEN_69; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_72 = 6'h1d == _T_241 ? 8'hc5 : _GEN_70; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_73 = 6'h1e == _T_241 ? 1'h1 : _GEN_71; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_74 = 6'h1e == _T_241 ? 8'h31 : _GEN_72; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_75 = 6'h1f == _T_241 ? 1'h1 : _GEN_73; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_76 = 6'h1f == _T_241 ? 8'h3c : _GEN_74; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_77 = 6'h20 == _T_241 ? 1'h0 : _GEN_75; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_78 = 6'h20 == _T_241 ? 8'hc7 : _GEN_76; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_79 = 6'h21 == _T_241 ? 1'h1 : _GEN_77; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_80 = 6'h21 == _T_241 ? 8'hc0 : _GEN_78; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_81 = 6'h22 == _T_241 ? 1'h0 : _GEN_79; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_82 = 6'h22 == _T_241 ? 8'h3a : _GEN_80; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_83 = 6'h23 == _T_241 ? 1'h1 : _GEN_81; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_84 = 6'h23 == _T_241 ? 8'h55 : _GEN_82; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_85 = 6'h24 == _T_241 ? 1'h0 : _GEN_83; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_86 = 6'h24 == _T_241 ? 8'hb1 : _GEN_84; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_87 = 6'h25 == _T_241 ? 1'h1 : _GEN_85; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_88 = 6'h25 == _T_241 ? 8'h0 : _GEN_86; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_89 = 6'h26 == _T_241 ? 1'h1 : _GEN_87; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_90 = 6'h26 == _T_241 ? 8'h1b : _GEN_88; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_91 = 6'h27 == _T_241 ? 1'h0 : _GEN_89; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_92 = 6'h27 == _T_241 ? 8'h51 : _GEN_90; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_93 = 6'h28 == _T_241 ? 1'h1 : _GEN_91; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_94 = 6'h28 == _T_241 ? 8'hff : _GEN_92; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_95 = 6'h29 == _T_241 ? 1'h0 : _GEN_93; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_96 = 6'h29 == _T_241 ? 8'h26 : _GEN_94; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_97 = 6'h2a == _T_241 ? 1'h1 : _GEN_95; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_98 = 6'h2a == _T_241 ? 8'h1 : _GEN_96; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_99 = 6'h2b == _T_241 ? 1'h0 : _GEN_97; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_100 = 6'h2b == _T_241 ? 8'hb7 : _GEN_98; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_101 = 6'h2c == _T_241 ? 1'h1 : _GEN_99; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_102 = 6'h2c == _T_241 ? 8'h6 : _GEN_100; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_103 = 6'h2d == _T_241 ? 1'h0 : _GEN_101; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_104 = 6'h2d == _T_241 ? 8'hb6 : _GEN_102; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_105 = 6'h2e == _T_241 ? 1'h1 : _GEN_103; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_106 = 6'h2e == _T_241 ? 8'ha : _GEN_104; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_107 = 6'h2f == _T_241 ? 1'h1 : _GEN_105; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_108 = 6'h2f == _T_241 ? 8'h82 : _GEN_106; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_109 = 6'h30 == _T_241 ? 1'h1 : _GEN_107; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_110 = 6'h30 == _T_241 ? 8'h27 : _GEN_108; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_111 = 6'h31 == _T_241 ? 1'h1 : _GEN_109; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_112 = 6'h31 == _T_241 ? 8'h0 : _GEN_110; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_113 = 6'h32 == _T_241 ? 1'h0 : _GEN_111; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_114 = 6'h32 == _T_241 ? 8'h29 : _GEN_112; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_115 = 6'h33 == _T_241 ? 1'h0 : _GEN_113; // @[LCDDisplay.scala 182:37:@235.12]
  assign _GEN_116 = 6'h33 == _T_241 ? 8'h2c : _GEN_114; // @[LCDDisplay.scala 182:37:@235.12]
  assign _T_244 = programCounter + 8'h1; // @[LCDDisplay.scala 185:42:@238.12]
  assign _T_245 = programCounter + 8'h1; // @[LCDDisplay.scala 185:42:@239.12]
  assign _GEN_117 = _T_239 ? _GEN_116 : 8'h0; // @[LCDDisplay.scala 181:52:@233.10]
  assign _GEN_118 = _T_239 ? _GEN_115 : 1'h0; // @[LCDDisplay.scala 181:52:@233.10]
  assign _GEN_120 = _T_239 ? _T_245 : programCounter; // @[LCDDisplay.scala 181:52:@233.10]
  assign _GEN_121 = _T_239 ? state : 3'h4; // @[LCDDisplay.scala 181:52:@233.10]
  assign _GEN_122 = ili9341Spi_io_sendData_ready ? _GEN_117 : 8'h0; // @[LCDDisplay.scala 180:41:@231.8]
  assign _GEN_123 = ili9341Spi_io_sendData_ready ? _GEN_118 : 1'h0; // @[LCDDisplay.scala 180:41:@231.8]
  assign _GEN_124 = ili9341Spi_io_sendData_ready ? _T_239 : 1'h0; // @[LCDDisplay.scala 180:41:@231.8]
  assign _GEN_125 = ili9341Spi_io_sendData_ready ? _GEN_120 : programCounter; // @[LCDDisplay.scala 180:41:@231.8]
  assign _GEN_126 = ili9341Spi_io_sendData_ready ? _GEN_121 : state; // @[LCDDisplay.scala 180:41:@231.8]
  assign _T_246 = state == 3'h4; // @[LCDDisplay.scala 190:22:@248.8]
  assign _T_248 = x / 8'h1e; // @[LCDDisplay.scala 192:28:@251.12]
  assign _T_250 = _T_248[2:0]; // @[:@252.12]
  assign _T_251 = ~ imageHighByte; // @[LCDDisplay.scala 193:24:@253.12]
  assign _T_253 = imageHighByte == 1'h0; // @[LCDDisplay.scala 194:13:@255.12]
  assign _T_255 = x == 8'hef; // @[LCDDisplay.scala 195:17:@257.14]
  assign _T_258 = x + 8'h1; // @[LCDDisplay.scala 198:18:@262.16]
  assign _T_259 = x + 8'h1; // @[LCDDisplay.scala 198:18:@263.16]
  assign _GEN_127 = _T_255 ? 8'h0 : _T_259; // @[LCDDisplay.scala 195:28:@258.14]
  assign _GEN_128 = _T_253 ? _GEN_127 : x; // @[LCDDisplay.scala 194:29:@256.12]
  assign _GEN_130 = 3'h1 == _T_250 ? 16'h7ff : 16'hffff; // @[LCDDisplay.scala 201:68:@267.12]
  assign _GEN_131 = 3'h2 == _T_250 ? 16'hffe0 : _GEN_130; // @[LCDDisplay.scala 201:68:@267.12]
  assign _GEN_132 = 3'h3 == _T_250 ? 16'h7e0 : _GEN_131; // @[LCDDisplay.scala 201:68:@267.12]
  assign _GEN_133 = 3'h4 == _T_250 ? 16'hf81f : _GEN_132; // @[LCDDisplay.scala 201:68:@267.12]
  assign _GEN_134 = 3'h5 == _T_250 ? 16'h1f : _GEN_133; // @[LCDDisplay.scala 201:68:@267.12]
  assign _GEN_135 = 3'h6 == _T_250 ? 16'hf800 : _GEN_134; // @[LCDDisplay.scala 201:68:@267.12]
  assign _GEN_136 = 3'h7 == _T_250 ? 16'h0 : _GEN_135; // @[LCDDisplay.scala 201:68:@267.12]
  assign _T_260 = _GEN_136[15:8]; // @[LCDDisplay.scala 201:68:@267.12]
  assign _T_261 = _GEN_136[7:0]; // @[LCDDisplay.scala 201:82:@268.12]
  assign _T_262 = imageHighByte ? _T_260 : _T_261; // @[LCDDisplay.scala 201:47:@269.12]
  assign _GEN_137 = ili9341Spi_io_sendData_ready ? _T_251 : imageHighByte; // @[LCDDisplay.scala 191:41:@250.10]
  assign _GEN_138 = ili9341Spi_io_sendData_ready ? _GEN_128 : x; // @[LCDDisplay.scala 191:41:@250.10]
  assign _GEN_139 = ili9341Spi_io_sendData_ready ? _T_262 : 8'h0; // @[LCDDisplay.scala 191:41:@250.10]
  assign _GEN_140 = ili9341Spi_io_sendData_ready; // @[LCDDisplay.scala 191:41:@250.10]
  assign _GEN_141 = _T_246 ? _GEN_137 : imageHighByte; // @[LCDDisplay.scala 190:37:@249.8]
  assign _GEN_142 = _T_246 ? _GEN_138 : x; // @[LCDDisplay.scala 190:37:@249.8]
  assign _GEN_143 = _T_246 ? _GEN_139 : 8'h0; // @[LCDDisplay.scala 190:37:@249.8]
  assign _GEN_144 = _T_246 ? _GEN_140 : 1'h0; // @[LCDDisplay.scala 190:37:@249.8]
  assign _GEN_145 = _T_237 ? _GEN_122 : _GEN_143; // @[LCDDisplay.scala 179:41:@230.6]
  assign _GEN_146 = _T_237 ? _GEN_123 : _GEN_144; // @[LCDDisplay.scala 179:41:@230.6]
  assign _GEN_147 = _T_237 ? _GEN_124 : _GEN_144; // @[LCDDisplay.scala 179:41:@230.6]
  assign _GEN_148 = _T_237 ? _GEN_125 : programCounter; // @[LCDDisplay.scala 179:41:@230.6]
  assign _GEN_149 = _T_237 ? _GEN_126 : state; // @[LCDDisplay.scala 179:41:@230.6]
  assign _GEN_150 = _T_237 ? imageHighByte : _GEN_141; // @[LCDDisplay.scala 179:41:@230.6]
  assign _GEN_151 = _T_237 ? x : _GEN_142; // @[LCDDisplay.scala 179:41:@230.6]
  assign _GEN_152 = stateChange ? _GEN_8 : _GEN_149; // @[LCDDisplay.scala 165:22:@207.4]
  assign _GEN_153 = stateChange ? _GEN_9 : {{24'd0}, _GEN_0}; // @[LCDDisplay.scala 165:22:@207.4]
  assign _GEN_157 = stateChange ? programCounter : _GEN_148; // @[LCDDisplay.scala 165:22:@207.4]
  assign _GEN_158 = stateChange ? imageHighByte : _GEN_150; // @[LCDDisplay.scala 165:22:@207.4]
  assign _GEN_159 = stateChange ? x : _GEN_151; // @[LCDDisplay.scala 165:22:@207.4]
  assign io_lcdSpi_serialClock = ili9341Spi_io_lcdSpi_serialClock; // @[LCDDisplay.scala 207:13:@281.4]
  assign io_lcdSpi_dataCommand = ili9341Spi_io_lcdSpi_dataCommand; // @[LCDDisplay.scala 207:13:@280.4]
  assign io_lcdSpi_chipSelectN = ili9341Spi_io_lcdSpi_chipSelectN; // @[LCDDisplay.scala 207:13:@279.4]
  assign io_lcdSpi_masterOutSlaveIn = ili9341Spi_io_lcdSpi_masterOutSlaveIn; // @[LCDDisplay.scala 207:13:@278.4]
  assign io_lcdSpi_resetN = _T_218 ? 1'h0 : 1'h1; // @[LCDDisplay.scala 207:13:@276.4 LCDDisplay.scala 209:22:@284.6]
  assign io_lcdSpi_backLight = 1'h1; // @[LCDDisplay.scala 207:13:@275.4]
  assign ili9341Spi_clock = clock; // @[:@184.4]
  assign ili9341Spi_reset = reset; // @[:@185.4]
  assign ili9341Spi_io_sendData_valid = stateChange ? _GEN_12 : _GEN_147; // @[LCDDisplay.scala 156:32:@188.4 LCDDisplay.scala 175:36:@220.10 LCDDisplay.scala 183:38:@237.12 LCDDisplay.scala 203:36:@272.12]
  assign ili9341Spi_io_sendData_bits_isData = stateChange ? 1'h0 : _GEN_146; // @[LCDDisplay.scala 154:38:@186.4 LCDDisplay.scala 174:42:@219.10 LCDDisplay.scala 182:37:@236.12 LCDDisplay.scala 202:42:@271.12]
  assign ili9341Spi_io_sendData_bits_value = stateChange ? _GEN_10 : _GEN_145; // @[LCDDisplay.scala 155:37:@187.4 LCDDisplay.scala 173:41:@218.10 LCDDisplay.scala 182:37:@235.12 LCDDisplay.scala 201:41:@270.12]
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
  x = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  imageHighByte = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  state = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  stateHoldCount = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      programCounter <= 8'h0;
    end else begin
      if (!(stateChange)) begin
        if (_T_237) begin
          if (ili9341Spi_io_sendData_ready) begin
            if (_T_239) begin
              programCounter <= _T_245;
            end
          end
        end
      end
    end
    if (reset) begin
      x <= 8'h0;
    end else begin
      if (!(stateChange)) begin
        if (!(_T_237)) begin
          if (_T_246) begin
            if (ili9341Spi_io_sendData_ready) begin
              if (_T_253) begin
                if (_T_255) begin
                  x <= 8'h0;
                end else begin
                  x <= _T_259;
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      imageHighByte <= 1'h1;
    end else begin
      if (!(stateChange)) begin
        if (!(_T_237)) begin
          if (_T_246) begin
            if (ili9341Spi_io_sendData_ready) begin
              imageHighByte <= _T_251;
            end
          end
        end
      end
    end
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (stateChange) begin
        if (_T_218) begin
          state <= 3'h1;
        end else begin
          if (_T_219) begin
            state <= 3'h2;
          end else begin
            if (_T_221) begin
              state <= 3'h3;
            end
          end
        end
      end else begin
        if (_T_237) begin
          if (ili9341Spi_io_sendData_ready) begin
            if (!(_T_239)) begin
              state <= 3'h4;
            end
          end
        end
      end
    end
    if (reset) begin
      stateHoldCount <= _T_214;
    end else begin
      stateHoldCount <= _GEN_153[0];
    end
  end
endmodule
