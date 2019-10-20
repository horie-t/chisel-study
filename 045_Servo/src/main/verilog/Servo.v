module Servo( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input  [3:0] io_degree, // @[:@6.4]
  output       io_servoPulse // @[:@6.4]
);
  reg [13:0] value; // @[Counter.scala 26:33:@8.4]
  reg [31:0] _RAND_0;
  wire  pulseUnit; // @[Counter.scala 34:24:@10.6]
  wire [14:0] _T_15; // @[Counter.scala 35:22:@11.6]
  wire [13:0] _T_16; // @[Counter.scala 35:22:@12.6]
  wire [13:0] _GEN_0; // @[Counter.scala 37:21:@14.6]
  reg [7:0] value_1; // @[Counter.scala 26:33:@19.4]
  reg [31:0] _RAND_1;
  wire  _T_21; // @[Counter.scala 34:24:@21.6]
  wire [8:0] _T_23; // @[Counter.scala 35:22:@22.6]
  wire [7:0] _T_24; // @[Counter.scala 35:22:@23.6]
  wire [7:0] _GEN_2; // @[Counter.scala 37:21:@25.6]
  wire [7:0] _GEN_3; // @[Counter.scala 63:17:@20.4]
  wire [4:0] _GEN_4; // @[Servo.scala 14:50:@30.4]
  wire [5:0] _T_28; // @[Servo.scala 14:50:@30.4]
  wire [4:0] _T_29; // @[Servo.scala 14:50:@31.4]
  wire [4:0] _T_30; // @[Servo.scala 14:50:@32.4]
  wire [4:0] _T_31; // @[Servo.scala 14:64:@33.4]
  wire [7:0] _GEN_5; // @[Servo.scala 14:36:@34.4]
  assign pulseUnit = value == 14'h270f; // @[Counter.scala 34:24:@10.6]
  assign _T_15 = value + 14'h1; // @[Counter.scala 35:22:@11.6]
  assign _T_16 = value + 14'h1; // @[Counter.scala 35:22:@12.6]
  assign _GEN_0 = pulseUnit ? 14'h0 : _T_16; // @[Counter.scala 37:21:@14.6]
  assign _T_21 = value_1 == 8'hc7; // @[Counter.scala 34:24:@21.6]
  assign _T_23 = value_1 + 8'h1; // @[Counter.scala 35:22:@22.6]
  assign _T_24 = value_1 + 8'h1; // @[Counter.scala 35:22:@23.6]
  assign _GEN_2 = _T_21 ? 8'h0 : _T_24; // @[Counter.scala 37:21:@25.6]
  assign _GEN_3 = pulseUnit ? _GEN_2 : value_1; // @[Counter.scala 63:17:@20.4]
  assign _GEN_4 = {{1{io_degree[3]}},io_degree}; // @[Servo.scala 14:50:@30.4]
  assign _T_28 = $signed(_GEN_4) + $signed(5'shf); // @[Servo.scala 14:50:@30.4]
  assign _T_29 = $signed(_GEN_4) + $signed(5'shf); // @[Servo.scala 14:50:@31.4]
  assign _T_30 = $signed(_T_29); // @[Servo.scala 14:50:@32.4]
  assign _T_31 = $unsigned(_T_30); // @[Servo.scala 14:64:@33.4]
  assign _GEN_5 = {{3'd0}, _T_31}; // @[Servo.scala 14:36:@34.4]
  assign io_servoPulse = value_1 <= _GEN_5; // @[Servo.scala 14:17:@35.4]
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
  value_1 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      value <= 14'h0;
    end else begin
      if (pulseUnit) begin
        value <= 14'h0;
      end else begin
        value <= _T_16;
      end
    end
    if (reset) begin
      value_1 <= 8'h0;
    end else begin
      if (pulseUnit) begin
        if (_T_21) begin
          value_1 <= 8'h0;
        end else begin
          value_1 <= _T_24;
        end
      end
    end
  end
endmodule
