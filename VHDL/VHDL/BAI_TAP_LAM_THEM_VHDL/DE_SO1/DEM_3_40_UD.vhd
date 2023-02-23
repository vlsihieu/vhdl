----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:42:38 06/03/2020 
-- Design Name: 
-- Module Name:    DEM_3_40_UD - Behavioral 
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

entity DEM_3_40_UD is
    Port ( CKHT,RST : in  STD_LOGIC;
           UP,ENA_DB : in  STD_LOGIC;
			  ENA : out STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (5 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (6 downto 0));
end DEM_3_40_UD;

architecture Behavioral of DEM_3_40_UD is
SIGNAL Q_R, Q_N: STD_LOGIC_VECTOR(5 DOWNTO 0);
begin
	PROCESS(CKHT,RST)
	BEGIN
		IF RST='1' THEN Q_R <= "000011";
			ELSIF FALLING_EDGE(CKHT) THEN Q_R <= Q_N;
		END IF;
	END PROCESS;
---------------------------------------------	
	SSEG <= "1000001" WHEN UP = '0' ELSE
	        "0100001";
---------------------------------------------
	PROCESS(ENA_DB,UP,Q_R)
	BEGIN
		IF ENA_DB = '1' THEN
			IF UP = '0' THEN -- BINH THUONG VO, DEM LEN
				IF Q_R = "101000" THEN  Q_N <= "000011";
				ELSE                    Q_N <= Q_R + 1;
				END IF;
			ELSE -- SW = 1 THI DEM XUONG
				IF Q_R = "000011" THEN Q_N <= "101000";
				ELSE                   Q_N <= Q_R - 1;
				END IF;
			END IF;
		ELSE
			Q_N <= Q_R;
		END IF;
	END PROCESS;
	Q <= Q_R;
	
	ENA <= '1' WHEN Q_R = "101000" AND UP = '0' ELSE '0';
--	QL <= Q_R;

end Behavioral;

