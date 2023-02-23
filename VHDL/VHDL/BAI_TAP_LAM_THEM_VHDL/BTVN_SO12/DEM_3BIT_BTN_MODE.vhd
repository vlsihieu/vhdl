library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEM_3BIT_BTN_MODE is
    Port ( CKHT,RST,BTN : in  STD_LOGIC;
           MODE : out  STD_LOGIC_VECTOR(3 DOWNTO 0));
end DEM_3BIT_BTN_MODE;

architecture Behavioral of DEM_3BIT_BTN_MODE is
SIGNAL ENA: STD_LOGIC;
begin
IC0: ENTITY WORK.CD_LAM_HEP_BTN
   PORT MAP( CKHT => CKHT,
				 BTN => BTN,
	          BTN_CDLH => ENA);
IC1: ENTITY WORK.DEM_3BIT_GIAIMA
   PORT MAP( CKHT => CKHT,
	          RST => RST,
				 ENA => ENA,
				 OE  => MODE);
end Behavioral;