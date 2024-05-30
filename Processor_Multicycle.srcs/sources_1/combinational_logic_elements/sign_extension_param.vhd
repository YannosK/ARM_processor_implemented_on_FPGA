---------------------------------------------------------------------------------------------------
-- Sign extension to the left / most significant bits
-- Input has in_width and output extends it to out_width bits
-- 
-- Will be used for accessing the field imm24 of Branch Instructions, to calculate BTA
-- due to the calculation PC + 08 + (4*imm24) the input ends up of being an imm26
-- The ouput input of this  module should precisely be (4*imm24) and it will outputed at 32 bits
---------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sign_extend is
    generic
    (
        in_width    : positive := 26;
        out_width   : positive := 32
    );
    port
    (
        imm26   : in std_logic_vector (in_width-1 downto 0);
        out32   : out std_logic_vector (out_width-1 downto 0)
    );
end sign_extend;

architecture Dataflow of sign_extend is
    signal u26 : signed (in_width-1 downto 0);
    begin
        u26 <= signed(imm26);
        out32 <= std_logic_vector(resize(u26, out_width));
end Dataflow;