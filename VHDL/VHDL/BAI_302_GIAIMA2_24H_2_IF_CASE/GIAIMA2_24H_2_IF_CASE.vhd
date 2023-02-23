----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:43:08 08/30/2019 
-- Design Name: 
-- Module Name:    GIAIMA2_24H_2_IF_CASE - Behavioral 
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
library IEEE; -- OK
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

entity GIAIMA2_24H_2_IF_CASE is
    Port ( SW : in  STD_LOGIC_VECTOR (3 downto 0);
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIMA2_24H_2_IF_CASE;

architecture Behavioral of GIAIMA2_24H_2_IF_CASE is

begin

	GIAIMA_IF_INS: ENTITY WORK.GIAIMA_IF_INS
		PORT MAP(	I => SW(1 DOWNTO 0),
						O => LED(3 DOWNTO 0));
						
	GIAIMA_CASE_INS: ENTITY WORK.GIAIMA_CASE_INS
		PORT MAP(	I => SW(3 DOWNTO 2),
						O => LED(7 DOWNTO 4));
						
						
end Behavioral;

