----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:14:30 09/02/2019 
-- Design Name: 
-- Module Name:    GIAIMA2_38_ES - Behavioral 
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

entity GIAIMA2_38_ES is
    Port ( I : in  STD_LOGIC_VECTOR (2 downto 0);
           EN : in  STD_LOGIC;
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIMA2_38_ES;

architecture Behavioral of GIAIMA2_38_ES is

SIGNAL OUTPUT: STD_LOGIC_VECTOR(7 DOWNTO 0);

begin

OUTPUT <= 	"00000001" WHEN I = "000" AND EN = '1'  ELSE
				"00000010" WHEN I = "001" AND EN = '1'  ELSE
				"00000100" WHEN I = "010" AND EN = '1'  ELSE
				"00001000" WHEN I = "011" AND EN = '1'  ELSE
				"00010000" WHEN I = "100" AND EN = '1'  ELSE
				"00100000" WHEN I = "101" AND EN = '1'  ELSE
				"01000000" WHEN I = "110" AND EN = '1'  ELSE
				"10000000" WHEN I = "111" AND EN = '1'  ELSE
				"00000000";
			
		PROCESS(S,OUTPUT)
		BEGIN
			IF 	S = '1' THEN O <= OUTPUT ;
			ELSIF S = '0' THEN O <= NOT(OUTPUT);
			ELSE 					 O <= "00001111";
			END IF ;
		END PROCESS;
		
end Behavioral;

