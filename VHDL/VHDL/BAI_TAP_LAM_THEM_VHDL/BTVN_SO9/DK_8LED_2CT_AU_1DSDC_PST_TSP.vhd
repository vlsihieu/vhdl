LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DK_8LED_2CT_AU_1DSDC_PST_TSP IS
		PORT ( CKHT : IN STD_LOGIC;
         	 RST : IN STD_LOGIC ;
				 CP  : IN STD_LOGIC ; -- CP LA OE
 				 ENA_DB : IN STD_LOGIC;
				 Q: OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0 ));
END DK_8LED_2CT_AU_1DSDC_PST_TSP;

ARCHITECTURE BEHAVIORAL OF DK_8LED_2CT_AU_1DSDC_PST_TSP IS
--------------------------------------------------------------
SIGNAL Q_DSDC_PST, Q_DSDC_TSP : STD_LOGIC_VECTOR ( 7 DOWNTO 0);
SIGNAL OE : STD_LOGIC_VECTOR ( 1 DOWNTO 0);
--------------------------------------------------------------
BEGIN 
	
			
   IC0 : ENTITY WORK.LED_DSDC_PST
	PORT MAP ( CKHT => CKHT,
					RST => RST ,
					ENA_DB => ENA_DB,
					OE => OE(0),
					CP => CP,
					Q => Q_DSDC_PST);
					
   IC1: ENTITY WORK.LED_DSDC_TSP 
	PORT MAP ( CKHT => CKHT,
					RST => RST,
					ENA_DB => ENA_DB,
					OE => OE(1),
					CP => CP,
					Q => Q_DSDC_TSP);
					
      IC2: ENTITY WORK.DIEUKHIEN_CHOPHEP 
		PORT MAP ( CKHT => CKHT,
						RST => RST,
						CP => CP,
						ENA_DB => ENA_DB,
						OE => OE);
						
Q <= Q_DSDC_PST OR Q_DSDC_TSP WHEN CP = '1' ELSE
		(OTHERS => '0');
END BEHAVIORAL;