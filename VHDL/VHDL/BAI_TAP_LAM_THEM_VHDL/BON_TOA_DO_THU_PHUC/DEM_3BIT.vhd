library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity DEM_3BIT is
	 Port ( CKHT, RST,ENA_DB : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(2 DOWNTO 0));
end DEM_3BIT;

architecture Behavioral of DEM_3BIT is
SIGNAL Q_REG, Q_NEXT: STD_LOGIC_VECTOR(2 DOWNTO 0);
begin
	PROCESS(CKHT,RST)
	BEGIN
		IF RST = '1' THEN Q_REG <= (OTHERS=>'0');
		ELSIF FALLING_EDGE (CKHT) THEN Q_REG <= Q_NEXT;
		END IF;
	END PROCESS;
	------------------
	Q_NEXT <=  "000" when (Q_reg = "100" and ena_db = '1') else
	           Q_REG  + 1 WHEN ENA_DB = '1' ELSE
				  Q_REG;
 -------------------------------------------
	Q <= Q_REG;

end Behavioral;