--Cho m?ch d?m v?i do nhi?t d?
--M?ch d?m hi?n th? bên trái, do nhi?t d? hi?n th? bên ph?i. 
--Khi d?m < t0 thì d?m ch? l?n. d?m >= t0 thì d?m ch? nh?, nhi?t d? ch? l?n.
--Có ena_ss cho phép d?m. 
--Ena_ss =0 thì s? nh? h?t
--Hi?n th? mssv trên led 7 do?n. 
--Ðang d?n thì 4 led don ch?p t?t v?i chu k? 2hz
--Ð?m thì theo xung 5hz
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY DEM_T0_SOTO_SONHO IS 
	PORT ( CKHT : IN STD_LOGIC;
			 BTN  : IN STD_LOGIC_VECTOR ( 1 DOWNTO 0);
			 LED : OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0);
			 DS18B20: INOUT STD_LOGIC;
			 sseg  : OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0);
			 anode : OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0);
			 LCD_E: OUT STD_LOGIC;
			 LCD_RS: OUT STD_LOGIC;
--			 LCD_RW: OUT STD_LOGIC;
			 LCD_DB: OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0)
			 );
END DEM_T0_SOTO_SONHO ;
ARCHITECTURE PMH OF DEM_T0_SOTO_SONHO IS 
-- XUNG
SIGNAL ENA2hz: STD_LOGIC;
SIGNAL ENA5hz : STD_LOGIC;
SIGNAL ENA1KHZ : STD_LOGIC;
-- DO NHIET DO 
SIGNAL DS_PRESENT : 			STD_LOGIC;
SIGNAL DONVI_ND, CHUC_ND, TRAM_ND : STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL LED0, LED1, LED2 : 	STD_LOGIC_VECTOR( 3 DOWNTO 0); 
SIGNAL NHIETDO : 				STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL TEMPERATURE :  		STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL LCD_DONVI_ND 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL LCD_CHUC_ND	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL LCD_TRAM_ND	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
------------------------------------------
SIGNAL DC_8LED : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : STD_LOGIC_VECTOR ( 7 DOWNTO 0);
---------------------------------------------------
-- NUT NHAN 
signal btn_ss :  std_logic;
signal rst    :  std_logic;
signal ena    :  std_logic;
signal ena_ss :  std_logic;
---- BO DEM
signal dem : std_logic_vector(5 downto 0);
signal donvi :  std_logic_vector(3 downto 0);
signal chuc  :  std_logic_vector(3 downto 0);
SIGNAL LCD_MA_DONVI 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL LCD_MA_CHUC	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
--------------------
SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);
------------------
SIGNAL MSSV: STD_LOGIC_VECTOR (31 downto 0);
signal Q_LED : STD_LOGIC_VECTOR (3 downto 0);
-- -------------------------------------------------------------
BEGIN
   btn_ss <= NOT BTN(1);
	RST    <= NOT BTN(0);
	--------------------
	DC_8LED <= X"FF";
	--------------------
	NHIETDO 	<= TEMPERATURE(11 DOWNTO 4);
	LED(3 downto 0) <= TEMPERATURE( 3 DOWNTO 0);
-----------------------------------------------
ic0: ENTITY WORK.CHIA_10ENA	
	PORT MAP ( CKHT =>CKHT,
				  ENA5HZ => ena5hz,
				  ENA2HZ => ena2hz,
				  ena1khz => ena1khz
				  );
--------------------------------------------
IC1: ENTITY WORK.DS18B20_TEMPERATURE
		PORT MAP(	CKHT	=> CKHT,
						RST			=> RST,
						DS18B20		=> DS18B20,
						DS_PRESENT	=> DS_PRESENT,
						TEMPERATURE	=> TEMPERATURE);
						
		PROCESS(DS_PRESENT, DONVI_ND, CHUC_ND, TRAM_ND)
		BEGIN
			IF DS_PRESENT = '0' THEN	LED0	<= DONVI_ND;
												LED1	<= CHUC_ND;
												LED2	<= TRAM_ND;
			ELSE								LED0	<= X"E";
												LED1	<= X"E";
												LED2	<= X"E";
			END IF;
		END PROCESS;
