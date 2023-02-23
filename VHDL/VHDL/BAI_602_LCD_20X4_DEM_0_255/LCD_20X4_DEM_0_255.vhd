----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:02 11/21/2019 
-- Design Name: 
-- Module Name:    LCD_20X4_DEM_0_255 - Behavioral 
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

entity LCD_20X4_DEM_0_255 is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
           SW : in  STD_LOGIC;
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;
           LCD_P : out  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR( 7 DOWNTO 0));
end LCD_20X4_DEM_0_255;

architecture Behavioral of LCD_20X4_DEM_0_255 is

SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);

SIGNAL ENA_DB : STD_LOGIC;

SIGNAL DONVI : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL CHUC  : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL TRAM  : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL DEM   : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);

begin
	
	LCD_P <= '1';
	
	IC1 : ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT	=> CKHT,
						ENA5HZ=> ENA_DB);
						
	IC2 : ENTITY WORK.DEM_8BIT_SS
		PORT MAP(	CKHT	=> CKHT,
						ENA_DB=> ENA_DB,
						ENA_SS=> SW,
						RST	=> BTN,
						Q 		=> DEM);
						
	IC3 : ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP(	SOHEX8BIT	=> DEM,
						DONVI			=> DONVI,
						CHUC			=> CHUC,
						TRAM 			=> TRAM);
						
	IC4 : ENTITY WORK.LCD_20X4_GAN_DULIEU_3SO
		PORT MAP(	H1_17			=> TRAM,
						H1_18			=> CHUC,
						H1_19			=> DONVI,
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4);
						
	IC5: ENTITY WORK.LCD_20X4_KHOITAO_HIENTHI
		PORT MAP(	LCD_DB	=> LCD_DB,
						LCD_RS	=> LCD_RS,
						LCD_E		=> LCD_E,
						LCD_RST	=> BTN,
						LCD_CK	=> CKHT,
						LCD_H1	=> LCD_H1,
						LCD_H2	=> LCD_H2,
						LCD_H3	=> LCD_H3,
						LCD_H4	=> LCD_H4);

end Behavioral;

