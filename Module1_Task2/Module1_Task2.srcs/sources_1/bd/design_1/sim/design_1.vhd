--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Sun Dec 13 21:08:25 2020
--Host        : Vaibhav-AX7 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    a_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c_0 : out STD_LOGIC;
    clk_0 : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute hw_handoff : string;
  attribute hw_handoff of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_gen_nand_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 15 downto 0 );
    c : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  end component design_1_gen_nand_0_0;
  signal a_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_0_1 : STD_LOGIC;
  signal gen_nand_0_c : STD_LOGIC;
  signal NLW_gen_nand_0_a_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 4 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, PHASE 0.000";
begin
  a_0_1(3 downto 0) <= a_0(3 downto 0);
  c_0 <= gen_nand_0_c;
  clk_0_1 <= clk_0;
gen_nand_0: component design_1_gen_nand_0_0
     port map (
      a(15 downto 4) => NLW_gen_nand_0_a_UNCONNECTED(15 downto 4),
      a(3 downto 0) => a_0_1(3 downto 0),
      c => gen_nand_0_c,
      clk => clk_0_1
    );
end STRUCTURE;
