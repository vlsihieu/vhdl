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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LED_SANGDON_PST is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
			  ENA_SS : in  STD_LOGIC;  -- CHINH SUA
           OE : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (12 downto 0)); -- CHINH SUA
end LED_SANGDON_PST;

architecture Behavioral of LED_SANGDON_PST is

SIGNAL X_R,X_N : STD_LOGIC_VECTOR(12 DOWNTO 0);						-- CHINH SUA
SIGNAL Y_R,Y_N : STD_LOGIC_VECTOR(12 DOWNTO 0);						-- CHINH SUA
SIGNAL DL_R, DL_N : INTEGER RANGE 0 TO 12 := 12; -- DEM LUU		-- CHINH SUA
SIGNAL DC_R, DC_N : INTEGER RANGE 0 TO 12 := 12; -- DEM CHAY	-- CHINH SUA

begin
	
	PROCESS(CKHT, RST)
	BEGIN
		IF RST = '1' THEN X_R <= (OTHERS => '0');
								Y_R <= (OTHERS => '0');
								DL_R <= 12; -- CHINH SUA
								DC_R <= 12; -- CHINH SUA
		ELSIF FALLING_EDGE(CKHT) THEN X_R <= X_N;
												Y_R <= Y_N;
												DL_R <= DL_N;
												DC_R <= DC_N;
		END IF;
	END PROCESS;
	
	PROCESS(DC_R, DL_R, Y_R, X_R, ENA_DB, ENA_SS, OE) -- CHINH SUA
	BEGIN
		X_N <= X_R;
		Y_N <= Y_R;
		DL_N	<= DL_R;
		DC_N	<= DC_R;
		
		IF OE = '0' THEN 	X_N <= (OTHERS => '0');  -- 0E = '0' OK,  --- OE = '1' LOI ENA_DB VÀ XUNG ENA5HZ KO DC SU DUNG VÀ KO DC LIEN KET
								Y_N <= (OTHERS => '0');
								DL_N <= 12; -- CHINH SUA
								DC_N <= 12; -- CHINH SUA
		ELSIF ENA_DB = '1' AND ENA_SS = '1' THEN  -- CHINH SUA
			IF Y_R = "0000000000000" THEN 	Y_N <= "0000000000001"; -- CHINH SUA
			ELSIF DL_R = 0 THEN 	X_N <= (OTHERS => '0');
										Y_N <= (OTHERS => '0');
										DL_N <= 12; -- CHINH SUA
										DC_N <= 12; -- CHINH SUA
			ELSIF DC_R = 0 THEN	X_N	<= X_R OR y_R;
										Y_N 	<= "0000000000001"; -- CHINH SUA
										DL_N 	<= DL_R - 1;
										DC_N  <= DL_R - 1;
										
			ELSE 						Y_N	<= Y_R(11 DOWNTO 0) & '0'; -- CHINH SUA
										DC_N	<= DC_R - 1;
			END IF;
		END IF;
	END PROCESS;
	
	Q <= 	X_R OR Y_R WHEN OE = '1' ELSE
			(OTHERS => '0');

end Behavioral;
