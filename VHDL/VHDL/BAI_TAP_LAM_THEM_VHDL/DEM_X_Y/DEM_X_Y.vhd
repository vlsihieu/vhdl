
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DEM_X_Y IS 
	PORT ( CKHT : IN STD_LOGIC;
			 BTN  : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 LED  : OUT STD_LOGIC_VECTOR  ( 7 DOWNTO 0);
			 DS18B20: INOUT STD_LOGIC;
			 LCD_E: OUT STD_LOGIC;
			 LCD_RS: OUT STD_LOGIC;
			 LCD_P: OUT STD_LOGIC;
			 LCD_DB: OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0)
			 );
END DEM_X_Y;
ARCHITECTURE PMH OF DEM_X_Y IS 
-- XUNG TAC DONG 
SIGNAL ENA_DB: STD_LOGIC;
signal ena5hz : STD_LOGIC;
signal ena2hz : STD_LOGIC;

---------------------------------------------------
SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);


SIGNAL LCD_MA_DONVI_ND 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL DONVI_ND			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LCD_MA_CHUC_ND	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL CHUC_ND		      :	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LCD_MA_TRAM_ND	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL TRAM_ND		      :	STD_LOGIC_VECTOR(3 DOWNTO 0);

SIGNAL LCD_MA_CHUC	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL CHUC		      :	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LCD_MA_DONVI	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL DONVI	      :	STD_LOGIC_VECTOR(3 DOWNTO 0);


-- DO NHIET DO --------------------------------------------
SIGNAL DS_PRESENT : 			STD_LOGIC;
SIGNAL LED0, LED1, LED2 : 	STD_LOGIC_VECTOR( 3 DOWNTO 0); -- LED SSEG
SIGNAL NHIETDO : 				STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL TEMPERATURE :  		STD_LOGIC_VECTOR(11 DOWNTO 0);

--NUT NHAN --------------------------------------------------
SIGNAL rst     : STD_LOGIC;
signal btn_ss  : STD_LOGIC;
signal btn_sel : STD_LOGIC;
signal ena_ss : STD_LOGIC;
signal ena_sel: STD_LOGIC;
signal btn_cdlh0: std_logic;
signal btn_cdlh1: std_logic;
-- MACH DEM CHU KY 
SIGNAL CHUKY: STD_LOGIC;
signal ena : std_logic;
signal dem : std_logic_vector(5 downto 0);
--------------------------------
BEGIN
	RST     <=  BTN(0);
	btn_ss  <=  BTN(1);
	btn_sel <=  BTN(2);
	NHIETDO          <= TEMPERATURE (11 DOWNTO 4);
	LED(3 DOWNTO 0)  <= TEMPERATURE ( 3 DOWNTO 0);
	LED(4) <= CHUKY;
	LCD_P <= '1';
------------- khoi chia xung
ic00: ENTITY WORK.CHIA_10ENA	
	PORT MAP ( CKHT =>CKHT,
				  ena5hz => ena5hz,
				  ena2hz => ena2hz
				 );
ena_db <= ena2hz when (ena_sel = '1') else
          ena5hz;
--------Khoi nut nhan
ic0: ENTITY WORK.CD_LAM_HEP_BTN 
	PORT MAP ( CKHT => CKHT,
					BTN => btn_ss,
					BTN_CDLH => btn_cdlh0
				 );
ic1: ENTITY WORK.DEM_1BIT
	PORT MAP ( CKHT   => CKHT,
				  ENA_DB => btn_cdlh0,
				  rst    => rst,
				  q      => ena_ss
				 );
ic2: ENTITY WORK.CD_LAM_HEP_BTN 
	PORT MAP ( CKHT => CKHT,
					BTN => btn_sel,
					BTN_CDLH => btn_cdlh1);
ic3: ENTITY WORK.DEM_1BIT
	PORT MAP ( CKHT => CKHT,
				  ENA_DB => btn_cdlh1,
				  rst    => rst,
				  q => ena_sel
				 );
--------khoi do nhiet do
IC10: ENTITY WORK.DS18B20_TEMPERATURE
		PORT MAP(	CKHT	=> CKHT,
						RST			=> RST,
						DS18B20		=> DS18B20,
						DS_PRESENT	=> DS_PRESENT,
						TEMPERATURE	=> TEMPERATURE);
						
		PROCESS(DS_PRESENT, DONVI_nd, CHUC_nd, TRAM_nd)
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
		PORT MAP(	SO_GMA		=> LED0,
						LCD_MA_TO	=> LCD_MA_DONVI_ND
						);
IC19 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> LED1,
						LCD_MA_TO   => LCD_MA_CHUC_ND
						);
IC194 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> LED2,
						LCD_MA_TO   => LCD_MA_TRAM_ND
						);	
--------------------------------------------------
IC28: ENTITY WORK.DEM_6BIT
	PORT MAP (CKHT => CKHT,
				 RST => RST,
				 ENA_DB => ENA_DB,
				 ENA_SS => ENA_SS,
				 ena  => ena,
				 Q => DEM 
				 );
IC56: ENTITY WORK.HEXTOBCD_6BIT
	PORT MAP ( SOHEX6BIT => DEM,
				  DONVI => DONVI,
				  CHUC => CHUC
				  );
IC109 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> DONVI,
						LCD_MA_TO	   => LCD_MA_DONVI
						);
IC197 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> CHUC,
						LCD_MA_TO   	=> LCD_MA_CHUC
						);
------------------------------------------------------
ic98: ENTITY WORK.MACH_DEM_CK
	PORT MAP ( ena => ena,
				  RST => RST,
				  CKHT => CKHT,
				  CHUKY => CHUKY, -- xung vo nhap nhay led
				  ENA_DB =>ENA_DB,
				  LED => LED(7 DOWNTO 5)
				  );
IC29 : ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP(	LCD_MA_DONVI	=> LCD_MA_DONVI,
		            LCD_MA_CHUC	   => LCD_MA_CHUC,
						LCD_MA_TRAM_ND  => LCD_MA_TRAM_ND,
						LCD_MA_CHUC_ND  => LCD_MA_CHUC_ND,
						LCD_MA_DONVI_ND => LCD_MA_DONVI_ND,
						ena_sel     => ena_sel,
						chuky       => chuky,
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4
					);

IC37 : ENTITY WORK.LCD_KHOITAO_HIENTHI_SO_TO
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
				  
	
