----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:23:34 08/19/2020 
-- Design Name: 
-- Module Name:    mang_dich_lcd - Behavioral 
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

entity mang_dich_lcd_hoten is
    Port ( ena_db : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           hoten : out  STD_LOGIC_VECTOR (12 downto 0)
			 );
end mang_dich_lcd_hoten;

architecture Behavioral of mang_dich_lcd_hoten is
TYPE MANG_DICH IS ARRAY(INTEGER RANGE 0 TO 25) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HOVATEN : MANG_DICH:= (  
         0  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8), 
         1  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		   2  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		   3  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		   4  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		   5  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			6  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			7  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			8  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			9  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			10 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			11 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			12 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),

													
			13 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('V'),8),
			14 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8),
			15 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			16 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('T'),8),
		   17 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('R'),8),                  
			18 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8),                                 
			19 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('N'),8),
		   20 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('G'),8),
			21 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			22 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('H'),8),
			23 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('I'),8),                             
		   24 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('E'),8),													
			25 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8)
													);
begin


	 PROCESS(RST,ENA_DB,HOVATEN)
	 BEGIN
		IF (RST = '1') THEN 	HOVATEN <=( 

         0  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8), 
         1  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		   2  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		   3  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		   4  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		   5  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			6  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			7  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			8  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			9  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			10 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			11 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			12 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),

													
			13 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('V'),8),
			14 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8),
			15 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			16 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('T'),8),
		   17 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('R'),8),                  
			18 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8),                                 
			19 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('N'),8),
		   20 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('G'),8),
			21 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			22 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('H'),8),
			23 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('I'),8),                             
		   24 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('E'),8),													
			25 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8)
													);
		ELSIF (FALLING_EDGE(ENA_DB)) THEN
			HOVATEN(25) <= HOVATEN(0);
			FOR I IN 0 TO 24
			LOOP
				HOVATEN(I) <= HOVATEN(I+1);
			END LOOP;
		ELSE
			HOTEN <= HOVATEN;
		END IF;
	 END PROCESS;
--hoten <= hovaten;
end Behavioral;

