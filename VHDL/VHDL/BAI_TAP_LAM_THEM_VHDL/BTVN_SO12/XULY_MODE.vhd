----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:25:38 07/23/2020 
-- Design Name: 
-- Module Name:    XULY_MODE - Behavioral 
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

entity XULY_MODE is
    Port ( SEL : in  STD_LOGIC_VECTOR (2 downto 0);
           MODE : OUT  STD_LOGIC_VECTOR (3 downto 0));
end XULY_MODE;

architecture Behavioral of XULY_MODE is

begin
MODE <= "0000" WHEN SEL = "000" ELSE
        "0001" WHEN SEL = "001" ELSE
		  "0010" WHEN SEL = "010" ELSE
		  "0100" WHEN SEL = "011" ELSE
		  "1000" WHEN SEL = "100" ELSE
		  "0000";

end Behavioral;

