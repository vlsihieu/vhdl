----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:34 10/14/2016 
-- Design Name: 
-- Module Name:    LED_STD_PST - Behaviora
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Create
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity LED7DOAN_STD_PST is
    Port (  CKHT : in  STD_LOGIC;
				RST: in  STD_LOGIC;
				OE : in  STD_LOGIC;
				ENA_DB : in  STD_LOGIC;
            Q : out  STD_LOGIC_VECTOR (5 downto 0));
end LED7DOAN_STD_PST;

architecture Behavioral of LED7DOAN_STD_PST is
SIGNAL Q_R : STD_LOGIC_VECTOR (5 downto 0);
SIGNAL Q_N : STD_LOGIC_VECTOR (5 downto 0);
begin
PROCESS(CKHT,RST)
BEGIN
	IF RST = '1' THEN Q_R <= (OTHERS =>'0');
	ELSIF FALLING_EDGE (CKHT) THEN Q_R <= Q_N;
	END IF;
END PROCESS;
Q_N <= ( OTHERS =>'0')  						WHEN OE = '0' ELSE
				Q_R(4 DOWNTO 0)& NOT Q_R(5)  WHEN  ENA_DB ='1' ELSE
				Q_R;
Q <= Q_R WHEN OE ='1' ELSE (OTHERS => '0');
end Behavioral;

