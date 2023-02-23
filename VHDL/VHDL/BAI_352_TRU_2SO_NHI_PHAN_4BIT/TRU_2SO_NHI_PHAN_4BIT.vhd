----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:33:41 09/04/2019 
-- Design Name: 
-- Module Name:    TRU_2SO_NHI_PHAN_4BIT - Behavioral 
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
library IEEE; -- CODE CHUA TEST TREN KIT -- CHUA GAN CHAN -- CHUA GAN BIEN NHO
-- CHUA CODE XONG CODE CON
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

entity TRU_2SO_NHI_PHAN_4BIT is
    Port ( SW : in  STD_LOGIC_VECTOR (7 downto 0);
           LED : out  STD_LOGIC_VECTOR (4 downto 0));
end TRU_2SO_NHI_PHAN_4BIT;

architecture Behavioral of TRU_2SO_NHI_PHAN_4BIT is

begin

	TRU_2SO_4BIT: ENTITY WORK.TRU_2SO_4BIT
		PORT MAP ( 	SOA => SW( 3 DOWNTO 0),
						SOB => SW( 7 DOWNTO 4),
						KETQUA => LED);
						

end Behavioral;

