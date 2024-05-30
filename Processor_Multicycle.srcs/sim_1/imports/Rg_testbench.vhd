library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.ENV.ALL;

entity Rg_testbench is
--    generic (width : positive := 32); -- width = 4 for CPSR
end Rg_testbench;

architecture Behavioral of Rg_testbench is

    constant width : integer := 32;

    component Rg is
--        generic (width : positive := 32); -- width = 4 for CPSR
        port
        (
            clk     : in std_logic;
            reset   : in std_logic;
            we      : in std_logic;
            d_in    : in std_logic_vector (width-1 downto 0);
            d_out   : out std_logic_vector (width-1 downto 0)
        );
    end component Rg;

    signal clk     : std_logic;
    signal reset   : std_logic := '1';
    signal we      : std_logic := '0';
    signal d_in    : std_logic_vector (width-1 downto 0) := (others => 'X');
    signal d_out   : std_logic_vector (width-1 downto 0);

    constant clk_period : time := 10ns;

    begin

        uut: Rg port map
                (
                    clk   => clk,
                    reset => reset,
                    we    => we,
                    d_in  => d_in, 
                    d_out => d_out
                );

        clock: process is
            begin
                CLK <= '0'; wait for clk_period/2;
                CLK <= '1'; wait for clk_period/2;
        end process clock;

        testbench: process is
            begin
                wait for 30ns;
                wait until (CLK = '0' and CLK'event);
                reset <= '0';
                we <= '1';
                d_in <= (others => '0');
                wait until (CLK = '0' and CLK'event);
                we <= '0';
                wait until (CLK = '0' and CLK'event);
                we <= '1';
                d_in <= (others => '1');
                wait until (CLK = '0' and CLK'event);
                we <= '0';
                wait until (CLK = '0' and CLK'event);
                stop;
        end process testbench;
end Behavioral;
