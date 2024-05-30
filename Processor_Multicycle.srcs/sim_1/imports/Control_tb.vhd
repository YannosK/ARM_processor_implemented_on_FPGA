library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.ENV.ALL;

entity Control_tb is
end Control_tb;

architecture Behavioral of Control_tb is
    
    component Control is
        port
        (
            CLK         : in std_logic;
            RESET       : in std_logic;
            cond        : in std_logic_vector (3 downto 0);
            op          : in std_logic_vector (1 downto 0);
            funct       : in std_logic_vector (5 downto 0);
            Rd          : in std_logic_vector (3 downto 0);
            shift       : in std_logic_vector (6 downto 0);
            flags       : in std_logic_vector (3 downto 0);
            RegSrc      : out std_logic_vector (2 downto 0);    -- Control of input multiplexers in the Regfile
            ImmSrc      : out std_logic;                        -- Operation of Extend
            ALUSrc      : out std_logic;                        -- Source B of ALU
            ALUControl  : out std_logic_vector (3 downto 0);    -- Dictates what operation is performed in the ALU
            MemtoReg    : out std_logic;
            RegWrite    : out std_logic;
            MemWrite    : out std_logic;
            FlagsWrite  : out std_logic;
            PCWrite     : out std_logic;
            PCSrc       : out std_logic_vector (1 downto 0);
            IRWrite     : out std_logic;                        -- non-architectural
            MAWrite     : out std_logic                         -- non-architectural
        );
    end component Control;
    
    signal CLK          : std_logic := 'X';
    signal RESET        : std_logic := '1';
    signal Instr        : std_logic_vector (31 downto 0) := (others => 'X');
    signal CPSR         : std_logic_vector (3 downto 0) := (others => 'X');
    signal RegSrc       : std_logic_vector (2 downto 0);
    signal ImmSrc       : std_logic;
    signal ALUSrc       : std_logic;
    signal ALUControl   : std_logic_vector (3 downto 0);
    signal MemtoReg     : std_logic;
    signal RegWrite     : std_logic;
    signal MemWrite     : std_logic;
    signal FlagsWrite   : std_logic;
    signal PCWrite      : std_logic;
    signal PCSrc        : std_logic_vector (1 downto 0);
    signal IRWrite      : std_logic;
    signal MAWrite      : std_logic;
    
    constant clk_period : time := 10ns;

    begin

        uut: Control    port map
                        (
                            CLK        => CLK,
                            RESET      => RESET,
                            cond       => Instr(31 downto 28),
                            op         => Instr(27 downto 26),
                            funct      => Instr(25 downto 20),
                            Rd         => Instr(15 downto 12),
                            shift      => Instr(11 downto 5),
                            flags      => CPSR,
                            RegSrc     => RegSrc,
                            ImmSrc     => ImmSrc,
                            ALUSrc     => ALUSrc,
                            ALUControl => ALUControl,
                            MemtoReg   => MemtoReg,
                            RegWrite   => RegWrite,
                            MemWrite   => MemWrite,
                            FlagsWrite => FlagsWrite,
                            PCWrite    => PCWrite,
                            PCSrc      => PCSrc,
                            IRWrite    => IRWrite,
                            MAWrite    => MAWrite
                        );

        Clock100MHz: process is
            begin
                CLK <= '1';
                wait for clk_period/2;
                CLK <= '0';
                wait for clk_period/2;
        end process Clock100MHz;

        Testbench: process is
            begin
                wait for 3*clk_period;
                wait until (CLK = '0' and CLK'event);
                RESET <= '0';
                CPSR <= "0000";
                Instr <= X"e5903004";                   -- LDR r3, [r0, #4]
                wait for 5*clk_period;
                Instr <= X"e5812010";                   -- STR r2, [r1, #16]
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                Instr <= X"e512f010";                   -- LDR r15, [r2, #-0x10]
                wait until (CLK = '0' and CLK'event);
                wait for 5*clk_period;
                Instr <= X"ea000003";                   -- B Test => B #0x14 => B #20
                wait until (CLK = '0' and CLK'event);
                wait for 3*clk_period;
                -----------------------------------------------------------------------
                -- from now on I will try to test the mnemonics too
                -----------------------------------------------------------------------
                CPSR <= "X1XX";
                Instr <= X"0b000003";                   -- BLEQ Test => BLEQ #0x14 => BL #20
                wait until (CLK = '0' and CLK'event);
                wait for 3*clk_period;
                CPSR <= "X0XX";
                Instr <= X"1bfffff9";                   -- BLNE Tezt => BLNE #-20
                wait until (CLK = '0' and CLK'event);
                wait for 3*clk_period;
                CPSR <= "XX1X";
                Instr <= X"21520003";                   -- CMPHS r2, r3
                wait until (CLK = '0' and CLK'event);
                wait for 3*clk_period;
                CPSR <= "XX0X";
                Instr <= X"335400b2";                   -- CMPLO r4, #0xB2
                wait until (CLK = '0' and CLK'event);
                wait for 3*clk_period;
                CPSR <= "1XXX";
                Instr <= X"4084300f";                   -- ADDMI r3, r4, r15
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "0XXX";
                Instr <= X"528F7017";                   -- ADDPL r7, r15, #17
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "XXX1";
                Instr <= X"6042f006";                   -- SUBVS r15, r2, r6
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "XXX0";
                Instr <= X"7245f005";                   -- SUBVC r15, r5, #5
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "X01X";
                Instr <= X"80190008";                   -- AND(S)HI r0, r9, r8
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "XX0X";
                Instr <= X"921f1007";                   -- AND(S)LS r1, r15, #7
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "X1XX";
                Instr <= X"903ff001";                   -- EOR(S)LS r15, r15, r1
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "0XX0";
                Instr <= X"a222f0ff";                   -- EORGE r15, r2, #0xff
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "1XX1";
                Instr <= X"a1e0a006";                   -- MVNGE r10, r6
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "1XX0";
                Instr <= X"b3f020f8";                   -- MVN(S)LT r2, #0xf8
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "10X1";
                Instr <= X"c1a0f00e";                   -- MOVGT r15, r14
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "00X0";
                Instr <= X"c3b030a3";                   -- MOV(S)GT r3, #0xa3
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "0XX1";
                Instr <= X"d1a0fb02";                   -- LSLLE r15, r2, #0x16
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                CPSR <= "X1XX";
                Instr <= X"d1b0f244";                   -- ASR(S)LE r15, r4, #4
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                -----------------------------------------------------------------------
                -- a case where the mnemonic is not satisfiedand one of no mnemonic
                -----------------------------------------------------------------------
                CPSR <= "00X1";
                Instr <= X"c508f002";                   -- STRGT r15, [r8, #-2]
                wait until (CLK = '0' and CLK'event);
                wait for 3*clk_period;
                CPSR <= "XXXX";
                Instr <= X"f510e002";                   -- LDR r14, [r0, #-0x2]
                wait until (CLK = '0' and CLK'event);
                wait for 5*clk_period;
                -----------------------------------------------------------------------
                -- testing to see if MOV and LSL are differebtiated
                -----------------------------------------------------------------------
                CPSR <= "XXXX";
                Instr <= X"E3A020A0";                   -- MOV r2, #0x50
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                Instr <= X"E1A02003";                   -- MOV r2, r3
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                Instr <= X"E1A02083";                   -- LSL r2, r3, #1
                wait until (CLK = '0' and CLK'event);
                wait for 4*clk_period;
                stop;
        end process Testbench;
end Behavioral;
