----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:45:04 10/18/2017 
-- Design Name: 
-- Module Name:    DEM_1BIT_BTN - Behavioral 
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

entity DEM_1BIT_BTN is
		PORT ( CKHT, RST, BTN : IN STD_LOGIC;
			     Q :			OUT STD_LOGIC
			 
			 );  	
end DEM_1BIT_BTN;

architecture Behavioral of DEM_1BIT_BTN is
SIGNAL ENA_DB1 : STD_LOGIC;
begin

CD_LAM_HEP_BTN:	ENTITY WORK.CD_LAM_HEP_BTN
		PORT MAP ( CKHT => CKHT,
					  BTN  => BTN,
					  BTN_CDLH => ENA_DB1);		

DEM_1BIT : ENTITY WORK.DEM_1BIT
		PORT MAP ( CKHT => CKHT,
					  RST  => RST,
					  ENA_DB => ENA_DB1,
					  Q => Q
							);
end Behavioral;