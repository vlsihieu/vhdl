----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:39:15 09/02/2019 
-- Design Name: 
-- Module Name:    GIAIDAHOP_4KENH_2BIT - Behavioral 
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

entity GIAIDAHOP_4KENH_2BIT is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIDAHOP_4KENH_2BIT;

architecture Behavioral of GIAIDAHOP_4KENH_2BIT is

begin

O <= 	"000000" & I 		WHEN S = "00" ELSE
		"0000" & I & "00" WHEN S = "01" ELSE
		"00" & I & "0000" WHEN S = "10" ELSE
		I & "000000" 		WHEN S = "11" ELSE
		"00000000" ;

end Behavioral;

