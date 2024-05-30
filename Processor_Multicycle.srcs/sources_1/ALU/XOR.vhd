--------------------------------------------------------------------------------
-- Performs logical exclusive or on two parameterised sources
--
-- Will be used as block for XOR in CPU
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity XORR is
    generic (N : positive := 32);
    port
    (
        SrcA    : in std_logic_vector (N-1 downto 0); 
        SrcB    : in std_logic_vector (N-1 downto 0); 
        Out_XOR : out std_logic_vector (N-1 downto 0)
    );
end XORR;

architecture Dataflow of XORR is
    begin
        Out_XOR <= SrcA xor SrcB;
end Dataflow;

