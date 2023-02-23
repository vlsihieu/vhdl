----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:11:29 09/02/2019 
-- Design Name: 
-- Module Name:    MAHOAUUTIEN_42HE_IF - Behavioral 
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
library IEEE; -- CODE OK -- CANH BAO DO CHUONG TRINH CON KHAI BAO MA KO SU DUNG I(0)
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

entity MAHOAUUTIEN_42HE_IF is
    Port ( SW : in  STD_LOGIC_VECTOR (4 downto 0);
           LED : out  STD_LOGIC_VECTOR (1 downto 0));
end MAHOAUUTIEN_42HE_IF;

architecture Behavioral of MAHOAUUTIEN_42HE_IF is

begin

	MAHOA_42HE_IF: ENTITY WORK.MAHOA_42HE_IF
		PORT MAP(	I => SW(3 DOWNTO 0),
						O => LED(1 DOWNTO 0),
						EN => SW(4));
						


end Behavioral;

