----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:12:11 05/21/2020 
-- Design Name: 
-- Module Name:    CHIA_1XUNG_ENA1HZ - Behavioral 
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

entity CHIA_1XUNG_ENA1HZ is
    Port ( CKHT : in  STD_LOGIC;
           LED0 : out  STD_LOGIC);
end CHIA_1XUNG_ENA1HZ;

architecture Behavioral of CHIA_1XUNG_ENA1HZ is

begin
IC: ENTITY WORK.CHIA_ENA1HZ
	PORT MAP( CKHT => CKHT,
				 ENA1HZ => LED0);

end Behavioral;

