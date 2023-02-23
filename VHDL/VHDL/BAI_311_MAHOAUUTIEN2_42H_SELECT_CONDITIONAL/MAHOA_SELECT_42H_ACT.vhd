----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:34:47 09/02/2019 
-- Design Name: 
-- Module Name:    MAHOA_SELECT_42H_ACT - Behavioral 
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

entity MAHOA_SELECT_42H_ACT is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           O : out  STD_LOGIC_VECTOR (1 downto 0);
           ACT : out  STD_LOGIC);
end MAHOA_SELECT_42H_ACT;

architecture Behavioral of MAHOA_SELECT_42H_ACT is

begin

	WITH I SELECT
		O <= 	"11" WHEN "1000"|"1001"|"1010"|"1011"|"1100"|"1101"|"1110"|"1111" ,
				"10" WHEN "0100"|"0101"|"0110"|"0111",
				"01" WHEN "0010"|"0011",
				"00" WHEN OTHERS;
	ACT <= I(3) OR I(2) OR I(1) OR I(0);
	

end Behavioral;

