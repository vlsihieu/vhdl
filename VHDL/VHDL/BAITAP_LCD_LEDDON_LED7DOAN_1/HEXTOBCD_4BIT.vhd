----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:59:01 09/09/2019 
-- Design Name: 
-- Module Name:    HEXTOBCD_4BIT - Behavioral 
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
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HEXTOBCD_4BIT is
    Port ( SOHEX4BIT : in  STD_LOGIC_VECTOR (3 downto 0);
           DONVI, CHUC : out  STD_LOGIC_VECTOR (3 downto 0));
end HEXTOBCD_4BIT;

architecture Behavioral of HEXTOBCD_4BIT is

begin
	PROCESS	(SOHEX4BIT)
	VARIABLE BCD_HEX: STD_LOGIC_VECTOR(11 DOWNTO 0);
	VARIABLE DEM: INTEGER RANGE 0 TO 3;
	BEGIN	
		BCD_HEX:= "00000000"	& SOHEX4BIT;
		DEM:=3;
		
		WHILE DEM >0
		LOOP
			BCD_HEX:= BCD_HEX(10 DOWNTO 0) & '0';
			DEM:= DEM - 1;
			IF BCD_HEX(7 DOWNTO 4)>= "0101" THEN
				BCD_HEX(7 DOWNTO 4):= BCD_HEX(7 DOWNTO 4)+ "0011";
			END IF;
		END LOOP;
		BCD_HEX:= BCD_HEX(10 DOWNTO 0) & '0';
		DONVI	 <= BCD_HEX(7 DOWNTO 4);
		CHUC	 <= BCD_HEX(11 DOWNTO 8);
		END PROCESS;
end Behavioral;

