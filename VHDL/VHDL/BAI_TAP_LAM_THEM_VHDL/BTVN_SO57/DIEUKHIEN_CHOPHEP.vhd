library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DIEUKHIEN_CHOPHEP is
    Port ( CKHT,RST 	: in  STD_LOGIC;
           ENA_DB 	: in  STD_LOGIC;
			  ENA_SS    : IN STD_LOGIC;
           OE 			: out  STD_LOGIC_VECTOR(3 DOWNTO 0));
end DIEUKHIEN_CHOPHEP;

architecture Behavioral of DIEUKHIEN_CHOPHEP is
SIGNAL DEM_REG,DEM_NEXT : INTEGER RANGE 0 TO 55:=0;
begin
  PROCESS(CKHT,RST)
  BEGIN
    IF RST='1' 					THEN DEM_REG <=0;
	 ELSIF FALLING_EDGE (CKHT) THEN DEM_REG <= DEM_NEXT;
	 END IF;
  END PROCESS;
  DEM_NEXT <= 0 WHEN DEM_REG=55 AND ENA_DB='1' AND ENA_SS = '1' ELSE
             DEM_REG +1 WHEN ENA_DB='1' AND ENA_SS = '1' ELSE
				 DEM_REG;
  PROCESS(DEM_REG,RST)
  BEGIN
		OE<= "0000";
		IF RST='1' THEN OE <= "0000";
		ELSIF DEM_REG<20 THEN OE <="0001";
		ELSIF DEM_REG<28 THEN OE <="0010";
		ELSIF DEM_REG<48 THEN OE <="0100";
		ELSIF DEM_REG<56 THEN OE <="1000";
		END IF;
	END PROCESS;
end Behavioral;