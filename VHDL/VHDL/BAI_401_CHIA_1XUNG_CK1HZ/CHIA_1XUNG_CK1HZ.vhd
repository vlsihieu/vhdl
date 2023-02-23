
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity CHIA_1XUNG_CK1HZ is
    Port ( CKHT : in  STD_LOGIC;
           LED : out  STD_LOGIC);
end CHIA_1XUNG_CK1HZ;

architecture Behavioral of CHIA_1XUNG_CK1HZ is
begin
IC: ENTITY WORK.CHIA_CK1HZ
	PORT MAP( CKHT => CKHT,
				 CK1HZ => LED);

end Behavioral;
