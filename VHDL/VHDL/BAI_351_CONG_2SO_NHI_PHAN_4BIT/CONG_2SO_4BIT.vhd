----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:13:25 09/04/2019 
-- Design Name: 
-- Module Name:    CONG_2SO_4BIT - Behavioral 
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

entity CONG_2SO_4BIT is
    Port ( SOA : in  STD_LOGIC_VECTOR (3 downto 0);
           SOB : in  STD_LOGIC_VECTOR (3 downto 0);
           KETQUA : out  STD_LOGIC_VECTOR (4 downto 0));
end CONG_2SO_4BIT;

architecture Behavioral of CONG_2SO_4BIT is

SIGNAL KQT, SOAT, SOBT : SIGNED( 4 DOWNTO 0);

begin

	SOAT <= '0' & SIGNED(SOA);
	SOBT <= '0' & SIGNED(SOB);
	KQT <= SOAT + SOBT;
	KETQUA <= STD_LOGIC_VECTOR(KQT);

end Behavioral;

