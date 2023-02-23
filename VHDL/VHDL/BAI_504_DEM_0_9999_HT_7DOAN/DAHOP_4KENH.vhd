----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:39:46 10/23/2019 
-- Design Name: 
-- Module Name:    DAHOP_4KENH - Behavioral 
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

entity DAHOP_4KENH is
    Port ( SEL_2B : in  STD_LOGIC_VECTOR (1 downto 0);
           KENH_OUT : out  STD_LOGIC_VECTOR (3 downto 0);
           KENH_I0 : in  STD_LOGIC_VECTOR (3 downto 0);
           KENH_I1 : in  STD_LOGIC_VECTOR (3 downto 0);
           KENH_I2 : in  STD_LOGIC_VECTOR (3 downto 0);
           KENH_I3 : in  STD_LOGIC_VECTOR (3 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end DAHOP_4KENH;

architecture Behavioral of DAHOP_4KENH is

begin
	
	PROCESS(KENH_I0, KENH_I1, KENH_I2, KENH_I3, SEL_2B)
	BEGIN
		CASE SEL_2B IS
			WHEN "00" 	=> KENH_OUT <= KENH_I0; -- CHO LED DONVI SANG
								ANODE <= "11111110"; -- VI TRI LED DON VI CHO SANG
								
			WHEN "01"	 => KENH_OUT <= KENH_I1; -- CHO LED CHUC SANG
								ANODE <= "11111101"; -- LED HANG CHUC CHO SANG
			
			WHEN "10"	 => KENH_OUT <= KENH_I2; -- CHO LED TRAM SANG
								ANODE <= "11111011"; -- LED HANG TRAM CHO SANG
			
			WHEN OTHERS => KENH_OUT <= KENH_I3; -- CHO LED NGHIN SANG
								ANODE <= "11110111"; -- LED HANG NGHIN CHO SANG
		END CASE;
	END PROCESS;
	

end Behavioral;

