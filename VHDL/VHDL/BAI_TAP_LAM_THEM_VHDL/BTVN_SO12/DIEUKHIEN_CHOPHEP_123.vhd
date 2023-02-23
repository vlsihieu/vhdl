LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DIEUKHIEN_CHOPHEP_123 IS
PORT (CKHT,RST,ENA_DB,MODE :IN STD_LOGIC;
		OE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END DIEUKHIEN_CHOPHEP_123;

ARCHITECTURE THAN OF DIEUKHIEN_CHOPHEP_123 IS
SIGNAL DEM_REG, DEM_NEXT: INTEGER RANGE 0 TO 28 := 0;
BEGIN
PROCESS(CKHT,RST)
BEGIN
	IF RST='1'   THEN DEM_REG <= 0;
	ELSIF FALLING_EDGE(CKHT) THEN DEM_REG<=DEM_NEXT;
	END IF;
END PROCESS;

    DEM_NEXT <= 0 WHEN MODE = '0' ELSE
					 0     WHEN DEM_REG = 28 AND ENA_DB ='1' ELSE
			   DEM_REG + 1 WHEN ENA_DB = '1' ELSE
				DEM_REG;
				
PROCESS (DEM_REG,RST)
BEGIN
		OE<="000";
		IF(RST='1') THEN OE<="000";
		ELSIF DEM_REG = 0 THEN  OE <= "000";
		ELSIF DEM_REG <7  THEN OE <= "001";
		ELSIF DEM_REG <13 THEN OE <= "010";
		ELSIF DEM_REG <29 THEN OE <= "100";
		END IF;
END PROCESS;
END THAN;