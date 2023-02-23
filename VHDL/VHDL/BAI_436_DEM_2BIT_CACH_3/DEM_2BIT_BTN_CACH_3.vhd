----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:57:05 06/05/2020 
-- Design Name: 
-- Module Name:    DEM_2BIT_BTN_CACH_3 - Behavioral 
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

entity DEM_2BIT_BTN_CACH_3 is
	Port ( CKHT : in  STD_LOGIC;
          BTN  : in  STD_LOGIC_VECTOR (1 downto 0);
          LED : out  STD_LOGIC_VECTOR(1 DOWNTO 0));
end DEM_2BIT_BTN_CACH_3;

architecture Behavioral of DEM_2BIT_BTN_CACH_3 is
SIGNAL RST,BTN1: STD_LOGIC;
begin

	RST <=  BTN(0);
	BTN1 <=  BTN(1);
IC: ENTITY WORK.DEM_2BIT_BTN
	PORT MAP(CKHT => CKHT,
				RST => RST,
				BTN => BTN1,
				Q => LED);

end Behavioral;

