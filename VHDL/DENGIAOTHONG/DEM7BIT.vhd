library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity DEM7BIT is
    Port ( CLK : in  STD_LOGIC;
	        ENA : in  STD_LOGIC;
			  S: in  STD_LOGIC_VECTOR (2 downto 0);
           SODEM : out  STD_LOGIC_VECTOR (6 downto 0));
end DEM7BIT;

architecture Behavioral of DEM7BIT is
signal dem_r,dem_n :  STD_LOGIC_VECTOR (6 downto 0);
signal biendo:  STD_LOGIC_VECTOR (6 downto 0):="0011110";
begin
dem_pr: process(CLK,S)
    begin
	     if    S ="100" then biendo <=   "0011110";
		  elsif S ="010" then biendo <=   "0010100";
		  elsif S ="001" then biendo <=   "0001010";
		  end if;
	     dem_r <= biendo;
	     if falling_edge (CLK) then
		      dem_r <= dem_n;
		  end if;
		  
	 end process;
dem_n <= dem_r - 1 when ENA='1' else
         dem_r;
SODEM <= dem_r;
end Behavioral;

 