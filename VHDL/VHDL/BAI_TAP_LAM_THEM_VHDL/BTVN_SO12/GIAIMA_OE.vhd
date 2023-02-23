----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:12:47 10/17/2016 
-- Design Name: 
-- Module Name:    QUET_OE_8LED_7DOAN - Behavioral 
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

entity GIAIMA_OE is
    Port ( SEL_3B : in  STD_LOGIC_VECTOR (2 downto 0);
	        RST  : IN STD_LOGIC;
           MODE : out  STD_LOGIC_VECTOR (3 downto 0)
			);
end GIAIMA_OE ;

architecture Behavioral of GIAIMA_OE  is

begin
  PROCESS(SEL_3B,RST)
  BEGIN
		MODE<="0000";
		IF RST='1'          THEN MODE <= "0000";
		ELSIF SEL_3B= "000" THEN MODE <= "0000";
		ELSIF SEL_3B= "001" THEN MODE <= "0001";
		ELSIF SEL_3B= "010" THEN MODE <= "0010";
		ELSIF SEL_3B= "011" THEN MODE <= "0100"; -- OE(3) = 1
		ELSIF SEL_3B= "100" THEN MODE <= "1000"; -- OE(4) = 1;
		END IF;
	END PROCESS;
end Behavioral;