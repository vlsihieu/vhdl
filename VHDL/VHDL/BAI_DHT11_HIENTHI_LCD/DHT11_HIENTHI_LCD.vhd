----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:00:28 11/24/2019 
-- Design Name: 
-- Module Name:    DHT11_HIENTHI_LCD - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DHT11_HIENTHI_LCD is
    Port ( CKHT : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
			  DHT11: INOUT STD_LOGIC;
			  LED0 :OUT  STD_LOGIC;
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;			   
           LCD_P : out  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR(7 DOWNTO 0));
end DHT11_HIENTHI_LCD;

architecture Behavioral of DHT11_HIENTHI_LCD is
SIGNAL LCD_H1,LCD_H2,LCD_H3,LCD_H4: STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL RST, TT_CS, DHT11_PRE: STD_LOGIC;

SIGNAL NH_DO_H, NH_DO_L : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DO_AM_H, DO_AM_L : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CH_SUM1, CH_SUM2 : STD_LOGIC_VECTOR(7 DOWNTO 0);

SIGNAL HU_TE_OUT : STD_LOGIC_VECTOR(39 DOWNTO 0);

SIGNAL ND_DV, ND_CH, ND_TR : STD_LOGIC_VECTOR(3 DOWNTO 0);

SIGNAL DA_DV, DA_CH, DA_TR : STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
	  RST		<= BTN0;
	  LCD_P	<=	'1';
	  LED0 	<= DHT11_PRE;
	
	  DO_AM_H <= HU_TE_OUT(39 DOWNTO 32);
	  DO_AM_L <= HU_TE_OUT(31 DOWNTO 24);
	  NH_DO_H <= HU_TE_OUT(23 DOWNTO 16);
	  NH_DO_L <= HU_TE_OUT(15 DOWNTO 8);
	  CH_SUM1 <= HU_TE_OUT(7 DOWNTO 0);
	  
	  CH_SUM2 <= NH_DO_H + NH_DO_L + DO_AM_H + DO_AM_L;
	  TT_CS <= '1'  WHEN 	CH_SUM1 = CH_SUM2 ELSE 
				  '0';
					  
IC1: ENTITY WORK.DHT11_HU_TEMP
		PORT MAP( CKHT 		=> CKHT,
					 RST  		=> RST,
					 DHT11		=> DHT11,
					 DHT11_PRE	=> DHT11_PRE,
					 HU_TE_OUT	=> HU_TE_OUT);
					 
					  
IC2: ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP( SOHEX8BIT 	=> NH_DO_H,
					 DONVI	=> ND_DV,
					 CHUC		=> ND_CH,
					 TRAM		=> ND_TR);
					 
IC3: ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP( SOHEX8BIT 	=> DO_AM_H,
					 DONVI	=> DA_DV,
					 CHUC		=> DA_CH,
					 TRAM		=> DA_TR);
					 
IC4: ENTITY WORK.LCD_20X4_GAN_DULIEU_6SO
		PORT MAP( H1_17 => ND_TR,
					 H1_18 => ND_CH,
					 H1_19 => ND_DV,
					 
					 H2_17 => DA_TR,
					 H2_18 => DA_CH,
					 H2_19 => DA_DV,
					 
					 TT_CS => TT_CS,
					 
					 LCD_H1=> LCD_H1,
					 LCD_H2=> LCD_H2,
					 LCD_H3=> LCD_H3,
					 LCD_H4=> LCD_H4);
					 
IC5: ENTITY WORK.LCD_20X4_KHOITAO_HIENTHI
		PORT MAP( LCD_DB=> LCD_DB,
					 LCD_RS=> LCD_RS,
					 LCD_E => LCD_E,
					 LCD_RST=> BTN0,
					 LCD_CK => CKHT,
					 LCD_H1=> LCD_H1,
					 LCD_H2=> LCD_H2,
					 LCD_H3=> LCD_H3,
					 LCD_H4=> LCD_H4);
end Behavioral;

