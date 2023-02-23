----------------CHUA DUNG , XOAY BIT
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DICH is
    Port (	CKHT : in STD_LOGIC;
	         ENA_DB : in STD_LOGIC;
				RST: in STD_LOGIC;
				MSSV : OUT STD_LOGIC_VECTOR (31 downto 0);-- 8x4 = 32
				ENA_8LED : OUT STD_LOGIC_VECTOR (7 downto 0)
				);
end DICH;
--- dich 2 chieu tu trai qua phai, tu phai qua trai()
architecture Behavioral of DICH is
SIGNAL MSSV_REG : STD_LOGIC_VECTOR (63 downto 0):=X"FFFFFFFF16119088";
SIGNAL MSSV_NEXT: STD_LOGIC_VECTOR (63 downto 0);
SIGNAL ENA_8LED_REG  : STD_LOGIC_VECTOR (7 downto 0):=X"00";
SIGNAL ENA_8LED_NEXT : STD_LOGIC_VECTOR (7 downto 0);
SIGNAL I_REG,I_NEXT: INTEGER RANGE 0 TO 31 :=0;
SIGNAL TT: STD_LOGIC;
Begin
PROCESS(CKHT,RST)
BEGIN										--0----1----2----3---4----5----6----7
	IF RST='1'   THEN MSSV_REG <=X"FFFFFFFF16119088";
							ENA_8LED_REG<=X"00";
							I_REG<=0;
	ELSIF FALLING_EDGE(CKHT) THEN MSSV_REG<=MSSV_NEXT;
											ENA_8LED_REG<=ENA_8LED_NEXT;
											I_REG<=I_NEXT;
	END IF;
END PROCESS;
-----------------------------
process(ena_db, i_reg)
begin
  if (ena_db = '1' and i_reg = 31 ) then  i_next <= 0;
  elsif  (ena_db = '1') then  i_next <= i_reg + 1;
  else                        i_next <= i_reg;
  end if;
end process;
TT <= '1' WHEN I_REG<16 ELSE 
	   '0'; 
---------->><<<---------------
PROCESS (MSSV_REG,ENA_8LED_REG, ENA_DB,TT)
	BEGIN
		MSSV_NEXT<=MSSV_REG;
		ENA_8LED_NEXT<=ENA_8LED_REG;
		IF(ENA_DB='1') THEN
			IF(TT='0') THEN
					-----<<<<<<<--------
				ENA_8LED_NEXT<= ENA_8LED_REG(6 DOWNTO 0) & NOT ENA_8LED_REG(7);
				MSSV_NEXT <= MSSV_REG(59 DOWNTO 0) & MSSV_REG(63 DOWNTO 60);
			ELSE
					----->>>>>>>--------
				ENA_8LED_NEXT<= NOT ENA_8LED_REG(0) &  ENA_8LED_REG(7 DOWNTO 1);
				MSSV_NEXT <=MSSV_REG(3 DOWNTO 0) & MSSV_REG(63 DOWNTO 4);
			END IF;	
		END IF;
	END PROCESS;

---------->>><<<<---------------
		ENA_8LED<=ENA_8LED_REG;
		MSSV <= MSSV_REG(63 DOWNTO 32);
end Behavioral;


