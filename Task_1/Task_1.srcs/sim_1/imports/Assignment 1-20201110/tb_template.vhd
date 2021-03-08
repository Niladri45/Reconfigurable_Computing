library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity task1_src_tb is
end;

architecture bench of task1_src_tb is

  component task1_src
      Port ( a : in STD_LOGIC;
             b : in STD_LOGIC;
             c : out STD_LOGIC;
             clk : in STD_LOGIC  :=  '0');
  end component;

  signal a: STD_LOGIC;
  signal b: STD_LOGIC;
  signal c: STD_LOGIC;
  signal clk: STD_LOGIC := '0' ;

begin

  uut: task1_src port map ( a   => a,
                            b   => b,
                            c   => c,
                            clk => clk );

  stimulus: process
  begin
  
    a <= '0';
    b <= '0';    
    wait for 50 ns;
    
    clk <= not clk;
    a <= '0';
    b <= '1';
    wait for 50 ns;

    clk <= not clk;
    wait for 50 ns;
    
    clk <= not clk;   
    a <= '1';
    b <= '0';
    wait for 50 ns;
 
    clk <= not clk;
    wait for 50 ns;
    
    clk <= not clk;
    a <= '0';
    b <= '1';
    wait for 50 ns;

    clk <= not clk;
    wait for 50 ns;
    
    clk <= not clk;
    a <= '1';
    b <= '0';
    wait for 50 ns;

    clk <= not clk;
    wait for 50 ns;
    
    clk <= not clk;
    a <= '1';
    b <= '1';
    wait for 50 ns;

    clk <= not clk;
    wait for 50 ns;
    
    clk <= not clk;
    a <= '0';
    b <= '0';
    wait for 50 ns;

    clk <= not clk;
    wait for 50 ns;
    
    
    clk <= not clk;
    a <= '0';
    b <= '1';
    wait for 50 ns;

    clk <= not clk;
    wait for 50 ns; 
    
    clk <= not clk;
    a <= '1';
    b <= '0';
    wait for 50 ns;

    clk <= not clk;
    wait for 50 ns; 
    

    clk <= not clk;
    a <= '1';
    b <= '1';
    wait for 50 ns;

    clk <= not clk;
    wait for 50 ns;    
    
    clk <= not clk;
    a <= '1';
    b <= '1';
    wait for 50 ns;                   
    -- Put test bench stimulus code here

    wait;
  end process;

end;