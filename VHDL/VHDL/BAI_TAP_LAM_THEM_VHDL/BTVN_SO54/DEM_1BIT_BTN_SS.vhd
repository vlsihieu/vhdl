library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEM_1BIT_BTN_SS is
    Port ( CKHT : IN STD_LOGIC;
	        RST : IN STD_LOGIC;
			  BTN : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end DEM_1BIT_BTN_SS;

architecture Behavioral of DEM_1BIT_BTN_SS is
SIGNAL ENA: STD_LOGIC;
begin
IC0: ENTITY WORK.CD_LAM_HEP_BTN
   PORT MAP( CKHT => CKHT,
				 BTN => BTN,
	          BTN_CDLH => ENA);
IC1: ENTITY WORK.DEM_1BIT_SS
   PORT MAP( CKHT => CKHT,
	          RST  => RST,
				 ENA  => ENA,
				 Q   => Q);
end Behavioral;