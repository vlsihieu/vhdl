----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:07:28 11/21/2019 
-- Design Name: 
-- Module Name:    DEM_8BIT_SS - Behavioral 
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

entity DEM_8BIT_SS is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
--			  ENA_SS : IN STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
			  ena_ss : in std_logic;
			  ena_ud : in std_logic;
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end DEM_8BIT_SS;

architecture Behavioral of DEM_8BIT_SS is
SIGNAL Q_R, Q_N : STD_LOGIC_VECTOR( 7 DOWNTO 0);

begin

	PROCESS(CKHT, RST)
	BEGIN
		IF RST = '1' THEN Q_R <= "00000000";
		ELSIF FALLING_EDGE (CKHT) THEN Q_R <= Q_N;
		END IF;
	END PROCESS;
	
--	Q_N <= 	Q_R + 1 WHEN ENA_DB = '1' AND ENA_SS = '1' ELSE
--				Q_R;
				
--	Q <= Q_N;
PROCESS(ENA_DB,Q_R, ENA_UD,ENA_SS)
BEGIN
  Q_N <= Q_R;
  IF (ENA_SS = '1') THEN
		IF ENA_DB = '1' THEN
			IF ENA_UD = '0' THEN -- DEM LEN
				IF Q_R = "11111111" THEN  Q_N <= "00000000";
				ELSE                      Q_N <= Q_R + 1;
				END IF;
			ELSE    
				IF Q_R = "00000000" THEN Q_N <= "11111111";
				ELSE                    Q_N <= Q_R - 1;
				END IF;
			END IF;
		ELSE
			Q_N <= Q_R;
		END IF;
  END IF;
END PROCESS;		
Q <= Q_R;
end Behavioral;