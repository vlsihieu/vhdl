LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY LED_STD_TSP IS
	PORT( CKHT, RST, OE, ENA_DB: IN STD_LOGIC;
			Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END LED_STD_TSP;
ARCHITECTURE BEHAVIORAL OF LED_STD_TSP IS
SIGNAL Q_REG, Q_NEXT: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	PROCESS(CKHT, RST)
	BEGIN
		IF RST = '1' THEN Q_REG <= (OTHERS => '0');
		ELSIF FALLING_EDGE(CKHT) THEN Q_REG <= Q_NEXT;
		END IF;
	END PROCESS;
	Q_NEXT <= (OTHERS => '0') 						 WHEN OE = '0' ELSE
				 NOT Q_REG(0) & Q_REG(7 DOWNTO 1) WHEN ENA_DB = '1' ELSE
				 Q_REG;
	Q <= Q_REG WHEN OE = '1' ELSE (OTHERS => '0');
END BEHAVIORAL;