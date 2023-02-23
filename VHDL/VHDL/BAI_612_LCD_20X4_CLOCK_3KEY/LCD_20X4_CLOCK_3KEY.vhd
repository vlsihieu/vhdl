----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:43:07 11/28/2019 
-- Design Name: 
-- Module Name:    LCD_20X4_CLOCK - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LCD_20X4_CLOCK_3KEY is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           SW0 : in  STD_LOGIC;
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;
--			  bell : out std_logic;
           LCD_P : out  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0));
end LCD_20X4_CLOCK_3KEY;

architecture Behavioral of LCD_20X4_CLOCK_3KEY is

------------------------------------
SIGNAL ENA_DB 	: STD_LOGIC;
SIGNAL ENA_CHINH : STD_LOGIC;
--------------------------------------
SIGNAL GIAY, PHUT, GIO : 	STD_LOGIC_VECTOR( 5 DOWNTO 0);
SIGNAL GIO5 : 					STD_LOGIC_VECTOR( 4 DOWNTO 0);

SIGNAL CH_GIO 	: STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL DV_GIO 	: STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL CH_PHUT : STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL DV_PHUT : STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL CH_GIAY : STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL DV_GIAY : STD_LOGIC_VECTOR( 3 DOWNTO 0);
----------------------------------------------
SIGNAL LCD_H1 	: STD_LOGIC_VECTOR( 159 DOWNTO 0);
SIGNAL LCD_H2 	: STD_LOGIC_VECTOR( 159 DOWNTO 0);
SIGNAL LCD_H3 	: STD_LOGIC_VECTOR( 159 DOWNTO 0);
SIGNAL LCD_H4 	: STD_LOGIC_VECTOR( 159 DOWNTO 0);
----------------------------------------------
SIGNAL RST 		: STD_LOGIC;
SIGNAL BTN_UP, ENA_UP 		   : STD_LOGIC;
SIGNAL BTN_DW, ENA_DW 		   : STD_LOGIC;
SIGNAL BTN_MOD, ENA_MOD 		: STD_LOGIC;

SIGNAL GT_MOD 		   : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL HT_GT_MOD 		: STD_LOGIC_VECTOR(3 DOWNTO 0);
begin

	LCD_P <= SW0;
	RST	<=  BTN(0);
	BTN_UP <=  BTN(1);
	BTN_MOD <=  BTN(2);
	BTN_DW <=  BTN(3);
	
	GIO	<= '0' & GIO5;
	HT_GT_MOD <= "00" & GT_MOD;
	
	IC1: ENTITY WORK.CHIA_10ENA
		PORT MAP( 	CKHT 		=> CKHT,
						ENA2HZ	=> ENA_DB,
						ENA5HZ => ENA_CHINH
						);
------------------------------------
	IC21: ENTITY WORK.DEBOUNCE_BTN
		PORT MAP(	CKHT		=> CKHT,
						BTN		=> BTN_UP,
						DB_TICK	=> ENA_UP);	
						
	IC22: ENTITY WORK.DEBOUNCE_BTN
		PORT MAP(	CKHT		=> CKHT,
						BTN		=> BTN_DW,
						DB_TICK	=> ENA_DW);
						
	IC23: ENTITY WORK.CD_LAM_HEP_BTN
		PORT MAP(	CKHT		=> CKHT,
						BTN		=> BTN_MOD,
						BTN_CDLH 	=> ENA_MOD);
--------------------------------------
	IC51: ENTITY WORK.XULY_MOD_DAUCHAM
		PORT MAP(	CKHT		=> CKHT,
						ENA_DB	=> ENA_MOD,
						GT_MOD	=> GT_MOD
						);					
	IC2: ENTITY WORK.DEM_GIOPHUTGIAY_3KEY
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB	=> ENA_DB,
						gt_mod   => gt_mod,
						ena_up => ena_up,
						ena_dw => ena_dw,
--						bell   => bell,
						ena_chinh => ena_chinh,
						GIO		=> GIO5,
						PHUT		=> PHUT,
						GIAY		=> GIAY);
						
	IC3: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP(	SOHEX6BIT=> GIO,
						DONVI		=> DV_GIO,
						CHUC		=> CH_GIO);
						
	IC4: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP(	SOHEX6BIT=> PHUT,
						DONVI		=> DV_PHUT,
						CHUC		=> CH_PHUT);
						
	IC5: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP(	SOHEX6BIT=> GIAY,
						DONVI		=> DV_GIAY,
						CHUC		=> CH_GIAY);
						
	IC6: ENTITY WORK.LCD_20X4_GAN_DULIEU_GPG
		PORT MAP(	H1_10    => HT_GT_MOD,
		            H1_12		=> CH_GIO,
						H1_13		=> DV_GIO,
						H1_15		=> CH_PHUT,
						H1_16		=> DV_PHUT,
						H1_18		=> CH_GIAY,
						H1_19		=> DV_GIAY,
						
						LCD_H1	=> LCD_H1,
						LCD_H2	=> LCD_H2,
						LCD_H3	=> LCD_H3,
						LCD_H4	=> LCD_H4);
						
	IC7: ENTITY WORK.LCD_20X4_KHOITAO_HIENTHI
		PORT MAP(	LCD_DB	=> LCD_DB,
						LCD_RS	=> LCD_RS,
						LCD_E		=> LCD_E,
						LCD_RST	=> RST,
						LCD_CK	=> CKHT,
						
						LCD_H1	=> LCD_H1,
						LCD_H2	=> LCD_H2,
						LCD_H3	=> LCD_H3,
						LCD_H4	=> LCD_H4);

						
						
						

end Behavioral;

