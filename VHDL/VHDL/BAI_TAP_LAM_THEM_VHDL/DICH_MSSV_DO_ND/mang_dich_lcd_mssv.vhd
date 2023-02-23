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

entity mang_dich_lcd_mssv is
    Port ( ena_db : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           mssv : out  STD_LOGIC_VECTOR (7 downto 0)
			 );
end mang_dich_lcd_mssv;

architecture Behavioral of mang_dich_lcd_mssv is
TYPE MANG_DICH IS ARRAY(INTEGER RANGE 0 TO 15) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HOVATEN : MANG_DICH:= (  
         0  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8), 
         1  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		   2  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		   3  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		   4  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		   5  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			6  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
			7  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),

													
			8  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8),
			9  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('6'),8),
			10 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8),
			11 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8),
		   12 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('9'),8),                  
			13 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('0'),8),                                 
			14 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('8'),8),
		   15 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('8'),8) );
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

													
			8  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8),
			9  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('6'),8),
			10 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8),
			11 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8),
		   12 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('9'),8),                  
			13 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('0'),8),                                 
			14 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('8'),8),
		   15 => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('8'),8)
													);
		ELSIF (FALLING_EDGE(ENA_DB)) THEN
--			HOVATEN(15) <= HOVATEN(0);
			FOR I IN 0 TO 14
			LOOP
				HOVATEN(I) <= HOVATEN(I+1);
			END LOOP;
		END IF;
	 END PROCESS;
mssv <= HOVATEN;
end Behavioral;

