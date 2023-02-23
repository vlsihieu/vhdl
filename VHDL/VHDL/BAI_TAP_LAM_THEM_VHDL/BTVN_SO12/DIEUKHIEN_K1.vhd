library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DIEUKHIEN_K1 is
    Port ( CKHT,RST,BTN,MODE : in  STD_LOGIC;
           OE : out  STD_LOGIC_VECTOR(2 DOWNTO 0));
end DIEUKHIEN_K1;

architecture Behavioral of DIEUKHIEN_K1 is
SIGNAL ENA: STD_LOGIC;
begin
IC0: ENTITY WORK.CD_LAM_HEP_BTN
   PORT MAP( CKHT => CKHT,
				 BTN => BTN,
	          BTN_CDLH => ENA);
IC1: ENTITY WORK.DEM_2BIT
   PORT MAP( CKHT => CKHT,
				 MODE   => MODE,
	          RST => RST,
				 ENA => ENA,
				 OE =>OE);
end Behavioral;