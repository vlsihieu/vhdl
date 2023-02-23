LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--warning :dk khien mode rat quan trong lien quan oe
ENTITY DIEUKHIEN_CHOPHEP IS
	PORT ( CKHT:  IN STD_LOGIC;
          RST : IN STD_LOGIC;
			 ENA_DB : IN STD_LOGIC;
 			 CP : IN STD_LOGIC;
			 OE: OUT STD_LOGIC_VECTOR ( 1 DOWNTO 0));
END DIEUKHIEN_CHOPHEP ;

ARCHITECTURE BEHAVIORAL OF DIEUKHIEN_CHOPHEP IS
SIGNAL DEM_REG, DEM_NEXT : INTEGER  RANGE 0 TO 7 := 0 ;
BEGIN
	PROCESS( CKHT, RST)
	BEGIN	
		IF (RST = '1' ) THEN DEM_REG <= 0 ;
		ELSIF FALLING_EDGE(CKHT) THEN DEM_REG <= DEM_NEXT ;
		END IF ;
	END PROCESS ;
	
	
	DEM_NEXT <= 0           WHEN DEM_REG = 7 AND ENA_DB = '1' AND CP = '1' ELSE 
					DEM_REG +1  WHEN ENA_DB = '1' AND CP = '1' ELSE 
					DEM_REG ;
					
	PROCESS (DEM_REG, RST )
	BEGIN 
		OE <= "00" ; -- KHONG CHUONG TRINH NAO DUOC CHON
		IF RST = '1'       THEN OE <= "00" ; 
		ELSIF DEM_REG < 4  THEN OE <= "01" ;-- CHUONG TRINH OE[0]=1 DUOC CHAY
		ELSIF DEM_REG < 8 THEN OE <= "10" ;-- CHUONG TRINH OE[1]=1 DUOC CHAY
		END IF ;
	END PROCESS ;
END BEHAVIORAL;