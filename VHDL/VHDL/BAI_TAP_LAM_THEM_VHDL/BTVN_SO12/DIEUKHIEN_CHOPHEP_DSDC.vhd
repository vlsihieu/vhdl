library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DIEUKHIEN_CHOPHEP_DSDC is
    Port ( CKHT,RST,CP 	: in  STD_LOGIC;
           ENA_DB 	: in  STD_LOGIC;
           OE 			: out  STD_LOGIC_VECTOR (1 downto 0));
end DIEUKHIEN_CHOPHEP_DSDC;

architecture Behavioral of DIEUKHIEN_CHOPHEP_DSDC is
SIGNAL DEM_REG,DEM_NEXT : INTEGER RANGE 0 TO 15:=0;
begin
  PROCESS(CKHT,RST)
  BEGIN
    IF RST='1' 					THEN DEM_REG <=0;
	 ELSIF FALLING_EDGE (CKHT) THEN DEM_REG <= DEM_NEXT;
	 END IF;
  END PROCESS;
  DEM_NEXT <= 0 WHEN CP = '0' ELSE
				  0 WHEN DEM_REG = 15 AND ENA_DB='1' ELSE
              DEM_REG +1 WHEN ENA_DB='1' ELSE
				  DEM_REG;
  PROCESS(DEM_REG,RST)
  BEGIN
		OE<="00";
		IF RST='1'       THEN OE <="00";
		ELSIF DEM_REG<8  THEN OE <="01";
		ELSIF DEM_REG<16 THEN OE <="10";
		END IF;
	END PROCESS;
end Behavioral;