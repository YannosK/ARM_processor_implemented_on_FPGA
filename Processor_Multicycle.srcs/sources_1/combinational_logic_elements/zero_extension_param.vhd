------------------------------------------------------------------------------------------
-- Zero extension to the left / most significant bits
-- Input has in_width and output extends it to out_width bits
-- 
-- Will be used for accessing the field imm12 of data-processing and memory instructions
------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity zero_extend is
    generic
    (
        in_width    : positive := 12;
        out_width   : positive := 32
    );
    port
    (
        imm12   : in std_logic_vector (in_width-1 downto 0);
        out32   : out std_logic_vector (out_width-1 downto 0)
    );
end zero_extend;

architecture Dataflow of zero_extend is
    signal u12 : unsigned (in_width-1 downto 0);
    begin
        u12 <= unsigned(imm12);
        out32 <= std_logic_vector(resize(u12, out_width));
end Dataflow;