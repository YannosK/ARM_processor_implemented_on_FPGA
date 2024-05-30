-----------------------------------------------------------------------------------------
-- Instruction Decoder block of Control Unit
-- Decodes fields 'op' and 'funct' of the 'Instr' signal (basically the instruction)
-----------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity InstrDec is
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
end InstrDec;

architecture Behavioral of InstrDec is
    
    begin

        -- ImmSrc:  is the job of the Extender bloc
        ExtImm: process (op, funct, shift)
            begin
                if op = "10" then                           -- Branch instruction: sign extendion of imm24
                    ImmSrc <= '1';
                elsif op = "01" then                        -- Memory Instructions: zero extension of imm12
                    ImmSrc <= '0';      
                elsif op = "00" and funct(5) = '1' then     -- Dp with immidiate: zero extension of imm12
                    ImmSrc <= '0';
                else                                        -- Not used
                    ImmSrc <= 'X';
                end if;
        end process ExtImm;

        -- ALUSrc: Immidiate or register instruction
        ImmorReg: process (op, funct, shift)
            begin
                if op = "01" or op = "10" then              -- memory or branch instructions / always immidiate
                    ALUSrc <= '1';
                elsif op = "00" and funct(5) = '1' then     -- dp instructions with field I=1
                    ALUSrc <= '1';
                else
                    ALUSrc <= '0';                  
                end if;
        end process ImmorReg;
        
        -- MemtoReg: what will be written in the register file
        ResultSource: process (op, funct, shift)
            begin
                if op = "01" and funct(0) = '1' then                -- LDR instruction
                    MemtoReg <= '1';
                elsif op = "01" and funct(0) = '0' then             -- STR instruction
                    MemtoReg <= 'X';
                elsif op = "00" and funct(4 downto 1) = "1010" then -- CMP instruction
                    MemtoReg <= 'X';
                elsif op = "10" then                                -- WARNING: only if you do 3 cycle branch instructions
                    MemtoReg <= 'X';
                else                                                -- all other instructions I THINK use just the ALU
                    MemtoReg <= '0';
                end if;
        end process ResultSource;

        -- ALUControl: what operation will happen in the ALU
        ALUOperation: process (op, funct, shift)
            begin
                if      op = "00" then      -- dp instructions
                    if      funct(4 downto 1) = "0100" then     -- ADD
                        ALUControl <= "0000";
                    elsif   funct(4 downto 1) = "0010" then     -- SUB
                        ALUControl <= "0001";
                    elsif   funct(4 downto 1) = "0000" then     -- AND
                        ALUControl <= "0010";
                    elsif   funct(4 downto 1) = "0001" then     -- EOR
                        ALUControl <= "0110";
                    elsif   funct(4 downto 1) = "1111" then     -- MVN
                        ALUControl <= "0101";
                    elsif   funct(4 downto 1) = "1010" then     -- CMP
                        ALUControl <= "0001";
                    elsif   funct(5 downto 1) = "01101" then
                        if shift(1 downto 0) = "10" then
                            ALUControl <= "1010";                   -- ASR
                        elsif shift(1 downto 0) = "00" and to_integer(unsigned(shift(6 downto 2))) /= 0 then
                            ALUControl <= "1000";                   -- LSL
                        else
                            ALUControl <= "0100";                   -- MOV with Reg
                        end if;
                    elsif   funct(5 downto 1) = "11101" then
                        ALUControl <= "0100";                   -- MOV with Imm
                    else
                        ALUControl <= "XXXX";
                    end if;
                elsif   op = "01" then      -- memory instructions
                    if funct(3) = '1' then
                        ALUControl <= "0000";
                    elsif funct(3) = '0' then
                        ALUControl <= "0001";
                    else
                        ALUControl <= "XXXX";
                    end if;
                elsif   op = "10" then      -- branch instructions
                    ALUControl <= "0000";
                else
                    ALUControl <= "XXXX";
                end if;
        end process ALUOperation;

        -- RegSrc: Controls the selection of signals in the inputs of the regile
        RegfileSource: process (op, funct, shift)
            begin
                if op = "00" then
                    if funct(5 downto 1) = "01010" then     -- CMP with register
                        RegSrc <= "X00";
                    elsif funct(5 downto 1) = "11010" then  -- CMP with immidiate
                        RegSrc <= "XX0";
                    else
                        if funct(5) = '0' then              -- DP with registers
                            if funct(4 downto 1) = "1101" or funct(4 downto 1) = "1111" then
                                RegSrc <= "00X";            -- LSL, ASR and MOV and MVN with registers
                            else
                                RegSrc <= "000";            -- Other DP with registers
                            end if;
                        elsif funct(5) = '1' then           -- DP with immidiates
                            if funct(4 downto 1) = "1101" or funct(4 downto 1) = "1111" then
                                RegSrc <= "0XX";            -- MOV, MVN with immidiates
                            else
                                RegSrc <= "0X0";            -- Other DP with immidiates
                            end if;
                        else
                            RegSrc <= (others => 'X');
                        end if;
                    end if;
                elsif op = "01" and funct(0) = '1' then     -- LDR instruction
                    RegSrc <= "0X0";
                elsif op = "01" and funct(0) = '0' then     -- STR instruction
                    RegSrc <= "X10";
                elsif op = "10" and funct(4) = '0' then     -- B instruction
                    RegSrc <= "XX1";
                elsif op = "10" and funct(4) = '1' then     -- BL instruction
                    RegSrc <= "1X1";
                else
                    RegSrc <= (others => 'X');
                end if;
        end process RegfileSource;

        NoWriteEnable: process (op, funct, shift)
            begin
                if op = "00" and funct(4 downto 1) = "1010" then    -- specifically for CMP instruction
                    NoWrite_in <= '1';
                else
                    NoWrite_in <= '0';
                end if;
        end process NoWriteEnable;
end Behavioral;