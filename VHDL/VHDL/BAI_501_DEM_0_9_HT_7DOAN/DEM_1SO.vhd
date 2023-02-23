----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:12:43 10/10/2019 
-- Design Name: 
-- Module Name:    DEM_1SO - Behavioral 
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

entity DEM_1SO is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           ENA_SS : in  STD_LOGIC;
           DONVI : out  STD_LOGIC_VECTOR (3 downto 0));
end DEM_1SO;

architecture Behavioral of DEM_1SO is
SIGNAL DONVI_R, DONVI_N : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ENA : STD_LOGIC;
begin

	PROCESS(CKHT, RST)
	BEGIN 
		IF RST = '1' THEN DONVI_R <= (OTHERS => '0');
		ELSIF FALLING_EDGE(CKHT) THEN DONVI_R <= DONVI_N;
		END IF;
	END PROCESS;
	
	ENA <= ENA_DB AND ENA_SS;
	DONVI_N <= 	X"0" 			WHEN DONVI_R = X"9" AND ENA_SS = '1' 	ELSE
					DONVI_R + 1 WHEN ENA = '1' 								ELSE
					DONVI_R;
	-- OUTPUT
	DONVI <= DONVI_R;

end Behavioral;

