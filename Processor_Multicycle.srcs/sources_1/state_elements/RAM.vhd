--------------------------------------------------------------------
-- RAM has 2^N words of M bits
-- It is a distributed RAM
-- Supports asynchronous reading
-- Supports synchronous writing, with write-enable
-- There is one input to specify address
--      - in read it outputs to data_out the data of the address
--      - in write it writes to this address data_in and also outputs it at data_out
--
-- To be used as data memory
-- A[N-1:0] = ALUResult[N+1:2]
--------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- not sure if it is a good idea to name it RAM because you also have a signal with the same name
entity RAM is
    generic 
    (
        N : positive := 5;  -- 32 words
        M : positive := 32
    );
    port
    (
        CLK         : in std_logic;
        WE          : in std_logic;
        ADDR        : in std_logic_vector (N-1 downto 0);
        DATA_IN     : in std_logic_vector (M-1 downto 0);
        DATA_OUT    : out std_logic_vector (M-1 downto 0)
    );
end RAM;

architecture Behavioral of RAM is

    type RAM_array is array (2**N-1 downto 0) of std_logic_vector(M-1 downto 0);

    signal RAM : RAM_array;

    begin

        -- synchronous writing
        Block_RAM: process (CLK)
            begin
                if rising_edge(CLK) then
                    if WE = '1' then
                        RAM(to_integer(unsigned(ADDR))) <= DATA_IN;
                    end if;
                end if;
        end process;
        
        --asynchronous reading
        DATA_OUT <= RAM(to_integer(unsigned(ADDR)));
end Behavioral;