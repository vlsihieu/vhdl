----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:22:13 09/09/2019 
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
    Port ( SO_GMA : in  STD_LOGIC_VECTOR (3 downto 0);
			  DC_1LED	:	in  STD_LOGIC;
			  ENA_1LED	:	in  STD_LOGIC;
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIMA_7DOAN_ENA;

architecture Behavioral of GIAIMA_7DOAN_ENA is

begin
PROCESS	(SO_GMA, DC_1LED, ENA_1LED)
	BEGIN
	IF ENA_1LED = '0' THEN SSEG <= X"FF";
	ELSE
		CASE SO_GMA	IS
			WHEN	X"0"		=>	SSEG	<=	DC_1LED & "1000000";	--0
			WHEN	X"1"		=>	SSEG	<=	DC_1LED & "1111001";	--1
			WHEN	X"2"		=>	SSEG	<=	DC_1LED & "0100100";	--2
			WHEN	X"3"		=>	SSEG	<=	DC_1LED & "0110000";	--3
			WHEN	X"4"		=>	SSEG	<=	DC_1LED & "0011001";	--4
			WHEN	X"5"		=>	SSEG	<=	DC_1LED & "0010010";	--5
			WHEN	X"6"		=>	SSEG	<=	DC_1LED & "0000010";	--6
			WHEN	X"7"		=>	SSEG	<=	DC_1LED & "1111000";	--7
			WHEN	X"8"		=>	SSEG	<=	DC_1LED & "0000000";	--8
			WHEN	X"9"		=>	SSEG	<=	DC_1LED & "0010000";	--9
			WHEN	X"A"		=>	SSEG	<=	DC_1LED & "0001000";	--A
			WHEN	X"B"		=>	SSEG	<=	DC_1LED & "0000011";	--B
			WHEN	X"C"		=>	SSEG	<=	DC_1LED & "1000110";	--C
			WHEN	X"D"		=>	SSEG	<=	DC_1LED & "0100001";	--D
			WHEN	X"E"		=>	SSEG	<=	DC_1LED & "0000110";	--E
			WHEN	OTHERS  =>	SSEG	<=	DC_1LED & "0001110";	--F
		END CASE;
	END IF;
END PROCESS;

end Behavioral;

