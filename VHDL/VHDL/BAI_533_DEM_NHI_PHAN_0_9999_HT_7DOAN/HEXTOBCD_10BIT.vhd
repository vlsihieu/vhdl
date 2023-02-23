----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:46:16 06/28/2017 
-- Design Name: 
-- Module Name:    HEXTOBCD_14BIT - Behavioral 
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

entity HEXTOBCD_14BIT is
    Port ( SOHEX14BIT : in  STD_LOGIC_VECTOR (13 downto 0);
		     DONVI, CHUC, TRAM, NGHIN : out  STD_LOGIC_VECTOR (3 downto 0));
end HEXTOBCD_14BIT;

architecture Behavioral of HEXTOBCD_14BIT is

begin
	
	PROCESS(SOHEX14BIT)
	VARIABLE BCD_HEX: STD_LOGIC_VECTOR(33 DOWNTO 0);
	VARIABLE DEM: INTEGER RANGE 0 TO 13;
	BEGIN
		BCD_HEX:= "00000000000000000000" & SOHEX14BIT;
		DEM:=13;
		WHILE DEM>0
		LOOP 
			BCD_HEX:= BCD_HEX(32 DOWNTO 0) & BCD_HEX(33);
			DEM:= DEM-1;
			IF BCD_HEX(17 DOWNTO 14)>= "0101" THEN 
				BCD_HEX(17 DOWNTO 14) := BCD_HEX(17 DOWNTO 14)+"0011";
			END IF;	
			IF BCD_HEX(21 DOWNTO 18)>= "0101" THEN 
				BCD_HEX(21 DOWNTO 18 := BCD_HEX(21 DOWNTO 18)+"0011";
			END IF;
			IF BCD_HEX(25 DOWNTO 22)>= "0101" THEN 
				BCD_HEX(25 DOWNTO 22 := BCD_HEX(25 DOWNTO 22)+"0011";
			END IF;
			IF BCD_HEX(29 DOWNTO 26)>= "0101" THEN 
				BCD_HEX(29 DOWNTO 26) := BCD_HEX(29 DOWNTO 26)+"0011";
			END IF;
		END LOOP;
		BCD_HEX:= BCD_HEX(33 DOWNTO 0) & '0';
		DONVI <= BCD_HEX(17 DOWNTO 14);
		CHUC <= BCD_HEX(21 DOWNTO 18);
		TRAM <= BCD_HEX(25 DOWNTO 22);
		NGHIN <= BCD_HEX(29 DOWNTO 26);
	END PROCESS;

end Behavioral;

