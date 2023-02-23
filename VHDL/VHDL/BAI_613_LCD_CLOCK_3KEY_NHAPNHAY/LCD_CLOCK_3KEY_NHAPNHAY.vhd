library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
entity LCD_CLOCK_3KEY_NHAPNHAY is
    Port ( CKHT: in  STD_LOGIC;
	 BTN: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	 LCD_E, LCD_RS :out  STD_LOGIC;
	 LCD_p : out  STD_LOGIC;
    LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0)
	 );
end LCD_CLOCK_3KEY_NHAPNHAY;

architecture Behavioral of LCD_CLOCK_3KEY_NHAPNHAY is
	SIGNAL LCD_HANG_1: STD_LOGIC_VECTOR(159 DOWNTO 0);
   SIGNAL LCD_HANG_2: STD_LOGIC_VECTOR(159 DOWNTO 0);
   SIGNAL LCD_HANG_3: STD_LOGIC_VECTOR(159 DOWNTO 0);
   SIGNAL LCD_HANG_4: STD_LOGIC_VECTOR(159 DOWNTO 0);
	SIGNAL RST,ENA_DB,ENA_CHINH: STD_LOGIC;
	SIGNAL GIAY, PHUT, GIOT: STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL GIO: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL BTN_UP, ENA_UP, BTN_DW, ENA_DW, BTN_MOD, ENA_MOD: STD_LOGIC;
	SIGNAL CH_GIO,DV_GIO:STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL CH_PHUT,DV_PHUT:STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL CH_GIAY,DV_GIAY:STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL GT_MOD: STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL HT_GT_MOD:STD_LOGIC_VECTOR(3 DOWNTO 0);
----------------------------------------------------
signal ena2hz : std_logic;	
signal ena_6led : std_logic_vector(5 downto 0);
begin
   LCD_P <= '1';

   RST   <=   BTN(0);
	BTN_UP <=  BTN(1);					---- UP
	BTN_DW <=   BTN(2);					---- DW
	BTN_MOD <=   BTN(3);				---- MOD
   GIOT<= '0' & GIO;
   HT_GT_MOD<= "00" & GT_MOD;
-------------------------------------------
   CHIA_10ENA:	ENTITY WORK.CHIA_10ENA
				    PORT MAP(CKHT => CKHT,
				             ENA5HZ => ENA_CHINH,
							    ENA10HZ => ENA_DB,
								 ena2hz => ena2hz
								 );
---------------------------------------------
DEBOUNCE_BTN_UP: ENTITY WORK.DEBOUNCE_BTN
	PORT MAP(CKHT=>CKHT,
				BTN=>BTN_UP,
				DB_TICK=>ENA_UP);
DEBOUNCE_BTN_DW: ENTITY WORK.DEBOUNCE_BTN
	PORT MAP(CKHT=>CKHT,
				BTN=>BTN_DW,
				DB_TICK=>ENA_DW);
CD_LAM_HEP_BTN_MOD: ENTITY WORK.CD_LAM_HEP_BTN
	PORT MAP(CKHT=>CKHT,
				BTN=>BTN_MOD,
				BTN_CDLH=>ENA_MOD);
---------------------------------------------
XULY_MOD: ENTITY WORK.XULY_MOD_DAUCHAM_NHAPNHAY
	PORT MAP(CKHT=> CKHT,
				ENA_DB=> ENA_MOD,
				ENA2HZ => ENA2HZ,
				GT_MOD => GT_MOD,
				ENA_UP => ENA_UP,
				ENA_DW => ENA_DW,
				ENA_6LED => ENA_6LED			
				);
DEM_GIOPHUTGIAY:	ENTITY WORK.DEM_GIOPHUTGIAY
				PORT MAP	(	CKHT		=> CKHT,
								RST	=>RST,
								ENA_DB=> ENA_DB,
								GT_MOD=> GT_MOD,
								ENA_DW=> ENA_DW,
								ENA_UP=> ENA_UP,
--								ENA_MOD=> ENA_MOD,
								ENA_CHINH=> ENA_CHINH,
								GIO	=> GIO,
								PHUT	=> PHUT,
								GIAY	=> GIAY
							);
HEXTOBCD_GIO:	ENTITY WORK.HEXTOBCD_6BIT
							PORT MAP	(	SOHEX6BIT	=> GIOT,
											DONVI			=> DV_GIO,
											CHUC			=> CH_GIO								
										);
HEXTOBCD_PHUT:	ENTITY WORK.HEXTOBCD_6BIT
							PORT MAP	(	SOHEX6BIT	=> PHUT,
											DONVI			=> DV_PHUT,
											CHUC			=> CH_PHUT								
										);
HEXTOBCD_GIAY:	ENTITY WORK.HEXTOBCD_6BIT
							PORT MAP	(	SOHEX6BIT	=> GIAY,
											DONVI			=> DV_GIAY,
											CHUC			=> CH_GIAY								
										);
							
LCD_GAN_DULIEU_HIENTHI: ENTITY WORK.LCD_20X4_GAN_DULIEU
		PORT MAP( H1_13 => CH_GIO,
					 H1_14 => DV_GIO,
					 H1_15 => CH_PHUT,
					 H1_16 => DV_PHUT,
					 H1_17 => CH_GIAY,
					 H1_18 => DV_GIAY,
					 -------------------
					 H1_19 =>HT_GT_MOD,		
					 ena_6led => ena_6led,
					 -----------------------
					 LCD_H1 => LCD_HANG_1,
					 LCD_H2 => LCD_HANG_2,
					 LCD_H3 => LCD_HANG_3,
				    LCD_H4 => LCD_HANG_4
					 );
					 
LCD_KHOITAO_HIENTHI: ENTITY WORK.LCD_20X4_KHOITAO_HIENTHI
		PORT MAP( LCD_DB  => LCD_DB,
					 LCD_RS  => LCD_RS,
					 LCD_E   => LCD_E,
					 LCD_CK  => CKHT,
					 LCD_RST => RST,
					 
					 LCD_H1 => LCD_HANG_1,
					 LCD_H2 => LCD_HANG_2,
				    LCD_H3 => LCD_HANG_3,
				    LCD_H4 => LCD_HANG_4
					 );

end Behavioral;