LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY BTVN_SO11 IS 
	PORT ( CKHT : IN STD_LOGIC;
	       SW0 : IN STD_LOGIC;
          BTN : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			 LED : OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0));
END BTVN_SO11;

ARCHITECTURE BEHAVIORAL OF BTVN_SO11 IS 
SIGNAL ENA_DB : STD_LOGIC;
SIGNAL ENA2HZ, ENA5HZ,ENA10HZ : STD_LOGIC;
SIGNAL ENA_MODE :STD_LOGIC;
------------------------
SIGNAL RST : STD_LOGIC;
SIGNAL BTN_MODE : STD_LOGIC;
SIGNAL BTN_CDLH : STD_LOGIC;
-------------------------
SIGNAL Q_SD_PST : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Q_SD_TSP : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Q_1DSDC_PST_TSP : STD_LOGIC_VECTOR  ( 3 DOWNTO 0 );
SIGNAL OE : STD_LOGIC_VECTOR( 2 DOWNTO 0 );

BEGIN 
	   LED(7 DOWNTO 6) <= Q_SD_TSP(5 DOWNTO 4);
		LED(1 DOWNTO 0) <= Q_SD_PST(1 DOWNTO 0);
		LED(5 DOWNTO 2) <= Q_SD_TSP(3 DOWNTO 0) OR Q_SD_PST(5 DOWNTO 2) OR Q_1DSDC_PST_TSP;
-----------------------------
      RST      <= NOT BTN(0);
		BTN_MODE <= NOT BTN(1);
-----------------------------
	   IC0 : ENTITY WORK.CD_LAM_HEP_BTN
      PORT MAP (CKHT => CKHT ,
                BTN =>  BTN_MODE,
                BTN_CDLH => BTN_CDLH );
					 
    
	   IC1: ENTITY WORK.DIEUKHIEN_MODE
		PORT MAP (  CKHT => CKHT,
						RST => RST,
					   MODE => BTN_CDLH,
						SW0 => SW0,
						ENA_DB => ENA_DB,
						OE => OE
						);
---------------------------------------------------------
		IC2 : ENTITY WORK.CHIA_10ENA
		PORT MAP ( CKHT => CKHT,
					  ENA2HZ => ENA2HZ,
					  ENA10HZ => ENA10HZ,
					  ENA5HZ  => ENA5HZ
					  );
      IC2_1 : ENTITY WORK.SELECT_TANSO
      PORT MAP (ENA2HZ => ENA2HZ,
		          ENA10HZ => ENA10HZ,
					 ENA5HZ  => ENA5HZ,
					 OE      => OE,
					 ENA_0 => ENA_DB
					 );
--------------------------------------					 
	   IC3 : ENTITY WORK.LED_SANGDON_PST 
		PORT MAP ( CKHT => CKHT,
						RST => RST,
						ENA_DB => ENA_DB, -- xung
						OE => OE(0),
						Q => Q_SD_PST
						);
						
	   IC4: ENTITY WORK.LED_SANGDON_TSP
		PORT MAP ( CKHT => CKHT,
					  RST => RST,
					  ENA_DB => ENA_DB,
					  OE => OE(1),
					  Q => Q_SD_TSP
					  );
						
	   IC5 : ENTITY WORK.DK_4LED_2CT_AU_1DSDC_PST_TSP
		PORT MAP ( CKHT => CKHT,
					  RST => RST,
					  ENA_DB => ENA_DB,
					  CP => OE(2),
					  Q => Q_1DSDC_PST_TSP
					  );
END BEHAVIORAL ;