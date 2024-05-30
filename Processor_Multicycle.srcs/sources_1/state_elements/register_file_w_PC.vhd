--------------------------------------------------------------------------------
-- It is the Register File of ARM architecture
-- Register File of 2^N words of M bits
-- It contains distributed RAM component (it will use LUTs in implementation - not Block RAMs)
-- Read
--  - supports asynchronous reading 
--  - two input ports to specify read address
--  - two output ports to read data
-- Write
--  - supports synchronous writing, on clock rise, with write-enable 
--  - one input ports to specify write address and one to input write data
--
-- Uses the generic Register File as component ('register_file_core.vhd')
-- This one also supports reading the value PC+08 that is from the input R15
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity regfile is
    generic
    (
        N : positive := 4;  -- 16 words
        M : positive := 32
    );
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
end regfile;

architecture Structural of regfile is

    component regfile_core is
        generic
        (
            N : positive := 4;  -- 16 words
            M : positive := 32
        );
        port
        (
            CLK         : in std_logic;
            WE          : in std_logic;
            ADDR_W      : in std_logic_vector (N-1 downto 0);
            ADDR_R1     : in std_logic_vector (N-1 downto 0);
            ADDR_R2     : in std_logic_vector (N-1 downto 0);
            DATA_IN     : in std_logic_vector (M-1 downto 0);
            DATA_OUT1   : out std_logic_vector (M-1 downto 0);
            DATA_OUT2   : out std_logic_vector (M-1 downto 0)
        );
    end component regfile_core;

    signal r1 : std_logic_vector(M-1 downto 0);
    signal r2 : std_logic_vector(M-1 downto 0);

    begin

        rf: regfile_core generic map (N=>N , M=>M)
                    port map    (
                                    CLK => CLK, 
                                    WE  => RegWrite,
                                    ADDR_W  => A3,
                                    ADDR_R1 => A1,
                                    ADDR_R2 => A2,
                                    DATA_IN => WD3,
                                    DATA_OUT1 => r1,
                                    DATA_OUT2 => r2
                                );
        
        RD1 <= R15 when A1 = std_logic_vector(to_unsigned(15, N)) else r1;
        RD2 <= R15 when A2 = std_logic_vector(to_unsigned(15, N)) else r2;

end Structural;