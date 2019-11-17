-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Sun Nov 17 17:02:48 2019
-- Host        : molybdenum running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/tetsuya/fpga/chisel-study/055_CMOSCamera/project_vivado/project_vivado.srcs/sources_1/ip/Vram/Vram_sim_netlist.vhdl
-- Design      : Vram
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_mux__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 6 downto 0 );
    clkb : in STD_LOGIC;
    DOBDO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_mux__parameterized0\ : entity is "blk_mem_gen_mux";
end \Vram_blk_mem_gen_mux__parameterized0\;

architecture STRUCTURE of \Vram_blk_mem_gen_mux__parameterized0\ is
  signal \doutb[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
\doutb[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel_pipe(4),
      I1 => \doutb[0]_INST_0_i_1_n_0\,
      I2 => sel_pipe(6),
      I3 => \doutb[0]_INST_0_i_2_n_0\,
      I4 => sel_pipe(5),
      I5 => \doutb[0]_INST_0_i_3_n_0\,
      O => doutb(0)
    );
\doutb[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[0]_INST_0_i_4_n_0\,
      I1 => \doutb[0]_INST_0_i_5_n_0\,
      O => \doutb[0]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\doutb[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(0),
      O => \doutb[0]_INST_0_i_10_n_0\
    );
\doutb[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(0),
      O => \doutb[0]_INST_0_i_11_n_0\
    );
\doutb[0]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(0),
      O => \doutb[0]_INST_0_i_12_n_0\
    );
\doutb[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(0),
      O => \doutb[0]_INST_0_i_13_n_0\
    );
\doutb[0]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOBDO(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(0),
      O => \doutb[0]_INST_0_i_14_n_0\
    );
\doutb[0]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(0),
      O => \doutb[0]_INST_0_i_15_n_0\
    );
\doutb[0]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(0),
      O => \doutb[0]_INST_0_i_16_n_0\
    );
\doutb[0]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(0),
      O => \doutb[0]_INST_0_i_17_n_0\
    );
\doutb[0]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[0]_INST_0_i_6_n_0\,
      I1 => \doutb[0]_INST_0_i_7_n_0\,
      O => \doutb[0]_INST_0_i_2_n_0\,
      S => sel_pipe(4)
    );
\doutb[0]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[0]_INST_0_i_8_n_0\,
      I1 => \doutb[0]_INST_0_i_9_n_0\,
      O => \doutb[0]_INST_0_i_3_n_0\,
      S => sel_pipe(4)
    );
\doutb[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(0),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(0),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(0),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(0),
      O => \doutb[0]_INST_0_i_4_n_0\
    );
\doutb[0]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023202"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(0),
      I1 => sel_pipe(2),
      I2 => sel_pipe(1),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(0),
      I4 => sel_pipe(0),
      O => \doutb[0]_INST_0_i_5_n_0\
    );
\doutb[0]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[0]_INST_0_i_10_n_0\,
      I1 => \doutb[0]_INST_0_i_11_n_0\,
      O => \doutb[0]_INST_0_i_6_n_0\,
      S => sel_pipe(3)
    );
\doutb[0]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[0]_INST_0_i_12_n_0\,
      I1 => \doutb[0]_INST_0_i_13_n_0\,
      O => \doutb[0]_INST_0_i_7_n_0\,
      S => sel_pipe(3)
    );
\doutb[0]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[0]_INST_0_i_14_n_0\,
      I1 => \doutb[0]_INST_0_i_15_n_0\,
      O => \doutb[0]_INST_0_i_8_n_0\,
      S => sel_pipe(3)
    );
\doutb[0]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[0]_INST_0_i_16_n_0\,
      I1 => \doutb[0]_INST_0_i_17_n_0\,
      O => \doutb[0]_INST_0_i_9_n_0\,
      S => sel_pipe(3)
    );
\doutb[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel_pipe(4),
      I1 => \doutb[1]_INST_0_i_1_n_0\,
      I2 => sel_pipe(6),
      I3 => \doutb[1]_INST_0_i_2_n_0\,
      I4 => sel_pipe(5),
      I5 => \doutb[1]_INST_0_i_3_n_0\,
      O => doutb(1)
    );
\doutb[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[1]_INST_0_i_4_n_0\,
      I1 => \doutb[1]_INST_0_i_5_n_0\,
      O => \doutb[1]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\doutb[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(1),
      O => \doutb[1]_INST_0_i_10_n_0\
    );
\doutb[1]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(1),
      O => \doutb[1]_INST_0_i_11_n_0\
    );
\doutb[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(1),
      O => \doutb[1]_INST_0_i_12_n_0\
    );
\doutb[1]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(1),
      O => \doutb[1]_INST_0_i_13_n_0\
    );
\doutb[1]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOBDO(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(1),
      O => \doutb[1]_INST_0_i_14_n_0\
    );
\doutb[1]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(1),
      O => \doutb[1]_INST_0_i_15_n_0\
    );
\doutb[1]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(1),
      O => \doutb[1]_INST_0_i_16_n_0\
    );
\doutb[1]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(1),
      O => \doutb[1]_INST_0_i_17_n_0\
    );
\doutb[1]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[1]_INST_0_i_6_n_0\,
      I1 => \doutb[1]_INST_0_i_7_n_0\,
      O => \doutb[1]_INST_0_i_2_n_0\,
      S => sel_pipe(4)
    );
\doutb[1]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[1]_INST_0_i_8_n_0\,
      I1 => \doutb[1]_INST_0_i_9_n_0\,
      O => \doutb[1]_INST_0_i_3_n_0\,
      S => sel_pipe(4)
    );
\doutb[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(1),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(1),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(1),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(1),
      O => \doutb[1]_INST_0_i_4_n_0\
    );
\doutb[1]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023202"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(1),
      I1 => sel_pipe(2),
      I2 => sel_pipe(1),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(1),
      I4 => sel_pipe(0),
      O => \doutb[1]_INST_0_i_5_n_0\
    );
\doutb[1]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[1]_INST_0_i_10_n_0\,
      I1 => \doutb[1]_INST_0_i_11_n_0\,
      O => \doutb[1]_INST_0_i_6_n_0\,
      S => sel_pipe(3)
    );
\doutb[1]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[1]_INST_0_i_12_n_0\,
      I1 => \doutb[1]_INST_0_i_13_n_0\,
      O => \doutb[1]_INST_0_i_7_n_0\,
      S => sel_pipe(3)
    );
\doutb[1]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[1]_INST_0_i_14_n_0\,
      I1 => \doutb[1]_INST_0_i_15_n_0\,
      O => \doutb[1]_INST_0_i_8_n_0\,
      S => sel_pipe(3)
    );
\doutb[1]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[1]_INST_0_i_16_n_0\,
      I1 => \doutb[1]_INST_0_i_17_n_0\,
      O => \doutb[1]_INST_0_i_9_n_0\,
      S => sel_pipe(3)
    );
\doutb[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel_pipe(4),
      I1 => \doutb[2]_INST_0_i_1_n_0\,
      I2 => sel_pipe(6),
      I3 => \doutb[2]_INST_0_i_2_n_0\,
      I4 => sel_pipe(5),
      I5 => \doutb[2]_INST_0_i_3_n_0\,
      O => doutb(2)
    );
\doutb[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[2]_INST_0_i_4_n_0\,
      I1 => \doutb[2]_INST_0_i_5_n_0\,
      O => \doutb[2]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\doutb[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(2),
      O => \doutb[2]_INST_0_i_10_n_0\
    );
\doutb[2]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(2),
      O => \doutb[2]_INST_0_i_11_n_0\
    );
