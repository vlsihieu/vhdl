----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:53:40 10/08/2019 
-- Design Name: 
-- Module Name:    LED_SANGDON_PST - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity LED_SANGDON_PST is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           OE : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end LED_SANGDON_PST;

architecture Behavioral of LED_SANGDON_PST is

SIGNAL X_R,X_N : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Y_R,Y_N : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DL_R, DL_N : INTEGER RANGE 0 TO 7 := 7; -- DEM LUU
SIGNAL DC_R, DC_N : INTEGER RANGE 0 TO 7 := 7; -- DEM CHAY

begin
	
	PROCESS(CKHT, RST)
	BEGIN
		IF RST = '1' THEN X_R <= (OTHERS => '0');
								Y_R <= (OTHERS => '0');
								DL_R <= 7;
								DC_R <= 7;
		ELSIF FALLING_EDGE(CKHT) THEN X_R <= X_N;
												Y_R <= Y_N;
												DL_R <= DL_N;
												DC_R <= DC_N;
		END IF;
	END PROCESS;
	
	PROCESS(DC_R, DL_R, Y_R, X_R, ENA_DB, OE)  -- CHINH SUA
	BEGIN
		X_N <= X_R;
		Y_N <= Y_R;
		DL_N	<= DL_R;
		DC_N	<= DC_R;
		
		IF OE = '0' THEN 	X_N <= (OTHERS => '0');  -- 0E = '0' OK,  --- OE = '1' LOI ENA_DB VÀ XUNG ENA5HZ KO DC SU DUNG VÀ KO DC LIEN KET
								Y_N <= (OTHERS => '0');
								DL_N <= 7;
								DC_N <= 7;
		ELSIF ENA_DB = '1' THEN  -- CHINH SUA
			IF Y_R = "00000000" THEN 	Y_N <= "00000001";
			ELSIF DL_R = 0 THEN 	X_N <= (OTHERS => '0');
										Y_N <= (OTHERS => '0');
										DL_N <= 7;
										DC_N <= 7;
			ELSIF DC_R = 0 THEN	X_N	<= X_R OR y_R;
										Y_N 	<= "00000001";
										DL_N 	<= DL_R - 1;
										DC_N  <= DL_R - 1;
										
			ELSE 						Y_N	<= Y_R(6 DOWNTO 0) & '0';
										DC_N	<= DC_R - 1;
			END IF;
		END IF;
	END PROCESS;
	
	Q <= 	X_R OR Y_R WHEN OE = '1' ELSE
			(OTHERS => '0');

end Behavioral;
