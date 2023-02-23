library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CHON_TANSO is
    Port ( ENA2HZ : in  STD_LOGIC;
           ENA5HZ : in  STD_LOGIC;
           SEL_1B : in  STD_LOGIC;
           ENA_O : out  STD_LOGIC);
end CHON_TANSO;

architecture Behavioral of CHON_TANSO is

begin
  ENA_O <= ENA2HZ WHEN SEL_1B = '1' ELSE
           ENA5HZ;
end Behavioral;