
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LED_STD_TNV is
    Port (CKHT, RST, OE, ENA_DB:   in      STD_LOGIC;
    		Q:      out     STD_LOGIC_VECTOR (15 downto 0));
end LED_STD_TNV;

architecture Behavioral of LED_STD_TNV is
SIGNAL 	Q_REG, Q_NEXT: STD_LOGIC_VECTOR(15 DOWNTO 0);
Begin
   PROCESS (CKHT, RST)
   BEGIN   
		IF  RST='1'             THEN    Q_REG	<=	(OTHERS => '0'); 
      ELSIF   FALLING_EDGE (CKHT)   THEN    Q_REG	<=	Q_NEXT;	
		END IF;
	END PROCESS;

	Q_NEXT(7 DOWNTO 0)  <=  (OTHERS => '0')						WHEN OE = '0' ELSE
									Q_REG(5 DOWNTO 0) & NOT Q_REG(7)& NOT Q_REG(6) WHEN ENA_DB = '1' ELSE	
									Q_REG(7 DOWNTO 0);
					
	Q_NEXT(15 DOWNTO 8)  <=  (OTHERS => '0')					  	WHEN OE = '0' ELSE
								  NOT Q_REG(9) & NOT Q_REG(8) & Q_REG(15 DOWNTO 10) WHEN ENA_DB = '1' ELSE
									Q_REG(15 DOWNTO 8);

	Q <= 	Q_REG WHEN OE = '1' ELSE (OTHERS => '0');			
end Behavioral;

