----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:58:21 10/18/2017 
-- Design Name: 
-- Module Name:    XOA_SO_0 - Behavioral 
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

entity XOA_SO_0_VN is
    Port ( CHUC , TRAM : in  STD_LOGIC_VECTOR (3 downto 0);
           ENA_GIAIMA_8LED : out  STD_LOGIC_VECTOR (7 downto 0));
end XOA_SO_0_VN;

architecture Behavioral of XOA_SO_0_VN is

begin
	PROCESS(TRAM , CHUC)
	BEGIN
	IF TRAM = X"0" AND CHUC = X"0" THEN ENA_GIAIMA_8LED <= X"01";
	ELSIF TRAM = X"0" THEN 					ENA_GIAIMA_8LED <= X"03";
	ELSE											ENA_GIAIMA_8LED <= X"07";
	END IF;
	
	END PROCESS;
end Behavioral;

