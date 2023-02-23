----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:58:56 07/12/2020 
-- Design Name: 
-- Module Name:    CHON_CHUONGTRINH - Behavioral 
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CHON_CHUONGTRINH_7DOAN is
    Port ( SEL_2B : in  STD_LOGIC_VECTOR (1 downto 0);
           OE : out  STD_LOGIC_VECTOR(3 DOWNTO 0)
			 );
end CHON_CHUONGTRINH_7DOAN;

architecture Behavioral of CHON_CHUONGTRINH_7DOAN is

begin
	OE <= "0001" WHEN SEL_2B = "00" ELSE
		   "0010" WHEN SEL_2B = "01" ELSE
			"0100" WHEN SEL_2B = "10" ELSE
			"1000";

end Behavioral;

