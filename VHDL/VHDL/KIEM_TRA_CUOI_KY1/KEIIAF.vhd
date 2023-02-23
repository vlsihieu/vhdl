
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY KIEM_TRA_CUOI_KY1 IS 
	PORT ( CKHT : IN STD_LOGIC;
			 BTN  : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			 SW   : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			 LED  : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
			 LCD_E: OUT STD_LOGIC;
			 LCD_RS: OUT STD_LOGIC;
			 LCD_p: OUT STD_LOGIC;
			 DS18B20 : inout  STD_LOGIC;
			 LCD_DB: OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0);
			 ANODE : OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0);
			 SSEG  : OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0)
			);
END KIEM_TRA_CUOI_KY1;
ARCHITECTURE PMH OF KIEM_TRA_CUOI_KY1 IS 
SIGNAL ENA_DB1: STD_LOGIC;
SIGNAL ENA_DB2: STD_LOGIC;
SIGNAL ENA10HZ : STD_LOGIC;
SIGNAL ENA2HZ : STD_LOGIC;
SIGNAL ENA5HZ : STD_LOGIC;
SIGNAL ENA1KHZ : STD_LOGIC;
--SIGNAL ENA1KHZ : STD_LOGIC;
--------------------------------------------------
SIGNAL DONVI0,CHUC0: STD_LOGIC_VECTOR ( 3 DOWNTO 0);
SIGNAL DONVI1,CHUC1: STD_LOGIC_VECTOR ( 3 DOWNTO 0);
--------------------------------------------------
SIGNAL RST : STD_LOGIC;
SIGNAL BTN_SS1,ENA_SS1 : STD_LOGIC;
SIGNAL BTN_SS2,ENA_SS2 : STD_LOGIC;
SIGNAL BTN_UD1,ENA_UD1 : STD_LOGIC;
SIGNAL BTN_UD2,ENA_UD2 : STD_LOGIC;
SIGNAL ENA0,ENA1,ENA2,ENA3 : STD_LOGIC;
---------------------------------------------------
SIGNAL DC_8LED : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : STD_LOGIC_VECTOR ( 7 DOWNTO 0);
------------------------------------------------------
SIGNAL LCD_H1 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 :	STD_LOGIC_VECTOR(159 DOWNTO 0);

SIGNAL LCD_MA_DONVI0 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL LCD_MA_CHUC0	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL LCD_MA_DONVI1 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL LCD_MA_CHUC1	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
-------------
SIGNAL DS_PRESENT : 			STD_LOGIC;
SIGNAL DONVI, CHUC, TRAM : STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL LED0, LED1, LED2 : 	STD_LOGIC_VECTOR( 3 DOWNTO 0); -- LED SSEG
SIGNAL NHIETDO : 				STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL TEMPERATURE :  		STD_LOGIC_VECTOR(11 DOWNTO 0);
---------------
SIGNAL OE : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Q_STD_TSP : STD_LOGIC_VECTOR( 11 DOWNTO 0);
SIGNAL Q_STD_PST : STD_LOGIC_VECTOR( 11 DOWNTO 0);
------
BEGIN
	RST <=  BTN(0);
	BTN_SS1 <=  BTN(1);
	BTN_UD1 <=  BTN(2);
	--
	BTN_SS2 <=  BTN(3);
	BTN_UD2 <=  BTN(4);
	-- 
	lcd_p <= '1';
	DC_8LED 		<= X"FF";
--	ENA_8LED 	<= "00001100"; 
	NHIETDO 	<= TEMPERATURE(11 DOWNTO 4);
	LED(3 DOWNTO 0) 		<= TEMPERATURE( 3 DOWNTO 0);
	LED(15 DOWNTO 4) <= Q_STD_PST OR Q_STD_TSP ;
-------------------------
L1: ENTITY WORK.LED_STD_PST
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA5HZ,
						RST		=> RST,
						OE			=> OE(0),
						Q			=> Q_STD_PST);
						
L2: ENTITY WORK.LED_STD_TSP
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA5HZ,
						RST		=> RST,
						OE			=> OE(1),
						Q			=> Q_STD_TSP);
OE <= "01" WHEN (DONVI0  < LED1 AND CHUC0 < LED2 ) ELSE
      "10" WHEN (DONVI0 >= LED1 AND CHUC0 >= LED2) ELSE
		"00";
---------------------------
	IC1: ENTITY WORK.DS18B20_TEMPERATURE
		PORT MAP(	CKHT	=> CKHT,
						RST			=> RST,
						DS18B20		=> DS18B20,
						DS_PRESENT	=> DS_PRESENT,
						TEMPERATURE	=> TEMPERATURE);
						
		PROCESS(DS_PRESENT, DONVI, CHUC, TRAM)
		BEGIN
			IF DS_PRESENT = '0' THEN	LED0	<= DONVI;
												LED1	<= CHUC;
												LED2	<= TRAM;
			ELSE								LED0	<= X"E";
												LED1	<= X"E";
												LED2	<= X"E";
			END IF;
		END PROCESS;
		ENA_8LED		<= "00001100" WHEN LED2 = X"0" ELSE
							"00011100";
