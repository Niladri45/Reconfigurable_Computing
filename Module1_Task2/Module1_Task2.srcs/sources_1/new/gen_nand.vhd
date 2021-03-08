library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gen_nand is
    generic (N: integer range 2 to 16 := 16);
    
    port(a: in STD_LOGIC_VECTOR(N-1 downto 0);
        c: out STD_LOGIC;
        clk: in STD_LOGIC);
    
end gen_nand;

architecture Behavioral of gen_nand is
	signal a_in: STD_LOGIC_VECTOR(N-1 downto 0) := (others=>'0');

begin
    process(clk) is
    begin
        if rising_edge(clk) then
			a_in <= a;
            c <= not(a_in(0) and a_in(1) and a_in(2) and a_in(3) and a_in(4) and a_in(5) and a_in(6) and a_in(7) and a_in(8) and a_in(9) and a_in(10) and a_in(11) and a_in(12) and a_in(13) and a_in(14) and a_in(15));
        end if;
        
    end process;
end Behavioral;