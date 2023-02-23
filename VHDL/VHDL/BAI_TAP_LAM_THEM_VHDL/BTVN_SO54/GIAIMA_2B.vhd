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

entity GIAIMA_2B is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
	        RST  : IN STD_LOGIC;
           OE : out  STD_LOGIC_VECTOR (2 downto 0));
end GIAIMA_2B ;

architecture Behavioral of GIAIMA_2B  is

begin
  PROCESS(I,RST)
  BEGIN
		OE<="000";
		IF RST='1'    THEN OE <= "000";
		ELSIF I= "00" THEN OE <= "000";
		ELSIF I= "01" THEN OE <= "001";
		ELSIF I= "10" THEN OE <= "010";
		ELSIF I= "11" THEN OE <= "100";
		END IF;
	END PROCESS;
end Behavioral;

