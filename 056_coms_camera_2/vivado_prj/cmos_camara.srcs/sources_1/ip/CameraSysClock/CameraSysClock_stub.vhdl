-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Thu Feb  4 08:35:19 2021
-- Host        : molybdenum running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top CameraSysClock -prefix
--               CameraSysClock_ CamaraSysClock_stub.vhdl
-- Design      : CamaraSysClock
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CameraSysClock is
  Port ( 
    clockOut : out STD_LOGIC;
    reset : in STD_LOGIC;
    clockIn : in STD_LOGIC
  );

end CameraSysClock;

architecture stub of CameraSysClock is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clockOut,reset,clockIn";
begin
end;
