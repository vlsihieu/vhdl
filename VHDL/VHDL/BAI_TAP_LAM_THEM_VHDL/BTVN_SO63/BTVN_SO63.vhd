
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY BTVN_SO63	IS 
	PORT ( CKHT : IN STD_LOGIC;
			 BTN: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			 LCD_E: OUT STD_LOGIC;
			 LCD_RS: OUT STD_LOGIC;
			 LCD_p: OUT STD_LOGIC;
			 LCD_DB: OUT STD_LOGIC_VECTOR ( 7 DOWNTO 0)
			 );
END BTVN_SO63;
ARCHITECTURE PMH OF BTVN_SO63 IS 
--XUNG
SIGNAL ENA_DB:  STD_LOGIC;
signal ena1hz : std_logic;
-- NUT NHAN
SIGNAL RST: STD_LOGIC;
SIGNAL BTN_MOD : STD_LOGIC;
signal ena_mod : std_logic;
SIGNAL BTN_UP: STD_LOGIC;
--SIGNAL BTN_SS : STD_LOGIC;
--SIGNAL BTN_CDLH: STD_LOGIC;
--SIGNAL ENA_SS: STD_LOGIC;
SIGNAL ENA_UP : STD_LOGIC;
-- TIN HIEU DIEU KHIEN 
--SIGNAL OE : STD_LOGIC_VECTOR ( 1 DOWNTO 0);
SIGNAL GT_MOD : STD_LOGIC_VECTOR(1 DOWNTO 0);
-- BIEN GIOI HAN
SIGNAL GH_DV_TREN :  STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL GH_DV_DUOI :  STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL GH_CHUC_TREN:  STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL GH_CHUC_DUOI: STD_LOGIC_VECTOR (3 DOWNTO 0);
---------------------------------
SIGNAL LCD_H1 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
----------------------------------------------
--SIGNAL LCD_MA_DONVI 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL DONVI			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
--SIGNAL LCD_MA_CHUC	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL CHUC			   :	STD_LOGIC_VECTOR(3 DOWNTO 0);
---------------------------------------------------------
SIGNAL lcd_so_X	   :	STD_LOGIC_VECTOR(47 DOWNTO 0);
-------------------------------------------------
SIGNAL lcd_chuc_tren	   :	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL lcd_dv_tren	   :	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL lcd_chuc_duoi	   :	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL lcd_dv_duoi	   :	STD_LOGIC_VECTOR(47 DOWNTO 0);
------------------------------------------------
SIGNAL ENA_4LED : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ENA_8LED : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	RST      <=  BTN(0);
	BTN_mod  <=  BTN(1);
	BTN_up   <=  BTN(2);
--	BTN_UP  <=  BTN(3);
   LCD_P   <= '1';
-------------------------------
IC0: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA5HZ => ENA_DB,
				  ena1hz => ena1hz
				  );
--------------------------------------
IC2: ENTITY WORK.CD_LAM_HEP_BTN--
	PORT MAP ( CKHT => CKHT,
				  BTN => BTN_MOD,
				  BTN_CDLH => ENA_MOD
				  );
IC3: ENTITY WORK.XULY_MOD_DAUCHAM_NHAPNHAY
	PORT MAP(CKHT=> CKHT,
				ENA_DB=> ENA_MOD,
				ENA5HZ => ENA_DB,
				GT_MOD => GT_MOD,
				ENA_UP => ENA_UP,
				ENA_4LED => ENA_4LED			
				);
----------------------------------
--IC4: ENTITY WORK.CD_LAM_HEP_BTN--
--	PORT MAP ( CKHT => CKHT,
--				  BTN => BTN_SS,
--				  BTN_CDLH => BTN_CDLH
--				  );
--IC5: ENTITY WORK.DIEUKHIEN_SS
--	PORT MAP ( CKHT => CKHT,
--				  ENA_DB=> BTN_CDLH,
--				  Q => ENA_SS
--				  );
--------------------------------------
IC6: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP ( CKHT => CKHT,
				  BTN => BTN_UP,
				  BTN_CDLH => ENA_UP
				  );
-----------------------------------
IC7: ENTITY WORK.DIEUKHIEN_GH
	PORT MAP ( ENA_UP => ENA_UP,
				  CKHT => CKHT,
				  RST => RST,
				  GT_MOD => GT_MOD,
				  GH_DV_TREN => GH_DV_TREN,
				  GH_DV_DUOI => GH_DV_DUOI,
				  GH_CHUC_TREN => GH_CHUC_TREN,
				  GH_CHUC_DUOI => GH_CHUC_DUOI
				  );
IC95 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> gh_dv_tren,
						LCD_MA_TO	   => lcd_dv_tren
						);
IC105 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> gh_dv_duoi,
						LCD_MA_TO   	=> lcd_dv_duoi
						);
IC106 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> gh_chuc_tren,
						LCD_MA_TO   	=> lcd_chuc_tren
						);
IC107 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> gh_chuc_duoi,
						LCD_MA_TO   	=> lcd_chuc_duoi
						);
lcd_so_X <= lcd_chuc_tren when gt_mod = "00"  else
            lcd_dv_tren when gt_mod = "01" else
				lcd_chuc_duoi when gt_mod = "10"  else
				lcd_dv_duoi when gt_mod = "11" else
				X"20"&X"20"&X"20"&X"20"&X"20"&X"20";
-----------------------------------------------
IC8: ENTITY WORK.MACHDEM_GH
	PORT MAP ( CKHT => CKHT,
				  RST => RST,
				  ENA_DB => ENA_DB ,
				  GH_DV_TREN => GH_DV_TREN,
				  GH_DV_DUOI => GH_DV_DUOI,
				  GH_CHUC_TREN=> GH_CHUC_TREN,
				  GH_CHUC_DUOI => GH_CHUC_DUOI,
				  DONVI => DONVI,
				  CHUC => CHUC
				  );
--------------------------------------------
ic67 : entity work.xuly_nhapnhay_mssv
        port map ( ckht => ckht,
		             rst  => rst,
						 ena_8led => ena_8led
						);
--------------------------------------------
IC97: ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
	PORT MAP(	H1_0 => GH_CHUC_TREN,
					H1_1 => GH_DV_TREN,
					H2_0 => GH_CHUC_DUOI,
					H2_1 => GH_DV_DUOI,
					-------------------------
					H1_18 => CHUC,
					H1_19 => DONVI,
					ena1hz => ena1hz,
--					CKHT => CKHT,
					RST => RST,
					ena_4led => ena_4led,
					ena_8led => ena_8led,
					------------------
					lcd_so_X    => lcd_so_X,
					-------------------------
					LCD_H1 => LCD_H1,
					LCD_H2 => LCD_H2,
					LCD_H3 => LCD_H3,
					LCD_H4 => LCD_H4
					);
IC98: ENTITY WORK.LCD_KHOITAO_HIENTHI_SO_TO
	PORT MAP ( LCD_DB => LCD_DB,
	           LCD_RS => LCD_RS,
				  LCD_E => LCD_E,
				  LCD_RST =>RST,
				  LCD_CK =>CKHT,
				  LCD_H1 => LCD_H1,
				  LCD_H2 => LCD_H2,
				  LCD_H3 => LCD_H3,
				  LCD_H4 => LCD_H4
				  );

	END PMH;
