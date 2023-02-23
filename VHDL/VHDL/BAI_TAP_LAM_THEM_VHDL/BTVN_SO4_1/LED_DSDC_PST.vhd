----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:40:34 10/05/2019 
-- Design Name: 
-- Module Name:    LED_DSDC_PST - Behavioral 
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

entity LED_DSDC_PST is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           OE : in  STD_LOGIC;
			  OE_T : in STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end LED_DSDC_PST;

architecture Behavioral of LED_DSDC_PST is
SIGNAL Q_R, Q_N : STD_LOGIC_VECTOR(3 DOWNTO 0);

begin
	PROCESS(CKHT,RST)
	BEGIN
		IF 	RST = '0' 				THEN Q_R <= "0001"	;
		ELSIF FALLING_EDGE(CKHT) 	THEN Q_R <= Q_N;
		END IF;
	END PROCESS;
	
	Q_N <= 	"0001"                        WHEN OE = '0' AND OE_T = '0' ELSE
	         "0001"							   WHEN OE = '1' AND OE_T = '0' ELSE
				Q_R(2 DOWNTO 0) & Q_R(3) 		WHEN ENA_DB = '1' AND OE = '1' AND OE_T = '1'	ELSE
				Q_R;
				
	Q <= 	Q_R WHEN OE = '1'  AND OE_T = '1' ELSE
			(OTHERS => '0') ;

end Behavioral;