\doutb[2]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(2),
      O => \doutb[2]_INST_0_i_12_n_0\
    );
\doutb[2]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(2),
      O => \doutb[2]_INST_0_i_13_n_0\
    );
\doutb[2]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOBDO(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(2),
      O => \doutb[2]_INST_0_i_14_n_0\
    );
\doutb[2]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(2),
      O => \doutb[2]_INST_0_i_15_n_0\
    );
\doutb[2]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(2),
      O => \doutb[2]_INST_0_i_16_n_0\
    );
\doutb[2]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(2),
      O => \doutb[2]_INST_0_i_17_n_0\
    );
\doutb[2]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[2]_INST_0_i_6_n_0\,
      I1 => \doutb[2]_INST_0_i_7_n_0\,
      O => \doutb[2]_INST_0_i_2_n_0\,
      S => sel_pipe(4)
    );
\doutb[2]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[2]_INST_0_i_8_n_0\,
      I1 => \doutb[2]_INST_0_i_9_n_0\,
      O => \doutb[2]_INST_0_i_3_n_0\,
      S => sel_pipe(4)
    );
\doutb[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(2),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(2),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(2),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(2),
      O => \doutb[2]_INST_0_i_4_n_0\
    );
\doutb[2]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023202"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(2),
      I1 => sel_pipe(2),
      I2 => sel_pipe(1),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(2),
      I4 => sel_pipe(0),
      O => \doutb[2]_INST_0_i_5_n_0\
    );
\doutb[2]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[2]_INST_0_i_10_n_0\,
      I1 => \doutb[2]_INST_0_i_11_n_0\,
      O => \doutb[2]_INST_0_i_6_n_0\,
      S => sel_pipe(3)
    );
\doutb[2]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[2]_INST_0_i_12_n_0\,
      I1 => \doutb[2]_INST_0_i_13_n_0\,
      O => \doutb[2]_INST_0_i_7_n_0\,
      S => sel_pipe(3)
    );
\doutb[2]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[2]_INST_0_i_14_n_0\,
      I1 => \doutb[2]_INST_0_i_15_n_0\,
      O => \doutb[2]_INST_0_i_8_n_0\,
      S => sel_pipe(3)
    );
\doutb[2]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[2]_INST_0_i_16_n_0\,
      I1 => \doutb[2]_INST_0_i_17_n_0\,
      O => \doutb[2]_INST_0_i_9_n_0\,
      S => sel_pipe(3)
    );
\doutb[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel_pipe(4),
      I1 => \doutb[3]_INST_0_i_1_n_0\,
      I2 => sel_pipe(6),
      I3 => \doutb[3]_INST_0_i_2_n_0\,
      I4 => sel_pipe(5),
      I5 => \doutb[3]_INST_0_i_3_n_0\,
      O => doutb(3)
    );
\doutb[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[3]_INST_0_i_4_n_0\,
      I1 => \doutb[3]_INST_0_i_5_n_0\,
      O => \doutb[3]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\doutb[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(3),
      O => \doutb[3]_INST_0_i_10_n_0\
    );
\doutb[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(3),
      O => \doutb[3]_INST_0_i_11_n_0\
    );
\doutb[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(3),
      O => \doutb[3]_INST_0_i_12_n_0\
    );
\doutb[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(3),
      O => \doutb[3]_INST_0_i_13_n_0\
    );
\doutb[3]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOBDO(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(3),
      O => \doutb[3]_INST_0_i_14_n_0\
    );
\doutb[3]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(3),
      O => \doutb[3]_INST_0_i_15_n_0\
    );
\doutb[3]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(3),
      O => \doutb[3]_INST_0_i_16_n_0\
    );
\doutb[3]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(3),
      O => \doutb[3]_INST_0_i_17_n_0\
    );
\doutb[3]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[3]_INST_0_i_6_n_0\,
      I1 => \doutb[3]_INST_0_i_7_n_0\,
      O => \doutb[3]_INST_0_i_2_n_0\,
      S => sel_pipe(4)
    );
\doutb[3]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[3]_INST_0_i_8_n_0\,
      I1 => \doutb[3]_INST_0_i_9_n_0\,
      O => \doutb[3]_INST_0_i_3_n_0\,
      S => sel_pipe(4)
    );
\doutb[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(3),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(3),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(3),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(3),
      O => \doutb[3]_INST_0_i_4_n_0\
    );
\doutb[3]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023202"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(3),
      I1 => sel_pipe(2),
      I2 => sel_pipe(1),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(3),
      I4 => sel_pipe(0),
      O => \doutb[3]_INST_0_i_5_n_0\
    );
\doutb[3]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[3]_INST_0_i_10_n_0\,
      I1 => \doutb[3]_INST_0_i_11_n_0\,
      O => \doutb[3]_INST_0_i_6_n_0\,
      S => sel_pipe(3)
    );
\doutb[3]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[3]_INST_0_i_12_n_0\,
      I1 => \doutb[3]_INST_0_i_13_n_0\,
      O => \doutb[3]_INST_0_i_7_n_0\,
      S => sel_pipe(3)
    );
\doutb[3]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[3]_INST_0_i_14_n_0\,
      I1 => \doutb[3]_INST_0_i_15_n_0\,
      O => \doutb[3]_INST_0_i_8_n_0\,
      S => sel_pipe(3)
    );
\doutb[3]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[3]_INST_0_i_16_n_0\,
      I1 => \doutb[3]_INST_0_i_17_n_0\,
      O => \doutb[3]_INST_0_i_9_n_0\,
      S => sel_pipe(3)
    );
\doutb[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel_pipe(4),
      I1 => \doutb[4]_INST_0_i_1_n_0\,
      I2 => sel_pipe(6),
      I3 => \doutb[4]_INST_0_i_2_n_0\,
      I4 => sel_pipe(5),
      I5 => \doutb[4]_INST_0_i_3_n_0\,
      O => doutb(4)
    );
\doutb[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[4]_INST_0_i_4_n_0\,
      I1 => \doutb[4]_INST_0_i_5_n_0\,
      O => \doutb[4]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\doutb[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(4),
      O => \doutb[4]_INST_0_i_10_n_0\
    );
\doutb[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(4),
      O => \doutb[4]_INST_0_i_11_n_0\
    );
\doutb[4]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(4),
      O => \doutb[4]_INST_0_i_12_n_0\
    );
\doutb[4]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(4),
      O => \doutb[4]_INST_0_i_13_n_0\
    );
\doutb[4]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOBDO(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(4),
      O => \doutb[4]_INST_0_i_14_n_0\
    );
\doutb[4]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(4),
      O => \doutb[4]_INST_0_i_15_n_0\
    );
\doutb[4]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(4),
      O => \doutb[4]_INST_0_i_16_n_0\
    );
\doutb[4]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(4),
      O => \doutb[4]_INST_0_i_17_n_0\
    );
\doutb[4]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[4]_INST_0_i_6_n_0\,
      I1 => \doutb[4]_INST_0_i_7_n_0\,
      O => \doutb[4]_INST_0_i_2_n_0\,
      S => sel_pipe(4)
    );
\doutb[4]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[4]_INST_0_i_8_n_0\,
      I1 => \doutb[4]_INST_0_i_9_n_0\,
      O => \doutb[4]_INST_0_i_3_n_0\,
      S => sel_pipe(4)
    );
\doutb[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(4),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(4),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(4),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(4),
      O => \doutb[4]_INST_0_i_4_n_0\
    );
