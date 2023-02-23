----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:07:55 09/02/2019 
-- Design Name: 
-- Module Name:    DAHOP_4KENH - Behavioral 
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

entity DAHOP_4KENH is
    Port ( SW : in  STD_LOGIC_VECTOR (9 downto 0);
           LED : out  STD_LOGIC_VECTOR (1 downto 0));
end DAHOP_4KENH;

architecture Behavioral of DAHOP_4KENH is

begin

	DAHOP_4KENH_2BIT : ENTITY WORK.DAHOP_4KENH_2BIT
		PORT MAP (	I0 => SW(1 DOWNTO 0),
						I1 => SW(3 DOWNTO 2),
						I2 => SW(5 DOWNTO 4),
						I3 => SW(7 DOWNTO 6),
						S  => SW(9 DOWNTO 8),
						O  => LED);
						

end Behavioral;