IC34: ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP(	SOHEX8BIT	=> NHIETDO,
						DONVI			=> DONVI_ND,
						CHUC			=> CHUC_ND,
						TRAM			=> TRAM_ND
						);
						
IC14 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> LED0, -- donvi
						LCD_MA_TO	   => LCD_DONVI_ND
						);
IC19 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> LED1,-- chuc
						LCD_MA_TO   	=> LCD_CHUC_ND
						);
IC194 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> LED2,-- tram
						LCD_MA_TO   	=> LCD_TRAM_ND
						);	
----------------------------------------------------
ic4 : ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => btn_ss,
				  BTN_CDLH => ena
				 );
ic5: ENTITY WORK.dem_1bit
	PORT MAP ( CKHT => CKHT,
	           RST  => RST,
				  ena_db => ena,
				  q => ENA_SS
				 );
-----------------------------------------------------------
ic9: ENTITY WORK.DEM_00_50
	PORT MAP (CKHT => CKHT,
				 RST => RST,
				 ENA_DB => ena5hz,
				 ena_ss => ena_ss,
				 Q => DEM
				 );
ic10: ENTITY WORK.HEXTOBCD_6BIT
	PORT MAP ( SOHEX6BIT => DEM,
				  DONVI => DONVI,
				  CHUC => CHUC
				 );
IC191 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> CHUC,
						LCD_MA_TO   	=> LCD_MA_CHUC
						);
IC196 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> DONVI,
						LCD_MA_TO   	=> LCD_MA_DONVI
						);	
-----------------------------------------------------------------
IC29 : ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP(	---- so dem
		            LCD_MA_DONVI	=> LCD_MA_DONVI,
		            LCD_MA_CHUC	   => LCD_MA_CHUC,
						donvi       => donvi,
						chuc        => chuc,
						------ nhiet do
		            LCD_DONVI_ND	=> LCD_DONVI_ND,
		            LCD_CHUC_ND	   => LCD_CHUC_ND,
						LCD_TRAM_ND    => LCD_TRAM_ND,
                  ---------------------------
                  dem        => dem,
                  nhietdo    => nhietdo,
						ena_ss     => ena_ss,
                  ---------------------------------						
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
-------------khoi led -----------------------------------				
ic932: ENTITY WORK.xu_ly_choptat
	PORT MAP ( CKHT => CKHT,
				  ENA_SS => ENA_SS,
				  ena_db => ena2hz,
				  Q => Q_LED
				 );
ic90: ENTITY WORK.DIEUKHIEN_LED_3S
	PORT MAP ( NHIETDO => NHIETDO,
				  DEM => DEM,
				  Q_LED => Q_LED,
				  LED => LED(7 DOWNTO 4)
				 );
---------- dich ma so sinh vien ---------------------------
IC2:	ENTITY WORK.DICH
	PORT MAP (	CKHT		=>	CKHT,
					RST		=>	RST,
					ENA_DB 	=> ENA2HZ,
					ENA_8LED  => ENA_8LED ,
					MSSV      => MSSV
				);
-------------------------------------------------------------
IC3: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> MSSV(3 DOWNTO 0),
						LED71		=> MSSV(7 DOWNTO 4),
						LED72		=> MSSV(11 DOWNTO 8),
						LED73		=> MSSV(15 DOWNTO 12),
						LED74		=> MSSV(19 DOWNTO 16),
						LED75		=> MSSV(23 DOWNTO 20),
						LED76		=> MSSV(27 DOWNTO 24),
						LED77		=> MSSV(31 DOWNTO 28),
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED
						);			
END PMH;