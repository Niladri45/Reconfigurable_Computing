----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 29.11.2020 18:59:36
-- Design Name:
-- Module Name: nandsrc - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nandsrc is
    generic (N: integer := 4);
    port(a: in STD_LOGIC_VECTOR(15 downto 0);
    	--b: in STD_LOGIC_VECTOR(15 downto 0);
        --c: out STD_LOGIC_VECTOR(n-1 downto 0);
        c: out STD_LOGIC;
        clk: in std_logic);
    
end nandsrc;

architecture Behavioral of nandsrc is
	signal a_in: STD_LOGIC_VECTOR(N-1 downto 0) := (others=>'0');
	--signal b_in: STD_LOGIC_VECTOR(N-1 downto 0) := (others=>'0');
	--signal c_out: STD_LOGIC_VECTOR(n-1 downto 0);
	signal c_out: STD_LOGIC;
	--signal tmp : STD_LOGIC;

begin

    a_in <= a;
    c_out <= a_in(0);
    --b_in <= b;
    gen: for i in 1 to N-1 generate
        c_out <= STD_LOGIC(c_out nand a_in(i));   
    end generate;
    c <= c_out;
     
end Behavioral;