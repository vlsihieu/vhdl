library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GIAIMA_7DOAN_ENA is
    Port ( 	SO_GIAIMA: in  STD_LOGIC_VECTOR (3 downto 0);
				ENA_GIAIMA_1LED: in STD_LOGIC;
				SSEG: out  STD_LOGIC_VECTOR (6 downto 0));
end GIAIMA_7DOAN_ENA;

architecture Behavioral of GIAIMA_7DOAN_ENA is

begin
	PROCESS(SO_GIAIMA, ENA_GIAIMA_1LED)
	BEGIN
		IF ENA_GIAIMA_1LED = '0' THEN SSEG <= "1111111";
		ELSE
			CASE SO_GIAIMA IS
				WHEN X"0" 		=> SSEG <= "1000000";  --SO 0
				WHEN X"1" 		=> SSEG <= "1111001";  --SO 1
				WHEN X"2" 		=> SSEG <= "0100100";  --SO 2
				WHEN X"3" 		=> SSEG <= "0110000";  --SO 3
				WHEN X"4" 		=> SSEG <= "0011001";  --SO 4
				WHEN X"5" 		=> SSEG <= "0010010";  --SO 5
				WHEN X"6" 		=> SSEG <= "0000010";  --SO 6
				WHEN X"7" 		=> SSEG <= "1111000";  --SO 7
				WHEN X"8" 		=> SSEG <= "0000000";  --SO 8
				WHEN X"9" 		=> SSEG <= "0010000";  --SO 9
				WHEN X"A" 		=> SSEG <= "0001000";  --CHU A
				WHEN X"B" 		=> SSEG <= "0000011";  --CHU B
				WHEN X"C" 		=> SSEG <= "1000110";  --CHU C
				WHEN X"D" 		=> SSEG <= "0100001";  --CHU D
				WHEN X"E" 		=> SSEG <= "0000110";  --CHU E
				WHEN OTHERS 	=> SSEG <= "0001110";  --CHU F
			END CASE;
		END IF;	
	END PROCESS;
	
end Behavioral;