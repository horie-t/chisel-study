module PwmMotorDrive( // @[:@3.2]
  input        clock, // @[:@4.4]
  input        reset, // @[:@5.4]
  input        io_dir, // @[:@6.4]
  input  [2:0] io_speed, // @[:@6.4]
  output       io_driverIn1, // @[:@6.4]
  output       io_driverIn2 // @[:@6.4]
);
  reg [13:0] value; // @[Counter.scala 26:33:@8.4]
  reg [31:0] _RAND_0;
  wire  changePulse; // @[Counter.scala 34:24:@10.6]
  wire [14:0] _T_19; // @[Counter.scala 35:22:@11.6]
  wire [13:0] _T_20; // @[Counter.scala 35:22:@12.6]
  wire [13:0] _GEN_0; // @[Counter.scala 37:21:@14.6]
  reg [2:0] value_1; // @[Counter.scala 26:33:@19.4]
  reg [31:0] _RAND_1;
  wire  _T_25; // @[Counter.scala 34:24:@21.6]
  wire [3:0] _T_27; // @[Counter.scala 35:22:@22.6]
  wire [2:0] _T_28; // @[Counter.scala 35:22:@23.6]
  wire [2:0] _GEN_2; // @[Counter.scala 37:21:@25.6]
  wire [2:0] _GEN_3; // @[Counter.scala 63:17:@20.4]
  wire  _T_31; // @[PWM.scala 22:18:@30.4]
  wire [3:0] _T_35; // @[PWM.scala 27:46:@37.8]
  wire [3:0] _T_36; // @[PWM.scala 27:46:@38.8]
  wire [2:0] _T_37; // @[PWM.scala 27:46:@39.8]
  wire  _T_38; // @[PWM.scala 27:34:@40.8]
  wire  _GEN_4; // @[PWM.scala 26:19:@36.6]
  wire  _GEN_5; // @[PWM.scala 26:19:@36.6]
  assign changePulse = value == 14'h37cc; // @[Counter.scala 34:24:@10.6]
  assign _T_19 = value + 14'h1; // @[Counter.scala 35:22:@11.6]
  assign _T_20 = value + 14'h1; // @[Counter.scala 35:22:@12.6]
  assign _GEN_0 = changePulse ? 14'h0 : _T_20; // @[Counter.scala 37:21:@14.6]
  assign _T_25 = value_1 == 3'h6; // @[Counter.scala 34:24:@21.6]
  assign _T_27 = value_1 + 3'h1; // @[Counter.scala 35:22:@22.6]
  assign _T_28 = value_1 + 3'h1; // @[Counter.scala 35:22:@23.6]
  assign _GEN_2 = _T_25 ? 3'h0 : _T_28; // @[Counter.scala 37:21:@25.6]
  assign _GEN_3 = changePulse ? _GEN_2 : value_1; // @[Counter.scala 63:17:@20.4]
  assign _T_31 = io_speed == 3'h0; // @[PWM.scala 22:18:@30.4]
  assign _T_35 = io_speed - 3'h1; // @[PWM.scala 27:46:@37.8]
  assign _T_36 = $unsigned(_T_35); // @[PWM.scala 27:46:@38.8]
  assign _T_37 = _T_36[2:0]; // @[PWM.scala 27:46:@39.8]
  assign _T_38 = value_1 <= _T_37; // @[PWM.scala 27:34:@40.8]
  assign _GEN_4 = io_dir ? _T_38 : 1'h0; // @[PWM.scala 26:19:@36.6]
  assign _GEN_5 = io_dir ? 1'h0 : _T_38; // @[PWM.scala 26:19:@36.6]
  assign io_driverIn1 = _T_31 ? 1'h0 : _GEN_4; // @[PWM.scala 23:18:@32.6 PWM.scala 27:20:@41.8 PWM.scala 30:20:@45.8]
  assign io_driverIn2 = _T_31 ? 1'h0 : _GEN_5; // @[PWM.scala 24:18:@33.6 PWM.scala 28:20:@42.8 PWM.scala 31:20:@50.8]
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
        if (_T_25) begin
          value_1 <= 3'h0;
        end else begin
          value_1 <= _T_28;
        end
      end
    end
  end
endmodule
