----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:10:05 11/07/2019 
-- Design Name: 
-- Module Name:    DEM_14BIT - Behavioral 
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

entity DEM_14BIT is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           ENA_SS : in  STD_LOGIC;
           DEM : out  STD_LOGIC_VECTOR (13 downto 0)); -- CHINH SUA
end DEM_14BIT;

architecture Behavioral of DEM_14BIT is
SIGNAL DEM_R, DEM_N: STD_LOGIC_VECTOR(13 DOWNTO 0); --CHINH SUA
begin
	
	PROCESS( CKHT, RST)
	BEGIN
		IF RST = '1' THEN DEM_R <= (OTHERS => '0');
		ELSIF FALLING_EDGE (CKHT) THEN DEM_R <= DEM_N;
		END IF;
	END PROCESS;
	
	DEM_N <= "00000000000000" 	WHEN ENA_DB = '1' AND ENA_SS = '1' AND DEM_R = "10011100001111" 	ELSE  -- CHINH SUA 9999
				DEM_R + 1 			WHEN ENA_DB = '1' AND ENA_SS = '1' 											ELSE
				DEM_R;
				
	DEM <= DEM_R;


end Behavioral;

