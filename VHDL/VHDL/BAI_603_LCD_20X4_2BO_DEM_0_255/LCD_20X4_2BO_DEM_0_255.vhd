----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:01 11/21/2019 
-- Design Name: 
-- Module Name:    LCD_20X4_2BO_DEM_0_255 - Behavioral 
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

entity LCD_20X4_2BO_DEM_0_255 is
    Port ( CKHT : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
           SW0 : in  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0);
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;
           LCD_P : out  STD_LOGIC
			  );
end LCD_20X4_2BO_DEM_0_255;

 architecture Behavioral of LCD_20X4_2BO_DEM_0_255 is


SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);

SIGNAL ENA5HZ, ENA10HZ : STD_LOGIC;

SIGNAL DONVI_1 : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL CHUC_1  : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL TRAM_1  : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL DEM_1   : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);

SIGNAL DONVI_2 : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL CHUC_2  : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL TRAM_2  : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL DEM_2   : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);
---------------------
signal rst : std_logic;
begin

	LCD_P <= '1';
	rst <=  btn0;
	IC1 : ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT		=> CKHT,
						ENA5HZ	=> ENA5HZ,
						ENA10HZ	=> ENA10HZ);
---- BEGIN --= XU LY DEM SO THU  1 TU 0 -> 255						
	IC2_1 : ENTITY WORK.DEM_8BIT_SS
		PORT MAP(	CKHT	=> CKHT,
						ENA_DB=> ENA5HZ,
						ENA_SS=> SW0,
						RST	=> rst,
						Q 		=> DEM_1
						);
						
	IC3_1 : ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP(	SOHEX8BIT	=> DEM_1,
						DONVI			=> DONVI_1,
						CHUC			=> CHUC_1,
						TRAM 			=> TRAM_1
						);
---- END  --= XU LY DEM SO THU  1 TU 0 -> 255	
---- BEGIN --= XU LY DEM SO THU  2 TU 0 -> 255	

	IC2_2 : ENTITY WORK.DEM_8BIT_SS
		PORT MAP(	CKHT	=> CKHT,
						ENA_DB=> ENA10HZ,
						ENA_SS=> SW0,
						RST	=> rst,
						Q 		=> DEM_2);
						
	IC3_2 : ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP(	SOHEX8BIT	=> DEM_2,
						DONVI			=> DONVI_2,
						CHUC			=> CHUC_2,
						TRAM 			=> TRAM_2
						);
---- END  --= XU LY DEM SO THU  2 TU 0 -> 255					
	IC4 : ENTITY WORK.LCD_20X4_GAN_DULIEU_6SO
		PORT MAP(	H1_17			=> TRAM_1,
						H1_18			=> CHUC_1,
						H1_19			=> DONVI_1,
						
						H2_1			=> TRAM_2,
						H2_2			=> CHUC_2,
						H2_3			=> DONVI_2,
						
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4
					);
						
	IC5: ENTITY WORK.LCD_20X4_KHOITAO_HIENTHI
		PORT MAP(	LCD_DB	=> LCD_DB,
						LCD_RS	=> LCD_RS,
						LCD_E		=> LCD_E,
						LCD_RST	=> rst,
						LCD_CK	=> CKHT,
						LCD_H1	=> LCD_H1,
						LCD_H2	=> LCD_H2,
						LCD_H3	=> LCD_H3,
						LCD_H4	=> LCD_H4);


end Behavioral;

