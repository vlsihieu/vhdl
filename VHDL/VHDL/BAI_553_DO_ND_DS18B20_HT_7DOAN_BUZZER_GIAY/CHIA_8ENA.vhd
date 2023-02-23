----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:59:36 09/30/2015 
-- Design Name: 
-- Module Name:    CHIA_8ENA - Behavioral 
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

entity CHIA_8ENA is
    Port ( CKHT : in  STD_LOGIC;
				ENA1KHZ:OUT STD_LOGIC);
				--ENA10HZ: out  STD_LOGIC);
--			  ,ENA2HZ,ENA5HZ,ENA10HZ,ENA20HZ,ENA25HZ,ENA50HZ,ENA100HZ : out  STD_LOGIC);
end CHIA_8ENA;

architecture Behavioral of CHIA_8ENA is
CONSTANT N: INTEGER := 50000000;
--SIGNAL D10HZ_REG, D10HZ_NEXT:	INTEGER RANGE 0 TO N/10:= 1;
SIGNAL D1KHZ_REG, D1KHZ_NEXT:	INTEGER RANGE 0 TO N/1000:= 1;
--SIGNAL D5HZ_REG, D5HZ_NEXT:	INTEGER RANGE 0 TO N:= 1;
--SIGNAL D10HZ_REG, D10HZ_NEXT:	INTEGER RANGE 0 TO N:= 1;
--SIGNAL D20HZ_REG, D20HZ_NEXT:	INTEGER RANGE 0 TO N:= 1;
--SIGNAL D25HZ_REG, D25HZ_NEXT:	INTEGER RANGE 0 TO N:= 1;
--SIGNAL D50HZ_REG, D50HZ_NEXT:	INTEGER RANGE 0 TO N:= 1;
--SIGNAL D100HZ_REG, D100HZ_NEXT:	INTEGER RANGE 0 TO N:= 1;
begin
	PROCESS (CKHT)
	BEGIN
		IF FALLING_EDGE (CKHT) THEN --D10HZ_REG	<= D10HZ_NEXT;
											D1KHZ_REG	<= D1KHZ_NEXT;
--											D5HZ_REG	<= D5HZ_NEXT;
--											D10HZ_REG	<= D10HZ_NEXT;
--											D20HZ_REG	<= D20HZ_NEXT;
--											D25HZ_REG	<= D25HZ_NEXT;
--											D50HZ_REG	<= D50HZ_NEXT;
--											D100HZ_REG	<= D100HZ_NEXT;
		END IF;
	END PROCESS;
	
--D10HZ_NEXT<= 1 WHEN D10HZ_REG = N/10 ELSE
	--			D10HZ_REG +1;
D1KHZ_NEXT<= 1 WHEN D1KHZ_REG = N/1000 ELSE					
				D1KHZ_REG +1;
--	D5HZ_NEXT<= 1 WHEN D5HZ_REG = N/5 ELSE
--					D5HZ_REG +1;
--	D10HZ_NEXT<= 1 WHEN D10HZ_REG = N/10 ELSE					
--					D10HZ_REG +1;
--	D20HZ_NEXT<= 1 WHEN D20HZ_REG = N/20 ELSE
--					D20HZ_REG +1;
--	D25HZ_NEXT<= 1 WHEN D25HZ_REG = N/25 ELSE					
--					D25HZ_REG +1;
--	D50HZ_NEXT<= 1 WHEN D50HZ_REG = N/50 ELSE
--					D50HZ_REG +1;
--	D100HZ_NEXT<= 1 WHEN D100HZ_REG = N/100 ELSE					
--					D100HZ_REG +1;
	
--ENA10HZ<= '1' WHEN D10HZ_REG = N/20 ELSE
--				'0';
ENA1KHZ<= '1' WHEN D1KHZ_REG = N/2000 ELSE
			'0';
--	ENA5HZ<= '1' WHEN D5HZ_REG = N/10 ELSE
--				'0';
--	ENA10HZ<= '1' WHEN D10HZ_REG = N/20 ELSE
--				'0';
--	ENA20HZ<= '1' WHEN D20HZ_REG = N/40 ELSE
--				'0';
--	ENA25HZ<= '1' WHEN D25HZ_REG = N/50 ELSE
--				'0';
--	ENA50HZ<= '1' WHEN D50HZ_REG = N/100 ELSE
--				'0';
--	ENA100HZ<= '1' WHEN D100HZ_REG = N/200 ELSE
--				'0';

end Behavioral;

