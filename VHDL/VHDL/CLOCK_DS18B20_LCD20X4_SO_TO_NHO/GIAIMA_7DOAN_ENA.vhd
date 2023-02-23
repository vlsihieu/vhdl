----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:43:08 12/23/2014 
-- Design Name: 
-- Module Name:    GIAIMA_7DOAN - Behavioral 
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
entity GIAIMA_7DOAN_ENA is
    Port ( 	SO_GIAIMA : in  STD_LOGIC_VECTOR (3 downto 0);
				DAU_CHAM_1LED, ENA_GIAIMA_1LED:	IN	STD_LOGIC;
				SSEG : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIMA_7DOAN_ENA;

architecture Behavioral of GIAIMA_7DOAN_ENA is
begin
PROCESS (SO_GIAIMA, DAU_CHAM_1LED, ENA_GIAIMA_1LED)
	BEGIN
	IF ENA_GIAIMA_1LED = '0'  THEN SSEG	<=	X"FF";	
	ELSE
		CASE SO_GIAIMA IS
			WHEN 	X"0"	=>	SSEG	<=	DAU_CHAM_1LED & "1000000";		--0							
			WHEN 	X"1"	=>	SSEG	<=	DAU_CHAM_1LED & "1111001";		--1																
			WHEN 	X"2"	=>	SSEG	<=	DAU_CHAM_1LED & "0100100";		--2															
			WHEN	X"3"	=>	SSEG	<=	DAU_CHAM_1LED & "0110000";		--3										
			WHEN 	X"4"	=>	SSEG	<=	DAU_CHAM_1LED & "0011001";		--4										
			WHEN 	X"5"	=>	SSEG	<=	DAU_CHAM_1LED & "0010010";		--5										
			WHEN 	X"6"	=>	SSEG	<=	DAU_CHAM_1LED & "0000010";		--6										
			WHEN 	X"7"	=>	SSEG	<=	DAU_CHAM_1LED & "1111000";		--7										
			WHEN 	X"8"	=>	SSEG	<=	DAU_CHAM_1LED & "0000000";		--8										
			WHEN 	X"9"	=>	SSEG	<=	DAU_CHAM_1LED & "0010000";		--9										
			WHEN 	X"A"	=>	SSEG	<=	DAU_CHAM_1LED & "0001000";		--A										
			WHEN 	X"B"	=>	SSEG	<=	DAU_CHAM_1LED & "0000011";		--B										
			WHEN 	X"C"	=>	SSEG	<=	DAU_CHAM_1LED & "1000110";		--C										
			WHEN 	X"D"	=>	SSEG	<=	DAU_CHAM_1LED & "0100001";		--D										
			WHEN 	X"E"	=>	SSEG	<=	DAU_CHAM_1LED & "0000110";		--E										
			WHEN 	OTHERS	=>	SSEG	<=	DAU_CHAM_1LED & "0001110";		--F 										
		END CASE;
	END IF;
	END PROCESS;
end Behavioral;

