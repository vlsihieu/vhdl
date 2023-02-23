library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity DIEUKHIENLED is
    Port ( ENA : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           LEDOUT : out  STD_LOGIC_VECTOR (5 downto 0));
end DIEUKHIENLED;

architecture Behavioral of DIEUKHIENLED is
type state_led is (D1X2,D1V2,X1D2,V1D2);
signal state_r,state_n:state_led:=D1X2;
signal dem_r,dem_n:integer:=0;
signal dem_rs :  STD_LOGIC;
begin
dff_pr: process(CLK)
    begin
	     if falling_edge(CLK) then
		      dem_r <= dem_n;
				state_r <= state_n;
		  end if;
	 end process;
fsm_pr: process(dem_r,state_r)
    begin
		     case state_r is
		      when D1X2 => LEDOUT <= "100010";
				    if dem_r = 20 then 
					     state_n <= D1V2;
						  dem_rs <= '1'; 
					 else
						  state_n <= state_r;
						  dem_rs <= '0';
					 end if;
				when D1V2 => LEDOUT <= "100001";
				    if dem_r = 10 then 
					     state_n <= X1D2;
						  dem_rs <= '1'; 
					 else
						  state_n <= state_r;
						  dem_rs <= '0';
					 end if;
				when X1D2 => LEDOUT <= "010100";
				    if dem_r = 20 then 
					     state_n <= V1D2;
						  dem_rs <= '1'; 
					 else
						  state_n <= state_r;
						  dem_rs <= '0';
					 end if;
				when V1D2 => LEDOUT <= "001100";
				    if dem_r = 10 then 
					     state_n <= D1X2;
						  dem_rs <= '1'; 
					 else
						  state_n <= state_r;
						  dem_rs <= '0';
					 end if;
			end case;
	 end process;
dem_n <= 0 when dem_rs = '1' else
         dem_r + 1 when ENA ='1' else
			dem_r;
end Behavioral;

