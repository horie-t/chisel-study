// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Feb  4 08:35:20 2021
// Host        : molybdenum running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tetsuya/fpga/chisel-study/056_coms_camera_2/vivado_prj/cmos_camara.srcs/sources_1/ip/CamaraSysClock/CamaraSysClock_stub.v
// Design      : CamaraSysClock
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module CamaraSysClock(clockOut, reset, clockIn)
/* synthesis syn_black_box black_box_pad_pin="clockOut,reset,clockIn" */;
  output clockOut;
  input reset;
  input clockIn;
endmodule
