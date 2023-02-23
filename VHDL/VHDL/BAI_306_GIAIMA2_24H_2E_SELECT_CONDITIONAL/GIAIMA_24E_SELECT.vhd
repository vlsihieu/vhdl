----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:07:37 08/31/2019 
-- Design Name: 
-- Module Name:    GIAIMA_24E_SELECT - Behavioral 
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

entity GIAIMA_24E_SELECT is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC_VECTOR (3 downto 0);
           EN : in  STD_LOGIC);
end GIAIMA_24E_SELECT;

architecture Behavioral of GIAIMA_24E_SELECT is

SIGNAL ENI : STD_LOGIC_VECTOR(2 DOWNTO 0);

begin


	ENI <= EN & I;
			WITH ENI SELECT
					O <= 	"0001" WHEN "100",
							"0010" WHEN "101",
							"0100" WHEN "110",
							"1000" WHEN "111",
							"0000" WHEN OTHERS;


end Behavioral;

