library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity GIAI7DOAN is 
    Port ( SO_GMA : 		in  STD_LOGIC_VECTOR (3 downto 0);
          SSEG :		 	out  STD_LOGIC_VECTOR (7 downto 0));
end GIAI7DOAN;
architecture Behavioral of GIAI7DOAN is
begin
giaima_pr : process(SO_GMA)
	begin
			case so_gma is
			    when x"0"	=>SSEG <=   "11000000"; --0 
			    when x"1"	=>SSEG <=   "11111001"; --1
			    when x"2"	=>SSEG <=   "10100100"; --2
			    when x"3"	=>SSEG <=   "10110000"; --3
			    when x"4"	=>SSEG <=   "10011001"; --4
			    when x"5"	=>SSEG <=   "10010010"; --5
			    when x"6"	=>SSEG <=   "10000010"; --6
			    when x"7"	=>SSEG <=   "11111000"; --7
			    when x"8"	=>SSEG <=   "10000000"; --8
			    when x"9"	=>SSEG <=   "10010000"; --9
			    when x"a"	=>SSEG <=   "10001000"; --a
			    when x"b"	=>SSEG <=   "10000011"; --b
			    when x"c"	=>SSEG <=   "11000110"; --c
			    when x"d"	=>SSEG <=   "10100001"; --d
			    when x"e"	=>SSEG <=   "10000110"; --e
			    when others	=>SSEG <=   "10001110"; --f
			end case;
	end process; 
end Behavioral;

