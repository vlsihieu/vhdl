
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DEM_8BIT is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_CK : in  STD_LOGIC;
			  ENA_DB:IN STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end DEM_8BIT;

architecture Behavioral of DEM_8BIT is
SIGNAL Q_REG,Q_NEXT : STD_LOGIC_VECTOR( 7 DOWNTO 0);
begin
   PROCESS(CKHT, RST)
	BEGIN
	  IF RST='1' THEN Q_REG <= "00100101";
	  ELSIF FALLING_EDGE (CKHT) THEN Q_REG <= Q_NEXT;
	  END IF;
	END PROCESS;
  Q_NEXT <= "00010100" WHEN Q_REG = "00110110" AND ENA_DB='1' AND ENA_CK='1' ELSE
				Q_REG + 1 WHEN ENA_CK='1' AND ENA_DB ='1' ELSE
            Q_REG;
  Q <= Q_REG;

end Behavioral;