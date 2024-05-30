--------------------------------------------------------------------
-- To be used as PC and CPSR
-- Also used in all non-architectural registers
-- PC must have width = 32
-- CPSR must have width = 4
--------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rg is
    generic (width : positive := 32); -- width = 4 for CPSR
    port
    (
        clk     : in std_logic;
        reset   : in std_logic;
        we      : in std_logic;
        d_in    : in std_logic_vector (width-1 downto 0);
        d_out   : out std_logic_vector (width-1 downto 0)
    );
end Rg;

architecture Behavioral of Rg is
    begin
        process (clk)
        begin
            if rising_edge(clk) then
                if (reset = '1') then
                    d_out <= (others => '0');
                else
                    if (we = '1') then
                        d_out <= d_in;
                    end if;
                end if;
            end if;
        end process;
end Behavioral;