-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:31:19 10/23/2017 
-- Design Name: 
-- Module Name:    SELECT_TANSO - Behavioral 
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

entity SELECT_TANSO is
    Port ( OE : in  STD_LOGIC_VECTOR (3 downto 0);
           ENA2, ENA5  : in  STD_LOGIC;
           ENA_O : out  STD_LOGIC);
end SELECT_TANSO;

architecture Behavioral of SELECT_TANSO is

begin
	ENA_O <= ENA2 WHEN OE(0) = '1' OR OE(1) = '1' ELSE
				 ENA5 WHEN OE(2) = '1' OR OE(3) = '1' ELSE
				 '0';

end Behavioral;
