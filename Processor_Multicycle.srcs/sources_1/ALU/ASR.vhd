--------------------------------------------------------------------------------------
-- Performs arithmetic shift right
-- Takes as an input a Source of N bits and performs a shift dictated by an imidiate
-- This imidiate is 5 bits that corresponds to amount 0 (none) to 31.
--
-- Will be used inside the Shifters' block in the ALU
--------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ASR is
    generic 
    (
        N : positive := 32;
        IMM : positive := 5
    );
    port
    (
        Src     : in std_logic_vector (N-1 downto 0);
        shamt5  : in std_logic_vector (IMM-1 downto 0);
        Out_ASR : out std_logic_vector (N-1 downto 0)
    );
end ASR;

architecture Dataflow of ASR is
    begin
        Out_ASR <= std_logic_vector(shift_right(signed(Src), to_integer(unsigned(shamt5))));
end Dataflow;
