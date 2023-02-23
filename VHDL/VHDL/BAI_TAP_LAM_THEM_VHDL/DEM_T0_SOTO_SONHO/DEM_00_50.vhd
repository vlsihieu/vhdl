LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY DEM_00_50 IS
	PORT (CKHT : in std_logic;
	      RST : in std_logic;
			ena_ss : in std_logic;
			ENA_DB: IN STD_LOGIC;
			Q: OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
			);
END DEM_00_50;

ARCHITECTURE A OF DEM_00_50 IS
SIGNAL Q_REG, Q_NEXT: STD_LOGIC_VECTOR(5 DOWNTO 0);
BEGIN
	PROCESS (CKHT, RST)
	BEGIN
		IF RST='1' 				     THEN Q_REG <= (OTHERS =>'0');
		ELSIF FALLING_EDGE (CKHT) THEN Q_REG<= Q_NEXT;
		END IF;
	END PROCESS;
	
	Q_NEXT <= "000000" WHEN Q_REG="110011" and ena_ss = '1' ELSE 
				 Q_REG +1 WHEN ENA_DB='1' and ena_ss = '1' ELSE 
				 Q_REG;					 
	Q <= Q_REG;
END A;