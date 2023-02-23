----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:08:13 09/03/2019 
-- Design Name: 
-- Module Name:    GIAIMA_7DOAN_ANODE_ENA - Behavioral 
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

entity GIAIMA_7DOAN_ANODE_ENA is
    Port ( SW : in  STD_LOGIC_VECTOR (4 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (6 downto 0));
end GIAIMA_7DOAN_ANODE_ENA;

architecture Behavioral of GIAIMA_7DOAN_ANODE_ENA is

begin

	GIAIMA_7DOAN_ENA : ENTITY WORK.GIAIMA_7DOAN_ENA
		PORT MAP ( 	SO_GMA => SW(3 DOWNTO 0),
						SSEG 	 => SSEG,
						ENA	 => SW(4));
	ANODE <= "11111110" ;				
	
end Behavioral;

