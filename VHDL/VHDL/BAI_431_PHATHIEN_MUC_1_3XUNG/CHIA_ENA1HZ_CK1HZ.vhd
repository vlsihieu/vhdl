----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:59:15 05/21/2020 
-- Design Name: 
-- Module Name:    CHIA_ENA1HZ_CK1HZ - Behavioral 
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
entity CHIA_ENA1HZ_CK1HZ is
    Port ( CKHT : in  STD_LOGIC;
           CK1HZ : out  STD_LOGIC;
           ENA1HZ : out  STD_LOGIC);
end CHIA_ENA1HZ_CK1HZ;

architecture Behavioral of CHIA_ENA1HZ_CK1HZ is
CONSTANT N: INTEGER := 50000000;
SIGNAL D1HZ_REG, D1HZ_NEXT: INTEGER RANGE 0 TO N:=1;
begin
	PROCESS(CKHT)
	BEGIN
		IF FALLING_EDGE (CKHT) THEN
					D1HZ_REG <= D1HZ_NEXT;
		END IF;
	END PROCESS;
	
	D1HZ_NEXT <= 1 WHEN D1HZ_REG = N ELSE D1HZ_REG +1;
	
	ENA1HZ <= '1' WHEN D1HZ_REG = N/2 ELSE '0';
	
	CK1HZ  <= '1' WHEN D1HZ_REG < N/2 ELSE '0';
end Behavioral;

