--------------------------------------------------------------------------------
-- The Arithmetic Logic Unit of the CPU
--
-- Contains:
-- 'ADD_SUB.vhd' along with 'add.vhd'
-- 'AND.vhd'
-- 'XOR'.vhd'
-- 'MOV_MVN.vhd'
-- 'LSL.vhd'
-- 'ASR.vhd'
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
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
end ALU;

architecture Behavioral_Structural of ALU is

    component ADD_SUB is
        generic (N : positive := 32);
        port
        (
            SrcA    : in std_logic_vector (N-1 downto 0);
            SrcB    : in std_logic_vector (N-1 downto 0);
            SubSel  : in std_logic;
            S       : out std_logic_vector (N-1 downto 0);
            C       : out std_logic;
            V       : out std_logic
        );
    end component ADD_SUB;

    component ANDD is
        generic (N : positive := 32);
        port
        (
            SrcA    : in std_logic_vector (N-1 downto 0); 
            SrcB    : in std_logic_vector (N-1 downto 0); 
            Out_AND : out std_logic_vector (N-1 downto 0)
        );
    end component ANDD;

    component XORR is
        generic (N : positive := 32);
        port
        (
            SrcA    : in std_logic_vector (N-1 downto 0); 
            SrcB    : in std_logic_vector (N-1 downto 0); 
            Out_XOR : out std_logic_vector (N-1 downto 0)
        );
    end component XORR;

    component MOV_MVN is
        generic (N : positive := 32);
        port
        (
            Src     : in std_logic_vector (N-1 downto 0);
            MvnSel  : in std_logic;
            Out_MV  : out std_logic_vector (N-1 downto 0)
        );
    end component MOV_MVN;

    component LSL is
        generic 
        (
            N : positive := 32;
            IMM : positive := 5
        );
        port
        (
            Src     : in std_logic_vector (N-1 downto 0);
            shamt5  : in std_logic_vector (IMM-1 downto 0);
            Out_LSL : out std_logic_vector (N-1 downto 0)
        );
    end component LSL;

    component ASR is
        generic 
        (
            N : positive := 32;
            IMM : positive := 5
        );
        port
        (
            Src     : in std_logic_vector (N-1 downto 0);
            shamt5  : in std_logic_vector (IMM-1 downto 0);
            Out_ASR : out std_logic_vector (N-1 downto 0)
        );
    end component ASR;
    
    -- first logic level
    signal Out_SUM  : std_logic_vector (width-1 downto 0);
    signal Out_AND  : std_logic_vector (width-1 downto 0);
    signal Out_XOR  : std_logic_vector (width-1 downto 0);
    signal Out_MV   : std_logic_vector (width-1 downto 0);
    signal Out_LSL  : std_logic_vector (width-1 downto 0);
    signal Out_ASR  : std_logic_vector (width-1 downto 0);
    -- flags
    signal Carry    : std_logic;
    signal Overflow : std_logic;
    signal Result   : std_logic_vector (width-1 downto 0);

    begin

        -- first logic level

        AddSub: ADD_SUB generic map (N => width)
                        port map
                        (
                            SrcA    => SrcA,
                            SrcB    => SrcB,
                            SubSel  => ALUControl(0),   -- '0' for ADD, '1' for SUB
                            S       => Out_SUM,
                            C       => Carry,
                            V       => Overflow
                        );
        
        AndLogic: ANDD  generic map (N => width)
                        port map
                        (
                            SrcA    => SrcA,
                            SrcB    => SrcB,
                            Out_AND => Out_AND
                        );

        XorLogic: XORR  generic map (N => width)
                        port map
                        (
                            SrcA    => SrcA,
                            SrcB    => SrcB,
                            Out_XOR => Out_XOR
                        );

        MovMvn: MOV_MVN generic map (N => width)
                        port map
                        (
                            Src    => SrcB,
                            MvnSel => ALUControl(0),    -- '0' for MOV, '1' for MVN
                            Out_MV => Out_MV
                        );

        LeftShift_L: LSL    generic map (N => width, IMM => shamt)
                            port map
                            (
                                Src     => SrcB,
                                shamt5  => shamt5,
                                Out_LSL => Out_LSL
                            );


        RightShift_A: ASR   generic map (N => width, IMM => shamt)
                            port map
                            (
                                Src     => SrcB,
                                shamt5  => shamt5,
                                Out_ASR => Out_ASR
                            );


        operationSelect: process (SrcA, SrcB, shamt5, ALUControl, Carry, Overflow, Out_SUM, Out_AND, Out_XOR, Out_MV, Out_LSL, Out_ASR)
            begin
                if      ALUControl(3 downto 1) = "000" then         -- ADD or SUB
                        Result <= Out_SUM;
                        C <= Carry and (not ALUControl(1));
                        V <= Overflow and (not ALUControl(1));
                elsif   ALUControl(3 downto 1) = "001" then         -- AND
                        Result <= Out_AND;
                        C <= '0';
                        V <= '0';
                elsif   ALUControl(3 downto 1) = "010" then         -- MOV or MVN
                        Result <= Out_MV;
                        C <= '0';
                        V <= '0';
                elsif   ALUControl(3 downto 1) = "011" then         -- XOR
                        Result <= Out_XOR;
                        C <= '0';
                        V <= '0';
                elsif   ALUControl(3 downto 1) = "100" then         -- LSL
                        Result <= Out_LSL;
                        C <= '0';
                        V <= '0';
                elsif   ALUControl(3 downto 1) = "101" then         -- ASR
                        Result <= Out_ASR;
                        C <= '0';
                        V <= '0';
                else
                        Result <= (others => 'X');
                        C <= 'X';
                        V <= 'X';
                end if;
        end process operationSelect;
        
        -- output
        ALUResult <= Result;
        
        -- Negative and Zero flags
        N <= Result(width-1);
        Z <= '1' when to_integer(unsigned(Result)) = 0 else '0';
        

end Behavioral_Structural;