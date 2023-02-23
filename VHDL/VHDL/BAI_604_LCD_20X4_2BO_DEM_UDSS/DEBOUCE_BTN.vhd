----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:15:44 09/20/2017 
-- Design Name: 
-- Module Name:    DEBOUCE_BTN - Behavioral 
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

entity DEBOUNCE_BTN is
	PORT (	CKHT :	IN STD_LOGIC;
				BTN:     IN STD_LOGIC;  	
				DB_TICK: OUT STD_LOGIC );
	
	
end DEBOUNCE_BTN;

architecture Behavioral of DEBOUNCE_BTN is
CONSTANT N: INTEGER:= 20;
TYPE DB_STATE IS (ZERO, WAIT0, ONE , WAIT1);
SIGNAL DB_REG, DB_NEXT : DB_STATE;
SIGNAL DELAY_REG, DELAY_NEXT: UNSIGNED (N-1 DOWNTO 0);
begin
	PROCESS(CKHT)
	BEGIN 
		IF FALLING_EDGE (CKHT) THEN 	   DB_REG 	 <= DB_NEXT;
													DELAY_REG <= DELAY_NEXT;
		END IF;	
   END PROCESS;
	
	PROCESS ( DELAY_REG, DB_REG, BTN)
	BEGIN
		DELAY_NEXT <= DELAY_REG;
		DB_NEXT    <= DB_REG;
		
		CASE DB_REG IS
			WHEN ZERO => DB_TICK <= '0';
							IF BTN = '1' THEN DB_NEXT <= WAIT1;
													DELAY_NEXT <= (OTHERS => '1');
							END IF;
			WHEN WAIT1 => DB_TICK <= '0';
							  DELAY_NEXT <= DELAY_REG -1 ;
							  IF DELAY_REG = 0 THEN
								  IF BTN = '1' THEN DB_NEXT <= ONE;
								  ELSE				  DB_NEXT <= ZERO; 
								  END IF;
								END IF;
			WHEN ONE => DB_TICK <= '1';
							IF BTN = '0' THEN DB_NEXT <= WAIT0;
													DELAY_NEXT <= (OTHERS => '1');
							END IF;
			WHEN WAIT0 => DB_TICK <= '1';
							  DELAY_NEXT <= DELAY_REG -1 ;
							  IF DELAY_REG = 0 THEN
								  IF BTN = '0' THEN DB_NEXT <= ZERO;
								  ELSE				  DB_NEXT <= ONE;
								  END IF;
								END IF;
								  
								  
			END CASE;
			END PROCESS;
		
	
end Behavioral;

