----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:39:45 05/20/2020 
-- Design Name: 
-- Module Name:    CHIA_2XUNG_CK1HZ_CK10HZ - Behavioral 
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

entity CHIA_2XUNG_1HZ_10HZ is
    Port ( CKHT : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (1 downto 0)
			  );
end CHIA_2XUNG_1HZ_10HZ;

architecture Behavioral of CHIA_2XUNG_1HZ_10HZ is

begin
IC: ENTITY WORK.CHIA_CK1HZ_CK10HZ
	PORT MAP( CKHT => CKHT,
				 CK1HZ => LED(0),
				 CK10HZ => LED(1));

end Behavioral;



