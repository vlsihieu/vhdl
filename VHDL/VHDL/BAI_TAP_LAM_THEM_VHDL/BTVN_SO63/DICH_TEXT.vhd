----------------CHUA DUNG , XOAY BIT
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DICH_TEXT is
    Port (	CKHT : in STD_LOGIC;
	         ENA_DB : in STD_LOGIC;
				RST: in STD_LOGIC;
				dich_text : OUT STD_LOGIC_VECTOR (47 downto 0);-- 12x4 = 48
				ENA_12LED : OUT STD_LOGIC_VECTOR (11 downto 0)
				);
end DICH_TEXT;
--- dich 2 chieu tu trai qua phai, tu phai qua trai()
architecture Behavioral of DICH_TEXT is
SIGNAL dich_text_REG : STD_LOGIC_VECTOR (95 downto 0):=X"mach dem bcd111111111111";
SIGNAL dich_text_NEXT: STD_LOGIC_VECTOR (95 downto 0);
SIGNAL ENA_12LED_REG  : STD_LOGIC_VECTOR (11 downto 0):= "000000000000";
SIGNAL ena_12led_next : STD_LOGIC_VECTOR (11 downto 0);
SIGNAL I_REG,I_NEXT: INTEGER RANGE 0 TO 47 :=0;
SIGNAL TT: STD_LOGIC;
Begin
PROCESS(CKHT,RST)
BEGIN										--0----1----2----3---4----5----6----7
	IF RST='1'   THEN dich_text_reg <="mach dem bcd111111111111";
							ENA_12LED_REG<= "000000000000";
							I_REG<=0;
	ELSIF FALLING_EDGE(CKHT) THEN DICH_REG<=DICH_NEXT;
											ENA_12LED_REG<=ena_12led_next;
											I_REG<=I_NEXT;
	END IF;
END PROCESS;
-----------------------------
process(ena_db, i_reg)
begin
  if (ena_db = '1' and i_reg = 47 ) then  i_next <= 0;
  elsif  (ena_db = '1') then  i_next <= i_reg + 1;
  else                        i_next <= i_reg;
  end if;
end process;
TT <= '1' WHEN I_REG<24 ELSE 
	   '0'; 
---------->><<<---------------
PROCESS (dich_text_reg,ena_12led_reg, ENA_DB,TT)
	BEGIN
		DICH_NEXT<=DICH_REG;
		ena_12led_next<=ENA_12LED_REG;
		IF(ENA_DB='1') THEN
			IF(TT='0') THEN
					-----<<<<<<<--------
				ena_12led_next<= ena_12led_reg(10 DOWNTO 0) & NOT ena_12led_reg(11);
				dich_text_next<= dich_text_reg(91 DOWNTO 0) & dich_text_reg(95 DOWNTO 92);
			ELSE
					----->>>>>>>--------
				ena_12led_next<= NOT ena_12led_reg(0) &  ena_12led_reg(11 downto 1);
				dich_text_next<=dich_text_reg(3 DOWNTO 0) & dich_text_reg(95 DOWNTO 4);
			END IF;	
		END IF;
	END PROCESS;

---------->>><<<<---------------
		ENA_12LED<=ena_12led_reg;
		dich_text <= dich_text_reg(95 DOWNTO 48);
end Behavioral;


