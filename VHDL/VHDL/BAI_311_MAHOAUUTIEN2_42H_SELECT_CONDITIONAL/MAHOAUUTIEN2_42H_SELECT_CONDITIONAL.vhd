----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:27:39 09/02/2019 
-- Design Name: 
-- Module Name:    MAHOAUUTIEN2_42H_SELECT_CONDITIONAL - Behavioral 
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

entity MAHOAUUTIEN2_42H_SELECT_CONDITIONAL is
    Port ( SW : in  STD_LOGIC_VECTOR (8 downto 0);
           LED : out  STD_LOGIC_VECTOR (5 downto 0));
end MAHOAUUTIEN2_42H_SELECT_CONDITIONAL;

architecture Behavioral of MAHOAUUTIEN2_42H_SELECT_CONDITIONAL is

begin

	MAHOA_SELECT_42H_ACT : ENTITY WORK.MAHOA_SELECT_42H_ACT
		PORT MAP(	I => SW (3 DOWNTO 0),
						O => LED (1 DOWNTO 0),
						ACT => LED (2));
						
	MAHOA_CONDITIONAL_42H_ACT : ENTITY WORK.MAHOA_CONDITIONAL_42H_ACT
		PORT MAP ( 	I => SW (7 DOWNTO 4),
						O => LED(4 DOWNTO 3),
						ACT => LED(5));
						

end Behavioral;

