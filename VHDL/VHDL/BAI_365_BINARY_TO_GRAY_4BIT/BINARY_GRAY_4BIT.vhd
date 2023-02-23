----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:11:54 09/08/2019 
-- Design Name: 
-- Module Name:    BINARY_GRAY_4BIT - Behavioral 
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

entity BINARY_GRAY_4BIT is
    Port ( BINARY : in  STD_LOGIC_VECTOR (3 downto 0);
           GRAY : out  STD_LOGIC_VECTOR (3 downto 0));
end BINARY_GRAY_4BIT;

architecture Behavioral of BINARY_GRAY_4BIT is

begin

GRAY <= BINARY XOR ('0' & BINARY(3 DOWNTO 1)) ;

end Behavioral;

