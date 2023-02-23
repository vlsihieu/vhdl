
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY dem_ht_so_to_nho_sw IS 
	PORT ( CKHT : IN STD_LOGIC;
			 BTN: IN STD_LOGIC_VECTOR ( 3 DOWNTO 0);
			 sw0 : in std_logic;
			 LCD_E: OUT STD_LOGIC;
			 LCD_RS: OUT STD_LOGIC;
--			 LCD_P : OUT STD_LOGIC;
			 LCD_DB: OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0)
			 );
END dem_ht_so_to_nho_sw;
ARCHITECTURE PMH OF dem_ht_so_to_nho_sw IS 
-- NUT NHAN <-----------------------------------
SIGNAL btn_up : STD_LOGIC;
SIGNAL btn_dw: STD_LOGIC;
signal btn_ss : std_logic;
signal rst: STD_LOGIC;
------------------------------------------
signal ena_ss : std_logic;
signal ena_up : std_logic;
signal ena_dw : std_logic;
signal ena : std_logic;
--LCD <--------------------------------
SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);
------
SIGNAL LCD_DONVI0 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL DONVI0			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LCD_CHUC0	   :	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL CHUC0		   :	STD_LOGIC_VECTOR(3 DOWNTO 0);
----------------------------------------
SIGNAL LCD_DONVI1 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL DONVI1			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LCD_CHUC1	   :	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL CHUC1			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
-------------------------------------
SIGNAL LCD_DONVI2 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL DONVI2			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LCD_CHUC2	   :	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL CHUC2			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
-------------------------------
SIGNAL LCD_DONVI3 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL DONVI3			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LCD_CHUC3	   :	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL CHUC3			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
--XUNG <-----------------------------------------------
SIGNAL ENA_DB : STD_LOGIC;
signal gt_mod : STD_LOGIC_VECTOR(1 DOWNTO 0);
signal ht_gt_mod :   STD_LOGIC_VECTOR(3 DOWNTO 0);

begin
	rst 		<= NOT btn(0);
	btn_up   <= NOT btn(1);
	btn_dw   <= not btn(2);
	btn_ss   <= not btn(3);
--	LCD_P <= '1';
   ht_gt_mod <= "00" & gt_mod;
-------> KHOI CHIA XUNG <--------------------
ic0 : entity work.chia_10ena
   port map (ckht => ckht,
	          ena2hz => ena_db 
				 );
---------> xu ly 3 nut nhan<---------------------------
ic2 : entity work.cd_lam_hep_btn
   port map (ckht =>ckht,
	          btn => btn_ss,
				 btn_cdlh => ena
				 );
ic10 : entity work.dem_1bit
   port map (ckht => ckht,
	          ena_db => ena,
				 rst    => rst,
				 q      => ena_ss
				 );
ic29 : entity work.cd_lam_hep_btn
   port map (ckht =>ckht,
	          btn => btn_up,
				 btn_cdlh => ena_up
				 );
ic07 : entity work.cd_lam_hep_btn
   port map (ckht =>ckht,
	          btn => btn_dw,
				 btn_cdlh => ena_dw
				 );
-------------> xu_ly_che_do <--------------------------
ic77 : entity work.xuly_chedo
   port map (ckht => ckht,
	          rst  => rst,
				 ena_dw => ena_dw,
				 ena_up => ena_up,
--				 ena_db => ena_db,
				 q      => gt_mod
				 );
------------> xu ly bo dem <------------------------
ic419 :entity work.bo_dem_4_chedo
      port map ( ckht => ckht,
		           rst    => rst ,
					  ena_db => ena_db,
					  gt_mod => gt_mod,
					  ena_ss => ena_ss,
					  ---------------------
					  donvi0  => donvi0,
					  chuc0   => chuc0,
					  ------------------
					  donvi1  => donvi1,
					  chuc1   => chuc1,
					  ---------------------
					  donvi2  => donvi2,
					  chuc2   => chuc2,
					  ---------------------
					  donvi3  => donvi3,
					  chuc3   => chuc3
					 );
--------------------------------------------------------
c0 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> donvi0,
						LCD_MA_TO   	=> lcd_donvi0
						);
c1 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> chuc0,
						LCD_MA_TO   	=> lcd_chuc0
						);
c2 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> donvi1,
						LCD_MA_TO   	=> lcd_donvi1
						);
c3 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> chuc1,
						LCD_MA_TO   	=> lcd_chuc1
						);
c4 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> donvi2,
						LCD_MA_TO   	=> lcd_donvi2
						);
c5 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> chuc2,
						LCD_MA_TO   	=> lcd_chuc2
						);
c6 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> donvi3,
						LCD_MA_TO   	=> lcd_donvi3
						);
c7 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> chuc3,
						LCD_MA_TO   	=> lcd_chuc3
						);
--------------------------------------------------

IC6 : ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP(	
		            lcd_donvi0  	=> lcd_donvi0,
		            lcd_chuc0	   => lcd_chuc0,
		            lcd_donvi1	   => lcd_donvi1,
		            lcd_chuc1	   => lcd_chuc1,
		            lcd_donvi2	   => lcd_donvi2,
		            lcd_chuc2	   => lcd_chuc2,
		            lcd_donvi3  	=> lcd_donvi3,
		            lcd_chuc3	   => lcd_chuc3,
						--------------------------
						gt_mod     => gt_mod,
						sw0        => sw0,
						ht_gt_mod  => ht_gt_mod,
						--------------------------
						chuc0        => chuc0,
						donvi0       => donvi0,
						chuc1        => chuc1,
						donvi1       => donvi1,
						chuc2        => chuc2,
						donvi2       => donvi2,
						chuc3        => chuc3,
						donvi3       => donvi3,
						-----------------------
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4
					);
IC70 : ENTITY WORK.LCD_KHOITAO_HIENTHI_SO_TO
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