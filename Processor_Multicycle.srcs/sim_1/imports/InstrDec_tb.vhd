library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.ENV.ALL;

entity InstrDec_tb is
end InstrDec_tb;

architecture Behavioral of InstrDec_tb is

    component InstrDec is
        port
        (
            op          : in std_logic_vector (1 downto 0);
            funct       : in std_logic_vector (5 downto 0);
            shift       : in std_logic_vector (6 downto 0);     -- 'shmat5' and 'sh' field of dp (11 downto 5 bits)
            RegSrc      : out std_logic_vector (2 downto 0);    -- Control of input multiplexers in the Regfile
            ImmSrc      : out std_logic;                        -- Operation of Extend
            ALUSrc      : out std_logic;                        -- Source B of ALU
            ALUControl  : out std_logic_vector (3 downto 0);    -- Dictates what operation is performed in the ALU
            MemtoReg    : out std_logic;                        -- If source of Result is ALU or RAM
            NoWrite_in  : out std_logic                         -- Internal to the Control Unit and it is used to discern CMP from other DP instructions
        );
    end component InstrDec;
    
    signal Instr       : std_logic_vector (31 downto 0) := (others => 'X');
    signal RegSrc      : std_logic_vector (2 downto 0);
    signal ImmSrc      : std_logic;
    signal ALUSrc      : std_logic;
    signal ALUControl  : std_logic_vector (3 downto 0);
    signal MemtoReg    : std_logic;
    signal NoWrite_in  : std_logic;

    begin

        uut: InstrDec   port map
                        (
                            op         => Instr(27 downto 26),
                            funct      => Instr(25 downto 20),
                            shift      => Instr(11 downto 5),
                            RegSrc     => RegSrc,
                            ImmSrc     => ImmSrc,
                            ALUSrc     => ALUSrc,
                            ALUControl => ALUControl,
                            MemtoReg   => MemtoReg,
                            NoWrite_in => NoWrite_in
                        );

        testbench: process is
            begin
                wait for 30ns;
                Instr <= X"e5903004";     -- LDR r3, [r0, #4]
                wait for 10ns;
                Instr <= X"e5812010";     -- STR r2, [r1, #16]
                wait for 10ns;
                stop;
        end process testbench;
end Behavioral;
