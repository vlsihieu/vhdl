----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:51:29 09/01/2019 
-- Design Name: 
-- Module Name:    GIAIMA1_38_ES - Behavioral 
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

entity GIAIMA1_38_ES is
    Port ( I : in  STD_LOGIC_VECTOR (2 downto 0);
           EN : in  STD_LOGIC;
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIMA1_38_ES;

architecture Behavioral of GIAIMA1_38_ES is

begin

	O <= 	"00000001" WHEN I = "000" AND EN = '1' AND S = '1' ELSE
			"00000010" WHEN I = "001" AND EN = '1' AND S = '1' ELSE
			"00000100" WHEN I = "010" AND EN = '1' AND S = '1' ELSE
			"00001000" WHEN I = "011" AND EN = '1' AND S = '1' ELSE
			"00010000" WHEN I = "100" AND EN = '1' AND S = '1' ELSE
			"00100000" WHEN I = "101" AND EN = '1' AND S = '1' ELSE
			"01000000" WHEN I = "110" AND EN = '1' AND S = '1' ELSE
			"10000000" WHEN I = "111" AND EN = '1' AND S = '1' ELSE
			
			"11111110" WHEN I = "000" AND EN = '1' AND S = '0' ELSE
			"11111101" WHEN I = "001" AND EN = '1' AND S = '0' ELSE
			"11111011" WHEN I = "010" AND EN = '1' AND S = '0' ELSE
			"11110111" WHEN I = "011" AND EN = '1' AND S = '0' ELSE
			"11101111" WHEN I = "100" AND EN = '1' AND S = '0' ELSE
			"11011111" WHEN I = "101" AND EN = '1' AND S = '0' ELSE
			"10111111" WHEN I = "110" AND EN = '1' AND S = '0' ELSE
			"01111111" WHEN I = "111" AND EN = '1' AND S = '0' ELSE
			
			"00000000" WHEN EN = '0' AND S = '1' ELSE
			"11111111" WHEN EN = '0' AND S = '0' ELSE
			"11110000";
			

end Behavioral;

