---------------------------------------------------------------------------------------------------
-- Extend block of CPU
-- Performs zero extension of imm12 field, of data-processing instructions
-- Performs sign extension of imm24 field, of branch instructions
-- Contains blocks 'zero_extension_param' and 'sign_extension_param'
-- Selects between them
-- They have a common input of 24 bits
-- The zero-extension block keeps bits 11 downto 0
-- The sign-extension block keeps all bits but performs a shift left by 2 (multiply by four)
-- Thus it ends up with 26 bits
---------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Extend is
    generic
    (
        inbits  : positive := 24;
        zerobits: positive := 12;
        signbits: positive := 26;
        outbits : positive := 32
    );
    port
    (
        Imm     : in std_logic_vector (inbits-1 downto 0);
        ImmSrc  : in std_logic;
        ExtImm  : out std_logic_vector (outbits-1 downto 0)
    );
end Extend;

architecture Structural of Extend is
    
    component zero_extend is
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
    end component zero_extend;

    component sign_extend is
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
    end component sign_extend;

    signal mult4  : std_logic_vector (signbits-1 downto 0);     -- imm24 of branch instructions, multiplied by four
    signal imm_dp : std_logic_vector (outbits-1 downto 0);      -- immidiate for data-processing instructions (32 bit)
    signal imm_br : std_logic_vector (outbits-1 downto 0);      -- immidiate for branch instructions (32 bit)

    begin
        
        -- multiplying imm24 by 4
        mult4 <= Imm & '0' & '0';

        ZeroExt_imm12   : zero_extend   generic map (in_width => zerobits , out_width => outbits)
                                        port map    (imm12 => Imm(zerobits-1 downto 0) , out32 => imm_dp);


        SignExt_imm24x4 : sign_extend   generic map (in_width => signbits , out_width => outbits)
                                        port map    (imm26 => mult4 , out32 => imm_br);
        
        -- output multiplexer
        ExtImm <=   imm_br when ImmSrc = '1'
            else    imm_dp when ImmSrc = '0'
            else    (others => 'X');
        
end Structural;