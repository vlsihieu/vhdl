----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:49 05/20/2020 
-- Design Name: 
-- Module Name:    CHIA_CK1HZ_CK10HZ - Behavioral 
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CHIA_CK1HZ_CK10HZ is
    Port ( CKHT : in  STD_LOGIC;
           CK1HZ, CK10HZ : out  STD_LOGIC);
end CHIA_CK1HZ_CK10HZ;

architecture Behavioral of CHIA_CK1HZ_CK10HZ is
CONSTANT N: INTEGER := 50000000;
SIGNAL D10HZ_REG, D10HZ_NEXT: INTEGER RANGE 0 TO N/10:= 1;
SIGNAL D1HZ_REG, D1HZ_NEXT: INTEGER RANGE 0 TO N:= 1;
begin
--REGISTER
	PROCESS(CKHT)
	BEGIN
		IF FALLING_EDGE (CKHT) THEN
				D10HZ_REG <= D10HZ_NEXT;
				D1HZ_REG <= D1HZ_NEXT;
		END IF;
	END PROCESS;
--NEXT STATE LOGIC
	D10HZ_NEXT <= 1 WHEN D10HZ_REG = N/10 ELSE D10HZ_REG +1;
	D1HZ_NEXT <= 1  WHEN D1HZ_REG = N     ELSE D1HZ_REG +1;
--OUTOUT LOGIC
	CK10HZ <= '1' WHEN D1HZ_REG< N/20 ELSE '0';
	CK1HZ <= '1'  WHEN D1HZ_REG< N/2  ELSE '0';
end Behavioral;


