----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:22 09/02/2019 
-- Design Name: 
-- Module Name:    DAHOP_4KENH_2BIT - Behavioral 
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

entity DAHOP_4KENH_2BIT is
    Port ( I0 : in  STD_LOGIC_VECTOR (1 downto 0);
           I1 : in  STD_LOGIC_VECTOR (1 downto 0);
           I2 : in  STD_LOGIC_VECTOR (1 downto 0);
           I3 : in  STD_LOGIC_VECTOR (1 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           O : out  STD_LOGIC_VECTOR (1 downto 0));
end DAHOP_4KENH_2BIT;

architecture Behavioral of DAHOP_4KENH_2BIT is

begin

	O <= 	I0 WHEN S = "00" ELSE
			I1 WHEN S = "01" ELSE
			I2 WHEN S = "10" ELSE
			I3;
			

end Behavioral;

