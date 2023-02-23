
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--SW CÓ 2 TT 0 /1 KHI CHUYEN TU 0->1 Ð?I 20MS
--                KHI CHUY?N T? 1->0 Ð?I 20MS

entity DEM_4BIT_BTN_CACH_1 is
    Port ( CKHT : in  STD_LOGIC;
           BTN  : in  STD_LOGIC_VECTOR (1 downto 0);
           LED  : out  STD_LOGIC_VECTOR (3 downto 0));
end DEM_4BIT_BTN_CACH_1;

architecture Behavioral of DEM_4BIT_BTN_CACH_1 is
SIGNAL ENA_D,ENA,BTN1,RST: STD_LOGIC;
begin
	RST  <=  BTN(0);
	BTN1 <=  BTN(1);
-- DOBOUNCE_BTN
IC1 : ENTITY WORK.DEBOUNCE_BTN
	PORT MAP(CKHT => CKHT,
				BTN => BTN1,
				DB_TICK => ENA_D);
				
-- LAM_HEP_XUNG
IC2 : ENTITY WORK.LAM_HEP_XUNG
	PORT MAP(CKHT => CKHT,
				D => ENA_D,
				Q => ENA);

-- ÐEM 4 BIT
IC3 : ENTITY WORK.DEM_4BIT
	PORT MAP(CKHT => CKHT,
				RST => RST,
				ENA_DB => ENA,
				Q => LED);
end Behavioral;

