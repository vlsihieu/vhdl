----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:06:44 07/27/2020 
-- Design Name: 
-- Module Name:    DEN_GIAOTHONG - Behavioral 
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

entity DEN_GIAOTHONG is
    Port ( BTN0 : in  STD_LOGIC;
           CKHT : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (5 downto 0));
end DEN_GIAOTHONG;

architecture Behavioral of DEN_GIAOTHONG is

-- LED                   5   4    3    2     1    0
-- DENGIAOTHONG          G1  Y1   R1   G2   Y2    R2
-----------------------------------
-- A : G1R2 : 30S
-- B : Y1R2 :5S
-- C : R1G2 : 30S
-- D : R1Y2 : 5S
-----------------------------------
TYPE TRAFFIC_LIGHTS IS (A,B,C,D);
--------------------------------
CONSTANT N: INTEGER:= 50000000; -- 1s
CONSTANT RED: INTEGER:= N*30;
CONSTANT YELOW: INTEGER:= N*5;--5s
---------------------------------------
SIGNAL TT_REG, TT_NEXT : TRAFFIC_LIGHTS;
SIGNAL DL_R, DL_N : INTEGER RANGE 0 TO N*30 := 1; -- start 1
------------------------------------------
SIGNAL DL_RST : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
------------------------
begin
RST <= NOT BTN0;

PROCESS(CKHT,RST)
BEGIN
   IF (RST = '1' )           THEN  TT_REG <= A;
	ELSIF FALLING_EDGE (CKHT) THEN  TT_REG <= TT_NEXT;
											  DL_R <= DL_N;
	END IF;
END PROCESS;
--------------------------------------
DL_N <= 1 WHEN DL_RST = '1' ELSE
        DL_R +1 ;
------------------------------
PROCESS( TT_REG, DL_R)
	BEGIN
		CASE TT_REG IS
			WHEN  A => 	   LED <= "100001";
								IF (DL_R = RED ) THEN   
								     TT_NEXT <= B;
								     DL_RST <= '1';
								ELSE                    
								     TT_NEXT <= TT_REG;
								     DL_RST <= '0';
								END IF;
			WHEN  B => 	   LED <= "010001";
								IF (DL_R = YELOW)   THEN   
								      TT_NEXT <= C;
								      DL_RST <= '1';
								ELSE                       
								      TT_NEXT <= TT_REG;
								      DL_RST <= '0';
								END IF;
			WHEN  C => 		LED <= "001100";
								IF (DL_R = RED)  THEN 	
								         TT_NEXT <= D;
								         DL_RST <= '1';
								ELSE  	                  
								         TT_NEXT <= TT_REG;
								         DL_RST  <= '0';
								END IF;
								
			WHEN  D => 		LED <= "001010";
								IF (DL_R = YELOW) THEN 	
								      TT_NEXT <= A;
								      DL_RST <= '1';
								ELSE  	                     
								      TT_NEXT <= TT_REG;
								      DL_RST  <= '0';
								END IF;
		END CASE;
	END PROCESS;
end Behavioral;

