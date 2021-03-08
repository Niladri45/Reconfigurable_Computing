--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Tue Nov 24 13:57:07 2020
--Host        : Vaibhav-AX7 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    CLK100MHZ : in STD_LOGIC;
    a_0 : in STD_LOGIC;
    b_0 : in STD_LOGIC;
    c_0 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    a_0 : in STD_LOGIC;
    b_0 : in STD_LOGIC;
    c_0 : out STD_LOGIC;
    CLK100MHZ : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      CLK100MHZ => CLK100MHZ,
      a_0 => a_0,
      b_0 => b_0,
      c_0 => c_0
    );
end STRUCTURE;
