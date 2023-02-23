
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY DE_CUOI_KY IS 
	PORT ( CKHT : IN STD_LOGIC;
			 BTN: IN STD_LOGIC_VECTOR ( 2 DOWNTO 0);
			 sw : in std_logic_vector(2 downto 0);
			 LED: OUT STD_LOGIC_VECTOR ( 2 DOWNTO 0);
			 LCD_E: OUT STD_LOGIC;
			 LCD_RS: OUT STD_LOGIC;
			 lcd_rw   : out std_logic;
--			 LCD_P : OUT STD_LOGIC;
			 LCD_DB: OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0);
			 sseg :  OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0);
			 anode : OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0)
			 );
END DE_CUOI_KY;
ARCHITECTURE PMH OF DE_CUOI_KY IS 
-- DICH MSSV BANG NUT NHAN, DICH HO VA TEN TU DONG
-- NUT NHAN <-----------------------------------
SIGNAL btn_ss : STD_LOGIC;
signal btn_up : std_logic;
signal ena_ss, ena_up ,ena_ud,ena0: std_logic;
signal RST: STD_LOGIC;
--LCD <--------------------------------
SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);
------
SIGNAL donvi0,donvi1,donvi2,donvi3			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL chuc0,chuc1,chuc2,chuc3		      :	STD_LOGIC_VECTOR(3 DOWNTO 0);
signal lcd_donvi0,lcd_donvi1,lcd_donvi2,lcd_donvi3 ,lcd_dv: STD_LOGIC_VECTOR(47 DOWNTO 0);
signal lcd_chuc0,lcd_chuc1,lcd_chuc2,lcd_chuc3,lcd_ch  : STD_LOGIC_VECTOR(47 DOWNTO 0);
--XUNG <-----------------------------------------------
SIGNAL ENA_DB : STD_LOGIC;
signal ena5hz: STD_LOGIC;
signal ena1hz: STD_LOGIC;
signal ena10hz : std_logic;
SIGNAL ENA1KHZ : 	STD_LOGIC;
------------------------------
SIGNAL DC_8LED : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : STD_LOGIC_VECTOR ( 7 DOWNTO 0);
-- TIN HIEU DK <------------------------------------
SIGNAL OE: STD_LOGIC_VECTOR ( 3 DOWNTO 0);

------------------------------------------
begin
	rst 		<= not btn(0);
	btn_ss  <= not btn(1);
	btn_up   <= not btn(2);
	---------------------
--	LCD_P <= '1';
   lcd_rw <= '0';
   dc_8led <= x"ff";
	ena_8led <="11111111";
	
------------> xu ly dem len dem xuong <--------
ena_ud <= '1' when sw(0) = '1' else -- dem len
          '0'; --dem xuong
led(1 downto 0) <= "01" when sw(0) = '1' else
                   "10";
---------- > xu ly 4 che do <----------
sel0 : entity work.xuly_4chedo
   port map (sel_2b => sw(2 downto 1),
	          oe     => oe
				 );
-------> KHOI CHIA XUNG <--------------------
ck0: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA1HZ => ENA1hz,
				  ena5hz => ena5hz,
				  ena10hz => ena10hz,
              ena1khz => ena1khz
				  );
ena_db <= ena1hz when (oe(0) = '1' ) else
          ena5hz when (oe(1) = '1' ) else
			 ena10hz when (oe(2) = '1' ) else
			 '0';
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
led(2) <= '1' when (ena_ss = '1' ) else
          '0';
---------> btn_up <--------
up0: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => btn_up,
				  BTN_CDLH => ena_up
				 );
-----------mach dem gioi han -------------
cd0 : entity work.dem_ab_auto_1hz
    port map(ckht  => ckht,
             rst   => rst,
				 ena_db => ena_db,
				 ena_ss => ena_ss,
				 ena_ud => ena_ud,
				 oe   => oe(0),
				 donvi => donvi0,
				 chuc  => chuc0
				  );
cd1 : entity work.dem_ab_auto_5hz
    port map(ckht  => ckht,
             rst   => rst,
				 ena_db => ena_db,
				 ena_ss => ena_ss,
				 ena_ud => ena_ud,
				 oe   => oe(1),
				 donvi => donvi1,
				 chuc  => chuc1
				  );
cd2 : entity work.dem_ab_auto_10hz
    port map(ckht  => ckht,
             rst   => rst,
				 ena_db => ena_db,
				 ena_ss  => ena_ss,
				 ena_ud => ena_ud,
				 oe   => oe(2),
				 donvi => donvi2,
				 chuc  => chuc2
				  );
cd3 : entity work.dem_ab_mn -- bang tay
    port map(ckht  => ckht,
             rst   => rst,
				 ena_up => ena_up,
				 ena_ud  => ena_ud,
				 ena_ss  => ena_ss,
				 oe   => oe(3),
				 donvi => donvi3,
				 chuc  => chuc3
				  );
xx0 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> donvi0,
						LCD_MA_TO	   => lcd_donvi0
						);
xx1 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> donvi1,
						LCD_MA_TO	   => lcd_donvi1
						);
xx2 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> donvi2,
						LCD_MA_TO	   => lcd_donvi2
						);
xx3 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> donvi3,
						LCD_MA_TO	   => lcd_donvi3
						);
xx4 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> chuc0,
						LCD_MA_TO	   => lcd_chuc0
						);
xx5 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> chuc1,
						LCD_MA_TO	   => lcd_chuc1
						);
xx6 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> chuc2,
						LCD_MA_TO	   => lcd_chuc2
						);
xx7 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> chuc3,
						LCD_MA_TO	   => lcd_chuc3
						);
lcd_dv <= lcd_donvi0 when (oe(0) = '1' ) else
          lcd_donvi1 when (oe(1) = '1' ) else
			 lcd_donvi2 when (oe(2) = '1' ) else
			 lcd_donvi3 when (oe(3) = '1' ) else
			 x"20" & x"20" &  x"20" &  x"20" &  x"20" &  x"20" ;
lcd_ch <= lcd_chuc0 when (oe(0) = '1' ) else
          lcd_chuc1 when (oe(1) = '1' ) else
			 lcd_chuc2 when (oe(2) = '1' ) else
			 lcd_chuc3 when (oe(3) = '1' ) else
			 x"20" & x"20" &  x"20" &  x"20" &  x"20" &  x"20" ;
----------------------------------------
l0 : ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP(	
						lcd_dv => lcd_dv,
						lcd_ch  => lcd_ch,
						---------------------
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
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4
					);
--------> 7 doan
sseg0: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> X"8",--b
						LED71		=> X"3",--b
						LED72		=> X"F", 
						LED73		=> X"8", -- a
						LED74		=> X"0", -- a
						LED75		=> X"F", 
						LED76		=> X"5", 
						LED77		=> X"4", 
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);
END PMH;	