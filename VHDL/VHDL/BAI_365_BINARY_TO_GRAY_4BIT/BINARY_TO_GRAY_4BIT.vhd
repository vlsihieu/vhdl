----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:06:52 09/08/2019 
-- Design Name: 
-- Module Name:    BINARY_TO_GRAY_4BIT - Behavioral 
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

entity BINARY_TO_GRAY_4BIT is
    Port ( SW : in  STD_LOGIC_VECTOR (3 downto 0);
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end BINARY_TO_GRAY_4BIT;

architecture Behavioral of BINARY_TO_GRAY_4BIT is

begin

	BINARY_GRAY_4BIT: ENTITY WORK.BINARY_GRAY_4BIT
		PORT MAP(	BINARY => SW,
						GRAY => LED(3 DOWNTO 0));
	LED( 7 DOWNTO 4) <= SW ;

end Behavioral;

