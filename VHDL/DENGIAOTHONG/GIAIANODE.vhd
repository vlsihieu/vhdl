library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity GIAI_ANODE is
    Port ( SEL_A : in  STD_LOGIC;
           O_A : out  STD_LOGIC_VECTOR (1 downto 0));
end GIAI_ANODE;
architecture Behavioral of GIAI_ANODE is
begin
    O_A <= "01" when SEl_A = '0' else
	        "10" ;
end Behavioral;

