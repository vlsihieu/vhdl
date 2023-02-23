----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:56 08/30/2019 
-- Design Name: 
-- Module Name:    GIAIMA_SELECT_INS - Behavioral 
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

entity GIAIMA_SELECT_INS is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC_VECTOR (3 downto 0));
end GIAIMA_SELECT_INS;

architecture Behavioral of GIAIMA_SELECT_INS is

begin
	 WITH I SELECT 
	 O <= "0001" WHEN "00",
			"0010" WHEN "01",
			"0100" WHEN "10",
			"1000" WHEN OTHERS;
	 

end Behavioral;