\doutb[4]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023202"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(4),
      I1 => sel_pipe(2),
      I2 => sel_pipe(1),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(4),
      I4 => sel_pipe(0),
      O => \doutb[4]_INST_0_i_5_n_0\
    );
\doutb[4]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[4]_INST_0_i_10_n_0\,
      I1 => \doutb[4]_INST_0_i_11_n_0\,
      O => \doutb[4]_INST_0_i_6_n_0\,
      S => sel_pipe(3)
    );
\doutb[4]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[4]_INST_0_i_12_n_0\,
      I1 => \doutb[4]_INST_0_i_13_n_0\,
      O => \doutb[4]_INST_0_i_7_n_0\,
      S => sel_pipe(3)
    );
\doutb[4]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[4]_INST_0_i_14_n_0\,
      I1 => \doutb[4]_INST_0_i_15_n_0\,
      O => \doutb[4]_INST_0_i_8_n_0\,
      S => sel_pipe(3)
    );
\doutb[4]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[4]_INST_0_i_16_n_0\,
      I1 => \doutb[4]_INST_0_i_17_n_0\,
      O => \doutb[4]_INST_0_i_9_n_0\,
      S => sel_pipe(3)
    );
\doutb[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel_pipe(4),
      I1 => \doutb[5]_INST_0_i_1_n_0\,
      I2 => sel_pipe(6),
      I3 => \doutb[5]_INST_0_i_2_n_0\,
      I4 => sel_pipe(5),
      I5 => \doutb[5]_INST_0_i_3_n_0\,
      O => doutb(5)
    );
\doutb[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[5]_INST_0_i_4_n_0\,
      I1 => \doutb[5]_INST_0_i_5_n_0\,
      O => \doutb[5]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\doutb[5]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(5),
      O => \doutb[5]_INST_0_i_10_n_0\
    );
\doutb[5]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(5),
      O => \doutb[5]_INST_0_i_11_n_0\
    );
\doutb[5]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(5),
      O => \doutb[5]_INST_0_i_12_n_0\
    );
\doutb[5]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(5),
      O => \doutb[5]_INST_0_i_13_n_0\
    );
\doutb[5]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOBDO(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(5),
      O => \doutb[5]_INST_0_i_14_n_0\
    );
\doutb[5]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(5),
      O => \doutb[5]_INST_0_i_15_n_0\
    );
\doutb[5]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(5),
      O => \doutb[5]_INST_0_i_16_n_0\
    );
\doutb[5]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(5),
      O => \doutb[5]_INST_0_i_17_n_0\
    );
\doutb[5]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[5]_INST_0_i_6_n_0\,
      I1 => \doutb[5]_INST_0_i_7_n_0\,
      O => \doutb[5]_INST_0_i_2_n_0\,
      S => sel_pipe(4)
    );
\doutb[5]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[5]_INST_0_i_8_n_0\,
      I1 => \doutb[5]_INST_0_i_9_n_0\,
      O => \doutb[5]_INST_0_i_3_n_0\,
      S => sel_pipe(4)
    );
\doutb[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(5),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(5),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(5),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(5),
      O => \doutb[5]_INST_0_i_4_n_0\
    );
\doutb[5]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023202"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(5),
      I1 => sel_pipe(2),
      I2 => sel_pipe(1),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(5),
      I4 => sel_pipe(0),
      O => \doutb[5]_INST_0_i_5_n_0\
    );
\doutb[5]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[5]_INST_0_i_10_n_0\,
      I1 => \doutb[5]_INST_0_i_11_n_0\,
      O => \doutb[5]_INST_0_i_6_n_0\,
      S => sel_pipe(3)
    );
\doutb[5]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[5]_INST_0_i_12_n_0\,
      I1 => \doutb[5]_INST_0_i_13_n_0\,
      O => \doutb[5]_INST_0_i_7_n_0\,
      S => sel_pipe(3)
    );
\doutb[5]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[5]_INST_0_i_14_n_0\,
      I1 => \doutb[5]_INST_0_i_15_n_0\,
      O => \doutb[5]_INST_0_i_8_n_0\,
      S => sel_pipe(3)
    );
\doutb[5]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[5]_INST_0_i_16_n_0\,
      I1 => \doutb[5]_INST_0_i_17_n_0\,
      O => \doutb[5]_INST_0_i_9_n_0\,
      S => sel_pipe(3)
    );
\doutb[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel_pipe(4),
      I1 => \doutb[6]_INST_0_i_1_n_0\,
      I2 => sel_pipe(6),
      I3 => \doutb[6]_INST_0_i_2_n_0\,
      I4 => sel_pipe(5),
      I5 => \doutb[6]_INST_0_i_3_n_0\,
      O => doutb(6)
    );
\doutb[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[6]_INST_0_i_4_n_0\,
      I1 => \doutb[6]_INST_0_i_5_n_0\,
      O => \doutb[6]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\doutb[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(6),
      O => \doutb[6]_INST_0_i_10_n_0\
    );
\doutb[6]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(6),
      O => \doutb[6]_INST_0_i_11_n_0\
    );
\doutb[6]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(6),
      O => \doutb[6]_INST_0_i_12_n_0\
    );
\doutb[6]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(6),
      O => \doutb[6]_INST_0_i_13_n_0\
    );
\doutb[6]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOBDO(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(6),
      O => \doutb[6]_INST_0_i_14_n_0\
    );
\doutb[6]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(6),
      O => \doutb[6]_INST_0_i_15_n_0\
    );
\doutb[6]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(6),
      O => \doutb[6]_INST_0_i_16_n_0\
    );
\doutb[6]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(6),
      O => \doutb[6]_INST_0_i_17_n_0\
    );
\doutb[6]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[6]_INST_0_i_6_n_0\,
      I1 => \doutb[6]_INST_0_i_7_n_0\,
      O => \doutb[6]_INST_0_i_2_n_0\,
      S => sel_pipe(4)
    );
\doutb[6]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[6]_INST_0_i_8_n_0\,
      I1 => \doutb[6]_INST_0_i_9_n_0\,
      O => \doutb[6]_INST_0_i_3_n_0\,
      S => sel_pipe(4)
    );
\doutb[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(6),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(6),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(6),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(6),
      O => \doutb[6]_INST_0_i_4_n_0\
    );
\doutb[6]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023202"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(6),
      I1 => sel_pipe(2),
      I2 => sel_pipe(1),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(6),
      I4 => sel_pipe(0),
      O => \doutb[6]_INST_0_i_5_n_0\
    );
\doutb[6]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[6]_INST_0_i_10_n_0\,
      I1 => \doutb[6]_INST_0_i_11_n_0\,
      O => \doutb[6]_INST_0_i_6_n_0\,
      S => sel_pipe(3)
    );
\doutb[6]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[6]_INST_0_i_12_n_0\,
      I1 => \doutb[6]_INST_0_i_13_n_0\,
      O => \doutb[6]_INST_0_i_7_n_0\,
      S => sel_pipe(3)
    );
\doutb[6]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[6]_INST_0_i_14_n_0\,
      I1 => \doutb[6]_INST_0_i_15_n_0\,
      O => \doutb[6]_INST_0_i_8_n_0\,
      S => sel_pipe(3)
    );
\doutb[6]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[6]_INST_0_i_16_n_0\,
      I1 => \doutb[6]_INST_0_i_17_n_0\,
      O => \doutb[6]_INST_0_i_9_n_0\,
      S => sel_pipe(3)
    );
