library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DEM_1BIT_CACH_3 is
	Port ( CKHT : in  STD_LOGIC;
          BTN  : in  STD_LOGIC_VECTOR (1 downto 0);
          LED : out  STD_LOGIC);
end DEM_1BIT_CACH_3;

architecture Behavioral of DEM_1BIT_CACH_3 is
SIGNAL RST,BTN1: STD_LOGIC;
begin

	RST <=  BTN(0);
	BTN1 <=  BTN(1);
IC: ENTITY WORK.DEM_1BIT_BTN
	PORT MAP(CKHT => CKHT,
				RST => RST,
				BTN => BTN1,
				Q => LED);

end Behavioral;

