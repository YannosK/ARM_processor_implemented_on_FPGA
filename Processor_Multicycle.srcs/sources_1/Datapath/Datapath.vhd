----------------------------------------------------------------------------------
-- Datapath of multi-cycle CPU
--
-- Contains components:
-- 'register_param_rst_we.vhd' as 'Rg'
-- 'ROM.vhd' as 'ROM'
-- 'register_file_w_PC.vhd' as 'regfile'
-- 'RAM.vhd' as 'RAM'
-- 'adder_PCp4.vhd' as 'adder_p4'
-- 'Extend.vhd' as 'Extend'
-- 'mux2to1.vhd' as 'mux2to1'
-- 'ALU.vhd' as 'ALU'
-- 
-- Inside components were also contained:
-- 'register_file_core.vhd'
-- 'sign_extension_param.vhd'
-- 'zero_extension_param.vhd'
-- 'ADD_SUB.vhd' along with 'add.vhd'
-- 'AND.vhd'
-- 'XOR'.vhd'
-- 'MOV_MVN.vhd'
-- 'LSL.vhd'
-- 'ASR.vhd'
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Datapath is
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
end Datapath;

-- ADDED AN IDEA OF MINE IN NON_ARCH REGISTER PCp4

architecture Structural of Datapath is

    ------------------------------------------------------------------------------------------
    -- STATE ELEMENTS
    ------------------------------------------------------------------------------------------

    -- register, synchronous, with reset and write enable
    component Rg is
        generic (width : positive := 32); -- width = 4 for CPSR
        port
        (
            clk     : in std_logic;
            reset   : in std_logic;
            we      : in std_logic;
            d_in    : in std_logic_vector (width-1 downto 0);
            d_out   : out std_logic_vector (width-1 downto 0)
        );
    end component Rg;

    -- Instruction Memory
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

    -- Register File
    component regfile is
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
    end component regfile;

    -- Data Memory
    component RAM is
        generic 
        (
            N : positive := 5;  -- 32 words
            M : positive := 32
        );
        port
        (
            CLK         : in std_logic;
            WE          : in std_logic;
            ADDR        : in std_logic_vector (N-1 downto 0);
            DATA_IN     : in std_logic_vector (M-1 downto 0);
            DATA_OUT    : out std_logic_vector (M-1 downto 0)
        );
    end component RAM;

    ------------------------------------------------------------------------------------------
    -- COMBINATIONAL LOGIC ELEMENTS
    ------------------------------------------------------------------------------------------

    -- Adder of constant value 4
    component adder_p4 is
        generic (width : positive := 32);   -- PC is 32 bits
        port
        (
            PC          : in std_logic_vector (width-1 downto 0);
            PCPLus4     : out std_logic_vector (width-1 downto 0)
        );
    end component adder_p4;

    -- Sign / Zero Extender
    component Extend is
        generic
        (
            inbits  : positive := 24;
            zerobits: positive := 12;
            signbits: positive := 26;
            outbits : positive := 32
        );
        port
        (
            Imm     : in std_logic_vector (inbits-1 downto 0);
            ImmSrc  : in std_logic;
            ExtImm  : out std_logic_vector (outbits-1 downto 0)
        );
    end component Extend;

    -- 2-to-1 parameterised multiplexer
    component mux2to1 is
        generic (N : positive := 32);
        port
        (
            X0  : in std_logic_vector (N-1 downto 0);
            X1  : in std_logic_vector (N-1 downto 0);
            SEL : in std_logic;
            Y   : out std_logic_vector (N-1 downto 0)
        );
    end component mux2to1;

    -- 3-to-1 parameterised multiplexer
    component mux3to1 is
        generic (N : positive := 32);
        port
        (
            X00  : in std_logic_vector (N-1 downto 0);
            X11  : in std_logic_vector (N-1 downto 0);
            X10  : in std_logic_vector (N-1 downto 0);
            SEL : in std_logic_vector (1 downto 0);
            Y   : out std_logic_vector (N-1 downto 0)
        );
    end component mux3to1;
    
    -- Arithmetic Logic Unit
    component ALU is
        generic
        (
            width : positive := 32;     -- data-word bits
            shamt : positive := 5       -- shift amount bits    
        );
        port
        (
            SrcA        : in std_logic_vector (width-1 downto 0);
            SrcB        : in std_logic_vector (width-1 downto 0);
            shamt5      : in std_logic_vector (shamt-1 downto 0);
            ALUControl  : in std_logic_vector (3 downto 0);
            N           : out std_logic;
            Z           : out std_logic;
            C           : out std_logic;
            V           : out std_logic;
            ALUResult   : out std_logic_vector (width-1 downto 0)
        );
    end component ALU;

    ------------------------------------------------------------------------------------------
    -- INTERNAL SIGNALS
    ------------------------------------------------------------------------------------------

    signal PCcurrent    : std_logic_vector (N-1 downto 0) := (others => '0');
    signal PCnext       : std_logic_vector (N-1 downto 0);
    signal RDInstr      : std_logic_vector (N-1 downto 0);                      -- output of ROM
    signal Instr        : std_logic_vector (N-1 downto 0);                      -- output of non-architectural register IR
    signal PCinc4       : std_logic_vector (N-1 downto 0);                      -- output of INC4
    signal PCp4         : std_logic_vector (N-1 downto 0);                      -- output of non-architectural register PCp4
    signal PCp8         : std_logic_vector (N-1 downto 0);
    signal Result       : std_logic_vector (N-1 downto 0);
    signal RA1          : std_logic_vector (3 downto 0);
    signal RA2          : std_logic_vector (3 downto 0);
    signal WA           : std_logic_vector (3 downto 0);
    signal WD           : std_logic_vector (N-1 downto 0);
    signal RD1          : std_logic_vector (N-1 downto 0);                      -- output RD1 of regfile
    signal RD2          : std_logic_vector (N-1 downto 0);                      -- output RD2 of regfile
    signal SrcA         : std_logic_vector (N-1 downto 0);
    signal SrcB         : std_logic_vector (N-1 downto 0);
    signal ALUResult    : std_logic_vector (N-1 downto 0);
    signal ALUCtrl      : std_logic_vector (3 downto 0);
    signal ALUFlags     : std_logic_vector (3 downto 0);
    signal ALUResultReg : std_logic_vector (N-1 downto 0);                      -- ouput of non-architectural register Srg
    signal CPSRFlags    : std_logic_vector (3 downto 0);
    signal MemAddr      : std_logic_vector (4 downto 0);                        -- output of non-architectural register MArg
    signal WDReg        : std_logic_vector (N-1 downto 0);                      -- ouput of non-architectural register Brg and input of non-architectural register WDrg
    signal WriteData    : std_logic_vector (N-1 downto 0);                      -- output of non-architectural register WDrg and input WD of RAM
    signal RAMData      : std_logic_vector (N-1 downto 0);
    signal RAMDataReg   : std_logic_vector (N-1 downto 0);                      -- output of non-architectural register RDrg that holds the ouput data of RAM
    signal ExtImm       : std_logic_vector (N-1 downto 0);                      -- output of Extend module
    signal ImmSource    : std_logic_vector (N-1 downto 0);                      -- output of non-architectural register IMrg

    begin

        --------------------------------------------------------------------------------------------------------
        -- architectural components
        --------------------------------------------------------------------------------------------------------

        PC: Rg  generic map (width => N)
                port map
                (
                    clk   => CLK,
                    reset => RESET,
                    we    => PCWrite,
                    d_in  => PCnext,
                    d_out => PCcurrent
                );

        InstructionMemory: ROM  generic map (N => 6 , M => N)
                                port map
                                (
                                    A   => PCcurrent(7 downto 2),  -- A[N-1:0] = PC[N+1:2] - 7 downto 2 means 6 bits which is right
                                    RD  => RDInstr
                                );

        PCplus4: adder_p4   generic map (width => N)
                            port map
                            (
                                PC      => PCcurrent,
                                PCPlus4 => PCinc4
                            );

        PCplus8: adder_p4   generic map (width => N)
                            port map
                            (
                                PC      => PCp4,
                                PCPlus4 => PCp8
                            );

        PCsource: mux3to1   generic map (N => N)
                            port map
                            (
                                X00 => PCp4,
                                X11 => ALUResult,               -- only active for branch instructions
                                X10 => Result,
                                SEL => PCSrc,                   -- '0' selects the next instruction, '1' selects the ALU Result (mainly in Branch Instructions)
                                Y   => PCnext                          
                            );

        SelectRA1: mux2to1  generic map (N => 4)                            -- Selects Read Address 1 of Register file
                            port map
                            (
                                X0 => Instr(19 downto 16),                  -- 'Rn' section of data-processing & memory instructions
                                X1 => std_logic_vector(to_unsigned(15, 4)), -- PC, by default (mainly used in the branch instructions)
                                SEL => RegSrc(0),                           -- with 0 it reads Rn from A1, else it reads PC+08 from A1
                                Y => RA1                                    -- dictates what is read from A1 in refile
                            );

        SelectRA2: mux2to1  generic map (N => 4)                -- Selects Read Address 2 of Register File
                            port map
                            (
                                X0 => Instr(3 downto 0),        -- 'Rm' section of data-processing (mainly Rm in DP with registers)
                                X1 => Instr(15 downto 12),      -- 'Rd' section of data-processing & memory instructions (mainly Rd in STR)
                                SEL => RegSrc(1),               -- selects 'Rm' to be read if '0' (DP with registers), and 'Rd' if '1' (STR)
                                Y => RA2                        -- dictates what is read from A2 in regfile 
                            );

        SelectWA: mux2to1   generic map (N => 4)                            -- BEWARE: missing from notes. Selects Write Address of Register File
                            port map
                            (
                                X0 => Instr(15 downto 12),                  -- 'Rd' section of data-processing & memory instructions (LDR for memory)
                                X1 => std_logic_vector(to_unsigned(14, 4)), -- LR, by default
                                SEL => RegSrc(2),                           -- selects 'Rd' address to be written with '0', and LR address to be written with '1' (BL instruction)
                                Y => WA                                     -- dictates the address of the register to be written
                            );

        SelectWD: mux2to1   generic map (N => N)                -- BEWARE: missing from notes. Selects Data to write in WA in the Register File
                            port map
                            (
                                X0 => Result,                   -- The calculations Result, after the ALU
                                X1 => PCp4,                     -- PC+04 which is the next instruction address
                                SEL => RegSrc(2),               -- with '0' it writes ALU Result in 'Rd', with '1' it writes PC+04 in LR (used in BL)
                                Y => WD                         -- dictates the data to be written in the write address
                            );

        RegisterFile: regfile   generic map (N => 4 , M => N)
                                port map
                                (
                                    CLK      => CLK,
                                    RegWrite => RegWrite,
                                    A1       => RA1,            -- output of SelectRA1 multiplexer
                                    A2       => RA2,            -- output of SelectRA2 multiplexer
                                    A3       => WA,             -- output of SelectWA multiplexer
                                    WD3      => WD,             -- output of SelectWD multiplexer
                                    R15      => PCp8,
                                    RD1      => RD1,
                                    RD2      => RD2
                                );
        
        ALUSourceB: mux2to1 generic map (N => N)        -- Selects SrcB of ALU
                            port map
                            (
                                X0 => WDReg,            -- Output of non-acrh register Brg that holds RD2 from register file. Register source
                                X1 => ImmSource,        -- Output of non-arch IMrg from zero / sign Extender. Immidiate source operand
                                SEL => ALUSrc,          -- Register SrcB for '0' and Immidiate Source for '1' 
                                Y =>  SrcB              -- Second source operand of ALU
                            );

        ZeroSignExtend: Extend  generic map
                                (
                                    inbits   => 24,
                                    zerobits => 12,
                                    signbits => 26,
                                    outbits  => N
                                )
                                port map
                                (
                                    Imm    => Instr(23 downto 0),   -- 'Imm24' section of Branch instructions and 'imm12' section of Data-processing instructions
                                    ImmSrc => ImmSrc,               -- Zero extension for '0' (dp and memory) and sign extension for '1' (branch)
                                    ExtImm => ExtImm                -- passing through non-arch IMrg it's a possible source operand of ALU
                                );
        
        CPSR: Rg    generic map (width => 4)
                    port map
                    (
                        clk   => CLK,
                        reset => RESET,
                        we    => FlagsWrite,
                        d_in  => ALUFlags,
                        d_out => CPSRFlags
                    );

        ALUblock: ALU   generic map (width => N, shamt => 5)
                        port map
                        (
                            SrcA       => SrcA,
                            SrcB       => SrcB,
                            shamt5     => Instr(11 downto 7),
                            ALUControl => ALUControl,
                            N          => ALUFlags(3),
                            Z          => ALUFlags(2),
                            C          => ALUFlags(1),
                            V          => ALUFlags(0),
                            ALUResult  => ALUResult
                        );

        DataMemory: RAM generic map (N => 5, M => N)
                        port map
                        (
                            CLK      => CLK,
                            WE       => MemWrite,
                            ADDR     => MemAddr,            -- output of non-arch register MArg
                            DATA_IN  => WriteData,          -- output of non-arch register WDrg that write data from register file's RD2
                            DATA_OUT => RAMData
                        );
        
        ResultSource: mux2to1   generic map (N => N)        -- Selects the result source of the operations of the instructions
                                port map
                                (
                                    X0  => ALUResultReg,    -- output of non-arch register Srg, that holds the direct result of some ALU operation
                                    X1  => RAMDataReg,      -- output of non-arch register RDrg, that holds requested data for read from RAM (probably for LDR)
                                    SEL => MemtoReg,        -- result is from ALU for '0' (DP instructions - maybe branch (???)) and from RAM for '1' (memory instructions) 
                                    Y   => Result           -- Result to be written in regfile or PC
                                );

        --------------------------------------------------------------------------------------------------------
        -- non-architectural registers
        --------------------------------------------------------------------------------------------------------

        IRrg: Rg    generic map (width => N)
                    port map
                    (
                        clk   => CLK,
                        reset => RESET,
                        we    => IRWrite,
                        d_in  => RDInstr,
                        d_out => Instr
                    );
        
        PCp4rg: Rg  generic map (width => N)
                    port map
                    (
                        clk   => CLK,
                        reset => RESET,
                        we    => IRWrite,               -- DANGER: my idea... and it is for BL instruction
                        d_in  => PCinc4,
                        d_out => PCp4
                    );

        Arg: Rg generic map (width => N)
                port map
                (
                    clk   => CLK,
                    reset => RESET,
                    we    => '1',
                    d_in  => RD1,
                    d_out => SrcA
                );
        
        Brg: Rg generic map (width => N)
                port map
                (
                    clk   => CLK,
                    reset => RESET,
                    we    => '1',
                    d_in  => RD2,
                    d_out => WDReg
                );
        
        IMrg: Rg    generic map (width => N)
                    port map
                    (
                        clk   => CLK,
                        reset => RESET,
                        we    => '1',
                        d_in  => ExtImm,
                        d_out => ImmSource
                    );
        
        MArg: Rg    generic map (width => 5)
                    port map
                    (
                        clk   => CLK,
                        reset => RESET,
                        we    => MAWrite,
                        d_in  => ALUResult(6 downto 2),     -- A[N-1:0] = ALUResult[N+1:2] - 6 downto 2 means 5 bits, which is right
                        d_out => MemAddr
                    );
        
        WDrg: Rg    generic map (width => N)
                    port map
                    (
                        clk   => CLK,
                        reset => RESET,
                        we    => '1',
                        d_in  => WDReg,
                        d_out => WriteData
                    );
        
        Srg: Rg generic map (width => N)
                port map
                (
                    clk   => CLK,
                    reset => RESET,
                    we    => '1',
                    d_in  => ALUResult,
                    d_out => ALUResultReg
                );
        
        RDrg: Rg    generic map (width => N)
                    port map
                    (
                        clk   => CLK,
                        reset => RESET,
                        we    => '1',
                        d_in  => RAMData,
                        d_out => RAMDataReg
                    );
        
        --------------------------------------------------------------------------------------------------------
        -- output signals
        --------------------------------------------------------------------------------------------------------
        
        flags <= CPSRFlags;
        PC_out <= PCcurrent(7 downto 2);
        instr_out <= Instr;
        ALU_out <= ALUResult;
        WD_out <= WDReg;
        Result_out <= Result;

end Structural;
