----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:41:32 10/06/2019 
-- Design Name: 
-- Module Name:    QUET_ANODE_8LED_7DOAN - Behavioral 
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

entity QUET_ANODE_8LED_7DOAN is
	PORT(		SEL_3B: 							IN 	STD_LOGIC_VECTOR(2 DOWNTO 0);
				ANODE: 							OUT 	STD_LOGIC_VECTOR(7 DOWNTO 0));	
end QUET_ANODE_8LED_7DOAN;

architecture Behavioral of QUET_ANODE_8LED_7DOAN is

begin
PROCESS(SEL_3B)
		BEGIN
			CASE SEL_3B IS
				WHEN "000"		=>	ANODE <= "11111110";		
				WHEN "001"		=>	ANODE <= "11111101";		
				WHEN "010"		=>	ANODE <= "11111011";		
				WHEN "011"		=>	ANODE <= "11110111";		
				WHEN "100"		=>	ANODE <= "11101111";		
				WHEN "101"		=>	ANODE <= "11011111";		
				WHEN "110"		=>	ANODE <= "10111111";		
				WHEN OTHERS		=>	ANODE <= "01111111";		
			END CASE;
	END PROCESS;

end Behavioral;

