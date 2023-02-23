LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY BTVN_SO56 IS
	PORT( CKHT : IN STD_LOGIC;
			BTN   : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			SSEG  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			ANODE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			LED   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END BTVN_SO56;

ARCHITECTURE THAN OF BTVN_SO56 IS
SIGNAL ENA_SS : STD_LOGIC;
-------------------------------
SIGNAL RST    : STD_LOGIC;
SIGNAL BTN_SS : STD_LOGIC;
------------
SIGNAL ENA_DB  :STD_LOGIC;
SIGNAL ENA1KHZ :STD_LOGIC;
SIGNAL ENA2 :STD_LOGIC;
SIGNAL ENA5 : STD_LOGIC;
---------------------------------
SIGNAL DONVI : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC  : STD_LOGIC_VECTOR(3 DOWNTO 0);
-----------------------------------------------
SIGNAL ENA_8LED : STD_LOGIC_VECTOR(7 DOWNTO 0) ;
SIGNAL DC_8LED  : STD_LOGIC_VECTOR(7 DOWNTO 0) ;
----------------------------------------------
SIGNAL OE : STD_LOGIC_VECTOR(3 DOWNTO 0);
----------------------------------------
SIGNAL Q_STD_PST : STD_LOGIC_VECTOR(7 DOWNTO 0);
-------------------------------------
BEGIN
	RST    <= NOT BTN(0);
	BTN_SS <= NOT BTN(1);
	--------------------
	LED <= Q_STD_PST;
	----------------------
--	ENA_DB <= ENA2 WHEN OE(0) = '1' OR OE(1) = '1' ELSE
--				 ENA5 WHEN OE(2) = '1' OR OE(3) = '1' ELSE
--				 '0';
	ENA_8LED <= X"03";
	DC_8LED  <= X"FF";
IC0: ENTITY WORK.DEM_1BIT_BTN
	PORT MAP ( CKHT => CKHT,
				  RST  => RST,
				  BTN  => BTN_SS,
				  Q   => ENA_SS -- START / STOP
				 ); 
IC1: ENTITY WORK.DIEUKHIEN_CHOPHEP
	PORT MAP ( CKHT   => CKHT,
				  RST    => RST,
				  ENA_SS => ENA_SS,
				  ENA_DB => ENA_DB,
				  OE     => OE
				 );
---------------------------	
IC2: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA1KHZ => ENA1KHZ,
				  ENA5HZ => ENA5,
				  ENA2HZ => ENA2
			    );
IC2_1: ENTITY WORK.SELECT_TANSO
   PORT MAP (ENA5 => ENA5,
	          ENA2 => ENA2,
				 OE  => OE,
				 ENA_O => ENA_DB
				 );
IC3: ENTITY WORK.DEM_2SO
	PORT MAP (  CKHT => CKHT,
					RST => RST,
				   ENA_DB => ENA_DB,
				   ENA_SS => ENA_SS, -- START/ STOP
				   ENA_UP => OE(0),-- CHO PHEP DEM LEN
				   ENA_DW => OE(2),-- CHO PHEP DEM XUONG
				   DONVI  => DONVI,
				   CHUC   => CHUC);
				
IC4: ENTITY WORK.LED_STD_PST_A
		PORT MAP( CKHT => CKHT,
					 RST  => RST,
				    ENA_DB  => ENA_DB,
				    ON_PST  => OE(1),-- SANG DAN PST
				    OFF_TSP => OE(3),-- TAT DAN TSP
			       ENA_SS => ENA_SS,
					 Q      => Q_STD_PST
					);
				
IC5: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DONVI,
						LED71		=> CHUC, -- CHINH SUA
						LED72		=> X"F", -- CHINH SUA
						LED73		=> X"F", -- CHINH SUA
						LED74		=> X"F", -- CHINH SUA
						LED75		=> X"F", -- CHINH SUA
						LED76		=> X"F", -- CHINH SUA
						LED77		=> X"F", -- CHINH SUA
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);
				  
END THAN;