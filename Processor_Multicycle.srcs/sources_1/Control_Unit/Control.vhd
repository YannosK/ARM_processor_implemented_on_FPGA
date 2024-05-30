----------------------------------------------------------------------------------
-- Control Unit of the multi-cycle CPU
--
-- Contains
-- 'Instruction_Decoder.vhd' as 'InstrDec'
-- 'Conditional_Logic.vhd' as 'CONDLogic'
-- 'FSM.vhd' as 'FSM'
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Control is
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
end Control;

architecture Structural of Control is

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
            NoWrite_in  : out std_logic                         -- Internal to the Control Unit (!!!)
        );
    end component InstrDec;

    component CONDLogic is
        port
        (
            cond        : in std_logic_vector (3 downto 0);
            flags       : in std_logic_vector (3 downto 0);
            CondEx_in   : out std_logic
        );
    end component CONDLogic;

    component FSM is
        port
        (
            clk         : in std_logic;
            reset       : in std_logic;
            op          : in std_logic_vector (1 downto 0);
            S           : in std_logic;                         -- funct(0) or Instr(20) and also is '1' for LDR and '0' for STR (L section of memory instructions)
            L           : in std_logic;                         -- funct(4) or Instr(24) (the L section of Branch Instructions)
            Rd          : in std_logic_vector (3 downto 0);
            NoWrite_in  : in std_logic;
            CondEx_in   : in std_logic;
            IRWrite     : out std_logic;                        -- non-architectural
            RegWrite    : out std_logic;
            MAWrite     : out std_logic;                        -- non-architectural
            MemWrite    : out std_logic;
            FlagsWrite  : out std_logic;
            PCWrite     : out std_logic;                        -- when '1' it goes to the next instruction
            PCSrc       : out std_logic_vector (1 downto 0)     -- the multiplexer that determines the source of the PC
        );
    end component FSM;
    signal NoWrite_in : std_logic;
    signal CondEx_in  : std_logic;

    begin

        InstructionDecoder: InstrDec    port map
                                        (
                                            op         => Op,
                                            funct      => funct,
                                            shift      => shift,
                                            RegSrc     => RegSrc,
                                            ImmSrc     => ImmSrc,
                                            ALUSrc     => ALUSrc,
                                            ALUControl => ALUControl,
                                            MemtoReg   => MemtoReg,
                                            NoWrite_in => NoWrite_in
                                        );

        ConditionalLogic: CONDLogic port map
                                    (
                                        cond => cond,
                                        flags => flags,
                                        CondEx_in => CondEx_in
                                    );
        
        StateMachineWE: FSM port map
                            (
                                clk        => CLK,
                                reset      => RESET,
                                op         => op,
                                S          => funct(0),
                                L          => funct(4),
                                Rd         => Rd,
                                NoWrite_in => NoWrite_in,
                                CondEx_in  => CondEx_in,
                                IRWrite    => IRWrite,
                                RegWrite   => RegWrite,
                                MAWrite    => MAWrite,
                                MemWrite   => MemWrite,
                                FlagsWrite => FlagsWrite,
                                PCWrite    => PCWrite,
                                PCSrc      => PCSrc
                            );
        
end Structural;
