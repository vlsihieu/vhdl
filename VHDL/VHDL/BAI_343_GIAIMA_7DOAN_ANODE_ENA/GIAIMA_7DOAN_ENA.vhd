----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:36:16 09/03/2019 
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
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ENA : in  STD_LOGIC;
           DP : in  STD_LOGIC);
end GIAIMA_7DOAN_ENA;

architecture Behavioral of GIAIMA_7DOAN_ENA is

SIGNAL DPSO_GMA : STD_LOGIC_VECTOR( 4 DOWNTO 0);
SIGNAL NOTDP : STD_LOGIC;
begin

DPSO_GMA <= DP &  SO_GMA ;
NOTDP <= NOT(DP); -- DO DP TICH CUC MUC 0

	PROCESS(DPSO_GMA, ENA, NOTDP)
	BEGIN
		IF ENA = '1' THEN 
			CASE DPSO_GMA IS
			WHEN "10000"	=> SSEG <= NOTDP & "1000000"; --0 
			WHEN "10001"	=> SSEG <= NOTDP & "1111001"; --1
			WHEN "10010"	=> SSEG <= NOTDP & "0100100"; --2
			WHEN "10011"	=> SSEG <= NOTDP & "0110000"; --3
			WHEN "10100"	=> SSEG <= NOTDP & "0011001"; --4
			WHEN "10101"	=> SSEG <= NOTDP & "0010010"; --5
			WHEN "10110"	=> SSEG <= NOTDP & "0000010"; --6
			WHEN "10111"	=> SSEG <= NOTDP & "1111000"; --7
			WHEN "11000"	=> SSEG <= NOTDP & "0000000"; --8
			WHEN "11001"	=> SSEG <= NOTDP & "0010000"; --9
			WHEN "11010"	=> SSEG <= NOTDP & "0001000"; --A
			WHEN "11011"	=> SSEG <= NOTDP & "0000011"; --B
			WHEN "11100"	=> SSEG <= NOTDP & "1000110"; --C
			WHEN "11101"	=> SSEG <= NOTDP & "0100001"; --D
			WHEN "11110"	=> SSEG <= NOTDP & "0000110"; --E
			
			WHEN "00000"	=> SSEG <= NOTDP & "1000000"; --0 
			WHEN "00001"	=> SSEG <= NOTDP & "1111001"; --1
			WHEN "00010"	=> SSEG <= NOTDP & "0100100"; --2
			WHEN "00011"	=> SSEG <= NOTDP & "0110000"; --3
			WHEN "00100"	=> SSEG <= NOTDP & "0011001"; --4
			WHEN "00101"	=> SSEG <= NOTDP & "0010010"; --5
			WHEN "00110"	=> SSEG <= NOTDP & "0000010"; --6
			WHEN "00111"	=> SSEG <= NOTDP & "1111000"; --7
			WHEN "01000"	=> SSEG <= NOTDP & "0000000"; --8
			WHEN "01001"	=> SSEG <= NOTDP & "0010000"; --9
			WHEN "01010"	=> SSEG <= NOTDP & "0001000"; --A
			WHEN "01011"	=> SSEG <= NOTDP & "0000011"; --B
			WHEN "01100"	=> SSEG <= NOTDP & "1000110"; --C
			WHEN "01101"	=> SSEG <= NOTDP & "0100001"; --D
			WHEN "01110"	=> SSEG <= NOTDP & "0000110"; --E
			
			WHEN OTHERS	=> SSEG <= NOTDP & "0001110"; --F
			END CASE;
		ELSE SSEG <= "11111111" ;
		END IF ;
		END PROCESS;


end Behavioral;

