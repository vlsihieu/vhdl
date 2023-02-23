----------------CHUA DUNG , XOAY BIT
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DICH is
    Port (	    CKHT, ENA_DB, RST: in STD_LOGIC;
				MSSV : OUT STD_LOGIC_VECTOR (31 downto 0);
				ENA_8LED  : OUT STD_LOGIC_VECTOR (7 downto 0));
end DICH;

architecture Behavioral of DICH is
SIGNAL ENA_8LED_REG : STD_LOGIC_VECTOR (7 downto 0):=X"00";
SIGNAL ENA_8LED_NEXT : STD_LOGIC_VECTOR (7 downto 0);
SIGNAL I_REG,I_NEXT: INTEGER RANGE 0 TO 15 :=0;
SIGNAL TT: STD_LOGIC;
Begin
PROCESS(CKHT,RST)
BEGIN										--0----1----2----3---4----5----6----7
	IF RST='1'   THEN 
							ENA_8LED_REG<=X"00";
							I_REG<=0;
	ELSIF FALLING_EDGE(CKHT) THEN 
											ENA_8LED_REG<=ENA_8LED_NEXT;
											I_REG<=I_NEXT;
	END IF;
END PROCESS;
---------->><<<---------------
PROCESS (ENA_8LED_REG, ENA_DB,I_REG,TT)
	BEGIN
		I_NEXT<=I_REG;
		ENA_8LED_NEXT<=ENA_8LED_REG;
		IF(ENA_DB='1') THEN
			IF ENA_8LED_REG =X"FF" THEN ENA_8LED_NEXT <= X"00";
			ELSE 
				IF(TT='0') THEN
						-----<<<<<<<--------
					ENA_8LED_NEXT<= ENA_8LED_REG(6 DOWNTO 0) & NOT ENA_8LED_REG(7);
				ELSE
						----->>>>>>>--------
					ENA_8LED_NEXT<= NOT ENA_8LED_REG(0) &  ENA_8LED_REG(7 DOWNTO 1);
				END IF;	
				I_NEXT<= I_REG+1;
				IF(I_REG=15) THEN I_NEXT<=0;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	TT<='1' WHEN I_REG<8 ELSE
		 '0';
---------->>><<<<---------------
	ENA_8LED <=ENA_8LED_REG;
	MSSV <= X"16119088";
end Behavioral;


