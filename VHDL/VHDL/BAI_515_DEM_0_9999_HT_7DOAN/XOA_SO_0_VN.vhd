----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:26:47 10/24/2019 
-- Design Name: 
-- Module Name:    XOA_SO_0_VN - Behavioral 
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

entity XOA_SO_0_VN is
    Port ( CHUC : in  STD_LOGIC_VECTOR (3 downto 0); --CHINH SUA
           TRAM : in  STD_LOGIC_VECTOR (3 downto 0); -- CHINH SUA
			  NGHIN : in  STD_LOGIC_VECTOR (3 downto 0); -- CHINH SUA
           ENA_8LED : out  STD_LOGIC_VECTOR (7 downto 0));
end XOA_SO_0_VN;

architecture Behavioral of XOA_SO_0_VN is

begin

	PROCESS(CHUC, TRAM, NGHIN) -- CHINH SUA
	BEGIN
		IF 	NGHIN = X"0" AND TRAM = X"0" AND CHUC = X"0" THEN 	ENA_8LED <= X"01"; -- 0000 0001 -- CHINH SUA
		ELSIF NGHIN = X"0" AND TRAM = X"0" 						THEN 	ENA_8LED <= X"03"; -- 0000 0011
		ELSIF NGHIN = X"0" 											THEN 	ENA_8LED <= X"07"; -- 0000 0111
		ELSE 																		ENA_8LED <= X"0F"; -- 0000 1111
		END IF;
	END PROCESS;
	
end Behavioral;

