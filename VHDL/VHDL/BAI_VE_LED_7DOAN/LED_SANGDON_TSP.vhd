library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LED_SANGDON_TSP is
    Port (CKHT, RST, OE, ENA_DB:   in      STD_LOGIC;
    		Q:      out     STD_LOGIC_VECTOR (5 downto 0));
end LED_SANGDON_TSP;

architecture Behavioral of LED_SANGDON_TSP is
SIGNAL X_REG, X_NEXT: STD_LOGIC_VECTOR (5 DOWNTO 0):= "000000";	--x
SIGNAL Y_REG, Y_NEXT : STD_LOGIC_VECTOR (5 DOWNTO 0):= "000000";	--y
SIGNAL DL_REG, DL_NEXT : INTEGER RANGE 0 TO 5 :=5;						--z
SIGNAL DC_REG, DC_NEXT : INTEGER RANGE 0 TO 5 :=5;	

Begin
   PROCESS (CKHT, RST)
    BEGIN   
		IF RST='1' THEN 	X_REG <=(OTHERS=>'0');
								Y_REG <=(OTHERS=>'0');
								DL_REG <=5;	
								DC_REG <= 5; 								
		ELSIF FALLING_EDGE(CKHT)  THEN	X_REG <= X_NEXT;
													Y_REG <= Y_NEXT;
													DL_REG <= DL_NEXT;
													DC_REG <= DC_NEXT;
		END IF;
	END PROCESS;
		
	PROCESS(DC_REG, DL_REG, Y_REG, ENA_DB, X_REG, OE)
	BEGIN
		X_NEXT <= X_REG;
		Y_NEXT <= Y_REG;
		DL_NEXT <= DL_REG;
		DC_NEXT <= DC_REG;
		
		IF OE = '0' THEN 	X_NEXT <=(OTHERS=>'0');
								Y_NEXT <=(OTHERS=>'0');
								DL_NEXT <=5;	
								DL_NEXT <=5;	
		ELSIF ENA_DB = '1' THEN 
			IF Y_REG = "000000" THEN Y_NEXT 	<=	"100000";
			ELSIF DL_REG = 0 THEN 	X_NEXT 		<=	(OTHERS => '0'); 
											Y_NEXT 		<= (OTHERS => '0');
											DL_NEXT  	<= 5;	
											DC_NEXT		<= 5; 
								
			ELSIF DC_REG = 0 THEN 	X_NEXT 	<= X_REG OR Y_REG;										
											Y_NEXT 	<=	"100000"; 
											DL_NEXT	<= DL_REG - 1;	
											DC_NEXT 	<= DL_REG - 1;	
											
			ELSE							Y_NEXT	<= '0' & Y_REG(5 DOWNTO 1); 
											DC_NEXT	<= DC_REG - 1;										
			END IF;						
		END IF;
	END PROCESS;
		
	Q	<= 	X_REG OR Y_REG WHEN OE = '1' ELSE 
				(OTHERS => '0');

end Behavioral;

