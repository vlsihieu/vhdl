library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity DEM1BIT is
    Port ( ENA : in  STD_LOGIC;
	        CLK : in STD_LOGIC;
			  Q : out std_logic);
end DEM1BIT;
architecture Behavioral of DEM1BIT is
signal dem_r: std_logic:='1';
signal dem_n: std_logic;
begin 
dem_pr: process(CLK)
    begin
        if falling_edge (CLK) then
	     dem_r <= dem_n;
	     end if;
    end process;
dem_n <= not dem_r when ENA ='1' else
         dem_r;
Q <= dem_r;
end Behavioral;

