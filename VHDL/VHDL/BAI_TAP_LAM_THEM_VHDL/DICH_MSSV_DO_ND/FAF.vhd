
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY DICH_MSSV_DO_ND IS 
	PORT ( CKHT : IN STD_LOGIC;
			 BTN: IN STD_LOGIC_VECTOR ( 1 DOWNTO 0);
			 LED: OUT STD_LOGIC_VECTOR ( 3 DOWNTO 0);
			 DS18B20: INOUT STD_LOGIC;
			 LCD_E: OUT STD_LOGIC;
			 LCD_RS: OUT STD_LOGIC;
			 LCD_P : OUT STD_LOGIC;
			 LCD_DB: OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0)
			 );
END DICH_MSSV_DO_ND;
ARCHITECTURE PMH OF DICH_MSSV_DO_ND IS 
-- NHIET DO  <----------------------------------
SIGNAL DS_PRESENT : 			STD_LOGIC;
SIGNAL LED0, LED1, LED2 : 	STD_LOGIC_VECTOR( 3 DOWNTO 0); -- LED SSEG
SIGNAL NHIETDO : 				STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL TEMPERATURE :  		STD_LOGIC_VECTOR(11 DOWNTO 0);
-- NUT NHAN <-----------------------------------
SIGNAL btn_mod : STD_LOGIC;
SIGNAL BTN_CDLH: STD_LOGIC;
signal RST: STD_LOGIC;
--LCD <--------------------------------
SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);
------
SIGNAL LCD_MA_DONVI 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL DONVI			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LCD_MA_CHUC	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL CHUC			   :	STD_LOGIC_VECTOR(3 DOWNTO 0);
--SIGNAL LCD_MA_TRAM	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL TRAM			   :	STD_LOGIC_VECTOR(3 DOWNTO 0);
--XUNG <-----------------------------------------------
SIGNAL ENA_DB : STD_LOGIC;
-- TIN HIEU DK <------------------------------------
SIGNAL OE: STD_LOGIC_VECTOR ( 3 DOWNTO 0);
signal sel_3b : std_logic_vector(2 downto 0);
------------------------------------------
--signal hoten : std_logic_vector(12 downto 0);
--signal mssv  : std_logic_vector(7 downto 0);
begin
	RST 		<=  BTN(0);
	BTN_MOD  <=  BTN(1);
	LCD_P <= '1';
	NHIETDO 	<= TEMPERATURE(11 DOWNTO 4);
	LED 		<= TEMPERATURE( 3 DOWNTO 0);
-------> KHOI CHIA XUNG <--------------------
IC0: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA1HZ => ENA_DB
				  );
---------> XU LY MOD <---------------------------
IC1: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => BTN_MOD,
				  BTN_CDLH => BTN_CDLH
				 );
ic10 : entity work.dem_3bit
   port map (ckht => ckht,
	          ena_db => btn_cdlh,
				 rst    => rst,
				 q      => sel_3b
				 );
IC2: ENTITY WORK.DIEUKHIEN_MODE
	PORT MAP ( 
				  sel_3b => sel_3b,
				  rst => rst,
				  OE => OE
				  );
-------------> DO NHIET DO <--------------------------
IC3: ENTITY WORK.DS18B20_TEMPERATURE
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
IC4: ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP(	SOHEX8BIT	=> NHIETDO,
						DONVI			=> DONVI,
						CHUC			=> CHUC,
						TRAM			=> TRAM
					);

IC14 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> LED0,
						LCD_MA_TO	   => LCD_MA_DONVI
						);
IC19 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> LED1,
						LCD_MA_TO   	=> LCD_MA_CHUC
						);
--lcd_ma_tr <= X"20"&X"20"&X"20"&X"20"&X"20"&X"20" WHEN (lcd_ma_tram = X"00"&X"01"&X"02"&X"04"&X"03"&X"05") else
--             lcd_ma_tram;
---------------------------------------------------------------------------------------
IC6 : ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP(	LCD_MA_DONVI	=> LCD_MA_DONVI,
		            LCD_MA_CHUC	   => LCD_MA_CHUC,
--						LCD_MA_TRAM    => LCD_MA_TRAM,
						--------------------------
						OE          => OE,
						ENA_DB      => ENA_DB,
--						MSSV        => MSSV,
--						hoten       => hoten,
						--------------------------
						H1_17       => LED2,-- TRAM
						H1_18       => LED1,-- CHUC
						H1_19       => LED0,-- CHUC
						-----------------------
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4
					);
IC7 : ENTITY WORK.LCD_KHOITAO_HIENTHI_SO_TO
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
	
END PMH;	