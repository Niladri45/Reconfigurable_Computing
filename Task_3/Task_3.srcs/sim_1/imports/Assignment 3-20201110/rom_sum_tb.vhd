library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rom_sum_tb is

end rom_sum_tb;

architecture Behavioral of rom_sum_tb is
    
    constant CLK_PERIOD : time := 10 ns;
    signal clk          : std_logic;
    
    component rom_sum
        Generic(
            N_DATA_OUT : integer := 16
        );
        Port (
            clk         : in std_logic;
            data_out    : out std_logic_vector(N_DATA_OUT-1 downto 0)
        );
    end component rom_sum;
    
begin

    dut : rom_sum
        port map(
            clk         => clk,
            data_out    => open
            );

    proc_clk : process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        
        clk <= '1';
        wait for CLK_PERIOD/2;
        
    end process;

end Behavioral;
