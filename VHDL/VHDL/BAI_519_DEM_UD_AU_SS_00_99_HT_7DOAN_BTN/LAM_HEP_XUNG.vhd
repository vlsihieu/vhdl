----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:20 09/26/2019 
-- Design Name: 
-- Module Name:    LAM_HEP_XUNG - Behavioral 
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

entity LAM_HEP_XUNG is
    Port ( CKHT : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end LAM_HEP_XUNG;

architecture Behavioral of LAM_HEP_XUNG is
SIGNAL QFF : STD_LOGIC;

begin

	PROCESS (CKHT)
	BEGIN
		IF FALLING_EDGE( CKHT) THEN QFF <= D;
		END IF;
	END PROCESS;
	
	Q<= (NOT QFF) AND D;
	

end Behavioral;

