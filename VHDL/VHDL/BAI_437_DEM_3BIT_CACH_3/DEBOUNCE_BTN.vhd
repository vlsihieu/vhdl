library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DEBOUNCE_BTN is
    Port ( CKHT : in  STD_LOGIC;
           a : in  STD_LOGIC;
		   b : in  STD_LOGIC;
		   c : in  STD_LOGIC;
           t,u,v : out  STD_LOGIC -- NGÕ RA OUTSW LÀ SAU KHI CH?NG D?I
			 );
end DEBOUNCE_BTN;

architecture Behavioral of DEBOUNCE_BTN is
---------------------

TYPE DB_STATE IS (start_st,task1,task2,termin);-- 4 TR?NG THÁI SW
---------------------
SIGNAL db_reg,db_next: DB_STATE;

---------------------
begin
	PROCESS(CKHT)
	BEGIN
		IF FALLING_EDGE(CKHT) THEN 
		    u_reg <= u_next;
			u_reg <= u_next;
			u_reg <= u_next;
		END IF;
	END PROCESS;
	
	PROCESS(db_reg,a,b,c)
	BEGIN
		db_next <= db_reg;
		CASE db_reg IS
		  WHEN start_st =>  u <= '0'; -- OUTSW = '0'
		                    t <= '0';
		                    v <= '0';
						    IF a = '1' THEN db_next <= task1;
							END IF;
							if b = '1' then db_next <= task2;
							end if
		  WHEN task1 => 	u <= '1'; -- OUTSW = '0'
		                    t <= '0';
		                    v <= '0';
						    IF b = '1' THEN db_next <= task2;
							END IF;
		  WHEN task2 =>     u <= '1'; -- OUTSW = '0'
		                    t <= '1';
		                    v <= '0';
						    IF c = '1' THEN db_next <= task1;
							END IF;
						    IF c = '0' THEN db_next <= termin;
							END IF;
		  WHEN termin =>    u <= '1'; -- OUTSW = '0'
		                    t <= '1';
		                    v <= '1';
						    IF c = '1' THEN db_next <= start_st;
							END IF;
		  END CASE;
		END PROCESS;
end Behavioral;

