----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:55:58 09/01/2019 
-- Design Name: 
-- Module Name:    GIAIMA2_24H_2E_IF_CASE - Behavioral 
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

entity GIAIMA2_24H_2E_IF_CASE is
    Port ( SW : in  STD_LOGIC_VECTOR (5 downto 0);
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIMA2_24H_2E_IF_CASE;

architecture Behavioral of GIAIMA2_24H_2E_IF_CASE is

begin

	GIAIMA_24HE_IF: ENTITY WORK.GIAIMA_24HE_IF
		PORT MAP(	I => SW(1 DOWNTO 0),
						O => LED(3 DOWNTO 0),
						EN => SW(2));
						
	GIAIMA_24HE_CASE: ENTITY WORK.GIAIMA_24HE_CASE
		PORT MAP(	I => SW(4 DOWNTO 3),
						O => LED(7 DOWNTO 4),
						EN => SW(5));
  
end Behavioral;

