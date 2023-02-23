library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
USE IEEE.NUMERIC_STD.ALL;


entity DEM_2BIT_MODE is
    Port ( CKHT,RST,ENA : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(2 DOWNTO 0)
			  );
end DEM_2BIT_MODE;

architecture Behavioral of DEM_2BIT_MODE is
SIGNAL Q_REG,Q_NEXT : STD_LOGIC_VECTOR(1 DOWNTO 0);
begin
   PROCESS(CKHT, RST)
	BEGIN
	  IF RST='1' THEN Q_REG <= (OTHERS => '0');
	  ELSIF FALLING_EDGE (CKHT) THEN Q_REG <= Q_NEXT;
	  END IF;
	END PROCESS;

  Q_NEXT <=  "00" WHEN Q_REG = "11" AND ENA = '1' ELSE
             Q_REG + 1  WHEN ENA ='1' ELSE
             Q_REG;
				
  PROCESS(Q_REG,RST)
  BEGIN
		Q<= "000";
		IF RST='1' THEN Q <= "000";
		ELSIF Q_REG= "00" THEN Q <= "000";
		ELSIF Q_REG= "01" THEN Q <= "001";
		ELSIF Q_REG= "10" THEN Q <= "010";
		ELSIF Q_REG= "11" THEN Q <= "100";
		END IF;
	END PROCESS;
end Behavioral;