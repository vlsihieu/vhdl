----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:55:23 09/02/2019 
-- Design Name: 
-- Module Name:    DAHOP_4KENH_1BIT_SELECT - Behavioral 
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

entity DAHOP_4KENH_1BIT_SELECT is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC);
end DAHOP_4KENH_1BIT_SELECT;

architecture Behavioral of DAHOP_4KENH_1BIT_SELECT is

begin

WITH S SELECT
	O <= 	I(0) WHEN "00",
			I(1) WHEN "01",
			I(2) WHEN "10",
			I(3) WHEN OTHERS;

end Behavioral;

