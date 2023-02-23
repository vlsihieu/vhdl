library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
USE IEEE.NUMERIC_STD.ALL;


entity DEM_1BIT_SS is
    Port ( CKHT,RST,ENA : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end DEM_1BIT_SS;

architecture Behavioral of DEM_1BIT_SS is
SIGNAL Q_REG,Q_NEXT : STD_LOGIC;
begin
   PROCESS(CKHT, RST)
	BEGIN
	  IF RST='1' THEN Q_REG <= '0';
	  ELSIF FALLING_EDGE (CKHT) THEN Q_REG <= Q_NEXT;
	  END IF;
	END PROCESS;
  Q_NEXT <= NOT Q_REG  WHEN ENA ='1' ELSE
            Q_REG;
  Q <= Q_REG;
end Behavioral;

