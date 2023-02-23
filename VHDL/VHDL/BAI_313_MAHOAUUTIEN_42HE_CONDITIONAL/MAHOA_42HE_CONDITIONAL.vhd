----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:31:46 09/02/2019 
-- Design Name: 
-- Module Name:    MAHOA_42HE_CONDITIONAL - Behavioral 
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
-- CHI SU DUNG 3 SIGNAL I(3 DOWNTO 1) , --> I(0) KO SU DUNG NEN NO CANH BAO
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MAHOA_42HE_CONDITIONAL is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           EN : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (1 downto 0));
end MAHOA_42HE_CONDITIONAL;

architecture Behavioral of MAHOA_42HE_CONDITIONAL is


begin


 
O <= 	"11" WHEN I(3) = '1' AND EN = '1' ELSE
		"10" WHEN I(2) = '1' AND EN = '1' ELSE
		"01" WHEN I(1) = '1' AND EN = '1' ELSE
		"00";

end Behavioral;

