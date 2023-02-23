----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:37:47 10/07/2015 
-- Design Name: 
-- Module Name:    DEM_NP_4BIT - Behavioral 
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

entity DEM_3BIT_CHON_8KENH is
    Port (  CKHT,ENA1KHZ: in  STD_LOGIC;
           Q: out  STD_LOGIC_VECTOR(2 DOWNTO 0));
END DEM_3BIT_CHON_8KENH;
architecture Behavioral OF DEM_3BIT_CHON_8KENH is

SIGNAL Q_REG, Q_NEXT: STD_LOGIC_VECTOR(2 DOWNTO 0):="000";

begin
PROCESS(CKHT)
	BEGIN
		IF  FALLING_EDGE(CKHT) THEN Q_REG<= Q_NEXT;
		END IF;
END PROCESS;


Q_NEXT<= Q_REG + 1 WHEN ENA1KHZ='1'  ELSE
			 
			  Q_REG ;
			
Q<= Q_REG;
end Behavioral;

