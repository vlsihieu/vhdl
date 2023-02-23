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
			  LCD_MA_donvi : in  STD_LOGIC_VECTOR (47 downto 0);
			  LCD_MA_chuc  : in  STD_LOGIC_VECTOR (47 downto 0);
--			  LCD_MA_tram  : in  STD_LOGIC_VECTOR (47 downto 0);
			  ----------------------------------------
			  H1_17 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			  H1_18 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			  H1_19 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			  -----------------------------------------
           oe : in std_logic_vector(3 downto 0);
			  -------------------------------------------
			  ena_db    : in std_logic;
			  --------------------------------------------
			  
           LCD_H1 : out  STD_LOGIC_VECTOR (159 downto 0);
           LCD_H2 : out  STD_LOGIC_VECTOR (159 downto 0);
           LCD_H3 : out  STD_LOGIC_VECTOR (159 downto 0);
           LCD_H4 : out  STD_LOGIC_VECTOR (159 downto 0));
end LCD_20X4_GAN_DULIEU_1SO_TO;

architecture Behavioral of LCD_20X4_GAN_DULIEU_1SO_TO is
--signal lcd_ma_tr:   STD_LOGIC_VECTOR (47 downto 0);
signal tram : std_logic_vector(7 downto 0);
---------------------------------------
TYPE MANG_DICH1 IS ARRAY(INTEGER RANGE 0 TO 25) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HOVATEN : MANG_DICH1:= ( 

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
---------------------------------------      
      13  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('V'),8), 
      14  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8),
	   15  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
	   16  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('T'),8),
		17  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('R'),8),
		18  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8),
		19  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('N'),8),
		20  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('G'),8),
		21  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		22  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('H'),8),
		23  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('I'),8),
		24  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('E'),8),
		25  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8)
		);
----------------------------------------------------------
TYPE MANG_DICH2 IS ARRAY(INTEGER RANGE 0 TO 15) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MSSV : MANG_DICH2:= ( 

      0  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8), 
		1  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		2  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		3  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		4  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		5  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		6  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
		7  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8),
---------------------------------------      
      8   => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('8'),8), 
      9   => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('8'),8),
	   10  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('0'),8),
	   11  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('9'),8),
		12  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8),
		13  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8),
		14  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('6'),8),
		15  => CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8)

		);		
begin
---------------------------------------
--lcd_ma_tr <= X"20"&X"20"&X"20"&X"20"&X"20"&X"20" WHEN (lcd_ma_tram = X"00"&X"01"&X"02"&X"04"&X"03"&X"05") else
--             lcd_ma_tram;
tram <= x"20" when (h1_17 = X"0") else
        x"3" & h1_17;
----------------------------------------------------------------
PROCESS(ENA_DB,HOVATEN)
	BEGIN
		IF (FALLING_EDGE(ENA_DB)) THEN
			HOVATEN(25) <= HOVATEN(0);
			FOR I IN 0 TO 24
			LOOP
				HOVATEN(I) <= HOVATEN(I+1);
			END LOOP;
		ELSE
			HOVATEN <= HOVATEN;
	END IF;
END PROCESS;
------------------------------------------------------------------
PROCESS(ENA_DB,MSSV)

	BEGIN
		IF (FALLING_EDGE(ENA_DB)) THEN
			MSSV(15) <= MSSV(0);
			FOR I IN 0 TO 14
			LOOP
				MSSV(I) <= MSSV(I+1);
			END LOOP;
		ELSE
			MSSV <= MSSV;
	END IF;
END PROCESS;

