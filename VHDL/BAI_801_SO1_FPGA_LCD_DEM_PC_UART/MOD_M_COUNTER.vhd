
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity MOD_M_COUNTER is
    GENERIC ( N: INTEGER:=4;
	           M: INTEGER:=10);
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           TICK : out  STD_LOGIC);
end MOD_M_COUNTER;

architecture Behavioral of MOD_M_COUNTER is
SIGNAL R_R: UNSIGNED(N-1 DOWNTO 0);
SIGNAL R_N: UNSIGNED(N-1 DOWNTO 0);
begin
 PROCESS (CKHT, RST)
 BEGIN
   IF RST = '1' THEN R_R <= (OTHERS=>'0');
	ELSIF FALLING_EDGE(CKHT) THEN R_R <= R_N;
	END IF;
 END PROCESS;

R_N <= (OTHERS => '0') WHEN R_R = (M-1) ELSE
        R_R + 1;
TICK <= '1' WHEN R_R = M-1 ELSE '0';

end Behavioral;