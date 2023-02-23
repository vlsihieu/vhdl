----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:24:35 11/13/2019 
-- Design Name: 
-- Module Name:    LCD_20X4_GAN_DULIEU - Behavioral 
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

entity LCD_20X4_GAN_DULIEU is
    Port ( H1_13 : IN STD_LOGIC_VECTOR ( 3 DOWNTO 0);
			  H1_14 : IN STD_LOGIC_VECTOR ( 3 DOWNTO 0);
			  H1_15 : IN STD_LOGIC_VECTOR ( 3 DOWNTO 0);
			  H1_16 : IN STD_LOGIC_VECTOR ( 3 DOWNTO 0);
			  H1_17 : IN STD_LOGIC_VECTOR ( 3 DOWNTO 0);
			  H1_18 : IN STD_LOGIC_VECTOR ( 3 DOWNTO 0);
			  H1_19 : IN STD_LOGIC_VECTOR ( 3 DOWNTO 0);
           ena_6led : in std_logic_vector(5 downto 0);
			  LCD_H1 : out  STD_LOGIC_VECTOR (159 downto 0);
           LCD_H2 : out  STD_LOGIC_VECTOR (159 downto 0);
           LCD_H3 : out  STD_LOGIC_VECTOR (159 downto 0);
           LCD_H4 : out  STD_LOGIC_VECTOR (159 downto 0));
end LCD_20X4_GAN_DULIEU;

architecture Behavioral of LCD_20X4_GAN_DULIEU is
begin
---------------------

	LCD_H1(7 DOWNTO 0)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('C'),8);
	LCD_H1(15 DOWNTO 8)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('L'),8);
	LCD_H1(23 DOWNTO 16)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('O'),8);
	LCD_H1(31 DOWNTO 24)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('C'),8);
	LCD_H1(39 DOWNTO 32)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('K'),8);
	LCD_H1(47 DOWNTO 40)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(':'),8);
	LCD_H1(55 DOWNTO 48)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(63 DOWNTO 56)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(71 DOWNTO 64)		<= X"3" & H1_13 when ena_6led (5 downto 4)= "11" else
                              X"20"	;
	LCD_H1(79 DOWNTO 72)		<= X"3" & H1_14 when ena_6led(5 downto 4) = "11" else
                              X"20"	;
	LCD_H1(87 DOWNTO 80)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(95 DOWNTO 88)		<= X"3" & H1_15 when ena_6led (3 downto 2)= "11" else
                              X"20"	; 
	LCD_H1(103 DOWNTO 96)	<= X"3" & H1_16 when ena_6led (3 downto 2)= "11" else
                              X"20"	; 
	LCD_H1(111 DOWNTO 104)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(119 DOWNTO 112)	<= X"3" & H1_17 when ena_6led (1 downto 0)= "11" else
                              X"20"	; 
	LCD_H1(127 DOWNTO 120)	<= X"3" & H1_18  when ena_6led (1 downto 0)= "11" else
                              X"20"	;
	LCD_H1(135 DOWNTO 128)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(143 DOWNTO 136)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(151 DOWNTO 144)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(159 DOWNTO 152)	<= X"3" & H1_19  ;
	
--- HANG 2
	LCD_H2(7 DOWNTO 0)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(15 DOWNTO 8)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(23 DOWNTO 16)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(31 DOWNTO 24)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(39 DOWNTO 32)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(47 DOWNTO 40)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(55 DOWNTO 48)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(63 DOWNTO 56)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(71 DOWNTO 64)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(79 DOWNTO 72)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(87 DOWNTO 80)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(95 DOWNTO 88)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(103 DOWNTO 96)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(111 DOWNTO 104)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(119 DOWNTO 112)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(127 DOWNTO 120)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(135 DOWNTO 128)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(143 DOWNTO 136)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(151 DOWNTO 144)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(159 DOWNTO 152)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	
--- HANG 3
	LCD_H3(7 DOWNTO 0)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(15 DOWNTO 8)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(23 DOWNTO 16)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(31 DOWNTO 24)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(39 DOWNTO 32)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(47 DOWNTO 40)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(55 DOWNTO 48)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(63 DOWNTO 56)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(71 DOWNTO 64)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(79 DOWNTO 72)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(87 DOWNTO 80)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(95 DOWNTO 88)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(103 DOWNTO 96)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(111 DOWNTO 104)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(119 DOWNTO 112)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(127 DOWNTO 120)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(135 DOWNTO 128)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(143 DOWNTO 136)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(151 DOWNTO 144)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(159 DOWNTO 152)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	
--- HANG 4
	LCD_H4(7 DOWNTO 0)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(15 DOWNTO 8)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(23 DOWNTO 16)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(31 DOWNTO 24)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(39 DOWNTO 32)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(47 DOWNTO 40)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(55 DOWNTO 48)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(63 DOWNTO 56)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(71 DOWNTO 64)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(79 DOWNTO 72)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(87 DOWNTO 80)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(95 DOWNTO 88)		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(103 DOWNTO 96)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(111 DOWNTO 104)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(119 DOWNTO 112)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(127 DOWNTO 120)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(135 DOWNTO 128)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(143 DOWNTO 136)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(151 DOWNTO 144)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(159 DOWNTO 152)	<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);                           

end Behavioral;
