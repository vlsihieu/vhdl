----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:39:46 06/03/2020 
-- Design Name: 
-- Module Name:    DEM_3BIT - Behavioral 
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DEM_3BIT is
    Port ( RST,CKHT : in  STD_LOGIC;
           ENA,ENA_DB : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end DEM_3BIT;

architecture Behavioral of DEM_3BIT is
SIGNAL Q_R, Q_N: STD_LOGIC_VECTOR(2 DOWNTO 0);
begin
	PROCESS(CKHT,RST)
	BEGIN
		IF RST='1' THEN Q_R <=(OTHERS => '0');
			ELSIF FALLING_EDGE(CKHT) THEN Q_R <= Q_N;
		END IF;
	END PROCESS;
	Q_N <= Q_R +1 WHEN ENA = '1' AND ENA_DB = '1' ELSE
			 Q_R;
	Q <= Q_R;

end Behavioral;