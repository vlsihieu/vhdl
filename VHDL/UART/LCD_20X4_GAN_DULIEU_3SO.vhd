----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:02:00 11/21/2019 
-- Design Name: 
-- Module Name:    LCD_20X4_GAN_DULIEU_3SO - Behavioral 
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

entity LCD_20X4_GAN_DULIEU_3SO is
    Port ( H2_17 : in  		STD_LOGIC_VECTOR (3 downto 0);
           H2_18 : in  		STD_LOGIC_VECTOR (3 downto 0);
           H2_19 : in  		STD_LOGIC_VECTOR (3 downto 0);
           LCD_H2 : out  	STD_LOGIC_VECTOR (159 downto 0)
			  );
end LCD_20X4_GAN_DULIEU_3SO;

architecture Behavioral of LCD_20X4_GAN_DULIEU_3SO is

begin


	
---- HANG 2
	LCD_H2(  7 DOWNTO   0) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('D'),8);
	LCD_H2( 15 DOWNTO   8) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('A'),8);
	LCD_H2( 23 DOWNTO  16) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('I'),8);
	LCD_H2( 31 DOWNTO  24) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2( 39 DOWNTO  32) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('H'),8);
	LCD_H2( 47 DOWNTO  40) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('O'),8);
	LCD_H2( 55 DOWNTO  48) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('C'),8);
	LCD_H2( 63 DOWNTO  56) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2( 71 DOWNTO  64) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('S'),8);
	LCD_H2( 79 DOWNTO  72) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('P'),8);
	LCD_H2( 87 DOWNTO  80) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('K'),8);
	LCD_H2( 95 DOWNTO  88) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('T'),8);
	LCD_H2(103 DOWNTO  96) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(111 DOWNTO 104) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('7'),8);
	LCD_H2(119 DOWNTO 112) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('6'),8);
	LCD_H2(127 DOWNTO 120) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('5'),8);
	LCD_H2(135 DOWNTO 128) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('4'),8);
	LCD_H2(143 DOWNTO 136) 		<=  X"3" & H2_17;
	LCD_H2(151 DOWNTO 144) 		<=  X"3" & H2_18;
	LCD_H2(159 DOWNTO 152) 		<=  X"3" & H2_19;
	
end Behavioral;

