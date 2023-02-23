----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:54:15 11/07/2019 
-- Design Name: 
-- Module Name:    XULY_MOD_DAUCHAM - Behavioral 
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

entity XULY_MOD_DAUCHAM is
    Port ( CKHT : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           GT_MOD : out  STD_LOGIC_VECTOR (1 downto 0);
           DC_8LED : out  STD_LOGIC_VECTOR (7 downto 0));
end XULY_MOD_DAUCHAM;

architecture Behavioral of XULY_MOD_DAUCHAM is
SIGNAL GT_MOD_R: STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
SIGNAL GT_MOD_N: STD_LOGIC_VECTOR(1 DOWNTO 0);
begin

	PROCESS(CKHT)
	BEGIN
		IF FALLING_EDGE(CKHT) THEN GT_MOD_R <= GT_MOD_N;
		END IF;
	END PROCESS;
	
	GT_MOD_N <= GT_MOD_R + 1 WHEN ENA_DB = '1' ELSE 
					GT_MOD_R;
					
	PROCESS( GT_MOD_R)
	BEGIN
		CASE GT_MOD_R IS
			WHEN "01" => DC_8LED <= X"FE";
			WHEN "10" => DC_8LED <= X"F7";
			WHEN "11" => DC_8LED <= X"BF";
			WHEN OTHERS =>DC_8LED <= X"FF";
		END CASE;
	END PROCESS;
	
	GT_MOD <= GT_MOD_R;

end Behavioral;

