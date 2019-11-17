// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Sun Nov 17 17:02:48 2019
// Host        : molybdenum running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tetsuya/fpga/chisel-study/055_CMOSCamera/project_vivado/project_vivado.srcs/sources_1/ip/Vram/Vram_sim_netlist.v
// Design      : Vram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Vram,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Vram
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [17:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [17:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [17:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [17:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "18" *) 
  (* C_ADDRB_WIDTH = "18" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "37" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "7" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.506629 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "Vram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "153600" *) 
  (* C_READ_DEPTH_B = "153600" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "153600" *) 
  (* C_WRITE_DEPTH_B = "153600" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Vram_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[17:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[17:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module Vram_blk_mem_gen_generic_cstr
   (doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]doutb;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire [7:0]ram_doutb;
  wire \ramloop[0].ram.r_n_8 ;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[15].ram.r_n_0 ;
  wire \ramloop[15].ram.r_n_1 ;
  wire \ramloop[15].ram.r_n_2 ;
  wire \ramloop[15].ram.r_n_3 ;
  wire \ramloop[15].ram.r_n_4 ;
  wire \ramloop[15].ram.r_n_5 ;
  wire \ramloop[15].ram.r_n_6 ;
  wire \ramloop[15].ram.r_n_7 ;
  wire \ramloop[16].ram.r_n_0 ;
  wire \ramloop[16].ram.r_n_1 ;
  wire \ramloop[16].ram.r_n_2 ;
  wire \ramloop[16].ram.r_n_3 ;
  wire \ramloop[16].ram.r_n_4 ;
  wire \ramloop[16].ram.r_n_5 ;
  wire \ramloop[16].ram.r_n_6 ;
  wire \ramloop[16].ram.r_n_7 ;
  wire \ramloop[17].ram.r_n_0 ;
  wire \ramloop[17].ram.r_n_1 ;
  wire \ramloop[17].ram.r_n_2 ;
  wire \ramloop[17].ram.r_n_3 ;
  wire \ramloop[17].ram.r_n_4 ;
  wire \ramloop[17].ram.r_n_5 ;
  wire \ramloop[17].ram.r_n_6 ;
  wire \ramloop[17].ram.r_n_7 ;
  wire \ramloop[18].ram.r_n_0 ;
  wire \ramloop[18].ram.r_n_1 ;
  wire \ramloop[18].ram.r_n_2 ;
  wire \ramloop[18].ram.r_n_3 ;
  wire \ramloop[18].ram.r_n_4 ;
  wire \ramloop[18].ram.r_n_5 ;
  wire \ramloop[18].ram.r_n_6 ;
  wire \ramloop[18].ram.r_n_7 ;
  wire \ramloop[19].ram.r_n_0 ;
  wire \ramloop[19].ram.r_n_1 ;
  wire \ramloop[19].ram.r_n_2 ;
  wire \ramloop[19].ram.r_n_3 ;
  wire \ramloop[19].ram.r_n_4 ;
  wire \ramloop[19].ram.r_n_5 ;
  wire \ramloop[19].ram.r_n_6 ;
  wire \ramloop[19].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[20].ram.r_n_0 ;
  wire \ramloop[20].ram.r_n_1 ;
  wire \ramloop[20].ram.r_n_2 ;
  wire \ramloop[20].ram.r_n_3 ;
  wire \ramloop[20].ram.r_n_4 ;
  wire \ramloop[20].ram.r_n_5 ;
  wire \ramloop[20].ram.r_n_6 ;
  wire \ramloop[20].ram.r_n_7 ;
  wire \ramloop[21].ram.r_n_0 ;
  wire \ramloop[21].ram.r_n_1 ;
  wire \ramloop[21].ram.r_n_2 ;
  wire \ramloop[21].ram.r_n_3 ;
  wire \ramloop[21].ram.r_n_4 ;
  wire \ramloop[21].ram.r_n_5 ;
  wire \ramloop[21].ram.r_n_6 ;
  wire \ramloop[21].ram.r_n_7 ;
  wire \ramloop[22].ram.r_n_0 ;
  wire \ramloop[22].ram.r_n_1 ;
  wire \ramloop[22].ram.r_n_2 ;
  wire \ramloop[22].ram.r_n_3 ;
  wire \ramloop[22].ram.r_n_4 ;
  wire \ramloop[22].ram.r_n_5 ;
  wire \ramloop[22].ram.r_n_6 ;
  wire \ramloop[22].ram.r_n_7 ;
  wire \ramloop[23].ram.r_n_0 ;
  wire \ramloop[23].ram.r_n_1 ;
  wire \ramloop[23].ram.r_n_2 ;
  wire \ramloop[23].ram.r_n_3 ;
  wire \ramloop[23].ram.r_n_4 ;
  wire \ramloop[23].ram.r_n_5 ;
  wire \ramloop[23].ram.r_n_6 ;
  wire \ramloop[23].ram.r_n_7 ;
  wire \ramloop[24].ram.r_n_0 ;
  wire \ramloop[24].ram.r_n_1 ;
  wire \ramloop[24].ram.r_n_2 ;
  wire \ramloop[24].ram.r_n_3 ;
  wire \ramloop[24].ram.r_n_4 ;
  wire \ramloop[24].ram.r_n_5 ;
  wire \ramloop[24].ram.r_n_6 ;
  wire \ramloop[24].ram.r_n_7 ;
  wire \ramloop[25].ram.r_n_0 ;
  wire \ramloop[25].ram.r_n_1 ;
  wire \ramloop[25].ram.r_n_2 ;
  wire \ramloop[25].ram.r_n_3 ;
  wire \ramloop[25].ram.r_n_4 ;
  wire \ramloop[25].ram.r_n_5 ;
  wire \ramloop[25].ram.r_n_6 ;
  wire \ramloop[25].ram.r_n_7 ;
  wire \ramloop[26].ram.r_n_0 ;
  wire \ramloop[26].ram.r_n_1 ;
  wire \ramloop[26].ram.r_n_2 ;
  wire \ramloop[26].ram.r_n_3 ;
  wire \ramloop[26].ram.r_n_4 ;
  wire \ramloop[26].ram.r_n_5 ;
  wire \ramloop[26].ram.r_n_6 ;
  wire \ramloop[26].ram.r_n_7 ;
  wire \ramloop[27].ram.r_n_0 ;
  wire \ramloop[27].ram.r_n_1 ;
  wire \ramloop[27].ram.r_n_2 ;
  wire \ramloop[27].ram.r_n_3 ;
  wire \ramloop[27].ram.r_n_4 ;
  wire \ramloop[27].ram.r_n_5 ;
  wire \ramloop[27].ram.r_n_6 ;
  wire \ramloop[27].ram.r_n_7 ;
  wire \ramloop[28].ram.r_n_0 ;
  wire \ramloop[28].ram.r_n_1 ;
  wire \ramloop[28].ram.r_n_2 ;
  wire \ramloop[28].ram.r_n_3 ;
  wire \ramloop[28].ram.r_n_4 ;
  wire \ramloop[28].ram.r_n_5 ;
  wire \ramloop[28].ram.r_n_6 ;
  wire \ramloop[28].ram.r_n_7 ;
  wire \ramloop[29].ram.r_n_0 ;
  wire \ramloop[29].ram.r_n_1 ;
  wire \ramloop[29].ram.r_n_2 ;
  wire \ramloop[29].ram.r_n_3 ;
  wire \ramloop[29].ram.r_n_4 ;
  wire \ramloop[29].ram.r_n_5 ;
  wire \ramloop[29].ram.r_n_6 ;
  wire \ramloop[29].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[30].ram.r_n_0 ;
  wire \ramloop[30].ram.r_n_1 ;
  wire \ramloop[30].ram.r_n_2 ;
  wire \ramloop[30].ram.r_n_3 ;
  wire \ramloop[30].ram.r_n_4 ;
  wire \ramloop[30].ram.r_n_5 ;
  wire \ramloop[30].ram.r_n_6 ;
  wire \ramloop[30].ram.r_n_7 ;
  wire \ramloop[31].ram.r_n_0 ;
  wire \ramloop[31].ram.r_n_1 ;
  wire \ramloop[31].ram.r_n_2 ;
  wire \ramloop[31].ram.r_n_3 ;
  wire \ramloop[31].ram.r_n_4 ;
  wire \ramloop[31].ram.r_n_5 ;
  wire \ramloop[31].ram.r_n_6 ;
  wire \ramloop[31].ram.r_n_7 ;
  wire \ramloop[32].ram.r_n_0 ;
  wire \ramloop[32].ram.r_n_1 ;
  wire \ramloop[32].ram.r_n_2 ;
  wire \ramloop[32].ram.r_n_3 ;
  wire \ramloop[32].ram.r_n_4 ;
  wire \ramloop[32].ram.r_n_5 ;
  wire \ramloop[32].ram.r_n_6 ;
  wire \ramloop[32].ram.r_n_7 ;
  wire \ramloop[33].ram.r_n_0 ;
  wire \ramloop[33].ram.r_n_1 ;
  wire \ramloop[33].ram.r_n_2 ;
  wire \ramloop[33].ram.r_n_3 ;
  wire \ramloop[33].ram.r_n_4 ;
  wire \ramloop[33].ram.r_n_5 ;
  wire \ramloop[33].ram.r_n_6 ;
  wire \ramloop[33].ram.r_n_7 ;
  wire \ramloop[34].ram.r_n_0 ;
  wire \ramloop[34].ram.r_n_1 ;
  wire \ramloop[34].ram.r_n_2 ;
  wire \ramloop[34].ram.r_n_3 ;
  wire \ramloop[34].ram.r_n_4 ;
  wire \ramloop[34].ram.r_n_5 ;
  wire \ramloop[34].ram.r_n_6 ;
  wire \ramloop[34].ram.r_n_7 ;
  wire \ramloop[34].ram.r_n_8 ;
  wire \ramloop[35].ram.r_n_0 ;
  wire \ramloop[35].ram.r_n_1 ;
  wire \ramloop[35].ram.r_n_2 ;
  wire \ramloop[35].ram.r_n_3 ;
  wire \ramloop[35].ram.r_n_4 ;
  wire \ramloop[35].ram.r_n_5 ;
  wire \ramloop[35].ram.r_n_6 ;
  wire \ramloop[35].ram.r_n_7 ;
  wire \ramloop[36].ram.r_n_0 ;
  wire \ramloop[36].ram.r_n_1 ;
  wire \ramloop[36].ram.r_n_2 ;
  wire \ramloop[36].ram.r_n_3 ;
  wire \ramloop[36].ram.r_n_4 ;
  wire \ramloop[36].ram.r_n_5 ;
  wire \ramloop[36].ram.r_n_6 ;
  wire \ramloop[36].ram.r_n_7 ;
  wire \ramloop[36].ram.r_n_8 ;
  wire \ramloop[37].ram.r_n_0 ;
  wire \ramloop[37].ram.r_n_1 ;
  wire \ramloop[37].ram.r_n_2 ;
  wire \ramloop[37].ram.r_n_3 ;
  wire \ramloop[37].ram.r_n_4 ;
  wire \ramloop[37].ram.r_n_5 ;
  wire \ramloop[37].ram.r_n_6 ;
  wire \ramloop[37].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire [0:0]wea;

  Vram_blk_mem_gen_mux__parameterized0 \has_mux_b.B 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ({\ramloop[37].ram.r_n_0 ,\ramloop[37].ram.r_n_1 ,\ramloop[37].ram.r_n_2 ,\ramloop[37].ram.r_n_3 ,\ramloop[37].ram.r_n_4 ,\ramloop[37].ram.r_n_5 ,\ramloop[37].ram.r_n_6 ,\ramloop[37].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 (ram_doutb),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 ({\ramloop[22].ram.r_n_0 ,\ramloop[22].ram.r_n_1 ,\ramloop[22].ram.r_n_2 ,\ramloop[22].ram.r_n_3 ,\ramloop[22].ram.r_n_4 ,\ramloop[22].ram.r_n_5 ,\ramloop[22].ram.r_n_6 ,\ramloop[22].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 ({\ramloop[27].ram.r_n_0 ,\ramloop[27].ram.r_n_1 ,\ramloop[27].ram.r_n_2 ,\ramloop[27].ram.r_n_3 ,\ramloop[27].ram.r_n_4 ,\ramloop[27].ram.r_n_5 ,\ramloop[27].ram.r_n_6 ,\ramloop[27].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 ({\ramloop[26].ram.r_n_0 ,\ramloop[26].ram.r_n_1 ,\ramloop[26].ram.r_n_2 ,\ramloop[26].ram.r_n_3 ,\ramloop[26].ram.r_n_4 ,\ramloop[26].ram.r_n_5 ,\ramloop[26].ram.r_n_6 ,\ramloop[26].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 ({\ramloop[25].ram.r_n_0 ,\ramloop[25].ram.r_n_1 ,\ramloop[25].ram.r_n_2 ,\ramloop[25].ram.r_n_3 ,\ramloop[25].ram.r_n_4 ,\ramloop[25].ram.r_n_5 ,\ramloop[25].ram.r_n_6 ,\ramloop[25].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 ({\ramloop[24].ram.r_n_0 ,\ramloop[24].ram.r_n_1 ,\ramloop[24].ram.r_n_2 ,\ramloop[24].ram.r_n_3 ,\ramloop[24].ram.r_n_4 ,\ramloop[24].ram.r_n_5 ,\ramloop[24].ram.r_n_6 ,\ramloop[24].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 ({\ramloop[31].ram.r_n_0 ,\ramloop[31].ram.r_n_1 ,\ramloop[31].ram.r_n_2 ,\ramloop[31].ram.r_n_3 ,\ramloop[31].ram.r_n_4 ,\ramloop[31].ram.r_n_5 ,\ramloop[31].ram.r_n_6 ,\ramloop[31].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 ({\ramloop[30].ram.r_n_0 ,\ramloop[30].ram.r_n_1 ,\ramloop[30].ram.r_n_2 ,\ramloop[30].ram.r_n_3 ,\ramloop[30].ram.r_n_4 ,\ramloop[30].ram.r_n_5 ,\ramloop[30].ram.r_n_6 ,\ramloop[30].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 ({\ramloop[29].ram.r_n_0 ,\ramloop[29].ram.r_n_1 ,\ramloop[29].ram.r_n_2 ,\ramloop[29].ram.r_n_3 ,\ramloop[29].ram.r_n_4 ,\ramloop[29].ram.r_n_5 ,\ramloop[29].ram.r_n_6 ,\ramloop[29].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 ({\ramloop[28].ram.r_n_0 ,\ramloop[28].ram.r_n_1 ,\ramloop[28].ram.r_n_2 ,\ramloop[28].ram.r_n_3 ,\ramloop[28].ram.r_n_4 ,\ramloop[28].ram.r_n_5 ,\ramloop[28].ram.r_n_6 ,\ramloop[28].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 ({\ramloop[35].ram.r_n_0 ,\ramloop[35].ram.r_n_1 ,\ramloop[35].ram.r_n_2 ,\ramloop[35].ram.r_n_3 ,\ramloop[35].ram.r_n_4 ,\ramloop[35].ram.r_n_5 ,\ramloop[35].ram.r_n_6 ,\ramloop[35].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 ({\ramloop[34].ram.r_n_0 ,\ramloop[34].ram.r_n_1 ,\ramloop[34].ram.r_n_2 ,\ramloop[34].ram.r_n_3 ,\ramloop[34].ram.r_n_4 ,\ramloop[34].ram.r_n_5 ,\ramloop[34].ram.r_n_6 ,\ramloop[34].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 ({\ramloop[33].ram.r_n_0 ,\ramloop[33].ram.r_n_1 ,\ramloop[33].ram.r_n_2 ,\ramloop[33].ram.r_n_3 ,\ramloop[33].ram.r_n_4 ,\ramloop[33].ram.r_n_5 ,\ramloop[33].ram.r_n_6 ,\ramloop[33].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 ({\ramloop[32].ram.r_n_0 ,\ramloop[32].ram.r_n_1 ,\ramloop[32].ram.r_n_2 ,\ramloop[32].ram.r_n_3 ,\ramloop[32].ram.r_n_4 ,\ramloop[32].ram.r_n_5 ,\ramloop[32].ram.r_n_6 ,\ramloop[32].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 ({\ramloop[36].ram.r_n_0 ,\ramloop[36].ram.r_n_1 ,\ramloop[36].ram.r_n_2 ,\ramloop[36].ram.r_n_3 ,\ramloop[36].ram.r_n_4 ,\ramloop[36].ram.r_n_5 ,\ramloop[36].ram.r_n_6 ,\ramloop[36].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .DOBDO({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .addrb(addrb[17:11]),
        .clkb(clkb),
        .doutb(doutb));
  Vram_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\ramloop[0].ram.r_n_8 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (ram_doutb),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[34].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[34].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_13_sp_1(\ramloop[36].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_13_sp_1(\ramloop[36].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[6].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[6].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[0].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[16].ram.r_n_0 ,\ramloop[16].ram.r_n_1 ,\ramloop[16].ram.r_n_2 ,\ramloop[16].ram.r_n_3 ,\ramloop[16].ram.r_n_4 ,\ramloop[16].ram.r_n_5 ,\ramloop[16].ram.r_n_6 ,\ramloop[16].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[0].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[17].ram.r_n_0 ,\ramloop[17].ram.r_n_1 ,\ramloop[17].ram.r_n_2 ,\ramloop[17].ram.r_n_3 ,\ramloop[17].ram.r_n_4 ,\ramloop[17].ram.r_n_5 ,\ramloop[17].ram.r_n_6 ,\ramloop[17].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[34].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[18].ram.r_n_0 ,\ramloop[18].ram.r_n_1 ,\ramloop[18].ram.r_n_2 ,\ramloop[18].ram.r_n_3 ,\ramloop[18].ram.r_n_4 ,\ramloop[18].ram.r_n_5 ,\ramloop[18].ram.r_n_6 ,\ramloop[18].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized18 \ramloop[19].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[34].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[19].ram.r_n_0 ,\ramloop[19].ram.r_n_1 ,\ramloop[19].ram.r_n_2 ,\ramloop[19].ram.r_n_3 ,\ramloop[19].ram.r_n_4 ,\ramloop[19].ram.r_n_5 ,\ramloop[19].ram.r_n_6 ,\ramloop[19].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[0].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized19 \ramloop[20].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_13_sp_1(\ramloop[36].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[20].ram.r_n_0 ,\ramloop[20].ram.r_n_1 ,\ramloop[20].ram.r_n_2 ,\ramloop[20].ram.r_n_3 ,\ramloop[20].ram.r_n_4 ,\ramloop[20].ram.r_n_5 ,\ramloop[20].ram.r_n_6 ,\ramloop[20].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized20 \ramloop[21].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_13_sp_1(\ramloop[36].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[21].ram.r_n_0 ,\ramloop[21].ram.r_n_1 ,\ramloop[21].ram.r_n_2 ,\ramloop[21].ram.r_n_3 ,\ramloop[21].ram.r_n_4 ,\ramloop[21].ram.r_n_5 ,\ramloop[21].ram.r_n_6 ,\ramloop[21].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized21 \ramloop[22].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[6].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[22].ram.r_n_0 ,\ramloop[22].ram.r_n_1 ,\ramloop[22].ram.r_n_2 ,\ramloop[22].ram.r_n_3 ,\ramloop[22].ram.r_n_4 ,\ramloop[22].ram.r_n_5 ,\ramloop[22].ram.r_n_6 ,\ramloop[22].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized22 \ramloop[23].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[6].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[23].ram.r_n_0 ,\ramloop[23].ram.r_n_1 ,\ramloop[23].ram.r_n_2 ,\ramloop[23].ram.r_n_3 ,\ramloop[23].ram.r_n_4 ,\ramloop[23].ram.r_n_5 ,\ramloop[23].ram.r_n_6 ,\ramloop[23].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized23 \ramloop[24].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[0].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[24].ram.r_n_0 ,\ramloop[24].ram.r_n_1 ,\ramloop[24].ram.r_n_2 ,\ramloop[24].ram.r_n_3 ,\ramloop[24].ram.r_n_4 ,\ramloop[24].ram.r_n_5 ,\ramloop[24].ram.r_n_6 ,\ramloop[24].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized24 \ramloop[25].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[0].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[25].ram.r_n_0 ,\ramloop[25].ram.r_n_1 ,\ramloop[25].ram.r_n_2 ,\ramloop[25].ram.r_n_3 ,\ramloop[25].ram.r_n_4 ,\ramloop[25].ram.r_n_5 ,\ramloop[25].ram.r_n_6 ,\ramloop[25].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized25 \ramloop[26].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[34].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[26].ram.r_n_0 ,\ramloop[26].ram.r_n_1 ,\ramloop[26].ram.r_n_2 ,\ramloop[26].ram.r_n_3 ,\ramloop[26].ram.r_n_4 ,\ramloop[26].ram.r_n_5 ,\ramloop[26].ram.r_n_6 ,\ramloop[26].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized26 \ramloop[27].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[34].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[27].ram.r_n_0 ,\ramloop[27].ram.r_n_1 ,\ramloop[27].ram.r_n_2 ,\ramloop[27].ram.r_n_3 ,\ramloop[27].ram.r_n_4 ,\ramloop[27].ram.r_n_5 ,\ramloop[27].ram.r_n_6 ,\ramloop[27].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized27 \ramloop[28].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_13_sp_1(\ramloop[36].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[28].ram.r_n_0 ,\ramloop[28].ram.r_n_1 ,\ramloop[28].ram.r_n_2 ,\ramloop[28].ram.r_n_3 ,\ramloop[28].ram.r_n_4 ,\ramloop[28].ram.r_n_5 ,\ramloop[28].ram.r_n_6 ,\ramloop[28].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized28 \ramloop[29].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_13_sp_1(\ramloop[36].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[29].ram.r_n_0 ,\ramloop[29].ram.r_n_1 ,\ramloop[29].ram.r_n_2 ,\ramloop[29].ram.r_n_3 ,\ramloop[29].ram.r_n_4 ,\ramloop[29].ram.r_n_5 ,\ramloop[29].ram.r_n_6 ,\ramloop[29].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[34].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized29 \ramloop[30].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[6].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[30].ram.r_n_0 ,\ramloop[30].ram.r_n_1 ,\ramloop[30].ram.r_n_2 ,\ramloop[30].ram.r_n_3 ,\ramloop[30].ram.r_n_4 ,\ramloop[30].ram.r_n_5 ,\ramloop[30].ram.r_n_6 ,\ramloop[30].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized30 \ramloop[31].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[6].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[31].ram.r_n_0 ,\ramloop[31].ram.r_n_1 ,\ramloop[31].ram.r_n_2 ,\ramloop[31].ram.r_n_3 ,\ramloop[31].ram.r_n_4 ,\ramloop[31].ram.r_n_5 ,\ramloop[31].ram.r_n_6 ,\ramloop[31].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized31 \ramloop[32].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[0].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[32].ram.r_n_0 ,\ramloop[32].ram.r_n_1 ,\ramloop[32].ram.r_n_2 ,\ramloop[32].ram.r_n_3 ,\ramloop[32].ram.r_n_4 ,\ramloop[32].ram.r_n_5 ,\ramloop[32].ram.r_n_6 ,\ramloop[32].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized32 \ramloop[33].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[0].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[33].ram.r_n_0 ,\ramloop[33].ram.r_n_1 ,\ramloop[33].ram.r_n_2 ,\ramloop[33].ram.r_n_3 ,\ramloop[33].ram.r_n_4 ,\ramloop[33].ram.r_n_5 ,\ramloop[33].ram.r_n_6 ,\ramloop[33].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized33 \ramloop[34].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\ramloop[34].ram.r_n_8 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[34].ram.r_n_0 ,\ramloop[34].ram.r_n_1 ,\ramloop[34].ram.r_n_2 ,\ramloop[34].ram.r_n_3 ,\ramloop[34].ram.r_n_4 ,\ramloop[34].ram.r_n_5 ,\ramloop[34].ram.r_n_6 ,\ramloop[34].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized34 \ramloop[35].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[34].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[35].ram.r_n_0 ,\ramloop[35].ram.r_n_1 ,\ramloop[35].ram.r_n_2 ,\ramloop[35].ram.r_n_3 ,\ramloop[35].ram.r_n_4 ,\ramloop[35].ram.r_n_5 ,\ramloop[35].ram.r_n_6 ,\ramloop[35].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized35 \ramloop[36].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\ramloop[36].ram.r_n_8 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[36].ram.r_n_0 ,\ramloop[36].ram.r_n_1 ,\ramloop[36].ram.r_n_2 ,\ramloop[36].ram.r_n_3 ,\ramloop[36].ram.r_n_4 ,\ramloop[36].ram.r_n_5 ,\ramloop[36].ram.r_n_6 ,\ramloop[36].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized36 \ramloop[37].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[37].ram.r_n_0 ,\ramloop[37].ram.r_n_1 ,\ramloop[37].ram.r_n_2 ,\ramloop[37].ram.r_n_3 ,\ramloop[37].ram.r_n_4 ,\ramloop[37].ram.r_n_5 ,\ramloop[37].ram.r_n_6 ,\ramloop[37].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.DOBDO({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[34].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_13_sp_1(\ramloop[36].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_13_sp_1(\ramloop[36].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\ramloop[6].ram.r_n_8 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[6].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[0].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
  Vram_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.addra({addra[17:15],addra[12:0]}),
        .addra_14_sp_1(\ramloop[0].ram.r_n_8 ),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module Vram_blk_mem_gen_mux__parameterized0
   (doutb,
    addrb,
    clkb,
    DOBDO,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram );
  output [7:0]doutb;
  input [6:0]addrb;
  input clkb;
  input [7:0]DOBDO;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 ;
  input [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 ;
  wire [7:0]DOBDO;
  wire [6:0]addrb;
  wire clkb;
  wire [7:0]doutb;
  wire \doutb[0]_INST_0_i_10_n_0 ;
  wire \doutb[0]_INST_0_i_11_n_0 ;
  wire \doutb[0]_INST_0_i_12_n_0 ;
  wire \doutb[0]_INST_0_i_13_n_0 ;
  wire \doutb[0]_INST_0_i_14_n_0 ;
  wire \doutb[0]_INST_0_i_15_n_0 ;
  wire \doutb[0]_INST_0_i_16_n_0 ;
  wire \doutb[0]_INST_0_i_17_n_0 ;
  wire \doutb[0]_INST_0_i_1_n_0 ;
  wire \doutb[0]_INST_0_i_2_n_0 ;
  wire \doutb[0]_INST_0_i_3_n_0 ;
  wire \doutb[0]_INST_0_i_4_n_0 ;
  wire \doutb[0]_INST_0_i_5_n_0 ;
  wire \doutb[0]_INST_0_i_6_n_0 ;
  wire \doutb[0]_INST_0_i_7_n_0 ;
  wire \doutb[0]_INST_0_i_8_n_0 ;
  wire \doutb[0]_INST_0_i_9_n_0 ;
  wire \doutb[1]_INST_0_i_10_n_0 ;
  wire \doutb[1]_INST_0_i_11_n_0 ;
  wire \doutb[1]_INST_0_i_12_n_0 ;
  wire \doutb[1]_INST_0_i_13_n_0 ;
  wire \doutb[1]_INST_0_i_14_n_0 ;
  wire \doutb[1]_INST_0_i_15_n_0 ;
  wire \doutb[1]_INST_0_i_16_n_0 ;
  wire \doutb[1]_INST_0_i_17_n_0 ;
  wire \doutb[1]_INST_0_i_1_n_0 ;
  wire \doutb[1]_INST_0_i_2_n_0 ;
  wire \doutb[1]_INST_0_i_3_n_0 ;
  wire \doutb[1]_INST_0_i_4_n_0 ;
  wire \doutb[1]_INST_0_i_5_n_0 ;
  wire \doutb[1]_INST_0_i_6_n_0 ;
  wire \doutb[1]_INST_0_i_7_n_0 ;
  wire \doutb[1]_INST_0_i_8_n_0 ;
  wire \doutb[1]_INST_0_i_9_n_0 ;
  wire \doutb[2]_INST_0_i_10_n_0 ;
  wire \doutb[2]_INST_0_i_11_n_0 ;
  wire \doutb[2]_INST_0_i_12_n_0 ;
  wire \doutb[2]_INST_0_i_13_n_0 ;
  wire \doutb[2]_INST_0_i_14_n_0 ;
  wire \doutb[2]_INST_0_i_15_n_0 ;
  wire \doutb[2]_INST_0_i_16_n_0 ;
  wire \doutb[2]_INST_0_i_17_n_0 ;
  wire \doutb[2]_INST_0_i_1_n_0 ;
  wire \doutb[2]_INST_0_i_2_n_0 ;
  wire \doutb[2]_INST_0_i_3_n_0 ;
  wire \doutb[2]_INST_0_i_4_n_0 ;
  wire \doutb[2]_INST_0_i_5_n_0 ;
  wire \doutb[2]_INST_0_i_6_n_0 ;
  wire \doutb[2]_INST_0_i_7_n_0 ;
  wire \doutb[2]_INST_0_i_8_n_0 ;
  wire \doutb[2]_INST_0_i_9_n_0 ;
  wire \doutb[3]_INST_0_i_10_n_0 ;
  wire \doutb[3]_INST_0_i_11_n_0 ;
  wire \doutb[3]_INST_0_i_12_n_0 ;
  wire \doutb[3]_INST_0_i_13_n_0 ;
  wire \doutb[3]_INST_0_i_14_n_0 ;
  wire \doutb[3]_INST_0_i_15_n_0 ;
  wire \doutb[3]_INST_0_i_16_n_0 ;
  wire \doutb[3]_INST_0_i_17_n_0 ;
  wire \doutb[3]_INST_0_i_1_n_0 ;
  wire \doutb[3]_INST_0_i_2_n_0 ;
  wire \doutb[3]_INST_0_i_3_n_0 ;
  wire \doutb[3]_INST_0_i_4_n_0 ;
  wire \doutb[3]_INST_0_i_5_n_0 ;
  wire \doutb[3]_INST_0_i_6_n_0 ;
  wire \doutb[3]_INST_0_i_7_n_0 ;
  wire \doutb[3]_INST_0_i_8_n_0 ;
  wire \doutb[3]_INST_0_i_9_n_0 ;
  wire \doutb[4]_INST_0_i_10_n_0 ;
  wire \doutb[4]_INST_0_i_11_n_0 ;
  wire \doutb[4]_INST_0_i_12_n_0 ;
  wire \doutb[4]_INST_0_i_13_n_0 ;
  wire \doutb[4]_INST_0_i_14_n_0 ;
  wire \doutb[4]_INST_0_i_15_n_0 ;
  wire \doutb[4]_INST_0_i_16_n_0 ;
  wire \doutb[4]_INST_0_i_17_n_0 ;
  wire \doutb[4]_INST_0_i_1_n_0 ;
  wire \doutb[4]_INST_0_i_2_n_0 ;
  wire \doutb[4]_INST_0_i_3_n_0 ;
  wire \doutb[4]_INST_0_i_4_n_0 ;
  wire \doutb[4]_INST_0_i_5_n_0 ;
  wire \doutb[4]_INST_0_i_6_n_0 ;
  wire \doutb[4]_INST_0_i_7_n_0 ;
  wire \doutb[4]_INST_0_i_8_n_0 ;
  wire \doutb[4]_INST_0_i_9_n_0 ;
  wire \doutb[5]_INST_0_i_10_n_0 ;
  wire \doutb[5]_INST_0_i_11_n_0 ;
  wire \doutb[5]_INST_0_i_12_n_0 ;
  wire \doutb[5]_INST_0_i_13_n_0 ;
  wire \doutb[5]_INST_0_i_14_n_0 ;
  wire \doutb[5]_INST_0_i_15_n_0 ;
  wire \doutb[5]_INST_0_i_16_n_0 ;
  wire \doutb[5]_INST_0_i_17_n_0 ;
  wire \doutb[5]_INST_0_i_1_n_0 ;
  wire \doutb[5]_INST_0_i_2_n_0 ;
  wire \doutb[5]_INST_0_i_3_n_0 ;
  wire \doutb[5]_INST_0_i_4_n_0 ;
  wire \doutb[5]_INST_0_i_5_n_0 ;
  wire \doutb[5]_INST_0_i_6_n_0 ;
  wire \doutb[5]_INST_0_i_7_n_0 ;
  wire \doutb[5]_INST_0_i_8_n_0 ;
  wire \doutb[5]_INST_0_i_9_n_0 ;
  wire \doutb[6]_INST_0_i_10_n_0 ;
  wire \doutb[6]_INST_0_i_11_n_0 ;
  wire \doutb[6]_INST_0_i_12_n_0 ;
  wire \doutb[6]_INST_0_i_13_n_0 ;
  wire \doutb[6]_INST_0_i_14_n_0 ;
  wire \doutb[6]_INST_0_i_15_n_0 ;
  wire \doutb[6]_INST_0_i_16_n_0 ;
  wire \doutb[6]_INST_0_i_17_n_0 ;
  wire \doutb[6]_INST_0_i_1_n_0 ;
  wire \doutb[6]_INST_0_i_2_n_0 ;
  wire \doutb[6]_INST_0_i_3_n_0 ;
  wire \doutb[6]_INST_0_i_4_n_0 ;
  wire \doutb[6]_INST_0_i_5_n_0 ;
  wire \doutb[6]_INST_0_i_6_n_0 ;
  wire \doutb[6]_INST_0_i_7_n_0 ;
  wire \doutb[6]_INST_0_i_8_n_0 ;
  wire \doutb[6]_INST_0_i_9_n_0 ;
  wire \doutb[7]_INST_0_i_10_n_0 ;
  wire \doutb[7]_INST_0_i_11_n_0 ;
  wire \doutb[7]_INST_0_i_12_n_0 ;
  wire \doutb[7]_INST_0_i_13_n_0 ;
  wire \doutb[7]_INST_0_i_14_n_0 ;
  wire \doutb[7]_INST_0_i_15_n_0 ;
  wire \doutb[7]_INST_0_i_16_n_0 ;
  wire \doutb[7]_INST_0_i_17_n_0 ;
  wire \doutb[7]_INST_0_i_1_n_0 ;
  wire \doutb[7]_INST_0_i_2_n_0 ;
  wire \doutb[7]_INST_0_i_3_n_0 ;
  wire \doutb[7]_INST_0_i_4_n_0 ;
  wire \doutb[7]_INST_0_i_5_n_0 ;
  wire \doutb[7]_INST_0_i_6_n_0 ;
  wire \doutb[7]_INST_0_i_7_n_0 ;
  wire \doutb[7]_INST_0_i_8_n_0 ;
  wire \doutb[7]_INST_0_i_9_n_0 ;
  wire [6:0]sel_pipe;

  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \doutb[0]_INST_0 
       (.I0(sel_pipe[4]),
        .I1(\doutb[0]_INST_0_i_1_n_0 ),
        .I2(sel_pipe[6]),
        .I3(\doutb[0]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[5]),
        .I5(\doutb[0]_INST_0_i_3_n_0 ),
        .O(doutb[0]));
  MUXF7 \doutb[0]_INST_0_i_1 
       (.I0(\doutb[0]_INST_0_i_4_n_0 ),
        .I1(\doutb[0]_INST_0_i_5_n_0 ),
        .O(\doutb[0]_INST_0_i_1_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_10 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [0]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [0]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [0]),
        .O(\doutb[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_11 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [0]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [0]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 [0]),
        .O(\doutb[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_12 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 [0]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 [0]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 [0]),
        .O(\doutb[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_13 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 [0]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 [0]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 [0]),
        .O(\doutb[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_14 
       (.I0(DOBDO[0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [0]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [0]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [0]),
        .O(\doutb[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_15 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [0]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [0]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [0]),
        .O(\doutb[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_16 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [0]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [0]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [0]),
        .O(\doutb[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_17 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [0]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [0]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [0]),
        .O(\doutb[0]_INST_0_i_17_n_0 ));
  MUXF8 \doutb[0]_INST_0_i_2 
       (.I0(\doutb[0]_INST_0_i_6_n_0 ),
        .I1(\doutb[0]_INST_0_i_7_n_0 ),
        .O(\doutb[0]_INST_0_i_2_n_0 ),
        .S(sel_pipe[4]));
  MUXF8 \doutb[0]_INST_0_i_3 
       (.I0(\doutb[0]_INST_0_i_8_n_0 ),
        .I1(\doutb[0]_INST_0_i_9_n_0 ),
        .O(\doutb[0]_INST_0_i_3_n_0 ),
        .S(sel_pipe[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 [0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 [0]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 [0]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 [0]),
        .O(\doutb[0]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02023202)) 
    \doutb[0]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 [0]),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [0]),
        .I4(sel_pipe[0]),
        .O(\doutb[0]_INST_0_i_5_n_0 ));
  MUXF7 \doutb[0]_INST_0_i_6 
       (.I0(\doutb[0]_INST_0_i_10_n_0 ),
        .I1(\doutb[0]_INST_0_i_11_n_0 ),
        .O(\doutb[0]_INST_0_i_6_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[0]_INST_0_i_7 
       (.I0(\doutb[0]_INST_0_i_12_n_0 ),
        .I1(\doutb[0]_INST_0_i_13_n_0 ),
        .O(\doutb[0]_INST_0_i_7_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[0]_INST_0_i_8 
       (.I0(\doutb[0]_INST_0_i_14_n_0 ),
        .I1(\doutb[0]_INST_0_i_15_n_0 ),
        .O(\doutb[0]_INST_0_i_8_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[0]_INST_0_i_9 
       (.I0(\doutb[0]_INST_0_i_16_n_0 ),
        .I1(\doutb[0]_INST_0_i_17_n_0 ),
        .O(\doutb[0]_INST_0_i_9_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \doutb[1]_INST_0 
       (.I0(sel_pipe[4]),
        .I1(\doutb[1]_INST_0_i_1_n_0 ),
        .I2(sel_pipe[6]),
        .I3(\doutb[1]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[5]),
        .I5(\doutb[1]_INST_0_i_3_n_0 ),
        .O(doutb[1]));
  MUXF7 \doutb[1]_INST_0_i_1 
       (.I0(\doutb[1]_INST_0_i_4_n_0 ),
        .I1(\doutb[1]_INST_0_i_5_n_0 ),
        .O(\doutb[1]_INST_0_i_1_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_10 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [1]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [1]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [1]),
        .O(\doutb[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_11 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [1]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [1]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 [1]),
        .O(\doutb[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_12 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 [1]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 [1]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 [1]),
        .O(\doutb[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_13 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 [1]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 [1]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 [1]),
        .O(\doutb[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_14 
       (.I0(DOBDO[1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [1]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [1]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [1]),
        .O(\doutb[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_15 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [1]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [1]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [1]),
        .O(\doutb[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_16 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [1]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [1]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [1]),
        .O(\doutb[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_17 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [1]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [1]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [1]),
        .O(\doutb[1]_INST_0_i_17_n_0 ));
  MUXF8 \doutb[1]_INST_0_i_2 
       (.I0(\doutb[1]_INST_0_i_6_n_0 ),
        .I1(\doutb[1]_INST_0_i_7_n_0 ),
        .O(\doutb[1]_INST_0_i_2_n_0 ),
        .S(sel_pipe[4]));
  MUXF8 \doutb[1]_INST_0_i_3 
       (.I0(\doutb[1]_INST_0_i_8_n_0 ),
        .I1(\doutb[1]_INST_0_i_9_n_0 ),
        .O(\doutb[1]_INST_0_i_3_n_0 ),
        .S(sel_pipe[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 [1]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 [1]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 [1]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 [1]),
        .O(\doutb[1]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02023202)) 
    \doutb[1]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 [1]),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [1]),
        .I4(sel_pipe[0]),
        .O(\doutb[1]_INST_0_i_5_n_0 ));
  MUXF7 \doutb[1]_INST_0_i_6 
       (.I0(\doutb[1]_INST_0_i_10_n_0 ),
        .I1(\doutb[1]_INST_0_i_11_n_0 ),
        .O(\doutb[1]_INST_0_i_6_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[1]_INST_0_i_7 
       (.I0(\doutb[1]_INST_0_i_12_n_0 ),
        .I1(\doutb[1]_INST_0_i_13_n_0 ),
        .O(\doutb[1]_INST_0_i_7_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[1]_INST_0_i_8 
       (.I0(\doutb[1]_INST_0_i_14_n_0 ),
        .I1(\doutb[1]_INST_0_i_15_n_0 ),
        .O(\doutb[1]_INST_0_i_8_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[1]_INST_0_i_9 
       (.I0(\doutb[1]_INST_0_i_16_n_0 ),
        .I1(\doutb[1]_INST_0_i_17_n_0 ),
        .O(\doutb[1]_INST_0_i_9_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \doutb[2]_INST_0 
       (.I0(sel_pipe[4]),
        .I1(\doutb[2]_INST_0_i_1_n_0 ),
        .I2(sel_pipe[6]),
        .I3(\doutb[2]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[5]),
        .I5(\doutb[2]_INST_0_i_3_n_0 ),
        .O(doutb[2]));
  MUXF7 \doutb[2]_INST_0_i_1 
       (.I0(\doutb[2]_INST_0_i_4_n_0 ),
        .I1(\doutb[2]_INST_0_i_5_n_0 ),
        .O(\doutb[2]_INST_0_i_1_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_10 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [2]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [2]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [2]),
        .O(\doutb[2]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_11 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [2]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [2]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 [2]),
        .O(\doutb[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_12 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 [2]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 [2]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 [2]),
        .O(\doutb[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_13 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 [2]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 [2]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 [2]),
        .O(\doutb[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_14 
       (.I0(DOBDO[2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [2]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [2]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [2]),
        .O(\doutb[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_15 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [2]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [2]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [2]),
        .O(\doutb[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_16 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [2]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [2]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [2]),
        .O(\doutb[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_17 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [2]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [2]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [2]),
        .O(\doutb[2]_INST_0_i_17_n_0 ));
  MUXF8 \doutb[2]_INST_0_i_2 
       (.I0(\doutb[2]_INST_0_i_6_n_0 ),
        .I1(\doutb[2]_INST_0_i_7_n_0 ),
        .O(\doutb[2]_INST_0_i_2_n_0 ),
        .S(sel_pipe[4]));
  MUXF8 \doutb[2]_INST_0_i_3 
       (.I0(\doutb[2]_INST_0_i_8_n_0 ),
        .I1(\doutb[2]_INST_0_i_9_n_0 ),
        .O(\doutb[2]_INST_0_i_3_n_0 ),
        .S(sel_pipe[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 [2]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 [2]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 [2]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 [2]),
        .O(\doutb[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02023202)) 
    \doutb[2]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 [2]),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [2]),
        .I4(sel_pipe[0]),
        .O(\doutb[2]_INST_0_i_5_n_0 ));
  MUXF7 \doutb[2]_INST_0_i_6 
       (.I0(\doutb[2]_INST_0_i_10_n_0 ),
        .I1(\doutb[2]_INST_0_i_11_n_0 ),
        .O(\doutb[2]_INST_0_i_6_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[2]_INST_0_i_7 
       (.I0(\doutb[2]_INST_0_i_12_n_0 ),
        .I1(\doutb[2]_INST_0_i_13_n_0 ),
        .O(\doutb[2]_INST_0_i_7_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[2]_INST_0_i_8 
       (.I0(\doutb[2]_INST_0_i_14_n_0 ),
        .I1(\doutb[2]_INST_0_i_15_n_0 ),
        .O(\doutb[2]_INST_0_i_8_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[2]_INST_0_i_9 
       (.I0(\doutb[2]_INST_0_i_16_n_0 ),
        .I1(\doutb[2]_INST_0_i_17_n_0 ),
        .O(\doutb[2]_INST_0_i_9_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \doutb[3]_INST_0 
       (.I0(sel_pipe[4]),
        .I1(\doutb[3]_INST_0_i_1_n_0 ),
        .I2(sel_pipe[6]),
        .I3(\doutb[3]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[5]),
        .I5(\doutb[3]_INST_0_i_3_n_0 ),
        .O(doutb[3]));
  MUXF7 \doutb[3]_INST_0_i_1 
       (.I0(\doutb[3]_INST_0_i_4_n_0 ),
        .I1(\doutb[3]_INST_0_i_5_n_0 ),
        .O(\doutb[3]_INST_0_i_1_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_10 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [3]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [3]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [3]),
        .O(\doutb[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_11 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [3]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [3]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 [3]),
        .O(\doutb[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_12 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 [3]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 [3]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 [3]),
        .O(\doutb[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_13 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 [3]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 [3]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 [3]),
        .O(\doutb[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_14 
       (.I0(DOBDO[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [3]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [3]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [3]),
        .O(\doutb[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_15 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [3]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [3]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [3]),
        .O(\doutb[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_16 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [3]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [3]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [3]),
        .O(\doutb[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_17 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [3]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [3]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [3]),
        .O(\doutb[3]_INST_0_i_17_n_0 ));
  MUXF8 \doutb[3]_INST_0_i_2 
       (.I0(\doutb[3]_INST_0_i_6_n_0 ),
        .I1(\doutb[3]_INST_0_i_7_n_0 ),
        .O(\doutb[3]_INST_0_i_2_n_0 ),
        .S(sel_pipe[4]));
  MUXF8 \doutb[3]_INST_0_i_3 
       (.I0(\doutb[3]_INST_0_i_8_n_0 ),
        .I1(\doutb[3]_INST_0_i_9_n_0 ),
        .O(\doutb[3]_INST_0_i_3_n_0 ),
        .S(sel_pipe[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 [3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 [3]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 [3]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 [3]),
        .O(\doutb[3]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02023202)) 
    \doutb[3]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 [3]),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [3]),
        .I4(sel_pipe[0]),
        .O(\doutb[3]_INST_0_i_5_n_0 ));
  MUXF7 \doutb[3]_INST_0_i_6 
       (.I0(\doutb[3]_INST_0_i_10_n_0 ),
        .I1(\doutb[3]_INST_0_i_11_n_0 ),
        .O(\doutb[3]_INST_0_i_6_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[3]_INST_0_i_7 
       (.I0(\doutb[3]_INST_0_i_12_n_0 ),
        .I1(\doutb[3]_INST_0_i_13_n_0 ),
        .O(\doutb[3]_INST_0_i_7_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[3]_INST_0_i_8 
       (.I0(\doutb[3]_INST_0_i_14_n_0 ),
        .I1(\doutb[3]_INST_0_i_15_n_0 ),
        .O(\doutb[3]_INST_0_i_8_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[3]_INST_0_i_9 
       (.I0(\doutb[3]_INST_0_i_16_n_0 ),
        .I1(\doutb[3]_INST_0_i_17_n_0 ),
        .O(\doutb[3]_INST_0_i_9_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \doutb[4]_INST_0 
       (.I0(sel_pipe[4]),
        .I1(\doutb[4]_INST_0_i_1_n_0 ),
        .I2(sel_pipe[6]),
        .I3(\doutb[4]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[5]),
        .I5(\doutb[4]_INST_0_i_3_n_0 ),
        .O(doutb[4]));
  MUXF7 \doutb[4]_INST_0_i_1 
       (.I0(\doutb[4]_INST_0_i_4_n_0 ),
        .I1(\doutb[4]_INST_0_i_5_n_0 ),
        .O(\doutb[4]_INST_0_i_1_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_10 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [4]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [4]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [4]),
        .O(\doutb[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_11 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [4]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [4]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 [4]),
        .O(\doutb[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_12 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 [4]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 [4]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 [4]),
        .O(\doutb[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_13 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 [4]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 [4]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 [4]),
        .O(\doutb[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_14 
       (.I0(DOBDO[4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [4]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [4]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [4]),
        .O(\doutb[4]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_15 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [4]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [4]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [4]),
        .O(\doutb[4]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_16 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [4]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [4]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [4]),
        .O(\doutb[4]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_17 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [4]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [4]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [4]),
        .O(\doutb[4]_INST_0_i_17_n_0 ));
  MUXF8 \doutb[4]_INST_0_i_2 
       (.I0(\doutb[4]_INST_0_i_6_n_0 ),
        .I1(\doutb[4]_INST_0_i_7_n_0 ),
        .O(\doutb[4]_INST_0_i_2_n_0 ),
        .S(sel_pipe[4]));
  MUXF8 \doutb[4]_INST_0_i_3 
       (.I0(\doutb[4]_INST_0_i_8_n_0 ),
        .I1(\doutb[4]_INST_0_i_9_n_0 ),
        .O(\doutb[4]_INST_0_i_3_n_0 ),
        .S(sel_pipe[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 [4]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 [4]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 [4]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 [4]),
        .O(\doutb[4]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02023202)) 
    \doutb[4]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 [4]),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [4]),
        .I4(sel_pipe[0]),
        .O(\doutb[4]_INST_0_i_5_n_0 ));
  MUXF7 \doutb[4]_INST_0_i_6 
       (.I0(\doutb[4]_INST_0_i_10_n_0 ),
        .I1(\doutb[4]_INST_0_i_11_n_0 ),
        .O(\doutb[4]_INST_0_i_6_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[4]_INST_0_i_7 
       (.I0(\doutb[4]_INST_0_i_12_n_0 ),
        .I1(\doutb[4]_INST_0_i_13_n_0 ),
        .O(\doutb[4]_INST_0_i_7_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[4]_INST_0_i_8 
       (.I0(\doutb[4]_INST_0_i_14_n_0 ),
        .I1(\doutb[4]_INST_0_i_15_n_0 ),
        .O(\doutb[4]_INST_0_i_8_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[4]_INST_0_i_9 
       (.I0(\doutb[4]_INST_0_i_16_n_0 ),
        .I1(\doutb[4]_INST_0_i_17_n_0 ),
        .O(\doutb[4]_INST_0_i_9_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \doutb[5]_INST_0 
       (.I0(sel_pipe[4]),
        .I1(\doutb[5]_INST_0_i_1_n_0 ),
        .I2(sel_pipe[6]),
        .I3(\doutb[5]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[5]),
        .I5(\doutb[5]_INST_0_i_3_n_0 ),
        .O(doutb[5]));
  MUXF7 \doutb[5]_INST_0_i_1 
       (.I0(\doutb[5]_INST_0_i_4_n_0 ),
        .I1(\doutb[5]_INST_0_i_5_n_0 ),
        .O(\doutb[5]_INST_0_i_1_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_10 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [5]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [5]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [5]),
        .O(\doutb[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_11 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [5]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [5]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 [5]),
        .O(\doutb[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_12 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 [5]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 [5]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 [5]),
        .O(\doutb[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_13 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 [5]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 [5]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 [5]),
        .O(\doutb[5]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_14 
       (.I0(DOBDO[5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [5]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [5]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [5]),
        .O(\doutb[5]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_15 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [5]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [5]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [5]),
        .O(\doutb[5]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_16 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [5]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [5]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [5]),
        .O(\doutb[5]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_17 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [5]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [5]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [5]),
        .O(\doutb[5]_INST_0_i_17_n_0 ));
  MUXF8 \doutb[5]_INST_0_i_2 
       (.I0(\doutb[5]_INST_0_i_6_n_0 ),
        .I1(\doutb[5]_INST_0_i_7_n_0 ),
        .O(\doutb[5]_INST_0_i_2_n_0 ),
        .S(sel_pipe[4]));
  MUXF8 \doutb[5]_INST_0_i_3 
       (.I0(\doutb[5]_INST_0_i_8_n_0 ),
        .I1(\doutb[5]_INST_0_i_9_n_0 ),
        .O(\doutb[5]_INST_0_i_3_n_0 ),
        .S(sel_pipe[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 [5]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 [5]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 [5]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 [5]),
        .O(\doutb[5]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02023202)) 
    \doutb[5]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 [5]),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [5]),
        .I4(sel_pipe[0]),
        .O(\doutb[5]_INST_0_i_5_n_0 ));
  MUXF7 \doutb[5]_INST_0_i_6 
       (.I0(\doutb[5]_INST_0_i_10_n_0 ),
        .I1(\doutb[5]_INST_0_i_11_n_0 ),
        .O(\doutb[5]_INST_0_i_6_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[5]_INST_0_i_7 
       (.I0(\doutb[5]_INST_0_i_12_n_0 ),
        .I1(\doutb[5]_INST_0_i_13_n_0 ),
        .O(\doutb[5]_INST_0_i_7_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[5]_INST_0_i_8 
       (.I0(\doutb[5]_INST_0_i_14_n_0 ),
        .I1(\doutb[5]_INST_0_i_15_n_0 ),
        .O(\doutb[5]_INST_0_i_8_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[5]_INST_0_i_9 
       (.I0(\doutb[5]_INST_0_i_16_n_0 ),
        .I1(\doutb[5]_INST_0_i_17_n_0 ),
        .O(\doutb[5]_INST_0_i_9_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \doutb[6]_INST_0 
       (.I0(sel_pipe[4]),
        .I1(\doutb[6]_INST_0_i_1_n_0 ),
        .I2(sel_pipe[6]),
        .I3(\doutb[6]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[5]),
        .I5(\doutb[6]_INST_0_i_3_n_0 ),
        .O(doutb[6]));
  MUXF7 \doutb[6]_INST_0_i_1 
       (.I0(\doutb[6]_INST_0_i_4_n_0 ),
        .I1(\doutb[6]_INST_0_i_5_n_0 ),
        .O(\doutb[6]_INST_0_i_1_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_10 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [6]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [6]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [6]),
        .O(\doutb[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_11 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [6]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [6]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 [6]),
        .O(\doutb[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_12 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 [6]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 [6]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 [6]),
        .O(\doutb[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_13 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 [6]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 [6]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 [6]),
        .O(\doutb[6]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_14 
       (.I0(DOBDO[6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [6]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [6]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [6]),
        .O(\doutb[6]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_15 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [6]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [6]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [6]),
        .O(\doutb[6]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_16 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [6]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [6]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [6]),
        .O(\doutb[6]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_17 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [6]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [6]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [6]),
        .O(\doutb[6]_INST_0_i_17_n_0 ));
  MUXF8 \doutb[6]_INST_0_i_2 
       (.I0(\doutb[6]_INST_0_i_6_n_0 ),
        .I1(\doutb[6]_INST_0_i_7_n_0 ),
        .O(\doutb[6]_INST_0_i_2_n_0 ),
        .S(sel_pipe[4]));
  MUXF8 \doutb[6]_INST_0_i_3 
       (.I0(\doutb[6]_INST_0_i_8_n_0 ),
        .I1(\doutb[6]_INST_0_i_9_n_0 ),
        .O(\doutb[6]_INST_0_i_3_n_0 ),
        .S(sel_pipe[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 [6]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 [6]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 [6]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 [6]),
        .O(\doutb[6]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02023202)) 
    \doutb[6]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 [6]),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [6]),
        .I4(sel_pipe[0]),
        .O(\doutb[6]_INST_0_i_5_n_0 ));
  MUXF7 \doutb[6]_INST_0_i_6 
       (.I0(\doutb[6]_INST_0_i_10_n_0 ),
        .I1(\doutb[6]_INST_0_i_11_n_0 ),
        .O(\doutb[6]_INST_0_i_6_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[6]_INST_0_i_7 
       (.I0(\doutb[6]_INST_0_i_12_n_0 ),
        .I1(\doutb[6]_INST_0_i_13_n_0 ),
        .O(\doutb[6]_INST_0_i_7_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[6]_INST_0_i_8 
       (.I0(\doutb[6]_INST_0_i_14_n_0 ),
        .I1(\doutb[6]_INST_0_i_15_n_0 ),
        .O(\doutb[6]_INST_0_i_8_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[6]_INST_0_i_9 
       (.I0(\doutb[6]_INST_0_i_16_n_0 ),
        .I1(\doutb[6]_INST_0_i_17_n_0 ),
        .O(\doutb[6]_INST_0_i_9_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \doutb[7]_INST_0 
       (.I0(sel_pipe[4]),
        .I1(\doutb[7]_INST_0_i_1_n_0 ),
        .I2(sel_pipe[6]),
        .I3(\doutb[7]_INST_0_i_2_n_0 ),
        .I4(sel_pipe[5]),
        .I5(\doutb[7]_INST_0_i_3_n_0 ),
        .O(doutb[7]));
  MUXF7 \doutb[7]_INST_0_i_1 
       (.I0(\doutb[7]_INST_0_i_4_n_0 ),
        .I1(\doutb[7]_INST_0_i_5_n_0 ),
        .O(\doutb[7]_INST_0_i_1_n_0 ),
        .S(sel_pipe[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_10 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15 [7]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16 [7]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17 [7]),
        .O(\doutb[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_11 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19 [7]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20 [7]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21 [7]),
        .O(\doutb[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_12 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23 [7]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24 [7]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25 [7]),
        .O(\doutb[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_13 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27 [7]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28 [7]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29 [7]),
        .O(\doutb[7]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_14 
       (.I0(DOBDO[7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [7]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 [7]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 [7]),
        .O(\doutb[7]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_15 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3 [7]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4 [7]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5 [7]),
        .O(\doutb[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_16 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7 [7]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8 [7]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9 [7]),
        .O(\doutb[7]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_17 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11 [7]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12 [7]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13 [7]),
        .O(\doutb[7]_INST_0_i_17_n_0 ));
  MUXF8 \doutb[7]_INST_0_i_2 
       (.I0(\doutb[7]_INST_0_i_6_n_0 ),
        .I1(\doutb[7]_INST_0_i_7_n_0 ),
        .O(\doutb[7]_INST_0_i_2_n_0 ),
        .S(sel_pipe[4]));
  MUXF8 \doutb[7]_INST_0_i_3 
       (.I0(\doutb[7]_INST_0_i_8_n_0 ),
        .I1(\doutb[7]_INST_0_i_9_n_0 ),
        .O(\doutb[7]_INST_0_i_3_n_0 ),
        .S(sel_pipe[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_4 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30 [7]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31 [7]),
        .I2(sel_pipe[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32 [7]),
        .I4(sel_pipe[1]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33 [7]),
        .O(\doutb[7]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02023202)) 
    \doutb[7]_INST_0_i_5 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34 [7]),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram [7]),
        .I4(sel_pipe[0]),
        .O(\doutb[7]_INST_0_i_5_n_0 ));
  MUXF7 \doutb[7]_INST_0_i_6 
       (.I0(\doutb[7]_INST_0_i_10_n_0 ),
        .I1(\doutb[7]_INST_0_i_11_n_0 ),
        .O(\doutb[7]_INST_0_i_6_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[7]_INST_0_i_7 
       (.I0(\doutb[7]_INST_0_i_12_n_0 ),
        .I1(\doutb[7]_INST_0_i_13_n_0 ),
        .O(\doutb[7]_INST_0_i_7_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[7]_INST_0_i_8 
       (.I0(\doutb[7]_INST_0_i_14_n_0 ),
        .I1(\doutb[7]_INST_0_i_15_n_0 ),
        .O(\doutb[7]_INST_0_i_8_n_0 ),
        .S(sel_pipe[3]));
  MUXF7 \doutb[7]_INST_0_i_9 
       (.I0(\doutb[7]_INST_0_i_16_n_0 ),
        .I1(\doutb[7]_INST_0_i_17_n_0 ),
        .O(\doutb[7]_INST_0_i_9_n_0 ),
        .S(sel_pipe[3]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[4] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[4]),
        .Q(sel_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[5] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[5]),
        .Q(sel_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[6] 
       (.C(clkb),
        .CE(1'b1),
        .D(addrb[6]),
        .Q(sel_pipe[6]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width
   (\doutb[7] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]\doutb[7] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  Vram_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized0
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized1
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized10
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized11
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_13_sn_1 = addra_13_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.addra(addra),
        .addra_13_sp_1(addra_13_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized12
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_13_sn_1 = addra_13_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.addra(addra),
        .addra_13_sp_1(addra_13_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized13
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized14
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized15
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized15 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized16
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized16 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized17
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized17 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized18
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized18 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized19
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_13_sn_1 = addra_13_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized19 \prim_init.ram 
       (.addra(addra),
        .addra_13_sp_1(addra_13_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized2
   (DOBDO,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]DOBDO;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [7:0]DOBDO;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.DOBDO(DOBDO),
        .addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized20
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_13_sn_1 = addra_13_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized20 \prim_init.ram 
       (.addra(addra),
        .addra_13_sp_1(addra_13_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized21
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized21 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized22
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized22 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized23
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized23 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized24
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized24 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized25
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized25 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized26
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized26 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized27
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_13_sn_1 = addra_13_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized27 \prim_init.ram 
       (.addra(addra),
        .addra_13_sp_1(addra_13_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized28
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_13_sn_1 = addra_13_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized28 \prim_init.ram 
       (.addra(addra),
        .addra_13_sp_1(addra_13_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized29
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized29 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized3
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_13_sn_1 = addra_13_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .addra_13_sp_1(addra_13_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized30
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized30 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized31
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    addra_14_sp_1,
    ena);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input addra_14_sp_1;
  input ena;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized31 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized32
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    addra_14_sp_1,
    ena);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input addra_14_sp_1;
  input ena;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized32 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized33
   (\doutb[7] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]\doutb[7] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  Vram_blk_mem_gen_prim_wrapper_init__parameterized33 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized34
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    addra_14_sp_1,
    ena);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input addra_14_sp_1;
  input ena;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized34 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized35
   (\doutb[7] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]\doutb[7] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  Vram_blk_mem_gen_prim_wrapper_init__parameterized35 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized36
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  Vram_blk_mem_gen_prim_wrapper_init__parameterized36 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized4
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_13_sn_1 = addra_13_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .addra_13_sp_1(addra_13_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized5
   (\doutb[7] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]\doutb[7] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  Vram_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized6
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized7
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized8
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Vram_blk_mem_gen_prim_width__parameterized9
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;

  assign addra_14_sn_1 = addra_14_sp_1;
  Vram_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.addra(addra),
        .addra_14_sp_1(addra_14_sn_1),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .\doutb[7] (\doutb[7] ),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init
   (\doutb[7] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]\doutb[7] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8 
       (.I0(addra[17]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[15]),
        .I4(addra[16]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3 
       (.I0(addra[13]),
        .I1(addra[14]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized0
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized1
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__32_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__32_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__32 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized10
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__17_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__17_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__17_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__17_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__17 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__17_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__17 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__17_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized11
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__28_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__30_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_13_sn_1 = addra_13_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__28_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__30_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__28 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_13_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__30 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__30_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized12
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__16_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__29_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_13_sn_1 = addra_13_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__16_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__29_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__16 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_13_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__16_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__29 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__29_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized13
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__27_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__26_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__27_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__26_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__27 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__27_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__26 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__26_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized14
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__15_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__25_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__15_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__25_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__15 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__15_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__25 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__25_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized15
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[14]),
        .I4(addra[13]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized16
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[14]),
        .I4(addra[13]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized17
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__26_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__26_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__26 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[14]),
        .I4(addra[13]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized18
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[14]),
        .I4(addra[13]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized19
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__25_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_13_sn_1 = addra_13_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__25_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__25 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[14]),
        .I4(addra[13]),
        .I5(addra_13_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[14]),
        .I3(addrb[15]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized2
   (DOBDO,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]DOBDO;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__20_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [7:0]DOBDO;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],DOBDO}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__20_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__20 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__20_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized20
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_13_sn_1 = addra_13_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[14]),
        .I4(addra[13]),
        .I5(addra_13_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[14]),
        .I3(addrb[15]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized21
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__24_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__24_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__24 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[14]),
        .I4(addra[13]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__24_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[14]),
        .I3(addrb[15]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized22
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[14]),
        .I4(addra[13]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[14]),
        .I3(addrb[15]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized23
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__20_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__20_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__20 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__20_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized24
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__19_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__19_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__19 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__19_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized25
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__23_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__16_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__23_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__16_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__23 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__16 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__16_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized26
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__15_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__15_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__15 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__15_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized27
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__22_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__28_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_13_sn_1 = addra_13_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__22_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__28_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__22 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_13_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__28 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__28_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized28
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__27_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_13_sn_1 = addra_13_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__27_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_13_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__27 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__27_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized29
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__21_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__24_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__21_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__24_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__21 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__24 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__24_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized3
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__31_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_13_sn_1 = addra_13_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__31_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__31 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_13_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__31_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[14]),
        .I3(addrb[15]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized30
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__23_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__23_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__23 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__23_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized31
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    addra_14_sp_1,
    ena);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input addra_14_sp_1;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__34_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__34_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[12]),
        .I1(addra_14_sn_1),
        .I2(addra[13]),
        .I3(addra[14]),
        .I4(ena),
        .I5(addra[15]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__34 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__34_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized32
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    addra_14_sp_1,
    ena);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input addra_14_sp_1;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__33_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__33_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .I1(addra_14_sn_1),
        .I2(addra[13]),
        .I3(addra[14]),
        .I4(ena),
        .I5(addra[15]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__33 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__33_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized33
   (\doutb[7] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]\doutb[7] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__35_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__32_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__35_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__32_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__35 
       (.I0(addra[12]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I2(addra[15]),
        .I3(addra[16]),
        .I4(ena),
        .I5(addra[17]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__35_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__32 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__32_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3__0 
       (.I0(addra[13]),
        .I1(addra[14]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized34
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    addra_14_sp_1,
    ena);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input addra_14_sp_1;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__34_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__31_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__34_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__31_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__34 
       (.I0(addra[12]),
        .I1(addra_14_sn_1),
        .I2(addra[13]),
        .I3(addra[14]),
        .I4(ena),
        .I5(addra[15]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__34_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__31 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__31_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized35
   (\doutb[7] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]\doutb[7] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__33_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__35_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__33_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__35_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__33 
       (.I0(addra[12]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .I2(addra[15]),
        .I3(addra[16]),
        .I4(ena),
        .I5(addra[17]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__33_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__35 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[14]),
        .I3(addrb[15]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__35_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3__1 
       (.I0(addra[14]),
        .I1(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized36
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_3_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_4_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_35 ;
  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [74:74]ena_array;
  wire [74:74]enb_array;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[10:0],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb[10:0],1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_35 }),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h00200000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1 
       (.I0(addra[14]),
        .I1(addra[13]),
        .I2(addra[12]),
        .I3(addra[11]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_3_n_0 ),
        .O(ena_array));
  LUT3 #(
    .INIT(8'h08)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2 
       (.I0(addrb[12]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_4_n_0 ),
        .I2(addrb[11]),
        .O(enb_array));
  LUT4 #(
    .INIT(16'h0008)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_3 
       (.I0(addra[17]),
        .I1(ena),
        .I2(addra[16]),
        .I3(addra[15]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_4 
       (.I0(addrb[13]),
        .I1(addrb[15]),
        .I2(addrb[14]),
        .I3(addrb[17]),
        .I4(addrb[16]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized4
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_13_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_13_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__19_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_13_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_13_sn_1 = addra_13_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__19_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__19 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_13_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__19_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[14]),
        .I3(addrb[15]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized5
   (\doutb[7] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]\doutb[7] ;
  output \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__30_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__30_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__30 
       (.I0(addra[17]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[15]),
        .I4(addra[16]),
        .I5(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__30_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[14]),
        .I3(addrb[15]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3__2 
       (.I0(addra[13]),
        .I1(addra[14]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized6
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__18_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__18_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__18 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__18_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[14]),
        .I3(addrb[15]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized7
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__22_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__22_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__22 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__22_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized8
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__21_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__21_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__21 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__21_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module Vram_blk_mem_gen_prim_wrapper_init__parameterized9
   (\doutb[7] ,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena,
    addra_14_sp_1);
  output [7:0]\doutb[7] ;
  input clka;
  input clkb;
  input [15:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;
  input addra_14_sp_1;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__29_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__18_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [15:0]addra;
  wire addra_14_sn_1;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]\doutb[7] ;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  assign addra_14_sn_1 = addra_14_sp_1;
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_01(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_02(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_03(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_04(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_05(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_06(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_07(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_08(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_09(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_11(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_12(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_13(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_14(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_15(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_16(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_17(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_18(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_19(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_1F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_20(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_21(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_22(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_23(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_24(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_25(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_26(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_27(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_28(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_29(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_2F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_30(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_31(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_32(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_33(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_34(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_35(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_36(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_37(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_38(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_39(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_3F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_40(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_41(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_42(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_43(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_44(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_45(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_46(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_47(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_48(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_49(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_4F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_50(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_51(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_52(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_53(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_54(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_55(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_56(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_57(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_58(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_59(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_5F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_60(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_61(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_62(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_63(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_64(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_65(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_66(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_67(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_68(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_69(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_6F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_70(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_71(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_72(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_73(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_74(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_75(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_76(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_77(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_78(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_79(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7A(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7B(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7C(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7D(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_7F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb[11:0],1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\doutb[7] }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__29_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__18_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__29 
       (.I0(addra[15]),
        .I1(ena),
        .I2(addra[12]),
        .I3(addra[13]),
        .I4(addra[14]),
        .I5(addra_14_sn_1),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__18 
       (.I0(addrb[16]),
        .I1(addrb[17]),
        .I2(addrb[15]),
        .I3(addrb[14]),
        .I4(addrb[13]),
        .I5(addrb[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__18_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module Vram_blk_mem_gen_top
   (doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]doutb;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire [0:0]wea;

  Vram_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "18" *) (* C_ADDRB_WIDTH = "18" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "37" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "7" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.506629 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "Vram.mem" *) 
(* C_INIT_FILE_NAME = "no_coe_file_loaded" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "0" *) 
(* C_MEM_TYPE = "1" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "153600" *) (* C_READ_DEPTH_B = "153600" *) (* C_READ_WIDTH_A = "8" *) 
(* C_READ_WIDTH_B = "8" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "1" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "153600" *) (* C_WRITE_DEPTH_B = "153600" *) (* C_WRITE_MODE_A = "NO_CHANGE" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "8" *) (* C_WRITE_WIDTH_B = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module Vram_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [17:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [17:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [17:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [7:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [17:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign rdaddrecc[17] = \<const0> ;
  assign rdaddrecc[16] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[17] = \<const0> ;
  assign s_axi_rdaddrecc[16] = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Vram_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module Vram_blk_mem_gen_v8_4_1_synth
   (doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea,
    ena);
  output [7:0]doutb;
  input clka;
  input clkb;
  input [17:0]addra;
  input [17:0]addrb;
  input [7:0]dina;
  input [0:0]wea;
  input ena;

  wire [17:0]addra;
  wire [17:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire [0:0]wea;

  Vram_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
