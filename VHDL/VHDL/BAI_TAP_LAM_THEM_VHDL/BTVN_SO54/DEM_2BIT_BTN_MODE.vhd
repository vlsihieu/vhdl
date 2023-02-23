library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEM_2BIT_BTN_MODE is
    Port ( CKHT : IN STD_LOGIC;
	        RST : IN STD_LOGIC;
			  BTN : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(2 DOWNTO 0)
			);
end DEM_2BIT_BTN_MODE;

architecture Behavioral of DEM_2BIT_BTN_MODE is
SIGNAL ENA: STD_LOGIC;
begin
IC0: ENTITY WORK.CD_LAM_HEP_BTN
   PORT MAP( CKHT => CKHT,
				 BTN => BTN,
	          BTN_CDLH => ENA);
IC1: ENTITY WORK.DEM_2BIT_MODE
   PORT MAP( CKHT => CKHT,
	          RST  => RST,
				 ENA  => ENA,
				 Q   => Q
				 );
end Behavioral;