----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:46:42 09/01/2019 
-- Design Name: 
-- Module Name:    GIAIMA_38_ES - Behavioral 
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
library IEEE; -- MACH 1 OK -- MACH 2 OK
-- CHI 1 OR 2 DC SU DUNG__ VI KO GAN CHAN DAY DU CHO LED
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

entity GIAIMA_38_ES is
    Port ( SW : in  STD_LOGIC_VECTOR (4 downto 0);
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIMA_38_ES;

architecture Behavioral of GIAIMA_38_ES is

begin

--	GIAIMA1_38_ES: ENTITY WORK.GIAIMA1_38_ES
--		PORT MAP( 	I => SW(2 DOWNTO 0),
--						O => LED(7 DOWNTO 0),
--						EN => SW(3),
--						S => SW(4));
						
	GIAIMA2_38_ES: ENTITY WORK.GIAIMA2_38_ES	
		PORT MAP( 	I => SW(2 DOWNTO 0),
						O => LED(7 DOWNTO 0),
						EN => SW(3),
						S => SW(4)); 
 
end Behavioral;

