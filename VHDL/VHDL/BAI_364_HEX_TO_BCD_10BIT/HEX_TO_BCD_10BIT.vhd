----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:41:27 09/07/2019 
-- Design Name: 
-- Module Name:    HEX_TO_BCD_10BIT - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HEX_TO_BCD_10BIT is
    Port ( SW : in  STD_LOGIC_VECTOR (9 downto 0);
           LED : out  STD_LOGIC_VECTOR (15 downto 0));
end HEX_TO_BCD_10BIT;

architecture Behavioral of HEX_TO_BCD_10BIT is

begin

	HEXTOBCD_10BIT :  ENTITY WORK.HEXTOBCD_10BIT
		PORT MAP(	SOHEX10BIT => SW,
						DONVI => LED(3 DOWNTO 0),
						CHUC => LED(7 DOWNTO 4),
						TRAM => LED(11 DOWNTO 8),
						NGHIN => LED(15 DOWNTO 12));

end Behavioral;

