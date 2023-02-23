----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:31:19 10/23/2017 
-- Design Name: 
-- Module Name:    CHON_TAN_SO - Behavioral 
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

entity CHON_TAN_SO is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           ENA1, ENA5, ENA10, ENA20 : in  STD_LOGIC;
           ENA_O : out  STD_LOGIC);
end CHON_TAN_SO;

architecture Behavioral of CHON_TAN_SO is

begin
	ENA_O <= ENA1 WHEN SEL = "00" ELSE
				ENA5 WHEN SEL = "01" ELSE
				ENA10 WHEN SEL = "10" ELSE
				ENA20;

end Behavioral;

