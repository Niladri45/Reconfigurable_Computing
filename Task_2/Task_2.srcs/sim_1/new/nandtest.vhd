library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;

entity nandsrc_tb is
end;

architecture bench of nandsrc_tb is

  component nandsrc
      generic (n: integer);
      port(a: in STD_LOGIC_VECTOR(15 downto 0);
      	   --b: in STD_LOGIC_VECTOR(n-1 downto 0) := (others => '0');
           --c: out STD_LOGIC_VECTOR(n-1 downto 0) := (others => '0');
           c: out STD_LOGIC;
           clk: in std_logic := '0');
  end component;

  signal a: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  --signal b: STD_LOGIC_VECTOR(3 downto 0);
  --signal c: STD_LOGIC_VECTOR(3 downto 0);
  signal c: STD_LOGIC;
  signal clk: std_logic := '0';

begin

  uut: nandsrc generic map ( n   =>  4)
                  port map ( a   => a,
     --                        b   => b,
                             c   => c,
                             clk => clk );
  stimulus: process
  begin
  
  	clk <= '0';
  	a <= "0101011001011001";
  	--b <= "1100";
  	wait for 100 ns;
  	clk <= '1';
  		
    a <= "1101011001011001";
  	--b <= "1011";
  	wait for 100 ns;
  	clk <= '0';
  	
   	a <= "0011011001011001";
  	--b <= "1101";
  	wait for 100 ns;
  	clk <= '1';  	

  
    wait;
  end process;

end bench;