\doutb[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel_pipe(4),
      I1 => \doutb[7]_INST_0_i_1_n_0\,
      I2 => sel_pipe(6),
      I3 => \doutb[7]_INST_0_i_2_n_0\,
      I4 => sel_pipe(5),
      I5 => \doutb[7]_INST_0_i_3_n_0\,
      O => doutb(7)
    );
\doutb[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[7]_INST_0_i_4_n_0\,
      I1 => \doutb[7]_INST_0_i_5_n_0\,
      O => \doutb[7]_INST_0_i_1_n_0\,
      S => sel_pipe(3)
    );
\doutb[7]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(7),
      O => \doutb[7]_INST_0_i_10_n_0\
    );
\doutb[7]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(7),
      O => \doutb[7]_INST_0_i_11_n_0\
    );
\doutb[7]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(7),
      O => \doutb[7]_INST_0_i_12_n_0\
    );
\doutb[7]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(7),
      O => \doutb[7]_INST_0_i_13_n_0\
    );
\doutb[7]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DOBDO(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(7),
      O => \doutb[7]_INST_0_i_14_n_0\
    );
\doutb[7]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(7),
      O => \doutb[7]_INST_0_i_15_n_0\
    );
\doutb[7]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(7),
      O => \doutb[7]_INST_0_i_16_n_0\
    );
\doutb[7]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(7),
      O => \doutb[7]_INST_0_i_17_n_0\
    );
\doutb[7]_INST_0_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[7]_INST_0_i_6_n_0\,
      I1 => \doutb[7]_INST_0_i_7_n_0\,
      O => \doutb[7]_INST_0_i_2_n_0\,
      S => sel_pipe(4)
    );
\doutb[7]_INST_0_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \doutb[7]_INST_0_i_8_n_0\,
      I1 => \doutb[7]_INST_0_i_9_n_0\,
      O => \doutb[7]_INST_0_i_3_n_0\,
      S => sel_pipe(4)
    );
\doutb[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(7),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(7),
      I2 => sel_pipe(2),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(7),
      I4 => sel_pipe(1),
      I5 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(7),
      O => \doutb[7]_INST_0_i_4_n_0\
    );
\doutb[7]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02023202"
    )
        port map (
      I0 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(7),
      I1 => sel_pipe(2),
      I2 => sel_pipe(1),
      I3 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(7),
      I4 => sel_pipe(0),
      O => \doutb[7]_INST_0_i_5_n_0\
    );
\doutb[7]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[7]_INST_0_i_10_n_0\,
      I1 => \doutb[7]_INST_0_i_11_n_0\,
      O => \doutb[7]_INST_0_i_6_n_0\,
      S => sel_pipe(3)
    );
\doutb[7]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[7]_INST_0_i_12_n_0\,
      I1 => \doutb[7]_INST_0_i_13_n_0\,
      O => \doutb[7]_INST_0_i_7_n_0\,
      S => sel_pipe(3)
    );
\doutb[7]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[7]_INST_0_i_14_n_0\,
      I1 => \doutb[7]_INST_0_i_15_n_0\,
      O => \doutb[7]_INST_0_i_8_n_0\,
      S => sel_pipe(3)
    );
