-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../cmos_camara.srcs/sources_1/ip/CameraSysClock/CameraSysClock_clk_wiz.v" \
  "../../../../cmos_camara.srcs/sources_1/ip/CameraSysClock/CameraSysClock.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

