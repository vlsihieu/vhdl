----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:49:12 08/30/2019 
-- Design Name: 
-- Module Name:    GIAIMA_IF_INS - Behavioral 
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

entity GIAIMA_IF_INS is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC_VECTOR (3 downto 0));
end GIAIMA_IF_INS;

architecture Behavioral of GIAIMA_IF_INS is

begin
	PROCESS(I)
	BEGIN
		IF			I = "00" THEN O <= "0001";
		ELSIF		I = "01" THEN O <= "0010";
		ELSIF		I = "10" THEN O <= "0100";
		ELSE						  O <= "1000";
		END IF;
	END PROCESS;

end Behavioral;

