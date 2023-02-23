----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:15:53 09/02/2019 
-- Design Name: 
-- Module Name:    MAHOA_42HE_IF - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MAHOA_42HE_IF is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           O : out  STD_LOGIC_VECTOR (1 downto 0);
           EN : in  STD_LOGIC);
end MAHOA_42HE_IF;

architecture Behavioral of MAHOA_42HE_IF is

begin

PROCESS(I,EN)
BEGIN
	IF 	I(3) = '1' AND EN = '1' THEN O <= "11";
	ELSIF I(2) = '1' AND EN = '1' THEN O <= "10";
	ELSIF I(1) = '1' AND EN = '1' THEN O <= "01";
	ELSIF I(0) = '1' AND EN = '1' THEN O <= "00";
	ELSE 										  O <= "00";
	END IF;
END PROCESS;

end Behavioral;

