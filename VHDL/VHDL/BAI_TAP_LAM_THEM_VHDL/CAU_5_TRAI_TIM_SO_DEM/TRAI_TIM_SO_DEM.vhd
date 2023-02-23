
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY TRAI_TIM_SO_DEM IS 
	PORT ( CKHT : IN STD_LOGIC;
			 BTN: IN STD_LOGIC_VECTOR ( 1 DOWNTO 0);
			 LCD_E: OUT STD_LOGIC;
			 LCD_RS: OUT STD_LOGIC;
--			 LCD_P : OUT STD_LOGIC;
			 LCD_DB: OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0)
			 );
END TRAI_TIM_SO_DEM;
ARCHITECTURE PMH OF TRAI_TIM_SO_DEM IS 
-- NUT NHAN <-----------------------------------
SIGNAL btn_ss : STD_LOGIC;
SIGNAL ena_ss : std_logic;
SIGNAL btn_cdlh: STD_LOGIC;
signal RST: STD_LOGIC;
--LCD <--------------------------------
SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);
------
SIGNAL DONVI			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC			   :	STD_LOGIC_VECTOR(3 DOWNTO 0);
--XUNG <-----------------------------------------------
SIGNAL ENA_DB : STD_LOGIC;
-------------------------------------------
SIGNAL dem: STD_LOGIC_VECTOR ( 4 DOWNTO 0);
------------------------------------------

begin
	RST 		<=  not BTN(0);
	BTN_SS  <=   not BTN(1);
--	LCD_P <= '1';
-------> KHOI CHIA XUNG <--------------------
IC0: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA1HZ => ENA_DB
				  );
---------> XU LY MOD <---------------------------
IC1: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => btn_ss,--
				  BTN_CDLH => btn_cdlh
				 );
ic10 : entity work.dem_1bit
   port map (ckht => ckht,
	          ena_db => btn_cdlh,
				 rst    => rst,
				 q      => ena_ss
				 );
-------------> khoi mach dem <--------------------------
ic8 : entity work.dem_5bit
   port map (ckht => ckht,
	          ena_db => ena_db,
				 ena_ss => ena_ss,
				 rst    => rst,
				 q      => dem
				 );
IC4: ENTITY WORK.HEXTOBCD_5BIT
		PORT MAP(	SOHEX5BIT	=> dem,
						DONVI			=> DONVI,
						CHUC			=> CHUC
					);

---------------------------------------------------------------------------------------
IC6 : ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP(
						--------------------------
						donvi       => donvi,-- TRAM
						chuc        => chuc,-- CHUC
						-----------------------
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4
					);
IC7 : ENTITY WORK.LCD_20X4_KHOITAO_HIENTHI_CGRAM_TTIM 
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