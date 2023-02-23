library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CD_LAM_HEP_BTN_MODE is
    Port ( CKHT : in STD_LOGIC;
	        BTN : in  STD_LOGIC;
           BTN_CDLH : out  STD_LOGIC);
end CD_LAM_HEP_BTN_MODE;

architecture Behavioral of CD_LAM_HEP_BTN_MODE is
SIGNAL ENA_D: STD_LOGIC;
begin
 DEBOUNCE_BTN: ENTITY WORK.DEBOUNCE_BTN
   PORT MAP( CKHT 	=> CKHT,
				 BTN 		=> BTN,
	          DB_TICK => ENA_D);
 LAM_HEP_XUNG : ENTITY WORK.LAM_HEP_XUNG
   PORT MAP( CKHT => CKHT,
				 D 	=> ENA_D,
				 Q 	=>BTN_CDLH);
end Behavioral;