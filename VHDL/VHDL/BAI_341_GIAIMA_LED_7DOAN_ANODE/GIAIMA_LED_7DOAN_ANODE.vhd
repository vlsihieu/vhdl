----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:05:32 09/02/2019 
-- Design Name: 
-- Module Name:    GIAIMA_LED_7DOAN_ANODE - Behavioral 
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
library IEEE; -- CODE CHUA TEST TREN KIT -- CHUA GAN CHAN
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

entity GIAIMA_LED_7DOAN_ANODE is
    Port ( SW : in  STD_LOGIC_VECTOR (3 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (6 downto 0));
end GIAIMA_LED_7DOAN_ANODE;

architecture Behavioral of GIAIMA_LED_7DOAN_ANODE is

begin

	GIAIMA_7DOAN : ENTITY WORK.GIAIMA_7DOAN
		PORT MAP ( 	SO_GMA => SW,
						SSEG => SSEG);
	ANODE <= "11111110";

end Behavioral;

