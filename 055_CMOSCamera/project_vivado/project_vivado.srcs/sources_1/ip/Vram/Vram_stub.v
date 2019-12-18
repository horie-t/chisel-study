// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Dec 18 22:40:58 2019
// Host        : molybdenum running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tetsuya/fpga/chisel-study/055_CMOSCamera/project_vivado/project_vivado.srcs/sources_1/ip/Vram/Vram_stub.v
// Design      : Vram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *)
module Vram(clka, ena, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[16:0],dina[15:0],clkb,addrb[16:0],doutb[15:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [16:0]addra;
  input [15:0]dina;
  input clkb;
  input [16:0]addrb;
  output [15:0]doutb;
endmodule
