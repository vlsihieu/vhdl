library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEM_2BIT_BTN is
    Port ( CKHT,RST,BTN : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(1 DOWNTO 0)
			 );
end DEM_2BIT_BTN ;

architecture Behavioral of DEM_2BIT_BTN is
SIGNAL ENA: STD_LOGIC;
begin
IC0: ENTITY WORK.CD_LAM_HEP_BTN
   PORT MAP( CKHT => CKHT,
				 BTN => BTN,
	          BTN_CDLH => ENA
				);
IC1 : ENTITY WORK.DEM_2BIT
   PORT MAP( CKHT => CKHT,
	          RST  => RST,
				 ENA_DB  => ENA,
				 Q  => Q);
end Behavioral;