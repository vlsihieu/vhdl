----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:14:04 06/05/2020 
-- Design Name: 
-- Module Name:    DEM_3BIT_BTN - Behavioral 
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

entity DEM_3BIT_BTN is
	Port ( CKHT,RST,BTN : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(2 DOWNTO 0));
end DEM_3BIT_BTN;

architecture Behavioral of DEM_3BIT_BTN is
SIGNAL ENA_DB:STD_LOGIC;
begin
IC1: ENTITY WORK.CD_LAM_HEP_BTN
	  PORT MAP(CKHT => CKHT,
				  BTN => BTN,
				  BTN_CDLH => ENA_DB);
IC2: ENTITY WORK.DEM_3BIT
	  PORT MAP(CKHT => CKHT,
				  RST => RST,
				  ENA_DB => ENA_DB,
				  Q => Q);

end Behavioral;


