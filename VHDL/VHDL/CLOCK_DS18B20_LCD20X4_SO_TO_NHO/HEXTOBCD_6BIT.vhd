----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:14:38 08/30/2019 
-- Design Name: 
-- Module Name:    HEXTOBCD_6BIT - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity HEXTOBCD_6BIT is
    Port ( SOHEX6BIT : in  STD_LOGIC_VECTOR (5 downto 0);
           DONVI : out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC : out  STD_LOGIC_VECTOR (3 downto 0));
end HEXTOBCD_6BIT;

architecture Behavioral of HEXTOBCD_6BIT is

begin

	PROCESS(SOHEX6BIT)
	
	VARIABLE BCD_HEX: STD_LOGIC_VECTOR(11 DOWNTO 0); -- CACH LAM KHAC: 14BIT
	VARIABLE DEM: INTEGER RANGE 0 TO 3; -- CACH LAM KHAC: 6BIT => DEM = 6 - 1 = 5 
	
	BEGIN
																	--   CHUC DONVI
		BCD_HEX := "000000"&SOHEX6BIT; -- CACH LAM KHAC: "0000_0000"&SOHEX6BIT" => 14BIT
		DEM := 3; -- CACH LAM KHAC: SOHEX6BIT => DEM = 6 - 1 = 5 
		WHILE DEM > 0
		LOOP
		
			BCD_HEX := BCD_HEX(10 DOWNTO 0)&'0';
			DEM := DEM - 1;
			IF BCD_HEX(7 DOWNTO 4)>= "0101" THEN
				BCD_HEX(7 DOWNTO 4):= BCD_HEX(7 DOWNTO 4)+"0011";
			END IF;
		END LOOP;
		BCD_HEX := BCD_HEX(10 DOWNTO 0)&'0';
		DONVI <= BCD_HEX(7 DOWNTO 4);
		CHUC <= BCD_HEX(11 DOWNTO 8);
		
	END PROCESS;

end Behavioral;

