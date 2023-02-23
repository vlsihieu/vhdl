----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:25:04 10/17/2016 
-- Design Name: 
-- Module Name:    GIAIMA_7DOAN_ENA - Behavioral 
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

entity GIAIMA_7DOAN_ENA is
    Port ( SO_GIAIMA : in  STD_LOGIC_VECTOR (3 downto 0);
           DAU_CHAM_1LED,ENA_GIAIMA_1LED : IN STD_LOGIC;
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIMA_7DOAN_ENA;

architecture Behavioral of GIAIMA_7DOAN_ENA is

begin
	PROCESS(SO_GIAIMA,DAU_CHAM_1LED,ENA_GIAIMA_1LED)
	BEGIN
		IF ENA_GIAIMA_1LED='0' THEN SSEG<=X"FF";
		ELSE
			CASE SO_GIAIMA IS
				WHEN X"0" => SSEG <=DAU_CHAM_1LED & "1000000";
				WHEN X"1" => SSEG <=DAU_CHAM_1LED & "1111001";
				WHEN X"2" => SSEG <=DAU_CHAM_1LED & "0100100";
				WHEN X"3" => SSEG <=DAU_CHAM_1LED & "0110000";
				WHEN X"4" => SSEG <=DAU_CHAM_1LED & "0011001";
				WHEN X"5" => SSEG <=DAU_CHAM_1LED & "0010010";
				WHEN X"6" => SSEG <=DAU_CHAM_1LED & "0000010";
				WHEN X"7" => SSEG <=DAU_CHAM_1LED & "1111000";
				WHEN X"8" => SSEG <=DAU_CHAM_1LED & "0000000";
				WHEN X"9" => SSEG <=DAU_CHAM_1LED & "0010000";
				WHEN X"A" => SSEG <=DAU_CHAM_1LED & "0001000";
				WHEN X"B" => SSEG <=DAU_CHAM_1LED & "0000011";
				WHEN X"C" => SSEG <=DAU_CHAM_1LED & "1000110";
				WHEN X"D" => SSEG <=DAU_CHAM_1LED & "0100001";
				WHEN X"E" => SSEG <=DAU_CHAM_1LED & "0000110";
				WHEN OTHERS => SSEG <=DAU_CHAM_1LED & "0001110";
			END CASE;
		END IF;
	END PROCESS;

end Behavioral;

