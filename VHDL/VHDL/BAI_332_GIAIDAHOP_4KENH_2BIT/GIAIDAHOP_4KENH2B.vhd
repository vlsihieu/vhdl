----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:35:24 09/02/2019 
-- Design Name: 
-- Module Name:    GIAIDAHOP_4KENH2B - Behavioral 
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
library IEEE; -- CODE OK
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

entity GIAIDAHOP_4KENH2B is
    Port ( SW : in  STD_LOGIC_VECTOR (3 downto 0);
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIDAHOP_4KENH2B;

architecture Behavioral of GIAIDAHOP_4KENH2B is

begin
GIAIDAHOP_4KENH_2BIT: ENTITY WORK.GIAIDAHOP_4KENH_2BIT
	PORT MAP( 	I => SW (1 DOWNTO 0),
					S => SW (3 DOWNTO 2),
					O => LED);
					

end Behavioral;

