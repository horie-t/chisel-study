module LChika( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   reset, // @[:@5.4]
  input   io_switch, // @[:@6.4]
  output  io_led // @[:@6.4]
);
  reg  light; // @[LChika.scala 16:22:@8.4]
  reg [31:0] _RAND_0;
  reg [26:0] counter; // @[LChika.scala 17:24:@9.4]
  reg [31:0] _RAND_1;
  wire  _T_14; // @[LChika.scala 19:17:@10.4]
  wire  _T_16; // @[LChika.scala 22:14:@13.6]
  wire [27:0] _T_18; // @[LChika.scala 24:24:@17.6]
  wire [26:0] _T_19; // @[LChika.scala 24:24:@18.6]
  wire [26:0] _GEN_0; // @[LChika.scala 19:45:@11.4]
  wire  _GEN_1; // @[LChika.scala 19:45:@11.4]
  assign _T_14 = counter == 27'h5f5e0ff; // @[LChika.scala 19:17:@10.4]
  assign _T_16 = ~ light; // @[LChika.scala 22:14:@13.6]
  assign _T_18 = counter + 27'h1; // @[LChika.scala 24:24:@17.6]
  assign _T_19 = counter + 27'h1; // @[LChika.scala 24:24:@18.6]
  assign _GEN_0 = _T_14 ? 27'h0 : _T_19; // @[LChika.scala 19:45:@11.4]
  assign _GEN_1 = _T_14 ? _T_16 : light; // @[LChika.scala 19:45:@11.4]
  assign io_led = light & io_switch; // @[LChika.scala 27:10:@22.4]
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
  light = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  counter = _RAND_1[26:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      light <= 1'h1;
    end else begin
      if (_T_14) begin
        light <= _T_16;
      end
    end
    if (reset) begin
      counter <= 27'h0;
    end else begin
      if (_T_14) begin
        counter <= 27'h0;
      end else begin
        counter <= _T_19;
      end
    end
  end
endmodule