ND0: ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP(	SOHEX8BIT	=> NHIETDO,
						DONVI			=> DONVI,
						CHUC			=> CHUC,
						TRAM			=> TRAM);
ND2: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> X"f",
						LED71		=> X"F", 
						LED72		=> LED0, 
						LED73		=> LED1, 
						LED74		=> LED2, 
						LED75		=> X"F", 
						LED76		=> X"F",
						LED77		=> X"F",
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED,
						ENA_8LED	=> ENA_8LED
						);
-------------------------
IC0: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA10HZ => ENA10HZ, 
				  ENA5HZ =>ENA5HZ,
				  ENA2HZ => ENA2HZ,
				  ENA1KHZ => ENA1KHZ
				 );
ENA_DB1 <= ENA2HZ WHEN (SW(0) = '1') ELSE
           ENA5HZ;-- MACH DEM 1
ENA_DB2 <= ENA5HZ WHEN (SW(1) = '1') ELSE
           ENA10HZ;-- MACH DEM 2
-- NUT NHAN -------------------
m10: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => btn_ss1,
				  BTN_CDLH => ena0
				 );
m11 : entity work.dem_1bit
   port map (ckht => ckht,
	          ena_db => ena0,
				 rst    => rst,
				 q      => ena_ss1
				 );-- mach 1
m12: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => btn_ud1,
				  BTN_CDLH => ena1
				 );
m13 : entity work.dem_1bit
   port map (ckht => ckht,
	          ena_db => ena1,
				 rst    => rst,
				 q      => ena_ud1
				 );-- mach 1
-----
m20: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => btn_ss2,
				  BTN_CDLH => ena2
				 );
m21 : entity work.dem_1bit
   port map (ckht => ckht,
	          ena_db => ena2,
				 rst    => rst,
				 q      => ena_ss2
				 );-- mach 2
m22: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => btn_ud2,
				  BTN_CDLH => ena3
				 );
m23 : entity work.dem_1bit
   port map (ckht => ckht,
	          ena_db => ena3,
				 rst    => rst,
				 q      => ena_ud2
				 );-- mach 2
---------------------------
GH0 : ENTITY WORK.DEM_GH_AB
   PORT MAP (CKHT => CKHT,
	          RST  => RST,
				 ENA_SS1 => ENA_SS1,
				 ENA_UD1 => ENA_UD1,
				 ENA_DB1 => ENA_DB1,
				 DONVI  => DONVI0,
				 CHUC   => CHUC0
				 );
GM0 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> DONVI0,
						LCD_MA_TO	   => LCD_MA_DONVI0
						);
GM1 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> CHUC0,
						LCD_MA_TO	   => LCD_MA_CHUC0
						);
GH1 : ENTITY WORK.DEM_GH_CD
   PORT MAP (CKHT => CKHT,
	          RST  => RST,
				 ENA_SS2 => ENA_SS2,
				 ENA_UD2 => ENA_UD2,
				 ENA_DB2 => ENA_DB2,
				 DONVI  => DONVI1,
				 CHUC   => CHUC1
				 );
GM2 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> DONVI1,
						LCD_MA_TO	   => LCD_MA_DONVI1
						);
GM3 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> CHUC1,
						LCD_MA_TO	   => LCD_MA_CHUC1
						);
--------------------------------------

IC29 : ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP(	LCD_MA_DONVI0	=> LCD_MA_DONVI0,
		            LCD_MA_CHUC0	   => LCD_MA_CHUC0,
						LCD_MA_DONVI1	=> LCD_MA_DONVI1,
		            LCD_MA_CHUC1	   => LCD_MA_CHUC1,
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4
						);
IC36 : ENTITY WORK.LCD_KHOITAO_HIENTHI_SO_TO
		PORT MAP(	LCD_DB		=> LCD_DB,
						LCD_RS		=> LCD_RS,
						LCD_E			=> LCD_E,
						LCD_RST		=> RST,
						LCD_CK		=> CKHT,
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4
					);
-----LED 7 DOAN------------------------
--IC35 : ENTITY WORK.DEM_2SO_7DOAN
--		PORT MAP(	CKHT		=> CKHT,
--						RST		=> RST,
--						ENA_DB	=> ENA_DB,
--						DV_GH    => DV_GH,
--						CH_GH    => CH_GH,
--						DONVI		=> DONVI1,
--						CHUC		=> CHUC1
--						);
						
END PMH;
