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
  wire  ili9341Spi_clock; // @[LCDDisplay.scala 105:26:@74.4]
  wire  ili9341Spi_reset; // @[LCDDisplay.scala 105:26:@74.4]
  wire  ili9341Spi_io_lcdSpi_serialClock; // @[LCDDisplay.scala 105:26:@74.4]
  wire  ili9341Spi_io_lcdSpi_dataCommand; // @[LCDDisplay.scala 105:26:@74.4]
  wire  ili9341Spi_io_lcdSpi_chipSelectN; // @[LCDDisplay.scala 105:26:@74.4]
  wire  ili9341Spi_io_lcdSpi_masterOutSlaveIn; // @[LCDDisplay.scala 105:26:@74.4]
  wire  ili9341Spi_io_sendData_ready; // @[LCDDisplay.scala 105:26:@74.4]
  wire  ili9341Spi_io_sendData_valid; // @[LCDDisplay.scala 105:26:@74.4]
  wire  ili9341Spi_io_sendData_bits_isData; // @[LCDDisplay.scala 105:26:@74.4]
  wire [7:0] ili9341Spi_io_sendData_bits_value; // @[LCDDisplay.scala 105:26:@74.4]
  reg [7:0] programCounter; // @[LCDDisplay.scala 100:31:@72.4]
  reg [31:0] _RAND_0;
  reg [2:0] state; // @[LCDDisplay.scala 103:22:@73.4]
  reg [31:0] _RAND_1;
  wire [10:0] _T_42; // @[LCDDisplay.scala 111:75:@80.4]
  wire  _T_43; // @[LCDDisplay.scala 111:75:@81.4]
  reg  stateHoldCount; // @[LCDDisplay.scala 111:31:@82.4]
  reg [31:0] _RAND_2;
  wire  _T_47; // @[LCDDisplay.scala 113:15:@85.4]
  wire  _T_48; // @[LCDDisplay.scala 113:39:@86.4]
  wire  _T_49; // @[LCDDisplay.scala 113:30:@87.4]
  wire  _T_50; // @[LCDDisplay.scala 113:72:@88.4]
  wire  _T_51; // @[LCDDisplay.scala 113:63:@89.4]
  wire [1:0] _T_53; // @[LCDDisplay.scala 114:38:@91.6]
  wire [1:0] _T_54; // @[LCDDisplay.scala 114:38:@92.6]
  wire  _T_55; // @[LCDDisplay.scala 114:38:@93.6]
  wire  _T_57; // @[LCDDisplay.scala 115:35:@95.6]
  wire  _GEN_0; // @[LCDDisplay.scala 113:91:@90.4]
  wire  stateChange; // @[LCDDisplay.scala 113:91:@90.4]
  wire [2:0] _GEN_2; // @[LCDDisplay.scala 129:43:@115.10]
  wire [2:0] _GEN_3; // @[LCDDisplay.scala 122:49:@106.8]
  wire [19:0] _GEN_4; // @[LCDDisplay.scala 122:49:@106.8]
  wire [7:0] _GEN_5; // @[LCDDisplay.scala 122:49:@106.8]
  wire [2:0] _GEN_8; // @[LCDDisplay.scala 119:33:@100.6]
  wire [24:0] _GEN_9; // @[LCDDisplay.scala 119:33:@100.6]
  wire [7:0] _GEN_10; // @[LCDDisplay.scala 119:33:@100.6]
  wire  _GEN_12; // @[LCDDisplay.scala 119:33:@100.6]
  wire  _T_65; // @[LCDDisplay.scala 132:22:@120.6]
  wire  _T_67; // @[LCDDisplay.scala 134:28:@123.10]
  wire [1:0] _T_69; // @[:@125.12]
  wire  _GEN_15; // @[LCDDisplay.scala 135:37:@126.12]
  wire [7:0] _GEN_16; // @[LCDDisplay.scala 135:37:@126.12]
  wire  _GEN_17; // @[LCDDisplay.scala 135:37:@126.12]
  wire [7:0] _GEN_18; // @[LCDDisplay.scala 135:37:@126.12]
  wire [8:0] _T_72; // @[LCDDisplay.scala 138:42:@129.12]
  wire [7:0] _T_73; // @[LCDDisplay.scala 138:42:@130.12]
  wire [7:0] _GEN_19; // @[LCDDisplay.scala 134:52:@124.10]
  wire  _GEN_20; // @[LCDDisplay.scala 134:52:@124.10]
  wire [7:0] _GEN_22; // @[LCDDisplay.scala 134:52:@124.10]
  wire [2:0] _GEN_23; // @[LCDDisplay.scala 134:52:@124.10]
  wire [7:0] _GEN_24; // @[LCDDisplay.scala 133:41:@122.8]
  wire  _GEN_25; // @[LCDDisplay.scala 133:41:@122.8]
  wire  _GEN_26; // @[LCDDisplay.scala 133:41:@122.8]
  wire [7:0] _GEN_27; // @[LCDDisplay.scala 133:41:@122.8]
  wire [2:0] _GEN_28; // @[LCDDisplay.scala 133:41:@122.8]
  wire  _T_74; // @[LCDDisplay.scala 143:22:@139.8]
  wire [3:0] _GEN_29; // @[LCDDisplay.scala 144:41:@141.10]
  wire  _GEN_30; // @[LCDDisplay.scala 144:41:@141.10]
  wire [3:0] _GEN_31; // @[LCDDisplay.scala 143:37:@140.8]
  wire  _GEN_32; // @[LCDDisplay.scala 143:37:@140.8]
  wire [7:0] _GEN_33; // @[LCDDisplay.scala 132:41:@121.6]
  wire  _GEN_34; // @[LCDDisplay.scala 132:41:@121.6]
  wire  _GEN_35; // @[LCDDisplay.scala 132:41:@121.6]
  wire [7:0] _GEN_36; // @[LCDDisplay.scala 132:41:@121.6]
  wire [2:0] _GEN_37; // @[LCDDisplay.scala 132:41:@121.6]
  wire [2:0] _GEN_38; // @[LCDDisplay.scala 118:22:@98.4]
  wire [24:0] _GEN_39; // @[LCDDisplay.scala 118:22:@98.4]
  wire [7:0] _GEN_43; // @[LCDDisplay.scala 118:22:@98.4]
  ILI9341SPI ili9341Spi ( // @[LCDDisplay.scala 105:26:@74.4]
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
  assign _T_42 = 11'h7d0 >> 5'h18; // @[LCDDisplay.scala 111:75:@80.4]
  assign _T_43 = _T_42[0]; // @[LCDDisplay.scala 111:75:@81.4]
  assign _T_47 = state == 3'h0; // @[LCDDisplay.scala 113:15:@85.4]
  assign _T_48 = state == 3'h1; // @[LCDDisplay.scala 113:39:@86.4]
  assign _T_49 = _T_47 | _T_48; // @[LCDDisplay.scala 113:30:@87.4]
  assign _T_50 = state == 3'h2; // @[LCDDisplay.scala 113:72:@88.4]
  assign _T_51 = _T_49 | _T_50; // @[LCDDisplay.scala 113:63:@89.4]
  assign _T_53 = stateHoldCount - 1'h1; // @[LCDDisplay.scala 114:38:@91.6]
  assign _T_54 = $unsigned(_T_53); // @[LCDDisplay.scala 114:38:@92.6]
  assign _T_55 = _T_54[0:0]; // @[LCDDisplay.scala 114:38:@93.6]
  assign _T_57 = stateHoldCount == 1'h0; // @[LCDDisplay.scala 115:35:@95.6]
  assign _GEN_0 = _T_51 ? _T_55 : stateHoldCount; // @[LCDDisplay.scala 113:91:@90.4]
  assign stateChange = _T_51 ? _T_57 : 1'h0; // @[LCDDisplay.scala 113:91:@90.4]
  assign _GEN_2 = _T_50 ? 3'h3 : state; // @[LCDDisplay.scala 129:43:@115.10]
  assign _GEN_3 = _T_48 ? 3'h2 : _GEN_2; // @[LCDDisplay.scala 122:49:@106.8]
  assign _GEN_4 = _T_48 ? 20'hf4240 : {{19'd0}, _GEN_0}; // @[LCDDisplay.scala 122:49:@106.8]
  assign _GEN_5 = _T_48 ? 8'h11 : 8'h0; // @[LCDDisplay.scala 122:49:@106.8]
  assign _GEN_8 = _T_47 ? 3'h1 : _GEN_3; // @[LCDDisplay.scala 119:33:@100.6]
  assign _GEN_9 = _T_47 ? 25'h1312d00 : {{5'd0}, _GEN_4}; // @[LCDDisplay.scala 119:33:@100.6]
  assign _GEN_10 = _T_47 ? 8'h0 : _GEN_5; // @[LCDDisplay.scala 119:33:@100.6]
  assign _GEN_12 = _T_47 ? 1'h0 : _T_48; // @[LCDDisplay.scala 119:33:@100.6]
  assign _T_65 = state == 3'h3; // @[LCDDisplay.scala 132:22:@120.6]
  assign _T_67 = programCounter < 8'h3; // @[LCDDisplay.scala 134:28:@123.10]
  assign _T_69 = programCounter[1:0]; // @[:@125.12]
  assign _GEN_15 = 2'h1 == _T_69; // @[LCDDisplay.scala 135:37:@126.12]
  assign _GEN_16 = 2'h1 == _T_69 ? 8'h55 : 8'h3a; // @[LCDDisplay.scala 135:37:@126.12]
  assign _GEN_17 = 2'h2 == _T_69 ? 1'h0 : _GEN_15; // @[LCDDisplay.scala 135:37:@126.12]
  assign _GEN_18 = 2'h2 == _T_69 ? 8'h2c : _GEN_16; // @[LCDDisplay.scala 135:37:@126.12]
  assign _T_72 = programCounter + 8'h1; // @[LCDDisplay.scala 138:42:@129.12]
  assign _T_73 = programCounter + 8'h1; // @[LCDDisplay.scala 138:42:@130.12]
  assign _GEN_19 = _T_67 ? _GEN_18 : 8'h0; // @[LCDDisplay.scala 134:52:@124.10]
  assign _GEN_20 = _T_67 ? _GEN_17 : 1'h0; // @[LCDDisplay.scala 134:52:@124.10]
  assign _GEN_22 = _T_67 ? _T_73 : programCounter; // @[LCDDisplay.scala 134:52:@124.10]
  assign _GEN_23 = _T_67 ? state : 3'h4; // @[LCDDisplay.scala 134:52:@124.10]
  assign _GEN_24 = ili9341Spi_io_sendData_ready ? _GEN_19 : 8'h0; // @[LCDDisplay.scala 133:41:@122.8]
  assign _GEN_25 = ili9341Spi_io_sendData_ready ? _GEN_20 : 1'h0; // @[LCDDisplay.scala 133:41:@122.8]
  assign _GEN_26 = ili9341Spi_io_sendData_ready ? _T_67 : 1'h0; // @[LCDDisplay.scala 133:41:@122.8]
  assign _GEN_27 = ili9341Spi_io_sendData_ready ? _GEN_22 : programCounter; // @[LCDDisplay.scala 133:41:@122.8]
  assign _GEN_28 = ili9341Spi_io_sendData_ready ? _GEN_23 : state; // @[LCDDisplay.scala 133:41:@122.8]
  assign _T_74 = state == 3'h4; // @[LCDDisplay.scala 143:22:@139.8]
  assign _GEN_29 = ili9341Spi_io_sendData_ready ? 4'hf : 4'h0; // @[LCDDisplay.scala 144:41:@141.10]
  assign _GEN_30 = ili9341Spi_io_sendData_ready; // @[LCDDisplay.scala 144:41:@141.10]
  assign _GEN_31 = _T_74 ? _GEN_29 : 4'h0; // @[LCDDisplay.scala 143:37:@140.8]
  assign _GEN_32 = _T_74 ? _GEN_30 : 1'h0; // @[LCDDisplay.scala 143:37:@140.8]
  assign _GEN_33 = _T_65 ? _GEN_24 : {{4'd0}, _GEN_31}; // @[LCDDisplay.scala 132:41:@121.6]
  assign _GEN_34 = _T_65 ? _GEN_25 : _GEN_32; // @[LCDDisplay.scala 132:41:@121.6]
  assign _GEN_35 = _T_65 ? _GEN_26 : _GEN_32; // @[LCDDisplay.scala 132:41:@121.6]
  assign _GEN_36 = _T_65 ? _GEN_27 : programCounter; // @[LCDDisplay.scala 132:41:@121.6]
  assign _GEN_37 = _T_65 ? _GEN_28 : state; // @[LCDDisplay.scala 132:41:@121.6]
  assign _GEN_38 = stateChange ? _GEN_8 : _GEN_37; // @[LCDDisplay.scala 118:22:@98.4]
  assign _GEN_39 = stateChange ? _GEN_9 : {{24'd0}, _GEN_0}; // @[LCDDisplay.scala 118:22:@98.4]
  assign _GEN_43 = stateChange ? programCounter : _GEN_36; // @[LCDDisplay.scala 118:22:@98.4]
  assign io_lcdSpi_serialClock = ili9341Spi_io_lcdSpi_serialClock; // @[LCDDisplay.scala 151:13:@153.4]
  assign io_lcdSpi_dataCommand = ili9341Spi_io_lcdSpi_dataCommand; // @[LCDDisplay.scala 151:13:@152.4]
  assign io_lcdSpi_chipSelectN = ili9341Spi_io_lcdSpi_chipSelectN; // @[LCDDisplay.scala 151:13:@151.4]
  assign io_lcdSpi_masterOutSlaveIn = ili9341Spi_io_lcdSpi_masterOutSlaveIn; // @[LCDDisplay.scala 151:13:@150.4]
  assign io_lcdSpi_resetN = _T_47 ? 1'h0 : 1'h1; // @[LCDDisplay.scala 151:13:@148.4 LCDDisplay.scala 153:22:@156.6]
  assign io_lcdSpi_backLight = 1'h1; // @[LCDDisplay.scala 151:13:@147.4]
  assign ili9341Spi_clock = clock; // @[:@75.4]
  assign ili9341Spi_reset = reset; // @[:@76.4]
  assign ili9341Spi_io_sendData_valid = stateChange ? _GEN_12 : _GEN_35; // @[LCDDisplay.scala 109:32:@79.4 LCDDisplay.scala 128:36:@111.10 LCDDisplay.scala 136:38:@128.12 LCDDisplay.scala 147:36:@144.12]
  assign ili9341Spi_io_sendData_bits_isData = stateChange ? 1'h0 : _GEN_34; // @[LCDDisplay.scala 107:38:@77.4 LCDDisplay.scala 127:42:@110.10 LCDDisplay.scala 135:37:@127.12 LCDDisplay.scala 146:42:@143.12]
  assign ili9341Spi_io_sendData_bits_value = stateChange ? _GEN_10 : _GEN_33; // @[LCDDisplay.scala 108:37:@78.4 LCDDisplay.scala 126:41:@109.10 LCDDisplay.scala 135:37:@126.12 LCDDisplay.scala 145:41:@142.12]
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
        if (_T_65) begin
          if (ili9341Spi_io_sendData_ready) begin
            if (_T_67) begin
              programCounter <= _T_73;
            end
          end
        end
      end
    end
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (stateChange) begin
        if (_T_47) begin
          state <= 3'h1;
        end else begin
          if (_T_48) begin
            state <= 3'h2;
          end else begin
            if (_T_50) begin
              state <= 3'h3;
            end
          end
        end
      end else begin
        if (_T_65) begin
          if (ili9341Spi_io_sendData_ready) begin
            if (!(_T_67)) begin
              state <= 3'h4;
            end
          end
        end
      end
    end
    if (reset) begin
      stateHoldCount <= _T_43;
    end else begin
      stateHoldCount <= _GEN_39[0];
    end
  end
endmodule
