--------------------------------------------------------------------------------
-- It takes one input, and either outputs it as is (MOV) or inverts it (MVN)
--
-- Will be the MOV/MVN block inside ALU
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MOV_MVN is
    generic (N : positive := 32);
    port
    (
        Src     : in std_logic_vector (N-1 downto 0);
        MvnSel  : in std_logic;
        Out_MV  : out std_logic_vector (N-1 downto 0)
    );
end MOV_MVN;

architecture Dataflow of MOV_MVN is
    begin
        Out_MV <= not Src when MvnSel = '1' else Src;
end Dataflow;