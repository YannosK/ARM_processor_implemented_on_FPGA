library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.ENV.ALL;

entity ALU_tb is
end ALU_tb;

architecture Behavioral of ALU_tb is

    constant width  : integer := 32;
    constant shamt  : integer := 5;

    component ALU is
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

    signal SrcA        : std_logic_vector (width-1 downto 0) := (others => 'X');
    signal SrcB        : std_logic_vector (width-1 downto 0) := (others => 'X');
    signal shamt5      : std_logic_vector (shamt-1 downto 0) := (others => 'X');
    signal ALUControl  : std_logic_vector (3 downto 0) := (others => 'X');
    signal N           : std_logic;
    signal Z           : std_logic;
    signal C           : std_logic;
    signal V           : std_logic;
    signal ALUResult   : std_logic_vector (width-1 downto 0);

    constant clk_period : time := 9.641ns;

    begin

        uut: ALU    port map
                    (
                        SrcA       => SrcA,
                        SrcB       => SrcB,
                        shamt5     => shamt5,
                        ALUControl => ALUControl,
                        N          => N,
                        Z          => Z,
                        C          => C,
                        V          => V,
                        ALUResult  => ALUResult
                    );
        
        testbench: process is
            begin
                wait for 20ns;
                report "testing AND operation";
                -- testing Z flag too
                SrcA <= X"F0F0F0F0";
                SrcB <= X"0F0F0F0F";
                ALUControl <= "0010";
                wait for clk_period;
                -- testing N flag too
                SrcA <= X"800FF000";
                SrcB <= X"FFFFFFFF";
                ALUControl <= "0011";
                wait for clk_period;
                report "testing XOR operation";
                -- testing Z flag too
                SrcA <= X"FFFFFFFF";
                SrcB <= X"FFFFFFFF";
                ALUControl <= "0111";
                wait for clk_period;
                -- testing N flag too
                SrcA <= X"F0F0F0F0";
                SrcB <= X"0F0F0F00";
                ALUControl <= "0110";
                wait for clk_period;
                report "testing MOV operation";
                -- testing Z flag too
                SrcA <= (others => 'X');
                SrcB <= X"00000000";
                ALUControl <= "0100";
                wait for clk_period;
                -- testing N flag too
                SrcA <= (others => 'X');
                SrcB <= X"80000000";
                ALUControl <= "0100";
                wait for clk_period;
                report "testing MVN operation";
                -- testing Z flag too
                SrcA <= (others => 'X');
                SrcB <= X"FFFFFFFF";
                ALUControl <= "0101";
                wait for clk_period;
                -- testing N flag too
                SrcA <= (others => 'X');
                SrcB <= X"7FFFFFFF";
                ALUControl <= "0101";
                wait for clk_period;
                report "testing LSL operation";
                -- testing Z flag too
                SrcA <= (others => 'X');
                SrcB <= X"F8000000";
                shamt5 <= "00101";
                ALUControl <= "1000";
                wait for clk_period;
                -- testing N flag too
                SrcA <= (others => 'X');
                SrcB <= X"00000006";
                shamt5 <= "11110";
                ALUControl <= "1001";
                wait for clk_period;
                report "testing ASR operation";
                -- testing Z flag too
                SrcA <= (others => 'X');
                SrcB <= X"7FFFFFFF";
                shamt5 <= "11111";
                ALUControl <= "1010";
                wait for clk_period;
                -- testing N flag too
                SrcA <= (others => 'X');
                SrcB <= X"80004000";
                shamt5 <= "01110";
                ALUControl <= "1011";
                wait for clk_period;
                shamt5 <= (others => 'X');
                report "testing ADD operation";
                ALUControl <= "0000";
                -- testing N flag
                SrcA <= X"7FFFFFFF";
                SrcB <= X"80000000";
                wait for clk_period;
                -- testing Z flag
                SrcA <= X"00000000";
                SrcB <= X"00000000";
                wait for clk_period;
                -- testing C flag
                SrcA <= X"FFFFFFFF";
                SrcB <= X"00000002";
                wait for clk_period;
                -- testing V flag
                SrcA <= X"7FFFFFFF";
                SrcB <= X"40000000";
                wait for clk_period;
                report "testing SUB operation";
                ALUControl <= "0001";
                -- testing N & C flag
                SrcA <= X"FFFFFFFF";
                SrcB <= X"00000001";
                wait for clk_period;
                -- testing Z & C flag
                SrcA <= X"00000003";
                SrcB <= X"00000003";
                wait for clk_period;
                -- testing V & C flag
                SrcA <= X"80000000";
                SrcB <= X"00000001";
                wait for clk_period;
                -- one case where there is no C
                SrcA <= X"00000001";
                SrcB <= X"FFFFFFFF";
                wait for clk_period;
                report "ALU tests done";
                stop;
        end process testbench;

end Behavioral;
