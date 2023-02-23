----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:10:06 09/04/2020 
-- Design Name: 
-- Module Name:    chuong_keu_led - Behavioral 
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

entity chuong_keu_led is
    Port ( dem_xx : in  STD_LOGIC_VECTOR (5 downto 0);
           nhietdo : in  STD_LOGIC_VECTOR (7 downto 0);
			  ena_chuong : in std_logic;
           bell : out  STD_LOGIC;
			  q : out std_logic_vector(3 downto 0)
			  );
end chuong_keu_led;

architecture Behavioral of chuong_keu_led is

begin
bell <= '0' when (ena_chuong = '0') else
        '0' when (("00" & dem_xx) < nhietdo  ) else
		  '1' when (("00" & dem_xx) >= nhietdo ) else
		  '0';
q <= "0000" when (ena_chuong = '0' ) else
     "1111" ;
end Behavioral;

