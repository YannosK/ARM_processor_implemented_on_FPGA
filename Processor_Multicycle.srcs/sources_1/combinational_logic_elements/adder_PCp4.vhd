--------------------------------------------------------------------
-- Parameterized adder of 4
-- 
-- Will be used to increment PC contained address by 4 (1 word)
-- It is an asynchronous operation that happens all the time
--------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder_p4 is
    generic (width : positive := 32);   -- PC is 32 bits
    port
    (
        PC          : in std_logic_vector (width-1 downto 0);
        PCPLus4     : out std_logic_vector (width-1 downto 0)
    );
end adder_p4;

architecture Dataflow of adder_p4 is
    signal PC_next  : unsigned (width-1 downto 0);
    constant four   : integer := 4;

    begin
        PC_next <= unsigned(PC) + to_unsigned(four, width);
        PCPlus4 <= std_logic_vector(PC_next);
end Dataflow;
