----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:19:08 09/02/2019 
-- Design Name: 
-- Module Name:    GIAIDAHOP_4KENH1B - Behavioral 
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

entity GIAIDAHOP_4KENH1B is
    Port ( SW : in  STD_LOGIC_VECTOR (2 downto 0);
           LED : out  STD_LOGIC_VECTOR (3 downto 0));
end GIAIDAHOP_4KENH1B;

architecture Behavioral of GIAIDAHOP_4KENH1B is

begin

	GIAIDAHOP_4KENH_1BIT : ENTITY WORK.GIAIDAHOP_4KENH_1BIT
		PORT MAP ( 	I => SW(0),
						S => SW(2 DOWNTO 1),
						O => LED);
						

end Behavioral;

