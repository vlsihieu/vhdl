----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:53:37 09/06/2020 
-- Design Name: 
-- Module Name:    xuly_4chedo - Behavioral 
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

entity xuly_4chedo is
    Port ( sel_2b : in  STD_LOGIC_VECTOR (1 downto 0);
           oe : out  STD_LOGIC_VECTOR (3 downto 0));
end xuly_4chedo;

architecture Behavioral of xuly_4chedo is

begin
oe <= "0001" when sel_2b = "00" else
      "0010" when sel_2b = "01" else
		"0100" when sel_2b = "10" else
		"1000" when sel_2b = "11" else
		"0000";

end Behavioral;

