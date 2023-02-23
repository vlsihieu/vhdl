library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DAHOP2_1 is
    Port ( I0 : in  STD_LOGIC_VECTOR (3 downto 0);
           I1 : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (3 downto 0));
end DAHOP2_1;

architecture Behavioral of DAHOP2_1 is

begin
    O <= I0  when S = '1' else
		   I1  ;
end Behavioral;

