----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:23:09 09/07/2019 
-- Design Name: 
-- Module Name:    HEXTOBCD_8BIT - Behavioral 
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

entity HEXTOBCD_8BIT is
    Port ( DONVI : out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC : out  STD_LOGIC_VECTOR (3 downto 0);
           TRAM : out  STD_LOGIC_VECTOR (3 downto 0);
           SOHEX8BIT : in  STD_LOGIC_VECTOR (7 downto 0));
end HEXTOBCD_8BIT;

architecture Behavioral of HEXTOBCD_8BIT is

begin

	PROCESS(SOHEX8BIT)
	VARIABLE BCD_HEX : STD_LOGIC_VECTOR( 19 DOWNTO 0);
	VARIABLE DEM : INTEGER RANGE 0 TO 7;
	
	BEGIN
		BCD_HEX := "000000000000" & SOHEX8BIT;
		DEM := 7;
		WHILE DEM > 0
		LOOP
			BCD_HEX := BCD_HEX(18 DOWNTO 0) & '0';
			DEM := DEM -1;
			
			IF BCD_HEX (11 DOWNTO 8) >= "0101" THEN
				BCD_HEX (11 DOWNTO 8) := BCD_HEX(11 DOWNTO 8) + "0011" ;
			END IF;
			
			IF BCD_HEX (15 DOWNTO 12) >= "0101" THEN
				BCD_HEX (15 DOWNTO 12) := BCD_HEX(15 DOWNTO 12) + "0011";
			END IF;
			
		END LOOP;
		
		BCD_HEX := BCD_HEX(18 DOWNTO 0) & '0';
		DONVI <= BCD_HEX(11 DOWNTO 8);
		CHUC <= BCD_HEX(15 DOWNTO 12);
		TRAM <= BCD_HEX(19 DOWNTO 16);
	END PROCESS;

end Behavioral;

