----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:39:34 12/04/2019 
-- Design Name: 
-- Module Name:    LCD_20X4_GAN_DULIEU_1SO_TO - Behavioral 
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

entity LCD_20X4_GAN_DULIEU_1SO_TO is
    Port ( 
	        lcd_donvi0 : in  STD_LOGIC_VECTOR (47 downto 0);
	        lcd_chuc0  : in  STD_LOGIC_VECTOR (47 downto 0);
	        lcd_donvi1 : in  STD_LOGIC_VECTOR (47 downto 0);
	        lcd_chuc1  : in  STD_LOGIC_VECTOR (47 downto 0);
	        lcd_donvi2 : in  STD_LOGIC_VECTOR (47 downto 0);
	        LCD_CHUC2  : in  STD_LOGIC_VECTOR (47 downto 0);
	        lcd_donvi3 : in  STD_LOGIC_VECTOR (47 downto 0);
	        lcd_chuc3  : in  STD_LOGIC_VECTOR (47 downto 0);
           ------------------------------------------------
			  donvi0 : in std_logic_vector(3 downto 0);
			  chuc0 : in std_logic_vector(3 downto 0);
			  donvi1 : in std_logic_vector(3 downto 0);
			  chuc1 : in std_logic_vector(3 downto 0);
			  donvi2 : in std_logic_vector(3 downto 0);
			  chuc2 : in std_logic_vector(3 downto 0);
			  donvi3 : in std_logic_vector(3 downto 0);
			  chuc3 : in std_logic_vector(3 downto 0);

			  -------------------------------------------
			  sw0 : in std_logic;
			  gt_mod : in std_logic_vector(1 downto 0);
			  ht_gt_mod : in std_logic_vector(3 downto 0);
			  -------------------------------------------------------
           LCD_H1 : out  STD_LOGIC_VECTOR (159 downto 0);
           LCD_H2 : out  STD_LOGIC_VECTOR (159 downto 0);
           LCD_H3 : out  STD_LOGIC_VECTOR (159 downto 0);
           LCD_H4 : out  STD_LOGIC_VECTOR (159 downto 0)
			  );
end LCD_20X4_GAN_DULIEU_1SO_TO;

architecture Behavioral of LCD_20X4_GAN_DULIEU_1SO_TO is

begin


