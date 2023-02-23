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
           OE : out  STD_LOGIC_VECTOR (5 downto 0));
end GIAIMA_OE ;

architecture Behavioral of GIAIMA_OE  is

begin
  PROCESS(SEL_3B,RST)
  BEGIN
		OE<="000000";
		IF RST='1'          THEN OE <= "000000";
		ELSIF SEL_3B= "000" THEN OE <= "000000";
		ELSIF SEL_3B= "001" THEN OE <= "000001";
		ELSIF SEL_3B= "010" THEN OE <= "000010";
		ELSIF SEL_3B= "011" THEN OE <= "000100";
		ELSIF SEL_3B= "100" THEN OE <= "001000";
		ELSIF SEL_3B= "101" THEN OE <= "010000";
		ELSIF SEL_3B= "110" THEN OE <= "100000";
		END IF;
	END PROCESS;
end Behavioral;

