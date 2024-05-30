-----------------------------------------------------------------------------------------
-- Finite State Machine of Control Unit
-- Used in multi-cycle processor to determine write enable signals
-----------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FSM is
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
end FSM;

architecture Behavioral of FSM is

    type FSM_states is
        (
            S0,
            S1,
            S2_B,
            S2_BL,
            S2_CMP,
            S2_DP,
            S2_MEM,
            S3_LDR,
            S3_STR,
            S4_CondExNegtv,
            S4_DP,
            S4_DPpc,
            S4_sDP,
            S4_sDPpc,
            S4_LDR,
            S4_LDRpc
        );
    
    signal current_state    : FSM_states;
    signal next_state       : FSM_states;

    begin

        -- synchronous state register
        state_reg: process (clk)
            begin
                if rising_edge(clk) then
                    if reset = '1' then
                        current_state <= S0;
                    else
                        current_state <= next_state;
                    end if;
                end if;
        end process state_reg;
        
        -- asyncronous state logic
        ControlFSM: process (current_state, op, S, L, Rd, NoWrite_in, CondEx_in)
            begin
                -- initialization
                next_state <= S0;       -- NOT SURE IF CORRECT
                IRWrite <= '0';
                PCSrc <= "XX";
                PCWrite <= '0';
                FlagsWrite <= '0';
                MAWrite <= '0';
                MemWrite <= '0';
                RegWrite <= '0';
                -- state logic
                case current_state is
                    when S0 =>
                        IRWrite <= '1';
                        next_state <= S1;
                    when S1 =>
                        if      CondEx_in = '0'                                     then next_state <= S4_CondExNegtv;
                        elsif   CondEx_in = '1' and op = "10" and L = '0'           then next_state <= S2_B;
                        elsif   CondEx_in = '1' and op = "10" and L = '1'           then next_state <= S2_BL;
                        elsif   CondEx_in = '1' and op = "00" and NoWrite_in = '1'  then next_state <= S2_CMP;
                        elsif   CondEx_in = '1' and op = "00" and NoWrite_in = '0'  then next_state <= S2_DP;
                        elsif   CondEx_in = '1' and op = "01"                       then next_state <= S2_MEM;
                        else                                                        next_state <= S0;                   -- KIND OF BOLD
                        end if;
                    when S2_B =>
                        PCSrc <= "11";
                        PCWrite <= '1';
                        next_state <= S0;
                    when S2_BL =>                       -- I ADDED IRWrite in PCp4 to avoid problems
                        RegWrite <= '1';
                        PCSrc <= "11";
                        PCWrite <= '1';
                        next_state <= S0;
                    when S2_CMP =>
                        FlagsWrite <= '1';
                        PCSrc <= "00";
                        PCWrite <= '1';
                        next_state <= S0;
                    when S2_DP =>
                        if      S = '0' and unsigned(Rd) /= "1111"  then next_state <= S4_DP;
                        elsif   S = '0' and unsigned(Rd) = "1111"   then next_state <= S4_DPpc;
                        elsif   S = '1' and unsigned(Rd) /= "1111"  then next_state <= S4_sDP;
                        elsif   S = '1' and unsigned(Rd) = "1111"   then next_state <= S4_sDPpc;
                        else                                        next_state <= current_state;
                        end if;
                    when S2_MEM =>
                        MAWrite <= '1';
                        if      S = '0' then next_state <= S3_STR;
                        elsif   S = '1' then next_state <= S3_LDR;
                        else            next_state <= current_state;
                        end if;
                    when S3_STR =>
                        MemWrite <= '1';
                        PCSrc <= "00";
                        PCWrite <= '1';
                        next_state <= S0;
                    when S3_LDR =>
                        if      unsigned(Rd) /= "1111"  then next_state <= S4_LDR;
                        elsif   unsigned(Rd) = "1111"   then next_state <= S4_LDRpc;
                        else                            next_state <= current_state;
                        end if;
                    when S4_CondExNegtv =>
                        PCSrc <= "00";
                        PCWrite <= '1';
                        next_state <= S0;
                    when S4_DP =>
                        RegWrite <= '1';
                        PCSrc <= "00";
                        PCWrite <= '1';
                        next_state <= S0;
                    when S4_DPpc =>
                        PCSrc <= "10";
                        PCWrite <= '1';
                        next_state <= S0;
                    when S4_sDP =>
                        FlagsWrite <= '1';
                        RegWrite <= '1';
                        PCSrc <= "00";
                        PCWrite <= '1';
                        next_state <= S0;
                    when S4_sDPpc =>
                        FlagsWrite <= '1';
                        PCSrc <= "10";
                        PCWrite <= '1';
                        next_state <= S0;
                    when S4_LDR =>
                        RegWrite <= '1';
                        PCSrc <= "00";
                        PCWrite <= '1';
                        next_state <= S0;
                    when S4_LDRpc =>
                        PCSrc <= "10";
                        PCWrite <= '1';
                        next_state <= S0;
                    when others =>
                        next_state <= S0;
                end case;
        end process ControlFSM;

end Behavioral;