----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:38:54 10/06/2019 
-- Design Name: 
-- Module Name:    DEM_3BIT_CHON_8KENH - Behavioral 
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

entity DEM_3BIT_CHON_8KENH is
	Port ( CKHT, ENA1KHZ : in  STD_LOGIC;
          Q : out  STD_LOGIC_VECTOR(2 DOWNTO 0));
end DEM_3BIT_CHON_8KENH;

architecture Behavioral of DEM_3BIT_CHON_8KENH is
SIGNAL Q_R, Q_N: STD_LOGIC_VECTOR(2 DOWNTO 0):= "000";

begin
	PROCESS(CKHT)
		BEGIN
			IF FALLING_EDGE	(CKHT)	THEN Q_R <= Q_N;
			END IF;
	END PROCESS;
 	Q_N <=	Q_R + 1 WHEN ENA1KHZ = '1' ELSE
				Q_R;
	Q <= Q_R;
end Behavioral;

