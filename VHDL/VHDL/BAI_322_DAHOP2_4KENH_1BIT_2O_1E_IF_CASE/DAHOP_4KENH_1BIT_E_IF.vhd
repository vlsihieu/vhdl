----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:56 09/02/2019 
-- Design Name: 
-- Module Name:    DAHOP_4KENH_1BIT_E_IF - Behavioral 
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
library IEEE; -- EN TICH CUC MUC 0
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DAHOP_4KENH_1BIT_E_IF is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           EN : in  STD_LOGIC;
           O : out  STD_LOGIC);
end DAHOP_4KENH_1BIT_E_IF;

architecture Behavioral of DAHOP_4KENH_1BIT_E_IF is

begin

	PROCESS(I,S,EN)
	BEGIN
		IF 	S ="00" AND EN = '0' THEN O <= I(0);
		ELSIF S ="01" AND EN = '0' THEN O <= I(1);
		ELSIF S ="10" AND EN = '0' THEN O <= I(2);
		ELSIF S ="11" AND EN = '0' THEN O <= I(3);
		ELSE 									  O <= '0';
		END IF;
	END PROCESS;
	

		

end Behavioral;

