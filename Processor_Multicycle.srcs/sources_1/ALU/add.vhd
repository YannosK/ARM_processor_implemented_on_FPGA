--------------------------------------------------------------------------------
-- Adder that works for both signed and unsigned
--
-- Will be used as block for adder / subtractor inside ALU
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder is
    generic (N : positive := 32);
    port
    (
        d1  : in std_logic_vector (N-1 downto 0);
        d2  : in std_logic_vector (N-1 downto 0);
        sum : out std_logic_vector (N-1 downto 0);
        cout: out std_logic;
        ovf : out std_logic
    );
end adder;

architecture Behavioral of adder is
    begin
        adder: process (d1, d2)
            variable d1_s, d2_s, sum_s : signed (N+1 downto 0);
            begin
                    d1_s    := signed('0' & d1(N-1) & d1);
                    d2_s    := signed('0' & d2(N-1) & d2);
                    sum_s   := d1_s + d2_s;
                    sum     <= std_logic_vector(sum_s(N-1 downto 0));
                    ovf     <= sum_s(N) xor sum_s(N-1);
                    cout    <= sum_s(N+1);
        end process adder;
end Behavioral;