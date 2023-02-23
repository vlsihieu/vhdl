
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY HIEN_THI_TEN_MSSV_DEM_DO_ND IS 
	PORT ( CKHT : IN STD_LOGIC;
			 BTN: IN STD_LOGIC_VECTOR ( 4 DOWNTO 0);
			 LED: OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0);
			 DS18B20: INOUT STD_LOGIC;
			 LCD_E: OUT STD_LOGIC;
			 LCD_RS: OUT STD_LOGIC;
			 lcd_rw   : out std_logic;
--			 LCD_P : OUT STD_LOGIC;
          bell : out std_logic;
			 LCD_DB: OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0)
			 );
END HIEN_THI_TEN_MSSV_DEM_DO_ND;
ARCHITECTURE PMH OF HIEN_THI_TEN_MSSV_DEM_DO_ND IS 
-- DICH MSSV BANG NUT NHAN, DICH HO VA TEN TU DONG
-- NHIET DO  <----------------------------------
SIGNAL DS_PRESENT : 			STD_LOGIC;
SIGNAL LED0, LED1, LED2 : 	STD_LOGIC_VECTOR( 3 DOWNTO 0); -- LED SSEG
SIGNAL NHIETDO : 				STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL TEMPERATURE :  		STD_LOGIC_VECTOR(11 DOWNTO 0);
-- NUT NHAN <-----------------------------------
SIGNAL btn_ss : STD_LOGIC;
signal btn_sel : std_logic;
signal btn_chuong : std_logic;
signal btn_mssv : std_logic;
signal ena_mssv : std_logic;
signal ena0,ena1,ena_sel,ena_chuong,ena_ss : std_logic;
SIGNAL BTN_CDLH: STD_LOGIC;
signal RST: STD_LOGIC;
--LCD <--------------------------------
SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
------
SIGNAL DONVI_xx			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_xx		      :	STD_LOGIC_VECTOR(3 DOWNTO 0);
signal dem_xx           :  std_logic_vector(5 downto 0);
signal lcd_ma_donvi : STD_LOGIC_VECTOR(47 DOWNTO 0);
signal lcd_ma_chuc  : STD_LOGIC_VECTOR(47 DOWNTO 0);
---------------------------------
SIGNAL donvi_nd			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL chuc_nd		   :	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL tram_nd			   :	STD_LOGIC_VECTOR(3 DOWNTO 0);
--XUNG <-----------------------------------------------
SIGNAL ENA_DB : STD_LOGIC;
signal ena5hz: STD_LOGIC;
signal ena1hz: STD_LOGIC;
signal ena2hz : std_logic;
SIGNAL ENA1KHZ : 	STD_LOGIC;
------------------------------
SIGNAL DC_8LED : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : STD_LOGIC_VECTOR ( 7 DOWNTO 0);
-- TIN HIEU DK <------------------------------------
SIGNAL OE: STD_LOGIC_VECTOR ( 3 DOWNTO 0);
--signal oe_xx : std_logic_vector(1 downto 0);
signal sel_3b : std_logic_vector(2 downto 0);
signal chuky : std_logic;
signal ena_12led :  std_logic_vector(11 downto 0);
------------------------------------------
SIGNAL DL : INTEGER RANGE 0 TO 7;
SIGNAL SO1,SO2,SO3,SO4,SO5,SO6,SO7,SO8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
-------------------------------------
begin
	rst 		<= not btn(0);
	btn_sel  <= not btn(1);
	btn_ss   <= not btn(2);
	btn_chuong <= not btn(3);
	btn_mssv   <= not btn(4);
	---------------------
	DC_8LED 		<= X"FF";
--	LCD_P <= '1';
   lcd_rw <= '0';
	NHIETDO 	<= TEMPERATURE(11 DOWNTO 4);
	LED(3 downto 0)<= TEMPERATURE( 3 DOWNTO 0);
	
	

-------> KHOI CHIA XUNG <--------------------
ck0: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA1HZ => ENA1hz,
				  ena5hz => ena5hz,
				  ena2hz => ena2hz -- d?ch
				  );
---------> xu ly btn_sel <---------------------------
cd0: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => btn_sel,
				  BTN_CDLH => ena_sel
				 );
cd1 : entity work.dem_3bit_gh
   port map (ckht => ckht,
	          ena_db => ena_sel,
				 rst    => rst,
				 q      => sel_3b
				 );
cd2: ENTITY WORK.DIEUKHIEN_MODE
	PORT MAP ( 
				  sel_3b => sel_3b,
				  rst => rst,
				  OE => OE
				  );
---------------> xu ly btn_ss <----------------
ss1: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => btn_ss,
				  BTN_CDLH => ena0
				 );
ss2 : entity work.dem_1bit
   port map (ckht => ckht,
	          ena_db => ena0,
				 rst    => rst,
				 q      => ena_ss
				 );
