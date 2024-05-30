--------------------------------------------------------------------
-- Register File of 2^N words of M bits
-- It is distributed RAM component (it will use LUTs in implementation - not Block RAMs)
-- It supports synchronous writing, on clock rise, with write-enable
-- It supports asynchronous reading from two ports
-- To read or write addresses must be specified
-- 
-- Will be use for the ARM architecture register file
-- It contains 15 registers:  R0 - R14
-- IT DOES NOT contain PC that is R15
-- IT DOES NOT contain CPSR
--------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity regfile_core is
    generic
    (
        N : positive := 4;  -- 16 words
        M : positive := 32
    );
    port
    (
        CLK         : in std_logic;
        WE          : in std_logic;
        ADDR_W      : in std_logic_vector (N-1 downto 0);
        ADDR_R1     : in std_logic_vector (N-1 downto 0);
        ADDR_R2     : in std_logic_vector (N-1 downto 0);
        DATA_IN     : in std_logic_vector (M-1 downto 0);
        DATA_OUT1   : out std_logic_vector (M-1 downto 0);
        DATA_OUT2   : out std_logic_vector (M-1 downto 0)
    );
end regfile_core;

architecture Behavioral of regfile_core is

    type RF_array is array (2**N-1 downto 0) of std_logic_vector (M-1 downto 0);

    signal RF : RF_array;

    begin

        -- synchronous writing of Register File
        REG_FILE_W: process (CLK)
            begin
                if rising_edge(CLK) then
                    if WE ='1' then
                        RF(to_integer(unsigned(ADDR_W))) <= DATA_IN;
                    end if;
                end if;
        end process;
    
        -- asynchronous reading of the Register File
        DATA_OUT1 <= RF(to_integer(unsigned(ADDR_R1)));
        DATA_OUT2 <= RF(to_integer(unsigned(ADDR_R2)));

end Behavioral;