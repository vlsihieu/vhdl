----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:05:42 05/20/2020 
-- Design Name: 
-- Module Name:    CHIA_10XUNG_CK1HZ_CK1MHZ - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--74









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

entity CHIA_10XUNG_CK1HZ_CK1MHZ is
    Port ( CKHT : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (9 downto 0)
			  );
end CHIA_10XUNG_CK1HZ_CK1MHZ ;

architecture Behavioral of CHIA_10XUNG_CK1HZ_CK1MHZ  is

begin
IC: ENTITY WORK.CHIA_10CK
	PORT MAP( CKHT => CKHT,
				 CK1HZ => LED(0),
				 CK2HZ => LED(1),
             CK5HZ => LED(2),
				 CK10HZ => LED(3),
				 CK20HZ => LED(4),
             CK25HZ => LED(5),
             CK50HZ => LED(6),
             CK100HZ => LED(7),
             CK1KHZ => LED(8),
             CK1MHZ => LED(9)
            );				 
end Behavioral;

