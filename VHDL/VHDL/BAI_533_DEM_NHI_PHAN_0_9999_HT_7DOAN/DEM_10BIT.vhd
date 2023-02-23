----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:10:17 10/30/2016 
-- Design Name: 
-- Module Name:    DEM_10BIT - Behavioral 
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
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DEM_14BIT is
    Port ( CKHT,RST,ENA_DB,ENA_SS : in  STD_LOGIC;
           DEM : out  STD_LOGIC_VECTOR (13 downto 0));
end DEM_14BIT;

architecture Behavioral of DEM_14BIT is
SIGNAL DEM_REG,DEM_NEXT: STD_LOGIC_VECTOR(13 DOWNTO 0);
begin
PROCESS(CKHT,RST)
	BEGIN
		IF RST = '1' THEN DEM_REG <= (OTHERS => '0');
		ELSIF FALLING_EDGE(CKHT) THEN DEM_REG <= DEM_NEXT;
		END IF;
END PROCESS;
DEM_NEXT <= DEM_REG + 1 WHEN ENA_DB = '1' AND ENA_SS = '1' ELSE 
				DEM_REG;
DEM <= DEM_REG;				

end Behavioral;
