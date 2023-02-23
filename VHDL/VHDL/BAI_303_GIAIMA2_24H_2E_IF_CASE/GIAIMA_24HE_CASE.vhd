----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:58:48 09/01/2019 
-- Design Name: 
-- Module Name:    GIAIMA_24HE_CASE - Behavioral 
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

entity GIAIMA_24HE_CASE is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           EN : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (3 downto 0));
end GIAIMA_24HE_CASE;

architecture Behavioral of GIAIMA_24HE_CASE is

SIGNAL ENI : STD_LOGIC_VECTOR(2 DOWNTO 0);

begin

	ENI <= EN & I;
	PROCESS (ENI)
	BEGIN
		CASE ENI IS
			WHEN "100" => O <= "0001";
			WHEN "101" => O <= "0010";
			WHEN "110" => O <= "0100";
			WHEN "111" => O <= "1000";
			WHEN OTHERS => O <= "0000";
		END CASE;
	END PROCESS;

end Behavioral;

