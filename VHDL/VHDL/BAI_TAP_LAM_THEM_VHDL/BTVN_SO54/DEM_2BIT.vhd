library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
USE IEEE.NUMERIC_STD.ALL;


entity DEM_2BIT is
    Port ( CKHT,RST,ENA_DB : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(1 DOWNTO 0)
			 );
end DEM_2BIT;

architecture Behavioral of DEM_2BIT is
SIGNAL Q_REG,Q_NEXT : STD_LOGIC_VECTOR(1 DOWNTO 0);
begin
   PROCESS(CKHT, RST)
	BEGIN
	  IF RST='1' THEN Q_REG <= (OTHERS => '0');
	  ELSIF FALLING_EDGE (CKHT) THEN Q_REG <= Q_NEXT;
	  END IF;
	END PROCESS;

  Q_NEXT <= "00" WHEN ENA_DB = '1' AND Q_REG = "11" ELSE
            Q_REG + 1  WHEN ENA_DB ='1' ELSE
            Q_REG;
				
  Q <= Q_REG;
end Behavioral;

