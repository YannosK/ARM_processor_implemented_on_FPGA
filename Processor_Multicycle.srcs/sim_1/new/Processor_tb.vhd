library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.ENV.ALL;

entity Processor_tb is
end Processor_tb;

architecture Behavioral of Processor_tb is
    
    component Processor is
        port
        (
            CLK         : in std_logic;
            RESET       : in std_logic;
            PC          : out std_logic_vector (5 downto 0);
            Instruction : out std_logic_vector (31 downto 0);
            ALUResult   : out std_logic_vector (31 downto 0);
            WriteData   : out std_logic_vector (31 downto 0);
            Result      : out std_logic_vector (31 downto 0)
        );
    end component Processor;

    signal CLK         : std_logic;
    signal RESET       : std_logic := '1';
    signal PC          : std_logic_vector (5 downto 0);
    signal Instruction : std_logic_vector (31 downto 0);
    signal ALUResult   : std_logic_vector (31 downto 0);
    signal WriteData   : std_logic_vector (31 downto 0);
    signal Result      : std_logic_vector (31 downto 0);

    constant clk_period : time := 9.641ns;

    begin

        uut: Processor  port map
                        (
                            CLK         => CLK,
                            RESET       => RESET, 
                            PC          => PC,
                            Instruction => Instruction,
                            ALUResult   => ALUResult,
                            WriteData   => WriteData,
                            Result      => Result
                        );

        -- 103.724 MHz clock
        clock: process is
            begin
                CLK <= '1';
                wait for clk_period/2;
                CLK <= '0';
                wait for clk_period/2;
        end process clock;

        testbench: process is
            begin
                
                ----------------------------------------------------------------------
                -- uncomment this part of the code for Behavioral Simulation
                ----------------------------------------------------------------------
                
                -- RESET <= '1';
                -- wait for 2*clk_period;
                -- wait until (CLK = '0' and CLK'event);
                -- RESET <= '0';
                -- wait for 4*clk_period;  -- SUB
                -- wait for 4*clk_period;  -- ADD
                -- wait for 4*clk_period;  -- STR
                -- wait for 4*clk_period;  -- MOV
                -- wait for 4*clk_period;  -- EOR
                -- wait for 3*clk_period;  -- CMP
                -- wait for 4*clk_period;  -- STREQ
                -- wait for 4*clk_period;  -- MOVCS
                -- wait for 5*clk_period;  -- LDR
                -- wait for 4*clk_period;  -- MVNS
                -- wait for 4*clk_period;  -- ANDSMI
                -- wait for 4*clk_period;  -- STRPL
                -- wait for 4*clk_period;  -- LSL
                -- wait for 4*clk_period;  -- MVN
                -- wait for 4*clk_period;  -- ADDS
                -- wait for 4*clk_period;  -- SUBLT
                -- wait for 4*clk_period;  -- STRVS
                -- wait for 4*clk_period;  -- ANDS
                -- wait for 4*clk_period;  -- MOVGE
                -- wait for 3*clk_period;  -- BGT
                -- wait for 4*clk_period;  -- funct: ASR
                -- wait for 4*clk_period;  -- funct: SUBS
                -- wait for 3*clk_period;  -- funct: CMPLE
                -- wait for 4*clk_period;  -- funct: EORSLS
                -- wait for 4*clk_period;  -- funct: LSLSVC
                -- wait for 4*clk_period;  -- funct: STRNE
                -- wait for 5*clk_period;  -- funct: LDRGT
                -- wait for 3*clk_period;  -- CMP
                -- wait for 3*clk_period;  -- BLEQ
                -- wait for 4*clk_period;  -- ADD
                -- wait for 4*clk_period;  -- ASRS
                -- wait for 4*clk_period;  -- MOVSLE
                -- wait for 3*clk_period;  -- CMPPL
                -- wait for 4*clk_period;  -- ADDLS
                -- wait for 5*clk_period;  -- LDRCC
                -- wait for 3*clk_period;  -- CMP
                -- wait for 3*clk_period;  -- NoCondEx
                -- wait for 3*clk_period;  -- CMPPL
                -- wait for 4*clk_period;  -- ADDLS
                -- wait for 3*clk_period;  -- NoCondEx
                -- wait for 4*clk_period;  -- MOVEQ
                -- wait for 3*clk_period;  -- CMP
                -- wait for 3*clk_period;  -- NoCondEx
                -- wait for 3*clk_period;  -- CMPPL
                -- wait for 3*clk_period;  -- NoCondEx
                -- wait for 3*clk_period;  -- NoCondEx
                -- wait for 3*clk_period;  -- NoCondEx
                -- wait for 3*clk_period;  -- BHI
                -- wait for 4*clk_period;  -- SUB          -- LOOPED TO FIRST COMMAND
                stop;
                
                ----------------------------------------------------------------------
                -- uncomment this part of the code for Behavioral Simulation
                ----------------------------------------------------------------------

                RESET <= '1';
                wait for 2*clk_period;
                wait until (CLK = '0' and CLK'event);
                RESET <= '0';
                wait for 2000ns;
                stop;

        end process testbench;
end Behavioral;
