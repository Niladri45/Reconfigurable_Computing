library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rom_sum is
    Generic (
        N_DATA_OUT : integer := 16
    );
    Port ( 
        clk         : in std_logic;
        data_out    : out std_logic_vector(N_DATA_OUT-1 downto 0)
    );
end rom_sum;

architecture Behavioral of rom_sum is

    -- Constants: ROM-specific
    constant N_ROM_DATA : integer := 250; -- Number of defined data points in ROM
    constant N_ROM_ADDR : integer := 10; -- Number of bits for address line of ROM
 
    -- Definition of the ROM data type
    type rom_t is array(0 to N_ROM_DATA-1) of std_logic_vector(N_DATA_OUT-1 downto 0);
    
    -- Function to initialize the ROM
    function init_rom
        return rom_t is 
        variable tmp : rom_t := (others => (others => '0'));
    begin 
        for addr_pos in 0 to N_ROM_DATA - 1 loop 
            -- Initialize each address with the address itself
            tmp(addr_pos) := std_logic_vector(to_unsigned(addr_pos, N_DATA_OUT));
        end loop;
        return tmp;
    end init_rom;
    
    -- ROM signals
    signal rom          : rom_t  := init_rom;
    signal rom_data_o   : std_logic_vector(N_DATA_OUT-1 downto 0) := (others=>'0');
    signal rom_addr     : std_logic_vector(N_ROM_ADDR-1 downto 0) := (others=>'0');
    
    -- User signals
	signal res_data     : std_logic_vector(N_DATA_OUT-1 downto 0) := (others=>'0');

begin    
    -- ROM: Do not touch
    -- Mind the delay cycle between assigning the address and 
    -- availability of the data
    proc_rom : process(clk)
    begin
        if rising_edge(clk) then
            rom_data_o <= rom(to_integer(unsigned(rom_addr)));
        end if;
    end process proc_rom;
    
    -- Process for computations
    proc_calc : process(clk)
    begin
        -- User logic: Enter your code here

		if rising_edge(clk) then
            res_data <= std_logic_vector(unsigned(res_data) + unsigned(rom_data_o));
            data_out <= std_logic_vector( res_data (data_out'range));
            
            if(to_integer(unsigned(rom_addr)) < N_ROM_DATA-1) then
            	rom_addr <= std_logic_vector(unsigned(rom_addr) + 1);
            else
            	rom_addr <= (others=>'0');
            end if;
            
            if(to_integer(unsigned(rom_addr)) =0) then
            	res_data <= (others=>'0');
            end if;
            
        end if;

    end process proc_calc;

end Behavioral;