---- HANG 1
	LCD_H1(  7 DOWNTO   0) 		<= x"3" & ht_gt_mod;
	LCD_H1( 15 DOWNTO   8) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1( 23 DOWNTO  16) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1( 31 DOWNTO  24) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1( 39 DOWNTO  32) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1( 47 DOWNTO  40) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1( 55 DOWNTO  48) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1( 63 DOWNTO  56) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1( 71 DOWNTO  64) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1( 79 DOWNTO  72) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1( 87 DOWNTO  80) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1( 95 DOWNTO  88) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(103 DOWNTO  96) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(111 DOWNTO 104) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(119 DOWNTO 112) 		<= lcd_chuc0 (47 DOWNTO 40) when (gt_mod = "00") and sw0 = '0' else
	                              lcd_chuc1 (47 DOWNTO 40) when (gt_mod = "01") and sw0 = '0' else
											lcd_chuc2 (47 DOWNTO 40) when (gt_mod = "10") and sw0 = '0' else
											lcd_chuc3 (47 DOWNTO 40) when (gt_mod = "11") and sw0 = '0' else
											x"20";
	LCD_H1(127 DOWNTO 120) 		<= lcd_chuc0(39 DOWNTO 32) when (gt_mod = "00") and sw0 = '0' else
	                              lcd_chuc1(39 DOWNTO 32) when (gt_mod = "01") and sw0 = '0' else
											lcd_chuc2(39 DOWNTO 32) when (gt_mod = "10") and sw0 = '0' else
										   lcd_chuc3(39 DOWNTO 32) when (gt_mod = "11") and sw0 = '0' else	
											X"20";
	LCD_H1(135 DOWNTO 128) 		<= lcd_chuc0(31 DOWNTO 24) when (gt_mod = "00") and sw0 = '0'  else
	                              lcd_chuc1(31 DOWNTO 24) when (gt_mod = "01") and sw0 = '0' else
											lcd_chuc2(31 DOWNTO 24) when (gt_mod = "10") and sw0 = '0' else
										   lcd_chuc3(31 DOWNTO 24) when (gt_mod = "11") and sw0 = '0' else	
											X"20";
	LCD_H1(143 DOWNTO 136) 		<= lcd_donvi0(47 DOWNTO 40) when (gt_mod = "00" and sw0 = '0' ) else
	                              lcd_donvi1(47 DOWNTO 40) when (gt_mod = "01") and sw0 = '0' else
											lcd_donvi2(47 DOWNTO 40) when (gt_mod = "10") and sw0 = '0' else
											lcd_donvi3(47 DOWNTO 40) when (gt_mod = "11") and sw0 = '0' else
											x"20";
	LCD_H1(151 DOWNTO 144) 		<= lcd_donvi0(39 DOWNTO 32) when (gt_mod = "00" and sw0 = '0' ) else
	                              lcd_donvi1(39 DOWNTO 32) when (gt_mod = "01") and sw0 = '0' else
											lcd_donvi2(39 DOWNTO 32) when (gt_mod = "10") and sw0 = '0' else
											lcd_donvi3(39 DOWNTO 32) when (gt_mod = "11") and sw0 = '0' else
											X"3" & chuc0 when (gt_mod = "00") and sw0 = '1' else
											X"3" & chuc1 when (gt_mod = "01") and sw0 = '1' else
											X"3" & chuc2 when (gt_mod = "10") and sw0 = '1' else
											X"3" & chuc3 when (gt_mod = "11") and sw0 = '1' else
											x"20";
	LCD_H1(159 DOWNTO 152) 		<= lcd_donvi0(31 DOWNTO 24) when  gt_mod = "00"  and sw0 = '0' else
	                              lcd_donvi1(31 DOWNTO 24) when (gt_mod = "01") and sw0 = '0' else
											lcd_donvi2(31 DOWNTO 24) when (gt_mod = "10") and sw0 = '0' else
											lcd_donvi3(31 DOWNTO 24) when (gt_mod = "11") and sw0 = '0' else
											X"3" & donvi0 when (gt_mod = "00") and sw0 = '1' else
											X"3" & donvi1 when (gt_mod = "01") and sw0 = '1' else
											X"3" & donvi2 when (gt_mod = "10") and sw0 = '1' else
											X"3" & donvi3 when (gt_mod = "11") and sw0 = '1' else
											x"20";
---- HANG 2
	LCD_H2(  7 DOWNTO   0) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('D'),8);
	LCD_H2( 15 DOWNTO   8) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('A'),8);
	LCD_H2( 23 DOWNTO  16) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('I'),8);
	LCD_H2( 31 DOWNTO  24) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2( 39 DOWNTO  32) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('H'),8);
	LCD_H2( 47 DOWNTO  40) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('O'),8);
	LCD_H2( 55 DOWNTO  48) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('C'),8);
	LCD_H2( 63 DOWNTO  56) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2( 71 DOWNTO  64) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2( 79 DOWNTO  72) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2( 87 DOWNTO  80) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2( 95 DOWNTO  88) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(103 DOWNTO  96) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(111 DOWNTO 104) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(119 DOWNTO 112) 		<= lcd_chuc0 (23 DOWNTO 16) when gt_mod = "00" and (sw0 = '0')  else
	                              lcd_chuc1 (23 DOWNTO 16) when (gt_mod = "01") and sw0 = '0' else
											lcd_CHUC2 (23 DOWNTO 16) when (gt_mod = "10") and sw0 = '0' else
											lcd_chuc3 (23 DOWNTO 16) when (gt_mod = "11") and sw0 = '0' else
											x"20";
	LCD_H2(127 DOWNTO 120) 		<= lcd_chuc0 (15 DOWNTO  8) when  gt_mod = "00" and sw0 = '0' else	                               
	                              lcd_chuc1 (15 DOWNTO  8) when (gt_mod = "01") and sw0 = '0' else
											lcd_CHUC2 (15 DOWNTO  8) when (gt_mod = "10") and sw0 = '0' else
										   lcd_chuc3 (15 DOWNTO  8) when (gt_mod = "11") and sw0 = '0' else	
											X"20";
	LCD_H2(135 DOWNTO 128) 		<= lcd_chuc0 (7 DOWNTO 0) when  gt_mod = "00" and sw0 = '0' else
	                              lcd_chuc1 (7 DOWNTO 0) when (gt_mod = "01") and sw0 = '0' else
											lcd_chuc2 (7 DOWNTO 0) when (gt_mod = "10") and sw0 = '0' else
										   lcd_chuc3 (7 DOWNTO 0) when (gt_mod = "11") and sw0 = '0' else	
											X"20";
	LCD_H2(143 DOWNTO 136) 		<= lcd_donvi0(23 DOWNTO 16) when gt_mod = "00" and sw0 = '0' else
	                              lcd_donvi1(23 DOWNTO 16) when (gt_mod = "01") and sw0 = '0' else
											lcd_donvi2(23 DOWNTO 16) when (gt_mod = "10") and sw0 = '0' else
											lcd_donvi3(23 DOWNTO 16) when (gt_mod = "11") and sw0 = '0' else
											x"20";
	LCD_H2(151 DOWNTO 144) 		<= lcd_donvi0(15 DOWNTO  8) when  gt_mod = "00" and sw0 = '0' else
	                              lcd_donvi1(15 DOWNTO  8) when (gt_mod = "01") and sw0 = '0' else
											lcd_donvi2(15 DOWNTO  8) when (gt_mod = "10") and sw0 = '0' else
											lcd_donvi3(15 DOWNTO  8) when (gt_mod = "11") and sw0 = '0' else
											x"20";
	LCD_H2(159 DOWNTO 152) 		<= lcd_donvi0( 7 DOWNTO  0) when  gt_mod = "00" and sw0 = '0' else
	                              lcd_donvi1( 7 DOWNTO  0) when (gt_mod = "01") and sw0 = '0' else
											lcd_donvi2( 7 DOWNTO  0) when (gt_mod = "10") and sw0 = '0' else
											lcd_donvi3( 7 DOWNTO  0) when (gt_mod = "11") and sw0 = '0' else
											x"20";
	
