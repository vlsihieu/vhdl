----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:18:11 11/03/2019 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LCD_20X4_CLOCK is
	PORT ( CKHT: 	IN STD_LOGIC;
			 BTN: 	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			 SW0 : 	IN STD_LOGIC;
			 ANODE: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			 SSEG:  OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			 DS18B20: INOUT STD_LOGIC;
			 LED: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			 LCD_E:	OUT STD_LOGIC;
			 LCD_RS:	OUT STD_LOGIC;
			 LCD_P:	OUT STD_LOGIC;
			 LCD_DB:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
end LCD_20X4_CLOCK;

architecture Behavioral of LCD_20X4_CLOCK is

SIGNAL LCD_H1: STD_LOGIC_VECTOR (159 DOWNTO 0);
SIGNAL LCD_H2: STD_LOGIC_VECTOR (159 DOWNTO 0);
SIGNAL LCD_H3: STD_LOGIC_VECTOR (159 DOWNTO 0);
SIGNAL LCD_H4: STD_LOGIC_VECTOR (159 DOWNTO 0);

SIGNAL ENA_DB,ENA_UP,ENA_DW,RST,ENA1KHZ,ENA1HZ: 	STD_LOGIC;

SIGNAL GIO, PHUT, GIAY:		STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL GIO5:					STD_LOGIC_VECTOR(4 DOWNTO 0);

SIGNAL CH_GIO, DV_GIO:		STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CH_PHUT, DV_PHUT:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CH_GIAY, DV_GIAY:	STD_LOGIC_VECTOR(3 DOWNTO 0);

SIGNAL LCD_MA_DV_GIAY: STD_LOGIC_VECTOR (47 DOWNTO 0);
SIGNAL LCD_MA_CH_GIAY: STD_LOGIC_VECTOR (47 DOWNTO 0);

SIGNAL DONVI, CHUC, TRAM: 	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LED0, LED1, LED2: 	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DS_PRESENT: 			STD_LOGIC;
SIGNAL NHIETDO: 				STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL TEMPERATURE: 			STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL LCD_MA_DONVI: STD_LOGIC_VECTOR (47 DOWNTO 0);
SIGNAL LCD_MA_CHUC: STD_LOGIC_VECTOR (47 DOWNTO 0);

SIGNAL DONVI_GH, CHUC_GH:		STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DC_8LED, ENA_8LED:	 	STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ENA_8LED_DC:STD_LOGIC_VECTOR (5 downto 0);
--SIGNAL LCD_MA_TRAM: STD_LOGIC_VECTOR (47 DOWNTO 0);
begin

	LCD_P			<= '1';
	RST			<= BTN(0);
	GIO			<= '0' & GIO5;
	NHIETDO  <= TEMPERATURE(11 DOWNTO 4);
	LED		<= TEMPERATURE(3 DOWNTO 0);	
	ENA_8LED <= ENA_8LED_DC & "11"; --bang 1 la cho phep hien thi
	DC_8LED   <=  "11111111"; -- bang 1 la tat dau cham
IC1: ENTITY WORK.CHIA_10ENA
		PORT MAP( CKHT		=> CKHT,	
					 ENA1HZ  => ENA1HZ,
					 ENA1KHZ => ENA1KHZ,  
					 ENA5HZ	=> ENA_DB);
					 
IC2: ENTITY WORK.DEM_GIOPHUTGIAY	
		PORT MAP( CKHT		=> CKHT,	
					 RST		=> RST,
					 ENA_DB	=> ENA_DB,
					 SW0     => SW0,
					 GIO		=> GIO5,
					 PHUT		=> PHUT,
					 GIAY		=> GIAY);
					
IC3: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP ( SOHEX6BIT	=> GIO,
					  DONVI		=> DV_GIO,
					  CHUC		=> CH_GIO);

IC4: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP ( SOHEX6BIT	=> PHUT,
					  DONVI		=> DV_PHUT,
					  CHUC		=> CH_PHUT);
					  
IC5: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP ( SOHEX6BIT	=> GIAY,
					  DONVI		=> DV_GIAY,
					  CHUC		=> CH_GIAY);
					  
IC6: ENTITY WORK.LCD_20X4_GAN_DULIEU_GPG
		PORT MAP ( 	 H1_1	=> CH_GIO,
						 H1_2	=> DV_GIO,
						 H1_4	=> CH_PHUT,
						 H1_5	=> DV_PHUT,
						 H1_7	=> CH_GIAY,
						 H1_8	=> DV_GIAY,
						 
						 H1_17	=> LED2,
						 H1_18	=> LED1,
						 H1_19	=> LED0,
						 DONVI_GH       => DONVI_GH,
						 CHUC_GH        => CHUC_GH,
						 LCD_MA_DV_GIAY =>LCD_MA_DV_GIAY,
						 LCD_MA_CH_GIAY =>LCD_MA_CH_GIAY,
--						 LCD_MA_TRAM    =>LCD_MA_TRAM,
						 LCD_MA_CHUC    =>LCD_MA_CHUC,
						 LCD_MA_DONVI   =>LCD_MA_DONVI,
						 SW0     => SW0,
						 LCD_H1	=> LCD_H1,
						 LCD_H2	=> LCD_H2,
						 LCD_H3	=> LCD_H3,
						 LCD_H4	=> LCD_H4);

IC7: ENTITY WORK.LCD_20X4_KHOITAO_HIENTHI_SO_TO
		PORT MAP (	 LCD_DB	=> LCD_DB,
						 LCD_RS	=> LCD_RS,
						 LCD_E	=> LCD_E,
						 LCD_RST	=> RST,
						 LCD_CK	=> CKHT,
						 LCD_H1	=> LCD_H1,
						 LCD_H2	=> LCD_H2,
						 LCD_H3	=> LCD_H3,
						 LCD_H4	=> LCD_H4);
IC8: ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP ( 	 SO_GMA		=> DV_GIAY,						 
						 LCD_MA_TO	=> LCD_MA_DV_GIAY);

IC9: ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP ( 	 SO_GMA		=> CH_GIAY,
						 LCD_MA_TO	=> LCD_MA_CH_GIAY);
--IC10: ENTITY WORK.LCD_GIAI_MA_SO_TO
--		PORT MAP ( 	 SO_GMA		=> LED2,
--						 LCD_MA_TO	=> LCD_MA_TRAM);
						 
IC11: ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP ( 	 SO_GMA		=> LED1,
						 LCD_MA_TO	=> LCD_MA_CHUC);

IC12: ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP ( 	 SO_GMA		=> LED0,
						 LCD_MA_TO	=> LCD_MA_DONVI);
IC13: ENTITY WORK.DS18B20_TEMPERATURE
		PORT MAP ( CKHT			=> CKHT,
					  RST				=> RST,
					  DS18B20		=> DS18B20,
					  DS_PRESENT 	=> DS_PRESENT,
					  TEMPERATURE 	=> TEMPERATURE);
	
	PROCESS(DS_PRESENT, DONVI, CHUC, TRAM)
		BEGIN
			IF (DS_PRESENT = '0') THEN LED0 <= DONVI;
												LED1 <= CHUC;
												LED2 <= TRAM;
			ELSE								LED0 <= X"E";
												LED1 <= X"E";
												LED2 <= X"E";
			END IF;
		END PROCESS;
						
IC14: ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP ( SOHEX8BIT	=> NHIETDO,
					  DONVI		=> DONVI,
					  CHUC		=> CHUC,
					  TRAM		=> TRAM);
IC15: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP( CKHT			=> CKHT,	
					 ENA1KHZ		=> ENA1KHZ,
					 LED70		=> DONVI_GH,
					 LED71		=> CHUC_GH,
					 LED72		=> X"8",
					 LED73		=> X"1",
					 LED74		=> X"1",
					 LED75		=> X"1",
					 LED76		=> X"4",
					 LED77		=> X"1",
					 ANODE		=> ANODE,
					 SSEG			=> SSEG,
					 DC_8LED		=> DC_8LED,
					 ENA_8LED	=> ENA_8LED);
IC16: ENTITY WORK.CAI_GIOI_HAN_NÐ
		PORT MAP( RST       => RST,
					 CKHT      => CKHT,
					 ENA_DB    => ENA_DB,
					 ENA_UP    => ENA_UP,
					 ENA_DW    => ENA_DW,
					 DONVI_GH  => DONVI_GH,
					 CHUC_GH   => CHUC_GH);
IC17: ENTITY WORK.DEBOUNCE_BTN
		PORT MAP ( CKHT		=> CKHT,
					  BTN			=> BTN(1),
					  DB_TICK	=> ENA_UP);
IC18: ENTITY WORK.DEBOUNCE_BTN
		PORT MAP ( CKHT		=> CKHT,
					  BTN			=> BTN(2),
					  DB_TICK	=> ENA_DW);	
IC19: ENTITY WORK.LED7DOAN_STD_PST
      PORT MAP( CKHT => CKHT, 
						ENA_DB => ENA1HZ,
						RST =>RST,
						OE => '1',
						Q => ENA_8LED_DC);					  
end Behavioral;

