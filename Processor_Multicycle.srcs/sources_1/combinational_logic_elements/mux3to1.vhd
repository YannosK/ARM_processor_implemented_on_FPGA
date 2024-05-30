------------------------------------------------------------------------------------------
-- Multiplexer of 3 inputs to 1 output
-- Input has N bits
-- 
-- Will be used throughout the DataPath
------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mux3to1 is
    generic (N : positive := 32);
    port
    (
        X00  : in std_logic_vector (N-1 downto 0);
        X11  : in std_logic_vector (N-1 downto 0);
        X10  : in std_logic_vector (N-1 downto 0);
        SEL : in std_logic_vector (1 downto 0);
        Y   : out std_logic_vector (N-1 downto 0)
    );
end mux3to1;

architecture Dataflow of mux3to1 is
    begin
        Y <= X00 when SEL = "00"
        else X11 when SEL = "11"
        else X10 when SEL = "10"
        else (others => 'X');
end Dataflow;