---- HANG 3
	LCD_H3(  7 DOWNTO   0) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('D'),8);
	LCD_H3( 15 DOWNTO   8) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('A'),8);
	LCD_H3( 23 DOWNTO  16) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('I'),8);
	LCD_H3( 31 DOWNTO  24) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 39 DOWNTO  32) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('H'),8);
	LCD_H3( 47 DOWNTO  40) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('O'),8);
	LCD_H3( 55 DOWNTO  48) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('C'),8);
	LCD_H3( 63 DOWNTO  56) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 71 DOWNTO  64) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('S'),8);
	LCD_H3( 79 DOWNTO  72) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('P'),8);
	LCD_H3( 87 DOWNTO  80) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('K'),8);
	LCD_H3( 95 DOWNTO  88) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('T'),8);
	LCD_H3(103 DOWNTO  96) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(111 DOWNTO 104) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8);
	LCD_H3(119 DOWNTO 112) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('2'),8);
	LCD_H3(127 DOWNTO 120) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('3'),8);
	LCD_H3(135 DOWNTO 128) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('4'),8);
	LCD_H3(143 DOWNTO 136) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('5'),8);
	LCD_H3(151 DOWNTO 144) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('6'),8);
	LCD_H3(159 DOWNTO 152) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('7'),8);
	
---- HANG 4
	LCD_H4(  7 DOWNTO   0) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('D'),8);
	LCD_H4( 15 DOWNTO   8) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('A'),8);
	LCD_H4( 23 DOWNTO  16) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('I'),8);
	LCD_H4( 31 DOWNTO  24) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 39 DOWNTO  32) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('H'),8);
	LCD_H4( 47 DOWNTO  40) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('O'),8);
	LCD_H4( 55 DOWNTO  48) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('C'),8);
	LCD_H4( 63 DOWNTO  56) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 71 DOWNTO  64) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('S'),8);
	LCD_H4( 79 DOWNTO  72) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('P'),8);
	LCD_H4( 87 DOWNTO  80) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('K'),8);
	LCD_H4( 95 DOWNTO  88) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('T'),8);
	LCD_H4(103 DOWNTO  96) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(111 DOWNTO 104) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('7'),8);
	LCD_H4(119 DOWNTO 112) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('6'),8);
	LCD_H4(127 DOWNTO 120) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('5'),8);
	LCD_H4(135 DOWNTO 128) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('4'),8);
	LCD_H4(143 DOWNTO 136) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('3'),8);
	LCD_H4(151 DOWNTO 144) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('2'),8);
	LCD_H4(159 DOWNTO 152) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8);



end Behavioral;

