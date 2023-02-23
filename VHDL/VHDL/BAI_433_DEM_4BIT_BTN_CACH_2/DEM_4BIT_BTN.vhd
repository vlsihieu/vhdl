
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DEM_4BIT_BTN is
    Port ( CKHT,BTN,RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end DEM_4BIT_BTN;


architecture Behavioral of DEM_4BIT_BTN is
SIGNAL ENA_D,ENA:STD_LOGIC;
begin
IC1: ENTITY WORK.DEBOUNCE_BTN
	  PORT MAP(CKHT => CKHT,
				  BTN => BTN,
				  DB_TICK => ENA_D);
IC2: ENTITY WORK.LAM_HEP_XUNG
	  PORT MAP(CKHT => CKHT,
				  D => ENA_D,
				  Q => ENA);
IC3: ENTITY WORK.DEM_4BIT
	  PORT MAP(CKHT => CKHT,
				  RST => RST,
				  ENA_DB => ENA,
				  Q => Q);

end Behavioral;

