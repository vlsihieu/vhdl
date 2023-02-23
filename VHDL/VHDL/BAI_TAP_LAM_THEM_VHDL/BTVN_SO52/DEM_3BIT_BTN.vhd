library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEM_3BIT_BTN is
    Port ( CKHT,RST,BTN : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(5 DOWNTO 0));
end DEM_3BIT_BTN;

architecture Behavioral of DEM_3BIT_BTN is
SIGNAL ENA: STD_LOGIC;
begin
 CD_LAM_HEP_BTN: ENTITY WORK.CD_LAM_HEP_BTN
   PORT MAP( CKHT => CKHT,
				 BTN => BTN,
	          BTN_CDLH => ENA);
 DEM_3BIT : ENTITY WORK.DEM_3BIT
   PORT MAP( CKHT => CKHT,
	          RST => RST,
				 ENA => ENA,
				 Q  => Q);
end Behavioral;