--------------------------------------------------------------------------------
-- Performs logical and on two parameterised sources
--
-- Will be used as block for AND in CPU
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ANDD is
    generic (N : positive := 32);
    port
    (
        SrcA    : in std_logic_vector (N-1 downto 0); 
        SrcB    : in std_logic_vector (N-1 downto 0); 
        Out_AND : out std_logic_vector (N-1 downto 0)
    );
end ANDD;

architecture Dataflow of ANDD is
    begin
        Out_AND <= SrcA and SrcB;
end Dataflow;
