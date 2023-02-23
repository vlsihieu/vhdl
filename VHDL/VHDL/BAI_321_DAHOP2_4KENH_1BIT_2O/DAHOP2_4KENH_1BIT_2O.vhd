----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:45:37 09/02/2019 
-- Design Name: 
-- Module Name:    DAHOP2_4KENH_1BIT_2O - Behavioral 
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

entity DAHOP2_4KENH_1BIT_2O is
    Port ( SW : in  STD_LOGIC_VECTOR (5 downto 0);
           LED : out  STD_LOGIC_VECTOR (1 downto 0));
end DAHOP2_4KENH_1BIT_2O;

architecture Behavioral of DAHOP2_4KENH_1BIT_2O is

begin

	DAHOP_4KENH_1BIT_CONDITIONAL: ENTITY WORK.DAHOP_4KENH_1BIT_CONDITIONAL
		PORT MAP(	I => SW (3 DOWNTO 0),
						S => SW (5 DOWNTO 4),
						O => LED(0));
	DAHOP_4KENH_1BIT_SELECT: ENTITY WORK.DAHOP_4KENH_1BIT_SELECT
		PORT MAP(	I => SW (3 DOWNTO 0),
						S => SW (5 DOWNTO 4),
						O => LED(1));

end Behavioral;

