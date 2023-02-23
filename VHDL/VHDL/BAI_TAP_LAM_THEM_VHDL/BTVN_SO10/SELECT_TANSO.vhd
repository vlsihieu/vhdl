----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:31:19 10/23/2017 
-- Design Name: 
-- Module Name:    CHON_TAN_SO - Behavioral 
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

entity SELECT_TANSO is
    Port ( OE : in  STD_LOGIC_VECTOR (2 downto 0);
			  ENA5HZ:  in  STD_LOGIC;
			  ENA10HZ : in  STD_LOGIC;
			  ENA2HZ : in  STD_LOGIC;
           ENA_0 : out  STD_LOGIC
			  );
end SELECT_TANSO ;

architecture Behavioral of SELECT_TANSO  is

begin
ENA_0  <= ENA10HZ WHEN OE = "001" ELSE	-- PST 10HZ
			 ENA5HZ  WHEN OE = "010" ELSE  -- TSP 5HZ
			 ENA2HZ  WHEN OE = "100" ELSE
			 '0';
			

end Behavioral;

