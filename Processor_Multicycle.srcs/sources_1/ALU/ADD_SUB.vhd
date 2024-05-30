--------------------------------------------------------------------------------
-- Performs addition and subtraction for signed and unsigned
-- Uses the modukle 'add.vhd'
--
-- Will be the adder / subtractor block inside ALU
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ADD_SUB is
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
end ADD_SUB;

architecture Structural of ADD_SUB is
    
    component adder is
        generic (N : positive := 32);
        port
        (
            d1  : in std_logic_vector (N-1 downto 0);
            d2  : in std_logic_vector (N-1 downto 0);
            sum : out std_logic_vector (N-1 downto 0);
            cout: out std_logic;
            ovf : out std_logic
        );
    end component adder;

    signal SrcB_integer     : integer;
    signal SrcB_internal    : std_logic_vector (N-1 downto 0);

    begin
        
        SrcB_integer <= - to_integer(signed(SrcB)) when SubSel ='1' else to_integer(signed(SrcB));
        SrcB_internal <= std_logic_vector(to_signed(SrcB_integer, N));

        add: adder  generic map (N => N)
                    port map   (d1   => SrcA,
                                d2   => SrcB_internal,
                                sum  => S,
                                cout => C,
                                ovf  => V );
end Structural;