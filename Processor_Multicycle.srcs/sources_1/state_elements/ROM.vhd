--------------------------------------------------------------------
-- ROM has 2^N words of M bits
-- To be used as instruction memory
-- Every cycle the input of it will be dictated by the PC:
-- A[N-1:0] = PC[N+1:2]
--------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- calling it ROM is not surelly a good idea because you have a constant with the same name
entity ROM is
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
end ROM;

architecture Dataflow of ROM is
    
    type ROM_array is array (0 to 2**N-1) of std_logic_vector (M-1 downto 0); -- 64 words
    
    constant ROM : ROM_array := 
    (
        X"E04F000F",
        X"E2802005",
        X"E5802010",
        X"E3A03003",
        X"E2234006",
        X"E1540002",
        X"05804008",
        X"21A05000",
        X"F5956010",
        X"E1F07006",
        X"40178006",
        X"55887004",
        X"E1A07F07",
        X"E3E09000",
        X"E099A007",
        X"B242B001",
        X"650BA004",
        X"F2144004",
        X"A1A0C00F",
        X"CA000006",
        X"E3510004",
        X"0B00000B",
        X"53510006",
        X"92811001",
        X"3590F000",
        X"01A0F00C",
        X"8AFFFFE4",
        X"E1A02EC7",
        X"E2533008",
        X"D1530002",
        X"90341006",
        X"71B01101",
        X"1580C000",
        X"C511F004",
        X"F2811001",
        X"E1B021C1",
        X"D1B0F00E",
        others => (others => '0')
    );

    begin
        RD <= ROM(to_integer(unsigned(A)));

end Dataflow;
