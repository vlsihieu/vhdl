
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity CHIA_ENA1HZ is
    Port ( CKHT : in  STD_LOGIC;
           ENA1HZ : out  STD_LOGIC);
end CHIA_ENA1HZ;

architecture Behavioral of CHIA_ENA1HZ is
CONSTANT N: INTEGER := 50000000;
SIGNAL D1HZ_REG, D1HZ_NEXT: INTEGER RANGE 0 TO N:= 1;
begin
	--REGISTER
	PROCESS(CKHT)
	BEGIN
		IF FALLING_EDGE (CKHT) THEN D1HZ_REG <= D1HZ_NEXT;
		END IF;
	END PROCESS;
	--NEXT STATE LOGIC
	D1HZ_NEXT <= 1 WHEN D1HZ_REG = N ELSE D1HZ_REG +1;
	--OUTOUT LOGIC
	ENA1HZ <= '1' WHEN D1HZ_REG = N/2 ELSE '0';
end Behavioral;
