----------------------------------------------------------------------------------
-- To be used as tenchbench for 'sign_extension_param' and 'zero_extension_param'
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.ENV.ALL;

entity extension_tb is
    generic
    (
        inbits  : positive := 26;
        outbits : positive := 32
    );
end extension_tb;

architecture Behavioral of extension_tb is

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

    signal sig      : std_logic_vector (inbits-1 downto 0);
    signal sig_ext  : std_logic_vector (outbits-1 downto 0);

    begin

        uut: sign_extend    generic map (in_width => inbits , out_width => outbits)
                            port map    (imm26 => sig , out32 => sig_ext);

        testbench: process is
            begin
                sig <= (others => '0'); wait for 100ns;
                sig <= (others => '1'); wait for 100ns;
                sig(inbits-1) <= '0'; sig(inbits-2 downto 0) <= (others => '1'); wait for 100ns;
                sig(inbits-1) <= '1'; sig(inbits-2 downto 0) <= (others => '0'); wait for 100ns;
        end process testbench;
    
end Behavioral;
