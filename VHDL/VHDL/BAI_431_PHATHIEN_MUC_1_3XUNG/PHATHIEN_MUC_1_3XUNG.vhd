
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity PHATHIEN_MUC_1_3XUNG is
    Port ( CKHT : in STD_LOGIC;
	        BTN0 : in std_logic;
			  SW0 : in  STD_LOGIC;
           LED: out  STD_LOGIC_VECTOR (3 downto 0));
end PHATHIEN_MUC_1_3XUNG;

architecture Behavioral of PHATHIEN_MUC_1_3XUNG is
-- KI?U D? LI?U STATE
TYPE STATE IS (ZERO,ONE,TWO,THREE);
---------------------------------------
SIGNAL STATE_REG,STATE_NEXT,STG: STATE;
---------------------------------------
SIGNAL ENA_DB,Q,RST,D: STD_LOGIC;
---------------------------------------
SIGNAL TT: STD_LOGIC_VECTOR(1 DOWNTO 0);
---------------------------------------
begin
	D <= SW0;
	RST <= BTN0;
--GIAMXUNG CK
CHIA_ENA1HZ_CK1HZ:ENTITY WORK.CHIA_ENA1HZ_CK1HZ
	PORT MAP(CKHT => CKHT,
				CK1HZ => LED(3),
				ENA1HZ => ENA_DB);
--REGISTER
	PROCESS(CKHT,RST)
	BEGIN
		IF RST = '1' THEN STATE_REG <= ZERO;
		ELSIF FALLING_EDGE(CKHT) THEN STATE_REG <= STATE_NEXT;
		END IF;
	END PROCESS;
--NEXT STATE LOGIC
	PROCESS(STATE_REG,D)
	BEGIN
		CASE STATE_REG IS
			WHEN ZERO =>  Q <= '0';		TT <= "00";
							  IF D = '1' THEN STG <= ONE;
							  ELSE            STG <= ZERO;
							  END IF;
		   WHEN ONE =>   Q <= '0';      TT <= "01";
			              IF D ='1' THEN STG <= TWO;
							  ELSE           STG <= ZERO;
							  END IF;
		   WHEN TWO =>   Q <= '0';      TT <= "10";
			              IF D ='1' THEN STG <= THREE;
							  ELSE           STG <= ZERO;
							  END IF;
		   WHEN THREE => Q <= '1';      TT <= "11";
			              IF D ='1' THEN STG <= THREE;
							  ELSE           STG <= ZERO;
							  END IF;
		END CASE;
	END PROCESS;
	--OUT PUT
	STATE_NEXT <= STG WHEN ENA_DB = '1' ELSE
					 STATE_REG;
	LED(2 DOWNTO 1) <= TT;
	LED(0) <= Q;
end Behavioral;
