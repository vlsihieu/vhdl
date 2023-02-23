----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:08:54 08/31/2019 
-- Design Name: 
-- Module Name:    GIAIMA_24E_CONDITIONAL - Behavioral 
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

entity GIAIMA_24E_CONDITIONAL is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC_VECTOR (3 downto 0);
           EN : in  STD_LOGIC);
end GIAIMA_24E_CONDITIONAL;

architecture Behavioral of GIAIMA_24E_CONDITIONAL is

begin

	O <=	 "0001" WHEN I = "00" AND EN = '1' ELSE
			 "0010" WHEN I = "01" AND EN = '1' ELSE
			 "0100" WHEN I = "10" AND EN = '1' ELSE
			 "1000" WHEN I = "11" AND EN = '1' ELSE
			 "0000" ;

end Behavioral;

