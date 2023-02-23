----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:29 09/02/2019 
-- Design Name: 
-- Module Name:    DAHOP_4KENH_1BIT_E_CASE - Behavioral 
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
library IEEE; -- EN TIICH CUC MUC 0
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DAHOP_4KENH_1BIT_E_CASE is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           EN : in  STD_LOGIC;
           O : out  STD_LOGIC);
end DAHOP_4KENH_1BIT_E_CASE;

architecture Behavioral of DAHOP_4KENH_1BIT_E_CASE is

SIGNAL ENS : STD_LOGIC_VECTOR(2 DOWNTO 0);

begin
	ENS <= EN & S;
	PROCESS(I,ENS)
	BEGIN
		CASE ENS IS
			WHEN "000" => O <= I(0);
			WHEN "001" => O <= I(1);
			WHEN "010" => O <= I(2);
			WHEN "011" => O <= I(3);
			WHEN OTHERS => O <= '0';
		END CASE;
	END PROCESS;

end Behavioral;

