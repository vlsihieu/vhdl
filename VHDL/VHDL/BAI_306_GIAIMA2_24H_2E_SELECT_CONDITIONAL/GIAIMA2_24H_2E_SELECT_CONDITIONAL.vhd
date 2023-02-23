----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:04:30 08/31/2019 
-- Design Name: 
-- Module Name:    GIAIMA2_24H_2E_SELECT_CONDITIONAL - Behavioral 
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

entity GIAIMA2_24H_2E_SELECT_CONDITIONAL is
    Port ( SW : in  STD_LOGIC_VECTOR (5 downto 0);
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIMA2_24H_2E_SELECT_CONDITIONAL;

architecture Behavioral of GIAIMA2_24H_2E_SELECT_CONDITIONAL is

begin

	GIAIMA_24E_SELECT: ENTITY WORK.GIAIMA_24E_SELECT
		PORT MAP(	I => SW(1 DOWNTO 0),
						O => LED(3 DOWNTO 0),
						EN => SW(2));
						
	GIAIMA_24E_CONDITIONAL: ENTITY WORK.GIAIMA_24E_CONDITIONAL
		PORT MAP(	I => SW(4 DOWNTO 3),
						O => LED(7 DOWNTO 4),
						EN => SW(5));

end Behavioral;


