
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CHIA_10XUNG_ENA1HZ_ENA1MHZ is
    Port ( CKHT : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (9 downto 0)
			  );
end CHIA_10XUNG_ENA1HZ_ENA1MHZ ;

architecture Behavioral of CHIA_10XUNG_ENA1HZ_ENA1MHZ  is

begin
IC: ENTITY WORK.CHIA_10ENA
	PORT MAP( CKHT => CKHT,
				 ENA1HZ => LED(0),
				 ENA2HZ => LED(1),
             ENA5HZ => LED(2),
				 ENA10HZ => LED(3),
				 ENA20HZ => LED(4),
             ENA25HZ => LED(5),
             ENA50HZ => LED(6),
             ENA100HZ => LED(7),
             ENA1KHZ => LED(8),
             ENA1MHZ => LED(9)
            );				 
end Behavioral;

