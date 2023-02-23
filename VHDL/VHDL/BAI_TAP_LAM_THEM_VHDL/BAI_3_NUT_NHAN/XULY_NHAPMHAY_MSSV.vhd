----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:43:58 11/01/2016 
-- Design Name: 
-- Module Name:    XULY_MOD_DAUCHAM - Behavioral 
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
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity XULY_NHAPNHAY_MSSV is
    Port ( CKHT: in  STD_LOGIC;
			  RST    : IN STD_LOGIC;
--			  ena2hz :in std_logic;
			  ena_8led : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end XULY_NHAPNHAY_MSSV;

architecture Behavioral of XULY_NHAPNHAY_MSSV is
-------------------------------------
TYPE ON_OFF IS (A,B); -- A TAT , B SANG
SIGNAL TT_REG, TT_NEXT : ON_OFF;
CONSTANT N: INTEGER:= 50000000; 
SIGNAL DL_R, DL_N : INTEGER RANGE 0 TO N := 1;
SIGNAL DL_RST : STD_LOGIC;

begin

PROCESS(CKHT,RST)
BEGIN
   IF (RST = '1' )           THEN  TT_REG <= A;
	ELSIF FALLING_EDGE (CKHT) THEN  TT_REG <= TT_NEXT;
											  DL_R <= DL_N;
	END IF;
END PROCESS;

DL_N <= 1 WHEN DL_RST = '1' ELSE
        DL_R +1 ;
	
	
PROCESS( TT_REG, DL_R)
	BEGIN
		CASE TT_REG IS
			WHEN  A => 	   ena_8led  <= "00000000";
								IF (DL_R = N/2 ) THEN   
								     TT_NEXT <= B;
								     DL_RST <= '1';
								ELSE                    
								     TT_NEXT <= TT_REG;
								     DL_RST <= '0';
								END IF;
			WHEN  B => 	   ena_8led  <= "11111111";
								IF (DL_R = N/2)   THEN   
								      TT_NEXT <= A;
								      DL_RST <= '1';
								ELSE                       
								      TT_NEXT <= TT_REG;
								      DL_RST <= '0';
								END IF;

		END CASE;
	END PROCESS;
	
end Behavioral;

