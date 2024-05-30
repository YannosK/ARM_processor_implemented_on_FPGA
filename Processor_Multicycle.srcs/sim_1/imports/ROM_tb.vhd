library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.ENV.ALL;

entity ROM_tb is
    generic
    (
        N : positive := 6;
        M : positive := 32
    );
end ROM_tb;

architecture Behavioral of ROM_tb is

    component ROM is
        generic 
        (
            N : positive := 6;  -- 64 words
            M : positive := 32
        );
        port
        (
            A   : in std_logic_vector (N-1 downto 0);
            RD  : out std_logic_vector (M-1 downto 0)
        );
    end component ROM;

    signal A    : std_logic_vector (N-1 downto 0);
    signal RD   : std_logic_vector (M-1 downto 0);
    
    begin

        uut: ROM    generic map (N => N , M => M)
                    port map (A=>A , RD => RD);

        testbench: process is
            begin
                A <= std_logic_vector(to_unsigned(0, N));
                wait for 10ns;
                A <= std_logic_vector(to_unsigned(1, N));
                wait for 10ns;
                A <= std_logic_vector(to_unsigned(2, N));
                wait for 10ns;
                stop;
        end process testbench;
end Behavioral;
