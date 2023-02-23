----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:36:03 11/14/2019 
-- Design Name: 
-- Module Name:    DO_ND_DS_18B20_HT_7DOAN_BUZZER - Behavioral 
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

entity DS_18B20_HT_SO_TO is
    Port ( CKHT : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
           DS18B20 : inout  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (3 downto 0);-------
           LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0);
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC
--			  SW1 : IN STD_LOGIC
--           LCD_P : OUT STD_LOGIC
			  );
end DS_18B20_HT_SO_TO;

architecture Behavioral of DS_18B20_HT_SO_TO  is
-----------------------------------------------------
SIGNAL DS_PRESENT : 			STD_LOGIC;
--SIGNAL DONVI, CHUC, TRAM : STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL LED0, LED1, LED2 : 	STD_LOGIC_VECTOR( 3 DOWNTO 0); -- LED SSEG
SIGNAL NHIETDO : 				STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL TEMPERATURE :  		STD_LOGIC_VECTOR(11 DOWNTO 0);
-----------------------------------------------
SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);


SIGNAL LCD_MA_DONVI 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL DONVI			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LCD_MA_CHUC	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL CHUC			   :	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LCD_MA_TRAM	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL TRAM			   :	STD_LOGIC_VECTOR(3 DOWNTO 0);
-------------------------------------------
SIGNAL RST				:	STD_LOGIC;
--signal ena_db : std_logic;
begin
	RST 		<= not BTN0;
--	LCD_P <= '1';
	NHIETDO 	<= TEMPERATURE(11 DOWNTO 4);
	LED 		<= TEMPERATURE( 3 DOWNTO 0);
--------------------------------------	

---------------------------------------
	IC1: ENTITY WORK.DS18B20_TEMPERATURE
		PORT MAP(	CKHT	=> CKHT,
						RST			=> RST,
						DS18B20		=> DS18B20,
						DS_PRESENT	=> DS_PRESENT,
						TEMPERATURE	=> TEMPERATURE);
						
		PROCESS(DS_PRESENT, DONVI, CHUC, TRAM)
		BEGIN
			IF DS_PRESENT = '0' THEN	LED0	<= DONVI;
												LED1	<= CHUC;
												LED2	<= TRAM;
			ELSE								LED0	<= X"E";
												LED1	<= X"E";
												LED2	<= X"E";
			END IF;
		END PROCESS;
--		TRAM <= 
-----------------------------------------------
---- END  --= XU LY DEM SO THU  2 TU 0 -> 255
	IC34: ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP(	SOHEX8BIT	=> NHIETDO,
						DONVI			=> DONVI,
						CHUC			=> CHUC,
						TRAM			=> TRAM);
						
	IC14 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> LED0,
						LCD_MA_TO	   => LCD_MA_DONVI
						);
	IC19 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> LED1,
						LCD_MA_TO   	=> LCD_MA_CHUC
						);
	IC194 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> LED2,
						LCD_MA_TO   	=> LCD_MA_TRAM
						);						
	IC29 : ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP(	LCD_MA_DONVI	=> LCD_MA_DONVI,
		            LCD_MA_CHUC	=> LCD_MA_CHUC,
						LCD_MA_TRAM => LCD_MA_TRAM,
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4);

	IC3 : ENTITY WORK.LCD_KHOITAO_HIENTHI_SO_TO
		PORT MAP(	LCD_DB		=> LCD_DB,
						LCD_RS		=> LCD_RS,
						LCD_E			=> LCD_E,
						LCD_RST		=> RST,
						LCD_CK		=> CKHT,
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4);
end Behavioral;

