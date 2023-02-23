library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
USE IEEE.NUMERIC_STD.ALL;

entity DEM_18_37 is
    Port ( CKHT: in  STD_LOGIC;
	        RST: in  STD_LOGIC;
			  ENA_DB: in  STD_LOGIC;
			  ENA_SS: in  STD_LOGIC;
			  OE : in  STD_LOGIC;
           DEM : out  STD_LOGIC_VECTOR (5 downto 0)
			  );
end DEM_18_37;

architecture Behavioral of DEM_18_37 is
SIGNAL Q_REG : STD_LOGIC_VECTOR( 5 DOWNTO 0):= "011100";
signal Q_NEXT : STD_LOGIC_VECTOR( 5 DOWNTO 0) ;
begin
   PROCESS(CKHT, RST)
	BEGIN
	  IF RST='1' THEN   Q_REG <= "011100";
	  ELSIF FALLING_EDGE (CKHT) THEN Q_REG <= Q_NEXT;
	  END IF;
	END PROCESS;
	
  Q_NEXT <= Q_REG + 1 WHEN ENA_DB ='1' AND ENA_SS='1' AND OE = '1' ELSE
            Q_REG;
				
  DEM <= Q_REG;
end Behavioral;