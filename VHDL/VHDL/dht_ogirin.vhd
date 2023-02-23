----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:37:03 11/25/2019 
-- Design Name: 
-- Module Name:    DHT11_LED7DOAN - Behavioral 
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

entity DHT11_LED7DOAN is
    Port ( CKHT : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
			  DHT11: INOUT STD_LOGIC;
			  LED0 :OUT  STD_LOGIC;
			  SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;			   
           LCD_P : out  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR(7 DOWNTO 0));
end DHT11_LED7DOAN;

architecture Behavioral of DHT11_LED7DOAN is
SIGNAL DC_8LED:  				STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ENA_8LED: 				STD_LOGIC_VECTOR(7 DOWNTO 0);


SIGNAL LCD_H1,LCD_H2,LCD_H3,LCD_H4: STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL RST, TT_CS, DHT11_PRE, ENA_DB, ENA1KHZ: STD_LOGIC;

SIGNAL NH_DO_H, NH_DO_L : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DO_AM_H, DO_AM_L : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CH_SUM1, CH_SUM2 : STD_LOGIC_VECTOR(7 DOWNTO 0);

SIGNAL HU_TE_OUT : STD_LOGIC_VECTOR(39 DOWNTO 0);

SIGNAL ND_DV, ND_CH, ND_TR : STD_LOGIC_VECTOR(3 DOWNTO 0);

SIGNAL DA_DV, DA_CH, DA_TR : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	LCD_MA_ND_DV, LCD_MA_ND_CH: STD_LOGIC_VECTOR (47 DOWNTO 0);
SIGNAL	LCD_MA_DA_DV, LCD_MA_DA_CH: STD_LOGIC_VECTOR (47 DOWNTO 0);
SIGNAL GIAY : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL CH_GIAY, DV_GIAY: STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
	  RST		<= BTN0;
	  LCD_P	<=	'1';
	  LED0 	<= DHT11_PRE;
	  DC_8LED 	<= X"FF";
	
	  DO_AM_H <= HU_TE_OUT(39 DOWNTO 32);
	  DO_AM_L <= HU_TE_OUT(31 DOWNTO 24);
	  NH_DO_H <= HU_TE_OUT(23 DOWNTO 16);
	  NH_DO_L <= HU_TE_OUT(15 DOWNTO 8);
	  CH_SUM1 <= HU_TE_OUT(7 DOWNTO 0);
	  
	  CH_SUM2 <= NH_DO_H + NH_DO_L + DO_AM_H + DO_AM_L;
	  TT_CS <= '1'  WHEN 	CH_SUM1 = CH_SUM2 ELSE 
				  '0';
CHIA_10ENA: ENTITY WORK.CHIA_10ENA
		PORT MAP ( CKHT => CKHT,
					  ENA5HZ=> ENA_DB,
					  ENA1KHZ=> ENA1KHZ);		
					  
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
					 
IC12: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP( CKHT			=> CKHT,	
					 ENA1KHZ		=> ENA1KHZ,
					 LED70		=> DA_DV,
					 LED71		=> DA_CH,
					 LED72		=> X"0",
					 LED73		=> X"0",
					 LED74		=> X"0",
					 LED75		=> X"0",
					 LED76		=> ND_DV,
					 LED77		=> ND_CH,
					 ANODE		=> ANODE,
					 SSEG			=> SSEG,
					 DC_8LED		=> DC_8LED,
					 ENA_8LED	=> ENA_8LED);
		ENA_8LED <= X"C3" WHEN DA_TR = X"0" AND ND_TR = X"0"	ELSE
						X"C7";
IC4: ENTITY WORK.LCD_20X4_GAN_DULIEU_6SO
		PORT MAP( 
					 H1_18 => ND_CH,
					 H1_19 => ND_DV,
					 

					 H2_18 => DA_CH,
					 H2_19 => DA_DV,
					 
			LCD_MA_ND_DV => LCD_MA_ND_DV,
			LCD_MA_ND_CH => LCD_MA_ND_CH,
			LCD_MA_DA_DV => LCD_MA_DA_DV,
			LCD_MA_DA_CH => LCD_MA_DA_CH,
					 
					 TT_CS => TT_CS,
					 GIAY	 => GIAY,
					 CH_GIAY => CH_GIAY,
					 DV_GIAY => DV_GIAY,
					 LCD_H1=> LCD_H1,
					 LCD_H2=> LCD_H2,
					 LCD_H3=> LCD_H3,
					 LCD_H4=> LCD_H4);
					 
IC5: ENTITY WORK.LCD_20X4_KHOITAO_HIENTHI_SO_TO
		PORT MAP( LCD_DB=> LCD_DB,
					 LCD_RS=> LCD_RS,
					 LCD_E => LCD_E,
					 LCD_RST=> BTN0,
					 LCD_CK => CKHT,
					 LCD_H1=> LCD_H1,
					 LCD_H2=> LCD_H2,
					 LCD_H3=> LCD_H3,
					 LCD_H4=> LCD_H4);
					 
IC6: ENTITY WORK.DEM_GIOPHUTGIAY
		PORT MAP( CKHT 	=> CKHT,
					 RST  	=> RST,
					 ENA_DB	=> ENA_DB,
					 GIAY		=> GIAY);
					 
IC7: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP( SOHEX6BIT => GIAY,
					 DONVI     => DV_GIAY,
					 CHUC      => CH_GIAY);	
					 
IC8: ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP( SO_GMA 		=> ND_DV,
					 LCD_MA_TO  => LCD_MA_ND_DV);
					 
IC9: ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP( SO_GMA 		=> ND_CH,
					 LCD_MA_TO  => LCD_MA_ND_CH);
					 
IC10: ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP( SO_GMA 		=> DA_DV,
					 LCD_MA_TO  => LCD_MA_DA_DV);
					 
IC11: ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP( SO_GMA 		=> DA_CH,
					 LCD_MA_TO  => LCD_MA_DA_CH);
					 
end Behavioral;

