
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY DEM_BTN IS 
	PORT ( CKHT : IN STD_LOGIC;
			 BTN: IN STD_LOGIC_VECTOR ( 3 DOWNTO 0);
			 LCD_E: OUT STD_LOGIC;
			 LCD_RS: OUT STD_LOGIC;
--			 LCD_P : OUT STD_LOGIC;
			 LCD_DB: OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0)
			 );
END DEM_BTN;
-- d? nè, nh?n btn1 d?m t? 00-20
-- nh?n btn2 d?m t? 21-40
-- nh?n btn3 d?m t? 41-60
-- có th? chuy?n qua l?i,
ARCHITECTURE PMH OF DEM_BTN IS 
-- NUT NHAN <-----------------------------------
SIGNAL btn_ct1 : STD_LOGIC;
signal btn_ct2 : std_logic;
signal btn_ct3 : std_logic;
SIGNAL ena_ct1 : STD_LOGIC;
signal ena_ct2 : std_logic;
signal ena_ct3 : std_logic;
signal rst: STD_LOGIC;
SIGNAL BTN_CDLH1: STD_LOGIC;
SIGNAL BTN_CDLH2: STD_LOGIC;
SIGNAL BTN_CDLH3: STD_LOGIC;
--LCD <--------------------------------
SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);
------
SIGNAL DONVI			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC		      :	STD_LOGIC_VECTOR(3 DOWNTO 0);
--XUNG <-----------------------------------------------
SIGNAL ENA_DB : STD_LOGIC;
-- TIN HIEU DK <------------------------------------
signal oe : STD_LOGIC_VECTOR(2 DOWNTO 0);
begin
	RST 		<= not BTN(0);
	btn_ct1  <= not BTN(1);
	btn_ct2  <= not BTN(2);
	btn_ct3  <= not BTN(3);
--	LCD_P <= '1';
-------> KHOI CHIA XUNG <--------------------
IC0: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA5HZ => ENA_DB
				  );
---------> XU LY MOD <---------------------------
IC13: ENTITY WORK.CD_LAM_HEP_BTN -- ch?ng d?i + làm h?p hi?u 
	  PORT MAP(CKHT => CKHT,
				  BTN => BTN_CT1,
				  BTN_CDLH => ENA_CT1);
IC19: ENTITY WORK.CD_LAM_HEP_BTN 
	  PORT MAP(CKHT => CKHT,
				  BTN => BTN_CT2,
				  BTN_CDLH => ENA_CT2);
IC176: ENTITY WORK.CD_LAM_HEP_BTN
	  PORT MAP(CKHT => CKHT,
				  BTN => BTN_CT3,
				  BTN_CDLH => ENA_CT3);				  
ic8 : entity work.xu_ly_oe
   port map ( rst => rst,
	           oe  => oe,
				  ckht => ckht,
				  ena_ct1 => ena_ct1,
				  ena_ct2 => ena_ct2,
				  ena_ct3 => ena_ct3
				 );
---- KHOI DEM BTN ---------------				 
IC77: ENTITY WORK.KHOI_DEM_BTN
	PORT MAP ( ckht    => ckht,
              oe      => oe,
				  ena_db => ena_db,
				  rst => rst,
				  donvi => donvi,
				  chuc  => chuc
				  );

-----------------------
IC85 : ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP(
						--------------------------
                  donvi => donvi,
						chuc  => chuc,						
						-----------------------
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4
					);
IC9 : ENTITY WORK.LCD_KHOITAO_HIENTHI_SO_TO
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