library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.ENV.ALL;

entity regfile_tb is
end regfile_tb;

architecture Behavioral of regfile_tb is

    constant N : integer := 4;
    constant M : integer := 32;
    
    component regfile is
        port
        (
            CLK         : in std_logic;
            RegWrite    : in std_logic;
            A1          : in std_logic_vector (N-1 downto 0);   -- read address 1
            A2          : in std_logic_vector (N-1 downto 0);   -- read address 2
            A3          : in std_logic_vector (N-1 downto 0);   -- write address
            WD3         : in std_logic_vector (M-1 downto 0);   -- write data
            R15         : in std_logic_vector (M-1 downto 0);   -- PC+08
            RD1         : out std_logic_vector (M-1 downto 0);  -- read data 1
            RD2         : out std_logic_vector (M-1 downto 0)   -- read data 2
        );
    end component regfile;

    signal  CLK         : std_logic := '0';
    signal  RegWrite    : std_logic := '0';
    signal  A1          : std_logic_vector (N-1 downto 0) := (others => 'X'); 
    signal  A2          : std_logic_vector (N-1 downto 0) := (others => 'X'); 
    signal  A3          : std_logic_vector (N-1 downto 0) := (others => 'X'); 
    signal  WD3         : std_logic_vector (M-1 downto 0) := (others => 'X'); 
    signal  R15         : std_logic_vector (M-1 downto 0) := (others => 'X'); 
    signal  RD1         : std_logic_vector (M-1 downto 0);
    signal  RD2         : std_logic_vector (M-1 downto 0);

    constant clk_period : time := 9.641ns;
    
    begin

        uut: regfile    port map    (CLK      => CLK,
                                     RegWrite => RegWrite,
                                     A1       => A1,
                                     A2       => A2,
                                     A3       => A3,
                                     WD3      => WD3,
                                     R15      => R15,
                                     RD1      => RD1,
                                     RD2      => RD2);

        -- 130.685 MHz clock
        clock: process is
            begin
                CLK <= '0'; wait for clk_period/2;
                CLK <= '1'; wait for clk_period/2;
        end process clock;

        testbench: process is
            variable temp : integer;
            begin
                -----------------------------------------------------------------------------------------------
                report "initialising reigster values";
                wait until (CLK = '0' and CLK'event);
                RegWrite <= '1';
                for I in 0 to 14 loop
                    A3 <= std_logic_vector(to_unsigned(I, N)); WD3 <= std_logic_vector(to_signed((2**I), M));
                    wait until (CLK = '0' and CLK'event);
                end loop;    
                RegWrite <= '0';
                wait until (CLK = '0' and CLK'event);
                report "registers from r0 to r14 have values 2^I where I = 0 , ... , 14";
                -----------------------------------------------------------------------------------------------
                -----------------------------------------------------------------------------------------------
                report "reading from the read ports";
                report "A1 will read from r0 to r15 and A2 from r15 to r0";
                report "r15 will be manually added the value 2^15";
                R15 <= std_logic_vector(to_signed(2**15, M));
                wait until (CLK = '0' and CLK'event);
                for I in 0 to 15 loop
                    A1 <= std_logic_vector(to_unsigned(I, N));
                    A2 <= std_logic_vector(to_unsigned(15-I, N));
                    wait until (CLK = '0' and CLK'event);
                end loop;    
                report "done reading";
                -----------------------------------------------------------------------------------------------
                report "read-write test";
                report "sequentially to all registers (except r15) :";
                report "reading from port 1, writing the inverse result, and reading it from port 2";
                report "each iterration is 3 cycles";
                R15 <= (others => '1');
                A1 <= std_logic_vector(to_unsigned(15, N));
                A2 <= std_logic_vector(to_unsigned(15, N));
                A3 <= std_logic_vector(to_unsigned(14, N));
                wait for 3*clk_period;
                wait until (CLK = '0' and CLK'event);
                for I in 0 to 14 loop
                    RegWrite <= '0';
                    A1 <= std_logic_vector(to_unsigned(I, N));
                    wait until (CLK = '0' and CLK'event);
                    temp := to_integer(signed(RD1));
                    RegWrite <= '1';
                    A3 <= std_logic_vector(to_unsigned(I, N));
                    WD3 <= std_logic_vector(to_signed(-temp, M));
                    wait until (CLK = '0' and CLK'event);
                    RegWrite <= '0';
                    A2 <= std_logic_vector(to_unsigned(I, N));
                    wait until (CLK = '0' and CLK'event);
                end loop;
                report "all tests done";
                stop;
        end process testbench;

end Behavioral;
