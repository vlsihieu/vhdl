----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:00:09 09/14/2017 
-- Design Name: 
-- Module Name:    DEM_8BIT - Behavioral 
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DEM_10BIT is
	Port ( CKHT, RST, ENA_DB,ENA_SS : in  STD_LOGIC;
           DEM : 					out  STD_LOGIC_VECTOR (9 downto 0));
end DEM_10BIT;

architecture Behavioral of DEM_10BIT is
SIGNAL Q_REG, Q_NEXT: STD_LOGIC_VECTOR(9 DOWNTO 0);


begin
	PROCESS (CKHT, RST,ENA_SS, Q_NEXT)
	BEGIN
		IF (Q_NEXT = "001111100111") THEN Q_REG <= (OTHERS =>'0');		

		
		
		ELSIF RST = '1' THEN					 Q_REG <= (OTHERS =>'0');
		
		ELSIF FALLING_EDGE (CKHT) THEN Q_REG <= Q_NEXT;
		END IF;

		
	END PROCESS;
	
	Q_NEXT <= Q_REG + 1 WHEN ENA_DB & ENA_SS = "11" ELSE
				 Q_REG;
				 
  	
	DEM <= Q_REG;



end Behavioral;

