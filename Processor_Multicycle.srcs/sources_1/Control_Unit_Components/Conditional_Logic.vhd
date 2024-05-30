-----------------------------------------------------------------------------------------
-- Conditional Logic block of Control Unit
-- Takes as input 'cond' field of Instructions and the flags of CPSR
-- Dictates wether the Instruction should be executed
-----------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CONDLogic is
    port
    (
        cond        : in std_logic_vector (3 downto 0);
        flags       : in std_logic_vector (3 downto 0);
        CondEx_in   : out std_logic
    );
end CONDLogic;

-- FLAGS
--  N : flags(3)
--  Z : flags(2)
--  C : flags(1)
--  V : flags(0)

architecture Behavioral of CONDLogic is
    begin
        MnemonicsFlags: process (cond, flags) is
        begin
            if      cond = "0000" then                  -- EQ
                if flags(2) = '1' then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "0001" then                  -- NE
                if flags(2) = '0' then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "0010" then                  -- CS / HS
                if flags(1) = '1' then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "0011" then                  -- CC / LO
                if flags(1) = '0' then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "0100" then                  -- MI
                if flags(3) = '1' then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "0101" then                  -- PL
                if flags(3) = '0' then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "0110" then                  -- VS
                if flags(0) = '1' then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "0111" then                  -- VC
                if flags(0) = '0' then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "1000" then                  -- HI
                if flags(2) = '0' and flags(1) = '1' then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "1001" then                  -- LS
                if flags(1) = '0' or flags(2) = '1' then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "1010" then                  -- GE
                if not (flags(3) = '1' xor flags(0) = '1') then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "1011" then                  -- LT
                if flags(3) = '1' xor flags(0) = '1' then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "1100" then                  -- GT
                if flags(2) = '0' and (not (flags(3) = '1' xor flags(0) = '1')) then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond = "1101" then                  -- LE
                if flags(2) = '1' or (flags(3) = '1' xor flags(0) = '1') then
                    CondEx_in <= '1';
                else
                    CondEx_in <= '0';
                end if;
            elsif   cond(3 downto 1) = "111" then       -- ALL or none
                CondEx_in <= '1';
            else
                CondEx_in <= 'X';
            end if;
        end process MnemonicsFlags;
end Behavioral;