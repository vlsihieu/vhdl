
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

entity HEXTOBCD_5BIT is
    Port ( SOHEX5BIT : in  STD_LOGIC_VECTOR (4 downto 0);
           DONVI : out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC : out  STD_LOGIC_VECTOR (3 downto 0));
end HEXTOBCD_5BIT;

architecture Behavioral of HEXTOBCD_5BIT is

begin

	PROCESS(SOHEX5BIT)
	VARIABLE BCD_HEX : STD_LOGIC_VECTOR( 12 DOWNTO 0);
	VARIABLE DEM : INTEGER RANGE 0 TO 4;
	
	BEGIN
		BCD_HEX := "00000000" & SOHEX5BIT;
		DEM := 4;
		WHILE DEM > 0
		LOOP
			BCD_HEX := BCD_HEX(11 DOWNTO 0) & '0';
			DEM := DEM -1;
			IF BCD_HEX (8 DOWNTO 5) >= "0101" THEN
				BCD_HEX (8 DOWNTO 5) := BCD_HEX(8 DOWNTO 5) + "0011" ;
			END IF;
			
			IF BCD_HEX (12 DOWNTO 9) >= "0101" THEN
				BCD_HEX (12 DOWNTO 9) := BCD_HEX(12 DOWNTO 9) + "0011";
			END IF;
		END LOOP;
		
		BCD_HEX := BCD_HEX(11 DOWNTO 0) & '0';
		DONVI <= BCD_HEX(8 DOWNTO 5);
		CHUC <= BCD_HEX(12 DOWNTO 9);
	END PROCESS;

end Behavioral;



