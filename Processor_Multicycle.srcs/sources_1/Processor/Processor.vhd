----------------------------------------------------------------------------------
-- The entire Multi-Cycle Processor
-- Contains
-- 'Datapath.vhd' along with its components
-- 'Control.vhd' along with its components
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Processor is
    port
    (
        CLK         : in std_logic;
        RESET       : in std_logic;
        -- PC          : out std_logic_vector (5 downto 0)        -- the ouput of the PC register ----------------------------------------
        PC          : out std_logic_vector (5 downto 0);        -- the ouput of the PC register
        Instruction : out std_logic_vector (31 downto 0);       -- The instruction being executed - outputn of IR non-architectural register
        ALUResult   : out std_logic_vector (31 downto 0);       -- Direct output of ALU
        WriteData   : out std_logic_vector (31 downto 0);       -- Data to be written in RAM (memory instructions)
        Result      : out std_logic_vector (31 downto 0)
    );
end Processor;

architecture Structural of Processor is

    component Datapath is
        generic (N : positive := 32);                           -- size of words in bits
        port
        (
            CLK         : in std_logic;
            RESET       : in std_logic;
            RegSrc      : in std_logic_vector (2 downto 0);     -- bit 0 controls A1 mux, bit 1 controls A2 mux, bit 3 controls two write muxes
            ALUSrc      : in std_logic;                         -- Register SrcB for '0' and Immidiate Source for '1'
            MemtoReg    : in std_logic;                         -- Selects what Result will be written in the registers (regfile or PC)
            ALUControl  : in std_logic_vector (3 downto 0);     -- Controls what the ALU does
            ImmSrc      : in std_logic;                         -- Zero extension for '0' and sign extension for '1'
            MemWrite    : in std_logic;                         -- write enable of RAM data memory
            FlagsWrite  : in std_logic;                         -- Enables writing in CPSR
            RegWrite    : in std_logic;                         -- write enable of register file
            PCSrc       : in std_logic_vector (1 downto 0);
            PCWrite     : in std_logic;
            IRWrite     : in std_logic;                         -- non-architectural register
            MAWrite     : in std_logic;                         -- non-architectural register
            flags       : out std_logic_vector (3 downto 0);    -- the output of the CPSR 
            PC_out      : out std_logic_vector (5 downto 0);    -- value in the output of the PC register
            instr_out   : out std_logic_vector (N-1 downto 0);  -- output of the IR register that dictates the current isntruction
            ALU_out     : out std_logic_vector (N-1 downto 0);  -- direct output of the ALU
            WD_out      : out std_logic_vector (N-1 downto 0);  -- ouput of B register and data input of RAM
            Result_out  : out std_logic_vector (N-1 downto 0)   -- result to be written in the regfile and possibly PC
        );
    end component Datapath;

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

    signal RegSrc       : std_logic_vector (2 downto 0);     
    signal ALUSrc       : std_logic;                         
    signal MemtoReg     : std_logic;                         
    signal ALUControl   : std_logic_vector (3 downto 0);     
    signal ImmSrc       : std_logic;                         
    signal MemWrite     : std_logic;                         
    signal FlagsWrite   : std_logic;                         
    signal RegWrite     : std_logic;                         
    signal PCSrc        : std_logic_vector (1 downto 0);
    signal PCWrite      : std_logic;
    signal IRWrite      : std_logic;                         
    signal MAWrite      : std_logic;
    signal CPSR         : std_logic_vector (3 downto 0);
    signal Instr        : std_logic_vector (31 downto 0);                      

    begin

        DataPath_MultiCycle: Datapath   generic map  (N => 32)
                                        port map
                                        (
                                            CLK        => CLK,
                                            RESET      => RESET,
                                            RegSrc     => RegSrc,
                                            ALUSrc     => ALUSrc,
                                            MemtoReg   => MemtoReg,
                                            ALUControl => ALUControl,
                                            ImmSrc     => ImmSrc,
                                            MemWrite   => MemWrite,
                                            FlagsWrite => FlagsWrite,
                                            RegWrite   => RegWrite,
                                            PCSrc      => PCSrc,
                                            PCWrite    => PCWrite,
                                            IRWrite    => IRWrite,
                                            MAWrite    => MAWrite,
                                            flags      => CPSR,
                                            instr_out  => Instr,
                                            -- PC_out     => PC        ----------------
                                            PC_out     => PC,
                                            ALU_out    => ALUResult,
                                            WD_out     => WriteData,
                                            Result_out => Result
                                        );

        Instruction <= Instr;

        ControlUnit_MultiCycle: Control port map
                                        (
                                            CLK        => CLK,
                                            RESET      => RESET,
                                            cond       => Instr(31 downto 28),      -- 4 bits
                                            op         => Instr(27 downto 26),      -- 2 bits
                                            funct      => Instr(25 downto 20),      -- 6 bits
                                            Rd         => Instr(15 downto 12),      -- 4 bits
                                            shift      => Instr(11 downto 5),       -- 5 & 2 bits = 7 bits that are sections shamt5 and sh of DP instructions
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

end Structural;
