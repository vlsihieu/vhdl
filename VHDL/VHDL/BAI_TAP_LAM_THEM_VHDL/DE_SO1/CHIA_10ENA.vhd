----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:33:44 05/19/2020 
-- Design Name: 
-- Module Name:    CHIA_10ENA - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CHIA_10ENA is
    Port ( CKHT : in  STD_LOGIC;
--           ENA1HZ : in  STD_LOGIC;
			  ENA2HZ : out  STD_LOGIC;
			  ENA5HZ : out  STD_LOGIC
--			  ENA10HZ : out  STD_LOGIC;
--           ENA20HZ,ENA25HZ,ENA50HZ,ENA100HZ : out  STD_LOGIC;
--           ENA1KHZ,ENA1MHZ : out  STD_LOGIC
            );
end CHIA_10ENA;

architecture Behavioral of CHIA_10ENA is
CONSTANT N: INTEGER := 50000000;
SIGNAL D5HZ_R, D5HZ_N: INTEGER RANGE 0 TO N/5:= 1;
SIGNAL D2HZ_R, D2HZ_N: INTEGER RANGE 0 TO N/2:= 1;
begin
	PROCESS (CKHT)
	BEGIN
		IF FALLING_EDGE (CKHT) THEN
				D5HZ_R   <= D5HZ_N;
   			D2HZ_R   <= D2HZ_N;
		END IF;
	END PROCESS;
	
	--NEXT STATE LOGIC
	D5HZ_N 	<= 1 WHEN D5HZ_R = N/5 		  ELSE D5HZ_R +1;
	D2HZ_N 	<= 1 WHEN D2HZ_R = N/2 		  ELSE D2HZ_R +1;
-- output logic
	ENA2HZ 	<= '1' 	WHEN D2HZ_R 		= N/(2*2) 				ELSE '0';
	ENA5HZ 	<= '1' 	WHEN D5HZ_R 		= N/(5*2) 				ELSE '0';
	

end Behavioral;