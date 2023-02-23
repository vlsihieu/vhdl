----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:03:52 09/02/2019 
-- Design Name: 
-- Module Name:    MAHOA_CONDITIONAL_42H_ACT - Behavioral 
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

entity MAHOA_CONDITIONAL_42H_ACT is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           O : out  STD_LOGIC_VECTOR (1 downto 0);
           ACT : out  STD_LOGIC);
end MAHOA_CONDITIONAL_42H_ACT;

architecture Behavioral of MAHOA_CONDITIONAL_42H_ACT is

begin
	
	O <= 	"11" WHEN I(3) = '1' ELSE
			"10" WHEN I(2) = '1' ELSE
			"01" WHEN I(1) = '1' ELSE
			"00" ;
			
	ACT <= I(3) OR I(2) OR I(1) OR I(0);
			

end Behavioral;

