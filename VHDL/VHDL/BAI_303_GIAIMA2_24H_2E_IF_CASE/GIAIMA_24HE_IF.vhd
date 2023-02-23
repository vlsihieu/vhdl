----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:57:43 09/01/2019 
-- Design Name: 
-- Module Name:    GIAIMA_24HE_IF - Behavioral 
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

entity GIAIMA_24HE_IF is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           EN : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (3 downto 0));
end GIAIMA_24HE_IF;

architecture Behavioral of GIAIMA_24HE_IF is

begin

	PROCESS (I,EN)
	BEGIN
		IF 	I = "00" AND EN = '1' THEN O <= "0001";
		ELSIF I = "01" AND EN = '1' THEN O <= "0010";
		ELSIF I = "10" AND EN = '1' THEN O <= "0100";
		ELSIF I = "11" AND EN = '1' THEN O <= "1000";
		ELSE 										O <= "0000";
		END IF;
	END PROCESS;

end Behavioral;

