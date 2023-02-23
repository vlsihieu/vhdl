library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DEBOUNCE_BTN is
    Port ( CKHT,BTN : in  STD_LOGIC;
           DB_TICK : out  STD_LOGIC);
end DEBOUNCE_BTN;

 architecture Behavioral of DEBOUNCE_BTN is
CONSTANT N: INTEGER:=20;
TYPE DB_STATE IS(ZERO,WAI0,ONE,WAI1);
SIGNAL DB_REG,DB_NEXT: DB_STATE;
SIGNAL DELAY_REG,DELAY_NEXT: UNSIGNED(N-1 DOWNTO 0);

begin
PROCESS(CKHT)
BEGIN
	IF FALLING_EDGE(CKHT) THEN DB_REG<= DB_NEXT;
										DELAY_REG<=DELAY_NEXT;
	END IF;
END PROCESS;
PROCESS(DELAY_REG,DB_REG,BTN)
BEGIN
	DELAY_NEXT<= DELAY_REG;
	DB_NEXT<=DB_REG;
CASE DB_REG IS
	WHEN ZERO => DB_TICK<='0';
						IF(BTN = '1') THEN DB_NEXT<= WAI1;
													DELAY_NEXT<= (OTHERS=>'1');
						END IF;
		WHEN WAI1 => DB_TICK<='0';
						IF(BTN='1')THEN DELAY_NEXT<=DELAY_REG -1;
						IF(DELAY_REG = 0) THEN DB_NEXT<= ONE;
						END IF;
						ELSE DB_NEXT<= ZERO;						
						END IF;
		WHEN ONE => DB_TICK<='1';
						IF(BTN = '0') THEN DB_NEXT<= WAI0;
													DELAY_NEXT<= (OTHERS=>'1');
						END IF;
WHEN WAI0 => DB_TICK<='1';
						IF(BTN='0') THEN DELAY_NEXT<=DELAY_REG -1;
						IF(DELAY_REG = 0) THEN DB_NEXT<= ZERO;
						END IF;
						ELSE DB_NEXT<= ONE;
						END IF;
						
END CASE;
END PROCESS;
end Behavioral;