-----------> xu ly btn_chuong <---------------
c1: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => btn_chuong,
				  BTN_CDLH => ena1
				 );
c2 : entity work.dem_1bit
   port map (ckht => ckht,
	          ena_db => ena1,
				 rst    => rst,
				 q      => ena_chuong
				 );
-------> xu ly dich btn_mssv <----------
mssv1: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => btn_mssv,
				  BTN_CDLH => ena_mssv
				 );
mssv2: ENTITY WORK.LCD_DICH_DU_LIEU_BTN---DICH DU LIEU DA GAN IN VAO KHOI TAO HIEN THI
	PORT MAP(  CKHT   => CKHT,
				  RST    => RST,
--				  ENA_SS => ENA_SS,
              oe     => oe(3 downto 1),
				  ena_db  => ena_mssv,
				  LCD_H2 => LCD_H2,
				  H2 => H2
				  );
-----> dich _tu_dong_ho_ten
ht0: ENTITY WORK.LCD_DICH_DU_LIEU_AU
	PORT MAP(  CKHT   => CKHT,
				  RST    => RST,
--				  ENA_SS => ENA_SS,
              oe      => oe,
				  ena_db  => ena2hz,
				  LCD_H1 => LCD_H1,
				  H1 => H1
				  );
-------------> DO NHIET DO <--------------------------
nd0: ENTITY WORK.DS18B20_TEMPERATURE
		PORT MAP(	CKHT	=> CKHT,
						RST			=> RST,
						DS18B20		=> DS18B20,
						DS_PRESENT	=> DS_PRESENT,
						TEMPERATURE	=> TEMPERATURE);
						
		PROCESS(DS_PRESENT, donvi_nd, chuc_nd, tram_nd)
		BEGIN
			IF DS_PRESENT = '0' THEN	LED0	<= donvi_nd;
												LED1	<= chuc_nd;
												LED2	<= tram_nd;
			ELSE								LED0	<= X"E";
												LED1	<= X"E";
												LED2	<= X"E";
			END IF;
		END PROCESS;
nd1: ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP(	SOHEX8BIT	=> NHIETDO,
						DONVI			=> donvi_nd,
						CHUC			=> chuc_nd,
						TRAM			=> tram_nd
					);
-----------M?ch d?m xx--------------
ena_db <= ena1hz when (dem_xx < "011011" ) else
          ena5hz ;
xx0: entity work.mach_dem_chuky
	PORT MAP ( dem => dem_xx,
				  RST => RST,
				  CKHT => CKHT,
				  CHUKY => CHUKY, -- xung vo nhap nhay led
				  ENA_DB =>ENA_DB
				  );
xx1 : entity work.dem_xx -- 17->20, 21->37
      port map (ckht => ckht,
		          rst  => rst,
					 ena_db => ena_db,
					 ena_ss => ena_ss,
                dem_xx => dem_xx
					 );
xx2: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP(SOHEX6BIT=> dem_xx,
					DONVI		=> donvi_xx,
					CHUC		=> chuc_xx
					);
xx3 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> donvi_xx,
						LCD_MA_TO	   => lcd_ma_donvi
						);
xx4 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> chuc_xx,
						LCD_MA_TO   	=> lcd_ma_chuc
						);
ic67 : entity work.xuly_nhapnhay
        port map ( ckht => ckht,
		             rst  => rst,
						 ena_12led => ena_12led
						);
---------- chuong--------------------
bell0 : entity work.chuong_keu_led
      port map (
		          nhietdo => nhietdo,
                dem_xx => dem_xx,
					 bell   => bell,
					 ena_chuong => ena_chuong,
					 q      => led(7 downto 4)
					 );
----------------------------------------
l0 : ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP(	
                  chuc_xx     => chuc_xx,
						donvi_xx    => donvi_xx,
						lcd_ma_donvi => lcd_ma_donvi,
						lcd_ma_chuc  => lcd_ma_chuc,
						-- ------------------------
						OE          => OE,
--						ena2hz      => ena2hz,
--						ena_mssv    => ena_mssv,
						chuky       => chuky,
						ena_12led   => ena_12led,
--						sw0         => sw0,
--                  rst         => rst,
						--------------------------
						chuc_nd       => led1,
						donvi_nd      => led0,
						tram_nd       => led2,
						-----------------------
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4
					);
l1 : ENTITY WORK.LCD_KHOITAO_HIENTHI_SO_TO
		PORT MAP(	LCD_DB		=> LCD_DB,
						LCD_RS		=> LCD_RS,
						LCD_E			=> LCD_E,
						LCD_RST		=> RST,
						LCD_CK		=> CKHT,
						LCD_H1		=> H1,
						LCD_H2		=> H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4
					);
	
END PMH;	