LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY LED_DSDC_PST IS 
	PORT ( CKHT : IN STD_LOGIC;
          RST : IN STD_LOGIC;
  			 OE  : IN STD_LOGIC; 
			 ENA_DB : IN STD_LOGIC ;
			 CP : IN STD_LOGIC;
			 Q: OUT STD_LOGIC_VECTOR ( 3 DOWNTO 0));
		
END LED_DSDC_PST;

ARCHITECTURE BEHAVIORAL OF LED_DSDC_PST IS 
SIGNAL Q_REG, Q_NEXT : STD_LOGIC_VECTOR ( 3 DOWNTO 0);
BEGIN 
	PROCESS ( CKHT, RST)
	BEGIN 
		IF RST = '1' THEN Q_REG <= "0001";
		ELSIF FALLING_EDGE(CKHT ) THEN Q_REG <= Q_NEXT;
		END IF ;
	END PROCESS;
	
	Q_NEXT <= 	"0001" WHEN (OE = '0' AND CP = '0') ELSE 
					Q_REG(2 DOWNTO 0) & Q_REG(3) WHEN ENA_DB = '1' AND CP = '1' AND OE = '1' ELSE 
					Q_REG;
					
	Q <= Q_REG WHEN OE = '1' AND CP = '1' ELSE 
	     (OTHERS => '0');
END BEHAVIORAL ;