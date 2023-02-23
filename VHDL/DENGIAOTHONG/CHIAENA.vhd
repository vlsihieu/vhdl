library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity CHIAENA is
    Port ( CLK : in  std_logic;
           ENA1HZ : out  std_logic;
           ENA1KHZ : out  std_logic);
end CHIAENA;

architecture Behavioral of CHIAENA is
CONSTANT N: INTEGER := 50000000;
signal d1khz_reg, d1khz_next: integer range 0 TO N/1000:= 1;
signal d1hz_reg, d1hz_next: integer range 0 TO N:= 1;
begin
	process (CLK)
	begin
		if falling_edge (CLK) then
				d1khz_reg  <= d1khz_next;
				d1hz_reg   <= d1hz_next;
		end if;
	end process;
	d1khz_next 	<= 1 when d1khz_reg = N/1000 	  else d1khz_reg +1;
	d1hz_next 	<= 1 when d1hz_reg = N 		  else d1hz_reg +1;
	ENA1HZ 	<= '1' 	when d1hz_reg 		= N/2 				else '0';
	ENA1KHZ 	<= '1' 	when d1khz_reg 	= N/(1000*2) 			else '0';
end Behavioral;