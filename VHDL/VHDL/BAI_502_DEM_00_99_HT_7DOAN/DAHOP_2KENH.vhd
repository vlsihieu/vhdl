----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:39:02 10/17/2019 
-- Design Name: 
-- Module Name:    DAHOP_2KENH - Behavioral 
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

entity DAHOP_2KENH is
    Port ( SEL_1B : in  STD_LOGIC;
           KENH_UOT : out  STD_LOGIC_VECTOR (3 downto 0);
           KENH_I0 : in  STD_LOGIC_VECTOR (3 downto 0);
           KENH_I1 : in  STD_LOGIC_VECTOR (3 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end DAHOP_2KENH;

architecture Behavioral of DAHOP_2KENH is

begin
	PROCESS(KENH_I0, KENH_I1, SEL_1B)
	BEGIN
		CASE SEL_1B IS
			WHEN '0' 	=> KENH_UOT <= KENH_I0; -- CHO LED DONVI SANG
								ANODE <= "11111110"; -- VI TRI LED DON VI CHO SANG
							
			WHEN OTHERS => KENH_UOT <= KENH_I1; -- CHO LED CHUC SANG
								ANODE <= "11111101"; -- LED HANG CHUC CHO SANG
		END CASE;
	END PROCESS;
	

end Behavioral;