-----------------------------------------------------------------
	LCD_H1( 7 DOWNTO  0) 		<= hovaten(0)  when (oe(0)= '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('V'),8);
	LCD_H1( 15 DOWNTO  8) 		<= hovaten(1)  when (oe(0)= '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8);
	LCD_H1( 23 DOWNTO  16) 		<= hovaten(2)  when (oe(0)= '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1( 31 DOWNTO  24) 		<= hovaten(3)  when (oe(0)= '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('T'),8);
	LCD_H1( 39 DOWNTO  32) 		<= hovaten(4)  when (oe(0)= '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('R'),8);
	LCD_H1( 47 DOWNTO  40) 		<= hovaten(5)  when (oe(0)= '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8);
	LCD_H1( 55 DOWNTO  48) 		<= hovaten(6)  when (oe(0)= '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('N'),8);
	LCD_H1( 63 DOWNTO  56) 		<= hovaten(7)  when (oe(0)= '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('G'),8);
	LCD_H1( 71 DOWNTO  64) 		<= hovaten(8)  when (oe(0)= '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1( 79 DOWNTO  72) 		<= hovaten(9)  when (oe(0)= '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('H'),8);
	LCD_H1( 87 DOWNTO  80) 		<= hovaten(10)  when (oe(0)= '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('I'),8);
------------------------------------------------------------------------------------------
	LCD_H1( 95 DOWNTO  88) 		<= hovaten(11)               when (oe(0)= '1' ) else
--	                              lcd_ma_tr(47 downto 40)   when (oe(3) = '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('E'),8) ;
	LCD_H1(103 DOWNTO  96) 		<= hovaten(12)               when (oe(0)= '1' ) else
--	                              lcd_ma_tr(39 downto 32) when (oe(3) = '1') else
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8) ;
	LCD_H1(111 DOWNTO 104) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
--	                              LCD_MA_tr(31 DOWNTO 24) when (oe(3) = '1') else
											
------------------------------------------------------------------------------------	
	LCD_H1(119 DOWNTO 112) 		<= LCD_MA_chuc(47 DOWNTO 40) when (oe(3) = '1') else
											CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(127 DOWNTO 120) 		<= LCD_MA_chuc(39 DOWNTO 32) when (oe(3) = '1') else
											CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(135 DOWNTO 128) 		<= LCD_MA_chuc(31 DOWNTO 24) when (oe(3) = '1') else
											CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
-------------------------------------------------------------------------------
	LCD_H1(143 DOWNTO 136) 		<= tram               when (oe(2) = '1') else           
	                              LCD_MA_DONVI(47 DOWNTO 40) when (oe(3) = '1') else
											CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(151 DOWNTO 144) 		<= X"3" & H1_18               when (oe(2) = '1') else            
	                              LCD_MA_DONVI(39 DOWNTO 32) when (oe(3) = '1') else
											CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H1(159 DOWNTO 152) 		<= X"3" & H1_19               when (oe(2) = '1') else            
	                              LCD_MA_DONVI(31 DOWNTO 24) when (oe(3) = '1') else
											CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	
---- HANG 2
	LCD_H2(  7 DOWNTO   0) 		<= mssv(7)  when (oe(1)= '1') ELSE
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8);
	LCD_H2( 15 DOWNTO   8) 		<= mssv(6)  when (oe(1)= '1') ELSE
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('6'),8);
	LCD_H2( 23 DOWNTO  16) 		<= mssv(5)  when (oe(1)= '1') ELSE
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8);
	LCD_H2( 31 DOWNTO  24) 		<= mssv(4)  when (oe(1)= '1') ELSE
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('1'),8);
	LCD_H2( 39 DOWNTO  32) 		<= mssv(3)  when (oe(1)= '1') ELSE
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('9'),8);
	LCD_H2( 47 DOWNTO  40) 		<= mssv(2)  when (oe(1)= '1') ELSE
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('0'),8);
	LCD_H2( 55 DOWNTO  48) 		<= mssv(1)  when (oe(1)= '1') ELSE
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('8'),8);
	LCD_H2( 63 DOWNTO  56) 		<= mssv(0)  when (oe(1)= '1') ELSE
	                              CONV_STD_LOGIC_VECTOR(CHARACTER'POS('8'),8);
-----------------------------------------------------------------------------
	LCD_H2( 71 DOWNTO  64) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2( 79 DOWNTO  72) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2( 87 DOWNTO  80) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
-----------------------------------------------------------------
	LCD_H2( 95 DOWNTO  88) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
--	                              LCD_MA_tr(23 DOWNTO 16) when (oe(3) = '1') else
											
	LCD_H2(103 DOWNTO  96) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
--	                              LCD_MA_tr(15 DOWNTO 8) when (oe(3) = '1') else
											
	LCD_H2(111 DOWNTO 104) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
--	                              LCD_MA_tr(7 DOWNTO 0)when (oe(3) = '1') else
											
---------------------------------------------------------------------------------
	LCD_H2(119 DOWNTO 112) 		<= LCD_MA_chuc(23 DOWNTO 16) when (oe(3) = '1') else
											CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(127 DOWNTO 120) 		<= LCD_MA_chuc(15 DOWNTO 8) when (oe(3) = '1') else
											CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(135 DOWNTO 128) 		<= LCD_MA_chuc(7 DOWNTO 0) when (oe(3) = '1') else
											CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	-----------------------------------------------------------------------------------
	LCD_H2(143 DOWNTO 136) 		<= LCD_MA_DONVI(23 DOWNTO 16) when (oe(3) = '1') else
											CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(151 DOWNTO 144) 		<= LCD_MA_DONVI(15 DOWNTO  8) when (oe(3) = '1') else
											CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H2(159 DOWNTO 152) 		<= LCD_MA_DONVI(7 DOWNTO 0) when (oe(3) = '1') else
											CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	
---- HANG 3
	LCD_H3(  7 DOWNTO   0) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 15 DOWNTO   8) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 23 DOWNTO  16) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 31 DOWNTO  24) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 39 DOWNTO  32) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 47 DOWNTO  40) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 55 DOWNTO  48) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 63 DOWNTO  56) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 71 DOWNTO  64) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 79 DOWNTO  72) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 87 DOWNTO  80) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3( 95 DOWNTO  88) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(103 DOWNTO  96) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(111 DOWNTO 104) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(119 DOWNTO 112) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(127 DOWNTO 120) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(135 DOWNTO 128) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(143 DOWNTO 136) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(151 DOWNTO 144) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H3(159 DOWNTO 152) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	
---- HANG 4
	LCD_H4(  7 DOWNTO   0) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 15 DOWNTO   8) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 23 DOWNTO  16) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 31 DOWNTO  24) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 39 DOWNTO  32) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 47 DOWNTO  40) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 55 DOWNTO  48) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 63 DOWNTO  56) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 71 DOWNTO  64) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 79 DOWNTO  72) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 87 DOWNTO  80) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4( 95 DOWNTO  88) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(103 DOWNTO  96) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(111 DOWNTO 104) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(119 DOWNTO 112) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(127 DOWNTO 120) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(135 DOWNTO 128) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(143 DOWNTO 136) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(151 DOWNTO 144) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
	LCD_H4(159 DOWNTO 152) 		<= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);



end Behavioral;

