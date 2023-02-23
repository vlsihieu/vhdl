----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:41:12 10/05/2019 
-- Design Name: 
-- Module Name:    LED_DSDC_TSP - Behavioral 
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

entity LED_DSDC_TSP is -- DIEU KHIEN 9 LED 
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           OE : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (7 downto 0)); -- DIEU KHIEN 10 LED 
end LED_DSDC_TSP;

architecture Behavioral of LED_DSDC_TSP is
SIGNAL Q_R, Q_N : STD_LOGIC_VECTOR(9 DOWNTO 0); -- DIEU KHIEN 10 LED 

begin
	PROCESS(CKHT,RST)
	BEGIN
		IF 	RST = '1' 				THEN Q_R <= "1100000000"	;
		ELSIF FALLING_EDGE(CKHT) 	THEN Q_R <= Q_N;
		END IF;
	END PROCESS;
	
	Q_N <= 	"1100000000"							WHEN OE = '0' 		ELSE
				Q_R(0) & Q_R(9 DOWNTO 1) 		WHEN ENA_DB = '1'	ELSE
				Q_R;
				
	Q <= 	Q_R(7 DOWNTO 0)  WHEN OE = '1' ELSE -- DIEU KHIEN 10 LED LAY 8 LED
			(OTHERS => '0') ;

end Behavioral;

