----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:36:55 09/08/2019 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CHIA_10ENA is
    Port ( CKHT 		: in  STD_LOGIC;
--           ENA1HZ 	: out  STD_LOGIC;
           ENA2HZ 	: out  STD_LOGIC;
           ENA5HZ 	: out  STD_LOGIC
--           ENA10HZ 	: out  STD_LOGIC;
--           ENA20HZ 	: out  STD_LOGIC;
--           ENA25HZ 	: out  STD_LOGIC;
--           ENA50HZ 	: out  STD_LOGIC;
--           ENA100HZ 	: out  STD_LOGIC;
--           ENA1KHZ 	: out  STD_LOGIC;
--           ENA1MHZ 	: out  STD_LOGIC
          );
end CHIA_10ENA;

architecture Behavioral of CHIA_10ENA is

CONSTANT N  				: INTEGER 	:= 50000000;

--SIGNAL D1MHZ_R, 	D1MHZ_N 	: INTEGER RANGE 0 TO N/1000000	:= 1;  -- 1 000 000 HZ
--SIGNAL D1KHZ_R, 	D1KHZ_N 	: INTEGER RANGE 0 TO N/1000	  	:= 1;  -- 1 000 HZ
--SIGNAL D100HZ_R,  D100HZ_N : INTEGER RANGE 0 TO N/100	  	 	:= 1;  -- 100 HZ
--SIGNAL D50HZ_R, 	D50HZ_N 	: INTEGER RANGE 0 TO N/50	  	 	:= 1;  -- 50 HZ
--SIGNAL D25HZ_R,	D25HZ_N 	: INTEGER RANGE 0 TO N/25	  	 	:= 1;  -- 25 HZ
--SIGNAL D20HZ_R,	D20HZ_N 	: INTEGER RANGE 0 TO N/20	  	 	:= 1;  -- 20 HZ
--SIGNAL D10HZ_R,	D10HZ_N  : INTEGER RANGE 0 TO N/10 	 		:= 1;	 -- 10 HZ
SIGNAL D5HZ_R, 	D5HZ_N 	: INTEGER RANGE 0 TO N/5	 		:= 1;	 -- 5 HZ
SIGNAL D2HZ_R,	 	D2HZ_N 	: INTEGER RANGE 0 TO N/2	 		:= 1;  -- 2 HZ
--SIGNAL D1HZ_R, 	D1HZ_N 	: INTEGER RANGE 0 TO N	  	 		:= 1;  -- 1 HZ

begin

	-- OUTPUT LOGIC
--	ENA1HZ 	<= '1' WHEN D1HZ_R 	= N/(1*2) 			ELSE '0' ;
	ENA2HZ 	<= '1' WHEN D2HZ_R 	= N/(2*2)			ELSE '0' ;
	ENA5HZ 	<= '1' WHEN D5HZ_R 	= N/(5*2) 			ELSE '0' ;
--	ENA10HZ 	<= '1' WHEN D10HZ_R 	= N/(10*2)			ELSE '0' ;
--	ENA20HZ 	<= '1' WHEN D20HZ_R 	= N/(20*2) 			ELSE '0' ;
--	ENA25HZ 	<= '1' WHEN D25HZ_R 	= N/(25*2) 			ELSE '0' ;
--	ENA50HZ 	<= '1' WHEN D50HZ_R 	= N/(50*2) 			ELSE '0' ;
--	ENA100HZ <= '1' WHEN D100HZ_R = N/(100*2) 		ELSE '0' ;
--	ENA1KHZ 	<= '1' WHEN D1KHZ_R 	= N/(1000*2) 		ELSE '0' ;
--	ENA1MHZ 	<= '1' WHEN D1MHZ_R 	= N/(1000000*2) 	ELSE '0' ;
	
-- REGISTER
	PROCESS(CKHT)
	BEGIN
		IF FALLING_EDGE (CKHT) THEN 	--D1HZ_R 		<= D1HZ_N;
												D2HZ_R 		<= D2HZ_N;
												D5HZ_R 		<= D5HZ_N;
--												D10HZ_R 		<= D10HZ_N;
--												D20HZ_R 		<= D20HZ_N;
--												D25HZ_R 		<= D25HZ_N;
--												D50HZ_R 		<= D50HZ_N;
--												D100HZ_R 	<= D100HZ_N;
--												D1KHZ_R 		<= D1KHZ_N;
--												D1MHZ_R 		<= D1MHZ_N;
		END IF;
	END PROCESS;
	
-- NEXT STATE LOGIC
--	D1MHZ_N	<= 	1 WHEN D1MHZ_R 	= N/1000000 	ELSE	D1MHZ_R +1;
--	D1KHZ_N 	<= 	1 WHEN D1KHZ_R 	= N/1000 		ELSE	D1KHZ_R +1;			
--	D100HZ_N <= 	1 WHEN D100HZ_R 	= N/100 			ELSE	D100HZ_R +1;				
--	D50HZ_N 	<= 	1 WHEN D50HZ_R 	= N/50 			ELSE	D50HZ_R +1;				
--	D25HZ_N 	<= 	1 WHEN D25HZ_R 	= N/25 			ELSE	D25HZ_R +1;				
--	D20HZ_N 	<= 	1 WHEN D20HZ_R 	= N/20 			ELSE	D20HZ_R +1;				
--	D10HZ_N 	<= 	1 WHEN D10HZ_R 	= N/10 			ELSE	D10HZ_R +1;	
	D5HZ_N 	<= 	1 WHEN D5HZ_R 		= N/5 			ELSE	D5HZ_R +1;
	D2HZ_N 	<= 	1 WHEN D2HZ_R 		= N/2 			ELSE	D2HZ_R +1;		
--	D1HZ_N 	<= 	1 WHEN D1HZ_R 		= N 				ELSE	D1HZ_R +1;
					
					
end Behavioral;

