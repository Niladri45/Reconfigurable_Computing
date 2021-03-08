library IEEE;
use IEEE.std_logic_1164.all;

-- Entity declaration

entity task1_src is

    port(a : in std_logic;      -- AND gate input
         b : in std_logic;      -- AND gate input
         c : out std_logic;    -- AND gate output
         clk: in std_logic
         );

end task1_src;

-- Architecture definition

architecture andLogic of task1_src is
    
    signal a_interm: std_logic;
    signal b_interm: std_logic;
        
 begin
    process(clk) is
    begin
        if rising_edge(clk) then
            a_interm <= a;
            b_interm <= b;
            c <= a_interm AND b_interm;
        end if;
    end process;

end andLogic;