LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY BTVN_SO57 IS
	PORT( CKHT : IN STD_LOGIC;
			BTN   : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			SSEG  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			ANODE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			LED   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END BTVN_SO57;

ARCHITECTURE THAN OF BTVN_SO57 IS
--SIGNAL ENA_SS : STD_LOGIC;
-------------------------------
SIGNAL RST    : STD_LOGIC;
SIGNAL BTN_MODE : STD_LOGIC;
------------
SIGNAL ENA_DB  :STD_LOGIC;
SIGNAL ENA1KHZ :STD_LOGIC;
SIGNAL ENA2 :STD_LOGIC;
SIGNAL ENA5 : STD_LOGIC;
SIGNAL ENA10 : STD_LOGIC;
---------------------------------
SIGNAL DONVI : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC  : STD_LOGIC_VECTOR(3 DOWNTO 0);

-----------------------------------------------
SIGNAL ENA_8LED : STD_LOGIC_VECTOR(7 DOWNTO 0) ;
SIGNAL DC_8LED  : STD_LOGIC_VECTOR(7 DOWNTO 0) ;
----------------------------------------------
SIGNAL OE : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL SEL_3B : STD_LOGIC_VECTOR(2 DOWNTO 0);
----------------------------------------
SIGNAL Q_STD_PST : STD_LOGIC_VECTOR(7 DOWNTO 0);
-------------------------------------
BEGIN
	RST    <= NOT BTN(0);
	BTN_MODE <= NOT BTN(1);
	--------------------
	LED <= Q_STD_PST;
	----------------------
	ENA_8LED <= X"03";
	DC_8LED  <= X"FF";
----------------------------
--   DONVI <= DV_1 OR DV_2 OR DV_3;
--	CHUC <= CH_1 OR CH_2 OR CH_3;
IC0: ENTITY WORK.DEM_3BIT_BTN
	PORT MAP ( CKHT => CKHT,
				  RST  => RST,
				  BTN  => BTN_MODE,
				  Q   => SEL_3B
				 ); 
IC0_1 : ENTITY WORK .GIAIMA_OE
  PORT MAP ( SEL_3B => SEL_3B,
             RST    => RST,
				 OE     => OE 
				);
--IC0_2: ENTITY WORK.DIEUKHIEN_CHOPHEP
--	PORT MAP ( CKHT   => CKHT,
--				  RST    => RST,
--				  ENA_DB => ENA_DB,
--				  OE     => OE
--				 );
---------------------------	
IC2: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA1KHZ => ENA1KHZ,
				  ENA5HZ => ENA5,
				  ENA2HZ => ENA2,
				  ENA10HZ => ENA10
			    );
IC2_1: ENTITY WORK.SELECT_TANSO
   PORT MAP (ENA5 => ENA5,
	          ENA2 => ENA2,
				 ENA10 => ENA10,
				 OE  => OE,
				 ENA_O => ENA_DB
				 );
IC3: ENTITY WORK.DEM_2SO
	PORT MAP (  CKHT => CKHT,
					RST => RST,
				   ENA_DB => ENA_DB,
				   UP_00_20 => OE(0),
				   UP_20_50 => OE(1),
					DW_50_00 => OE(4),
				   DONVI  => DONVI,
				   CHUC   => CHUC
				);


				
IC4: ENTITY WORK.LED_STD_PST_7
		PORT MAP( CKHT => CKHT,
					 RST  => RST,
				    ENA_DB  => ENA_DB,
					 OE     => '1',
				    ON_PST  => OE(2),-- SANG DAN PST
				    OFF_TSP => OE(3),-- TAT DAN TSP
					 Q      => Q_STD_PST
					);
--IC4 : ENTITY WORK.DK_8LED_2CT				
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