
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DEM_8BIT is
    Port ( CKHT,RST,ENA_DB,ena_ss : in  STD_LOGIC;
           DEM : out  STD_LOGIC_VECTOR (7 downto 0));
end DEM_8BIT;

architecture Behavioral of DEM_8BIT is
SIGNAL Q_REG, Q_NEXT: STD_LOGIC_VECTOR(7 DOWNTO 0);
begin
	PROCESS(CKHT,RST)
	BEGIN
		IF RST = '1' THEN Q_REG <= (OTHERS => '0');
		ELSIF FALLING_EDGE(CKHT) THEN Q_REG <= Q_NEXT;
		END IF;
	END PROCESS;
	Q_NEXT <= Q_REG WHEN ena_ss = '0' ELSE
				 Q_REG + 1 when ena_ss= '1' and ena_db = '1' else
				 Q_REG;
	DEM <= Q_REG;
end Behavioral;

