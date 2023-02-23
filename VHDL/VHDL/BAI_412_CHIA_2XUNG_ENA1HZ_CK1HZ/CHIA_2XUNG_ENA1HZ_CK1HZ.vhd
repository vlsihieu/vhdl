----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:56:45 05/21/2020 
-- Design Name: 
-- Module Name:    CHIA_2XUNG_ENA1HZ_CK1HZ - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CHIA_2XUNG_ENA1HZ_CK1HZ is
    Port ( CKHT : in  STD_LOGIC;
           LED  : out  STD_LOGIC_VECTOR(1 DOWNTO 0));
end CHIA_2XUNG_ENA1HZ_CK1HZ;

architecture Behavioral of CHIA_2XUNG_ENA1HZ_CK1HZ is

begin
IC: ENTITY WORK.CHIA_ENA1HZ_CK1HZ
	PORT MAP( CKHT => CKHT,
				 ENA1HZ => LED(0),
				 CK1HZ => LED(1)
				 );

end Behavioral;