\doutb[7]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[7]_INST_0_i_16_n_0\,
      I1 => \doutb[7]_INST_0_i_17_n_0\,
      O => \doutb[7]_INST_0_i_9_n_0\,
      S => sel_pipe(3)
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => addrb(0),
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => addrb(1),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => addrb(2),
      Q => sel_pipe(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => addrb(3),
      Q => sel_pipe(3),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => addrb(4),
      Q => sel_pipe(4),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => addrb(5),
      Q => sel_pipe(5),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => '1',
      D => addrb(6),
      Q => sel_pipe(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Vram_blk_mem_gen_prim_wrapper_init is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Vram_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end Vram_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of Vram_blk_mem_gen_prim_wrapper_init is
  signal \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => addra(17),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(15),
      I4 => addra(16),
      I5 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(13),
      I1 => addra(14),
      O => \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__32_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__32_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__32_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized10\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized10\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__17_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__17_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__17_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__17_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__17_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__17_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized11\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized11\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__28_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__30_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_13_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_13_sn_1 <= addra_13_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__28_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__30_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_13_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__28_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__30_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized12\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized12\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__16_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__29_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_13_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_13_sn_1 <= addra_13_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__16_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__29_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_13_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__16_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__29_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized13\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized13\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__27_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__26_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__27_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__26_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__27_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__26_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized14\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized14\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__15_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__25_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__15_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__25_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__15_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__25_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized15\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized15\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(14),
      I4 => addra(13),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized16\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized16\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(14),
      I4 => addra(13),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized17\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized17\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__26_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__26_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(14),
      I4 => addra(13),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__26_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized18\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized18\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(14),
      I4 => addra(13),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized19\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized19\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized19\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized19\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__25_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_13_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_13_sn_1 <= addra_13_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__25_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(14),
      I4 => addra(13),
      I5 => addra_13_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__25_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(14),
      I3 => addrb(15),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__20_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => DOBDO(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__20_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__20_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized20\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized20\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized20\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized20\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_13_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_13_sn_1 <= addra_13_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(14),
      I4 => addra(13),
      I5 => addra_13_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(14),
      I3 => addrb(15),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized21\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized21\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized21\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized21\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__24_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__24_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(14),
      I4 => addra(13),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__24_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(14),
      I3 => addrb(15),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized22\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized22\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized22\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized22\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(14),
      I4 => addra(13),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(14),
      I3 => addrb(15),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized23\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized23\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized23\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized23\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__20_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__20_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__20_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized24\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized24\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized24\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized24\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__19_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__19_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__19_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized25\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized25\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized25\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized25\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__23_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__16_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__23_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__16_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__23_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__16_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized26\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized26\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized26\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized26\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__15_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__15_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__15_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized27\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized27\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized27\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized27\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__22_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__28_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_13_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_13_sn_1 <= addra_13_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__22_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__28_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_13_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__22_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__28_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized28\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized28\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized28\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized28\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__27_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_13_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_13_sn_1 <= addra_13_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__27_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_13_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__27_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized29\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized29\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized29\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized29\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__21_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__24_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__21_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__24_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__21_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__24_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__31_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_13_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_13_sn_1 <= addra_13_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__31_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_13_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__31_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(14),
      I3 => addrb(15),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized30\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized30\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized30\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized30\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__23_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__23_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__23_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized31\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra_14_sp_1 : in STD_LOGIC;
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized31\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized31\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized31\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__34_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__34_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => addra(12),
      I1 => addra_14_sn_1,
      I2 => addra(13),
      I3 => addra(14),
      I4 => ena,
      I5 => addra(15),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__34_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized32\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra_14_sp_1 : in STD_LOGIC;
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized32\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized32\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized32\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__33_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__33_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => addra(12),
      I1 => addra_14_sn_1,
      I2 => addra(13),
      I3 => addra(14),
      I4 => ena,
      I5 => addra(15),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__33_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized33\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized33\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized33\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized33\ is
  signal \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__35_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__32_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__35_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__32_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => addra(12),
      I1 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\,
      I2 => addra(15),
      I3 => addra(16),
      I4 => ena,
      I5 => addra(17),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__35_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__32_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => addra(13),
      I1 => addra(14),
      O => \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized34\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra_14_sp_1 : in STD_LOGIC;
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized34\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized34\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized34\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__34_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__31_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__34_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__31_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => addra(12),
      I1 => addra_14_sn_1,
      I2 => addra(13),
      I3 => addra(14),
      I4 => ena,
      I5 => addra(15),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__34_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__31_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized35\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized35\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized35\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized35\ is
  signal \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__33_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__35_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__33_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__35_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => addra(12),
      I1 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\,
      I2 => addra(15),
      I3 => addra(16),
      I4 => ena,
      I5 => addra(17),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__33_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(14),
      I3 => addrb(15),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__35_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => addra(14),
      I1 => addra(13),
      O => \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized36\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized36\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized36\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized36\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_3_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_4_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_35\ : STD_LOGIC;
  signal ena_array : STD_LOGIC_VECTOR ( 74 to 74 );
  signal enb_array : STD_LOGIC_VECTOR ( 74 to 74 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => addra(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(13 downto 3) => addrb(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_35\,
      ENARDEN => ena_array(74),
      ENBWREN => enb_array(74),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(3 downto 0) => B"0000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => addra(14),
      I1 => addra(13),
      I2 => addra(12),
      I3 => addra(11),
      I4 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_3_n_0\,
      O => ena_array(74)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addrb(12),
      I1 => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_4_n_0\,
      I2 => addrb(11),
      O => enb_array(74)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => addra(17),
      I1 => ena,
      I2 => addra(16),
      I3 => addra(15),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_3_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => addrb(13),
      I1 => addrb(15),
      I2 => addrb(14),
      I3 => addrb(17),
      I4 => addrb(16),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized4\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized4\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__19_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_13_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_13_sn_1 <= addra_13_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__19_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_13_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__19_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(14),
      I3 => addrb(15),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized5\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized5\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  signal \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__30_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ <= \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__30_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => addra(17),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(15),
      I4 => addra(16),
      I5 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__30_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(14),
      I3 => addrb(15),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addra(13),
      I1 => addra(14),
      O => \^device_7series.no_bmm_info.sdp.simple_prim36.ram_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized6\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized6\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__18_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__18_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__18_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(14),
      I3 => addrb(15),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized7\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized7\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__22_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__22_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__22_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized8\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized8\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__21_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__21_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__21_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_wrapper_init__parameterized9\ : entity is "blk_mem_gen_prim_wrapper_init";
end \Vram_blk_mem_gen_prim_wrapper_init__parameterized9\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__29_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__18_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal addra_14_sn_1 : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  addra_14_sn_1 <= addra_14_sp_1;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_01 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_02 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_03 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_04 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_05 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_06 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_07 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_08 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_09 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_0F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_10 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_11 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_12 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_13 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_14 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_15 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_16 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_17 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_18 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_19 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_1F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_20 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_21 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_22 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_23 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_24 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_25 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_26 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_27 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_28 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_29 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_2F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_30 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_31 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_32 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_33 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_34 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_35 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_36 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_37 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_38 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_39 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_3F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_40 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_41 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_42 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_43 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_44 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_45 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_46 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_47 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_48 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_49 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_4F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_50 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_51 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_52 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_53 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_54 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_55 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_56 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_57 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_58 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_59 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_5F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_60 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_61 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_62 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_63 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_64 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_65 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_66 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_67 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_68 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_69 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_6F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_70 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_71 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_72 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_73 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_74 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_75 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_76 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_77 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_78 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_79 => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7A => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7B => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7C => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7D => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7E => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_7F => X"0707070707070707070707070707070707070707070707070707070707070707",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => \doutb[7]\(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__29_n_0\,
      ENBWREN => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__18_n_0\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => addra(15),
      I1 => ena,
      I2 => addra(12),
      I3 => addra(13),
      I4 => addra(14),
      I5 => addra_14_sn_1,
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__29_n_0\
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => addrb(16),
      I1 => addrb(17),
      I2 => addrb(15),
      I3 => addrb(14),
      I4 => addrb(13),
      I5 => addrb(12),
      O => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__18_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Vram_blk_mem_gen_prim_width is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Vram_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end Vram_blk_mem_gen_prim_width;

architecture STRUCTURE of Vram_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.Vram_blk_mem_gen_prim_wrapper_init
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized0\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized0\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized1\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized1\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized10\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized10\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized10\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized10\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized10\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized11\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized11\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized11\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized11\ is
  signal addra_13_sn_1 : STD_LOGIC;
begin
  addra_13_sn_1 <= addra_13_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized11\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_13_sp_1 => addra_13_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized12\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized12\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized12\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized12\ is
  signal addra_13_sn_1 : STD_LOGIC;
begin
  addra_13_sn_1 <= addra_13_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized12\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_13_sp_1 => addra_13_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized13\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized13\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized13\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized13\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized13\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized14\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized14\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized14\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized14\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized14\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized15\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized15\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized15\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized15\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized15\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized16\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized16\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized16\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized16\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized16\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized17\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized17\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized17\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized17\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized17\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized18\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized18\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized18\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized18\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized18\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized19\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized19\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized19\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized19\ is
  signal addra_13_sn_1 : STD_LOGIC;
begin
  addra_13_sn_1 <= addra_13_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized19\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_13_sp_1 => addra_13_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized2\ is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized2\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      DOBDO(7 downto 0) => DOBDO(7 downto 0),
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized20\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized20\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized20\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized20\ is
  signal addra_13_sn_1 : STD_LOGIC;
begin
  addra_13_sn_1 <= addra_13_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized20\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_13_sp_1 => addra_13_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized21\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized21\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized21\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized21\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized21\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized22\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized22\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized22\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized22\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized22\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized23\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized23\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized23\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized23\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized23\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized24\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized24\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized24\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized24\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized24\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized25\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized25\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized25\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized25\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized25\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized26\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized26\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized26\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized26\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized26\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized27\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized27\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized27\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized27\ is
  signal addra_13_sn_1 : STD_LOGIC;
begin
  addra_13_sn_1 <= addra_13_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized27\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_13_sp_1 => addra_13_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized28\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized28\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized28\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized28\ is
  signal addra_13_sn_1 : STD_LOGIC;
begin
  addra_13_sn_1 <= addra_13_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized28\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_13_sp_1 => addra_13_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized29\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized29\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized29\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized29\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized29\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized3\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized3\ is
  signal addra_13_sn_1 : STD_LOGIC;
begin
  addra_13_sn_1 <= addra_13_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized3\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_13_sp_1 => addra_13_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized30\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized30\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized30\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized30\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized30\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized31\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra_14_sp_1 : in STD_LOGIC;
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized31\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized31\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized31\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized31\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized32\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra_14_sp_1 : in STD_LOGIC;
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized32\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized32\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized32\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized32\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized33\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized33\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized33\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized33\ is
begin
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized33\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized34\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra_14_sp_1 : in STD_LOGIC;
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized34\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized34\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized34\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized34\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized35\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized35\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized35\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized35\ is
begin
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized35\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized36\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized36\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized36\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized36\ is
begin
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized36\
     port map (
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized4\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_13_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized4\ is
  signal addra_13_sn_1 : STD_LOGIC;
begin
  addra_13_sn_1 <= addra_13_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized4\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_13_sp_1 => addra_13_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized5\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized5\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\ => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\,
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized6\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized6\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized6\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized7\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized7\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized7\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized7\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized7\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized8\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized8\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized8\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized8\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized8\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Vram_blk_mem_gen_prim_width__parameterized9\ is
  port (
    \doutb[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    addra_14_sp_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Vram_blk_mem_gen_prim_width__parameterized9\ : entity is "blk_mem_gen_prim_width";
end \Vram_blk_mem_gen_prim_width__parameterized9\;

architecture STRUCTURE of \Vram_blk_mem_gen_prim_width__parameterized9\ is
  signal addra_14_sn_1 : STD_LOGIC;
begin
  addra_14_sn_1 <= addra_14_sp_1;
\prim_init.ram\: entity work.\Vram_blk_mem_gen_prim_wrapper_init__parameterized9\
     port map (
      addra(15 downto 0) => addra(15 downto 0),
      addra_14_sp_1 => addra_14_sn_1,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => \doutb[7]\(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Vram_blk_mem_gen_generic_cstr is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Vram_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end Vram_blk_mem_gen_generic_cstr;

architecture STRUCTURE of Vram_blk_mem_gen_generic_cstr is
  signal ram_doutb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ramloop[0].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[10].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[14].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[15].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[16].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[17].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[18].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[19].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[20].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[21].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[22].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[23].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[24].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[25].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[26].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[27].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[28].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[29].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[30].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[31].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[32].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[32].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[32].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[32].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[32].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[32].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[32].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[32].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[33].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[33].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[33].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[33].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[33].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[33].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[33].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[33].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[34].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[34].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[34].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[34].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[34].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[34].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[34].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[34].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[34].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[35].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[35].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[35].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[35].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[35].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[35].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[35].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[35].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[36].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[36].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[36].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[36].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[36].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[36].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[36].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[36].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[36].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[37].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[37].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[37].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[37].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[37].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[37].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[37].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[37].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[4].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[5].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[6].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_7\ : STD_LOGIC;
begin
\has_mux_b.B\: entity work.\Vram_blk_mem_gen_mux__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(7) => \ramloop[37].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(6) => \ramloop[37].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(5) => \ramloop[37].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(4) => \ramloop[37].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(3) => \ramloop[37].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(2) => \ramloop[37].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(1) => \ramloop[37].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\(0) => \ramloop[37].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(7) => \ramloop[2].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(6) => \ramloop[2].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(5) => \ramloop[2].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(4) => \ramloop[2].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(3) => \ramloop[2].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(2) => \ramloop[2].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(1) => \ramloop[2].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(0) => \ramloop[2].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(7) => \ramloop[1].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(6) => \ramloop[1].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(5) => \ramloop[1].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(4) => \ramloop[1].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[1].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[1].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[1].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[1].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1\(7 downto 0) => ram_doutb(7 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(7) => \ramloop[15].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(6) => \ramloop[15].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(5) => \ramloop[15].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(4) => \ramloop[15].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(3) => \ramloop[15].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(2) => \ramloop[15].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(1) => \ramloop[15].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_10\(0) => \ramloop[15].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(7) => \ramloop[14].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(6) => \ramloop[14].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(5) => \ramloop[14].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(4) => \ramloop[14].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(3) => \ramloop[14].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(2) => \ramloop[14].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(1) => \ramloop[14].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_11\(0) => \ramloop[14].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(7) => \ramloop[13].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(6) => \ramloop[13].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(5) => \ramloop[13].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(4) => \ramloop[13].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(3) => \ramloop[13].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(2) => \ramloop[13].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(1) => \ramloop[13].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_12\(0) => \ramloop[13].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(7) => \ramloop[12].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(6) => \ramloop[12].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(5) => \ramloop[12].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(4) => \ramloop[12].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(3) => \ramloop[12].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(2) => \ramloop[12].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(1) => \ramloop[12].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_13\(0) => \ramloop[12].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(7) => \ramloop[19].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(6) => \ramloop[19].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(5) => \ramloop[19].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(4) => \ramloop[19].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(3) => \ramloop[19].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(2) => \ramloop[19].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(1) => \ramloop[19].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_14\(0) => \ramloop[19].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(7) => \ramloop[18].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(6) => \ramloop[18].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(5) => \ramloop[18].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(4) => \ramloop[18].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(3) => \ramloop[18].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(2) => \ramloop[18].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(1) => \ramloop[18].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_15\(0) => \ramloop[18].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(7) => \ramloop[17].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(6) => \ramloop[17].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(5) => \ramloop[17].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(4) => \ramloop[17].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(3) => \ramloop[17].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(2) => \ramloop[17].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(1) => \ramloop[17].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_16\(0) => \ramloop[17].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(7) => \ramloop[16].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(6) => \ramloop[16].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(5) => \ramloop[16].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(4) => \ramloop[16].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(3) => \ramloop[16].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(2) => \ramloop[16].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(1) => \ramloop[16].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_17\(0) => \ramloop[16].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(7) => \ramloop[23].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(6) => \ramloop[23].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(5) => \ramloop[23].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(4) => \ramloop[23].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(3) => \ramloop[23].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(2) => \ramloop[23].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(1) => \ramloop[23].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_18\(0) => \ramloop[23].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(7) => \ramloop[22].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(6) => \ramloop[22].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(5) => \ramloop[22].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(4) => \ramloop[22].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(3) => \ramloop[22].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(2) => \ramloop[22].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(1) => \ramloop[22].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_19\(0) => \ramloop[22].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(7) => \ramloop[7].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(6) => \ramloop[7].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(5) => \ramloop[7].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(4) => \ramloop[7].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(3) => \ramloop[7].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(2) => \ramloop[7].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(1) => \ramloop[7].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_2\(0) => \ramloop[7].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(7) => \ramloop[21].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(6) => \ramloop[21].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(5) => \ramloop[21].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(4) => \ramloop[21].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(3) => \ramloop[21].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(2) => \ramloop[21].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(1) => \ramloop[21].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_20\(0) => \ramloop[21].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(7) => \ramloop[20].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(6) => \ramloop[20].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(5) => \ramloop[20].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(4) => \ramloop[20].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(3) => \ramloop[20].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(2) => \ramloop[20].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(1) => \ramloop[20].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_21\(0) => \ramloop[20].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(7) => \ramloop[27].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(6) => \ramloop[27].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(5) => \ramloop[27].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(4) => \ramloop[27].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(3) => \ramloop[27].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(2) => \ramloop[27].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(1) => \ramloop[27].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_22\(0) => \ramloop[27].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(7) => \ramloop[26].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(6) => \ramloop[26].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(5) => \ramloop[26].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(4) => \ramloop[26].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(3) => \ramloop[26].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(2) => \ramloop[26].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(1) => \ramloop[26].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_23\(0) => \ramloop[26].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(7) => \ramloop[25].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(6) => \ramloop[25].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(5) => \ramloop[25].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(4) => \ramloop[25].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(3) => \ramloop[25].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(2) => \ramloop[25].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(1) => \ramloop[25].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_24\(0) => \ramloop[25].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(7) => \ramloop[24].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(6) => \ramloop[24].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(5) => \ramloop[24].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(4) => \ramloop[24].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(3) => \ramloop[24].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(2) => \ramloop[24].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(1) => \ramloop[24].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_25\(0) => \ramloop[24].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(7) => \ramloop[31].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(6) => \ramloop[31].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(5) => \ramloop[31].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(4) => \ramloop[31].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(3) => \ramloop[31].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(2) => \ramloop[31].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(1) => \ramloop[31].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_26\(0) => \ramloop[31].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(7) => \ramloop[30].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(6) => \ramloop[30].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(5) => \ramloop[30].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(4) => \ramloop[30].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(3) => \ramloop[30].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(2) => \ramloop[30].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(1) => \ramloop[30].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_27\(0) => \ramloop[30].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(7) => \ramloop[29].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(6) => \ramloop[29].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(5) => \ramloop[29].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(4) => \ramloop[29].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(3) => \ramloop[29].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(2) => \ramloop[29].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(1) => \ramloop[29].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_28\(0) => \ramloop[29].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(7) => \ramloop[28].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(6) => \ramloop[28].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(5) => \ramloop[28].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(4) => \ramloop[28].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(3) => \ramloop[28].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(2) => \ramloop[28].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(1) => \ramloop[28].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_29\(0) => \ramloop[28].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(7) => \ramloop[6].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(6) => \ramloop[6].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(5) => \ramloop[6].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(4) => \ramloop[6].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(3) => \ramloop[6].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(2) => \ramloop[6].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(1) => \ramloop[6].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_3\(0) => \ramloop[6].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(7) => \ramloop[35].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(6) => \ramloop[35].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(5) => \ramloop[35].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(4) => \ramloop[35].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(3) => \ramloop[35].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(2) => \ramloop[35].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(1) => \ramloop[35].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_30\(0) => \ramloop[35].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(7) => \ramloop[34].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(6) => \ramloop[34].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(5) => \ramloop[34].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(4) => \ramloop[34].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(3) => \ramloop[34].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(2) => \ramloop[34].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(1) => \ramloop[34].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_31\(0) => \ramloop[34].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(7) => \ramloop[33].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(6) => \ramloop[33].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(5) => \ramloop[33].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(4) => \ramloop[33].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(3) => \ramloop[33].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(2) => \ramloop[33].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(1) => \ramloop[33].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_32\(0) => \ramloop[33].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(7) => \ramloop[32].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(6) => \ramloop[32].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(5) => \ramloop[32].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(4) => \ramloop[32].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(3) => \ramloop[32].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(2) => \ramloop[32].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(1) => \ramloop[32].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_33\(0) => \ramloop[32].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(7) => \ramloop[36].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(6) => \ramloop[36].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(5) => \ramloop[36].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(4) => \ramloop[36].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(3) => \ramloop[36].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(2) => \ramloop[36].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(1) => \ramloop[36].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_34\(0) => \ramloop[36].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(7) => \ramloop[5].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(6) => \ramloop[5].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(5) => \ramloop[5].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(4) => \ramloop[5].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(3) => \ramloop[5].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(2) => \ramloop[5].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(1) => \ramloop[5].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_4\(0) => \ramloop[5].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(7) => \ramloop[4].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(6) => \ramloop[4].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(5) => \ramloop[4].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(4) => \ramloop[4].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(3) => \ramloop[4].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(2) => \ramloop[4].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(1) => \ramloop[4].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_5\(0) => \ramloop[4].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(7) => \ramloop[11].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(6) => \ramloop[11].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(5) => \ramloop[11].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(4) => \ramloop[11].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(3) => \ramloop[11].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(2) => \ramloop[11].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(1) => \ramloop[11].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_6\(0) => \ramloop[11].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(7) => \ramloop[10].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(6) => \ramloop[10].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(5) => \ramloop[10].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(4) => \ramloop[10].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(3) => \ramloop[10].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(2) => \ramloop[10].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(1) => \ramloop[10].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_7\(0) => \ramloop[10].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(7) => \ramloop[9].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(6) => \ramloop[9].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(5) => \ramloop[9].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(4) => \ramloop[9].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(3) => \ramloop[9].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(2) => \ramloop[9].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(1) => \ramloop[9].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_8\(0) => \ramloop[9].ram.r_n_7\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(7) => \ramloop[8].ram.r_n_0\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(6) => \ramloop[8].ram.r_n_1\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(5) => \ramloop[8].ram.r_n_2\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(4) => \ramloop[8].ram.r_n_3\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(3) => \ramloop[8].ram.r_n_4\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(2) => \ramloop[8].ram.r_n_5\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(1) => \ramloop[8].ram.r_n_6\,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_9\(0) => \ramloop[8].ram.r_n_7\,
      DOBDO(7) => \ramloop[3].ram.r_n_0\,
      DOBDO(6) => \ramloop[3].ram.r_n_1\,
      DOBDO(5) => \ramloop[3].ram.r_n_2\,
      DOBDO(4) => \ramloop[3].ram.r_n_3\,
      DOBDO(3) => \ramloop[3].ram.r_n_4\,
      DOBDO(2) => \ramloop[3].ram.r_n_5\,
      DOBDO(1) => \ramloop[3].ram.r_n_6\,
      DOBDO(0) => \ramloop[3].ram.r_n_7\,
      addrb(6 downto 0) => addrb(17 downto 11),
      clkb => clkb,
      doutb(7 downto 0) => doutb(7 downto 0)
    );
\ramloop[0].ram.r\: entity work.Vram_blk_mem_gen_prim_width
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ => \ramloop[0].ram.r_n_8\,
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7 downto 0) => ram_doutb(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[10].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized9\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[34].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[10].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[10].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[10].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[10].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[10].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[10].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[10].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[10].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[11].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized10\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[34].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[11].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[11].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[11].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[11].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[11].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[11].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[11].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[11].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[12].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized11\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_13_sp_1 => \ramloop[36].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[12].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[12].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[12].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[12].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[12].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[12].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[12].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[12].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[13].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized12\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_13_sp_1 => \ramloop[36].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[13].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[13].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[13].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[13].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[13].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[13].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[13].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[13].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[14].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized13\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[6].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[14].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[14].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[14].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[14].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[14].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[14].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[14].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[14].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[15].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized14\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[6].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[15].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[15].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[15].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[15].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[15].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[15].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[15].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[15].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[16].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized15\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[0].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[16].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[16].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[16].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[16].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[16].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[16].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[16].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[16].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[17].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized16\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[0].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[17].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[17].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[17].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[17].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[17].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[17].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[17].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[17].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[18].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized17\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[34].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[18].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[18].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[18].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[18].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[18].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[18].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[18].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[18].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[19].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized18\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[34].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[19].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[19].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[19].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[19].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[19].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[19].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[19].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[19].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[1].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized0\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[0].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[1].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[1].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[1].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[1].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[1].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[1].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[1].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[1].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[20].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized19\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_13_sp_1 => \ramloop[36].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[20].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[20].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[20].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[20].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[20].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[20].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[20].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[20].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[21].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized20\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_13_sp_1 => \ramloop[36].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[21].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[21].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[21].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[21].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[21].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[21].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[21].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[21].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[22].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized21\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[6].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[22].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[22].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[22].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[22].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[22].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[22].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[22].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[22].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[23].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized22\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[6].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[23].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[23].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[23].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[23].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[23].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[23].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[23].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[23].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[24].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized23\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[0].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[24].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[24].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[24].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[24].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[24].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[24].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[24].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[24].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[25].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized24\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[0].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[25].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[25].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[25].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[25].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[25].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[25].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[25].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[25].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[26].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized25\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[34].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[26].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[26].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[26].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[26].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[26].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[26].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[26].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[26].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[27].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized26\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[34].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[27].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[27].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[27].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[27].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[27].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[27].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[27].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[27].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[28].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized27\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_13_sp_1 => \ramloop[36].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[28].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[28].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[28].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[28].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[28].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[28].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[28].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[28].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[29].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized28\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_13_sp_1 => \ramloop[36].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[29].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[29].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[29].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[29].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[29].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[29].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[29].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[29].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[2].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized1\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[34].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[2].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[2].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[2].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[2].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[2].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[2].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[2].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[2].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[30].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized29\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[6].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[30].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[30].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[30].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[30].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[30].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[30].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[30].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[30].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[31].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized30\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[6].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[31].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[31].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[31].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[31].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[31].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[31].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[31].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[31].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[32].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized31\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[0].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[32].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[32].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[32].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[32].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[32].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[32].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[32].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[32].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[33].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized32\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[0].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[33].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[33].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[33].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[33].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[33].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[33].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[33].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[33].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[34].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized33\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ => \ramloop[34].ram.r_n_8\,
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[34].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[34].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[34].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[34].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[34].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[34].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[34].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[34].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[35].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized34\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[34].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[35].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[35].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[35].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[35].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[35].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[35].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[35].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[35].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[36].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized35\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ => \ramloop[36].ram.r_n_8\,
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[36].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[36].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[36].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[36].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[36].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[36].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[36].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[36].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[37].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized36\
     port map (
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[37].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[37].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[37].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[37].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[37].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[37].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[37].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[37].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[3].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized2\
     port map (
      DOBDO(7) => \ramloop[3].ram.r_n_0\,
      DOBDO(6) => \ramloop[3].ram.r_n_1\,
      DOBDO(5) => \ramloop[3].ram.r_n_2\,
      DOBDO(4) => \ramloop[3].ram.r_n_3\,
      DOBDO(3) => \ramloop[3].ram.r_n_4\,
      DOBDO(2) => \ramloop[3].ram.r_n_5\,
      DOBDO(1) => \ramloop[3].ram.r_n_6\,
      DOBDO(0) => \ramloop[3].ram.r_n_7\,
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[34].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[4].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized3\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_13_sp_1 => \ramloop[36].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[4].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[4].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[4].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[4].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[4].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[4].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[4].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[4].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[5].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized4\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_13_sp_1 => \ramloop[36].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[5].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[5].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[5].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[5].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[5].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[5].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[5].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[5].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[6].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized5\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ => \ramloop[6].ram.r_n_8\,
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[6].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[6].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[6].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[6].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[6].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[6].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[6].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[6].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[7].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized6\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[6].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[7].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[7].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[7].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[7].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[7].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[7].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[7].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[7].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[8].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized7\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[0].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[8].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[8].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[8].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[8].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[8].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[8].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[8].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[8].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
\ramloop[9].ram.r\: entity work.\Vram_blk_mem_gen_prim_width__parameterized8\
     port map (
      addra(15 downto 13) => addra(17 downto 15),
      addra(12 downto 0) => addra(12 downto 0),
      addra_14_sp_1 => \ramloop[0].ram.r_n_8\,
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      \doutb[7]\(7) => \ramloop[9].ram.r_n_0\,
      \doutb[7]\(6) => \ramloop[9].ram.r_n_1\,
      \doutb[7]\(5) => \ramloop[9].ram.r_n_2\,
      \doutb[7]\(4) => \ramloop[9].ram.r_n_3\,
      \doutb[7]\(3) => \ramloop[9].ram.r_n_4\,
      \doutb[7]\(2) => \ramloop[9].ram.r_n_5\,
      \doutb[7]\(1) => \ramloop[9].ram.r_n_6\,
      \doutb[7]\(0) => \ramloop[9].ram.r_n_7\,
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Vram_blk_mem_gen_top is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Vram_blk_mem_gen_top : entity is "blk_mem_gen_top";
end Vram_blk_mem_gen_top;

architecture STRUCTURE of Vram_blk_mem_gen_top is
begin
\valid.cstr\: entity work.Vram_blk_mem_gen_generic_cstr
     port map (
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Vram_blk_mem_gen_v8_4_1_synth is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Vram_blk_mem_gen_v8_4_1_synth : entity is "blk_mem_gen_v8_4_1_synth";
end Vram_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of Vram_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.Vram_blk_mem_gen_top
     port map (
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Vram_blk_mem_gen_v8_4_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 17 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of Vram_blk_mem_gen_v8_4_1 : entity is 18;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of Vram_blk_mem_gen_v8_4_1 : entity is 18;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of Vram_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of Vram_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of Vram_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of Vram_blk_mem_gen_v8_4_1 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of Vram_blk_mem_gen_v8_4_1 : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of Vram_blk_mem_gen_v8_4_1 : entity is "37";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of Vram_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of Vram_blk_mem_gen_v8_4_1 : entity is "7";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of Vram_blk_mem_gen_v8_4_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of Vram_blk_mem_gen_v8_4_1 : entity is "Estimated Power for IP     :     4.506629 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of Vram_blk_mem_gen_v8_4_1 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of Vram_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of Vram_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of Vram_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of Vram_blk_mem_gen_v8_4_1 : entity is "Vram.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of Vram_blk_mem_gen_v8_4_1 : entity is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of Vram_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of Vram_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of Vram_blk_mem_gen_v8_4_1 : entity is 153600;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of Vram_blk_mem_gen_v8_4_1 : entity is 153600;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of Vram_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of Vram_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of Vram_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of Vram_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of Vram_blk_mem_gen_v8_4_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of Vram_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of Vram_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of Vram_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of Vram_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of Vram_blk_mem_gen_v8_4_1 : entity is 153600;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of Vram_blk_mem_gen_v8_4_1 : entity is 153600;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of Vram_blk_mem_gen_v8_4_1 : entity is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of Vram_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of Vram_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of Vram_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of Vram_blk_mem_gen_v8_4_1 : entity is "artix7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Vram_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_v8_4_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Vram_blk_mem_gen_v8_4_1 : entity is "yes";
end Vram_blk_mem_gen_v8_4_1;

architecture STRUCTURE of Vram_blk_mem_gen_v8_4_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  rdaddrecc(17) <= \<const0>\;
  rdaddrecc(16) <= \<const0>\;
  rdaddrecc(15) <= \<const0>\;
  rdaddrecc(14) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(17) <= \<const0>\;
  s_axi_rdaddrecc(16) <= \<const0>\;
  s_axi_rdaddrecc(15) <= \<const0>\;
  s_axi_rdaddrecc(14) <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.Vram_blk_mem_gen_v8_4_1_synth
     port map (
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => ena,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Vram is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 17 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Vram : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Vram : entity is "Vram,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Vram : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Vram : entity is "blk_mem_gen_v8_4_1,Vivado 2018.2";
end Vram;

architecture STRUCTURE of Vram is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 18;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 18;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "37";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "7";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     4.506629 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "Vram.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 153600;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 153600;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 153600;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 153600;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER";
  attribute x_interface_info of clkb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
  attribute x_interface_parameter of clkb : signal is "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of addrb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR";
  attribute x_interface_info of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of doutb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT";
  attribute x_interface_info of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
begin
U0: entity work.Vram_blk_mem_gen_v8_4_1
     port map (
      addra(17 downto 0) => addra(17 downto 0),
      addrb(17 downto 0) => addrb(17 downto 0),
      clka => clka,
      clkb => clkb,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => B"00000000",
      douta(7 downto 0) => NLW_U0_douta_UNCONNECTED(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(17 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(17 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(17 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(17 downto 0),
      s_axi_rdata(7 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(7 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(7 downto 0) => B"00000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
