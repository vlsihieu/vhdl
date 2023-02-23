----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:26:11 08/30/2019 
-- Design Name: 
-- Module Name:    GIAIMA_CONDITIONAL_INS - Behavioral 
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

entity GIAIMA_CONDITIONAL_INS is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC_VECTOR (3 downto 0));
end GIAIMA_CONDITIONAL_INS;

architecture Behavioral of GIAIMA_CONDITIONAL_INS is

begin
	O <= 	"0001" WHEN I = "00" ELSE
			"0010" WHEN I = "01" ELSE
			"0100" WHEN I = "10" ELSE
			"1000" ;

end Behavioral;

