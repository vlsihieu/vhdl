----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:55:09 06/06/2020 
-- Design Name: 
-- Module Name:    DEM_2BIT_UP_DW_2BTN_2LED - Behavioral 
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

entity DEM_2BIT_UP_DW_2BTN_2LED is
	Port ( CKHT : in  STD_LOGIC;
          BTN  : in  STD_LOGIC_VECTOR (2 downto 0);
          LED : out  STD_LOGIC_VECTOR(1 DOWNTO 0));
end DEM_2BIT_UP_DW_2BTN_2LED;

architecture Behavioral of DEM_2BIT_UP_DW_2BTN_2LED is
SIGNAL RST,BTN1,BTN2: STD_LOGIC;
begin

	RST <=  BTN(0);
	BTN1 <=  BTN(1);
	BTN2 <= BTN(2);
IC: ENTITY WORK.DEM_2BIT_2BTN_UP_DW
	PORT MAP(CKHT => CKHT,
				RST => RST,
				BTN_UP => BTN1,
				BTN_DW => BTN2,
				Q => LED);

end Behavioral;

