----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:51:17 09/02/2019 
-- Design Name: 
-- Module Name:    DAHOP_4KENH_1BIT_CONDITIONAL - Behavioral 
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

entity DAHOP_4KENH_1BIT_CONDITIONAL is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end DAHOP_4KENH_1BIT_CONDITIONAL;

architecture Behavioral of DAHOP_4KENH_1BIT_CONDITIONAL is

begin

O <= 	I(0) WHEN S ="00" ELSE
		I(1) WHEN S ="01" ELSE
		I(2) WHEN S ="10" ELSE
		I(3);
		

end Behavioral;

