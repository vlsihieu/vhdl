LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY DIEUKHIEN_MODE IS
	PORT (
	      rst   : in std_logic;
	      sel_3b: in std_logic_vector(2 downto 0);
			OE: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
			);
END DIEUKHIEN_MODE;

ARCHITECTURE A OF DIEUKHIEN_MODE IS
BEGIN
	PROCESS (sel_3b, rst)
	BEGIN
	   oe <= "0000";
		IF rst = '1'   THEN oe <= "0000";
		ELSIF (sel_3b = "000") then oe <= "0000";
		elsif (sel_3b = "001") then oe <= "0001";
		elsif (sel_3b = "010") then oe <= "0010";
		elsif (sel_3b = "011") then oe <= "0100";
		elsif (sel_3b = "100") then oe <= "1000";
		END IF;
	END PROCESS;
	

END A;