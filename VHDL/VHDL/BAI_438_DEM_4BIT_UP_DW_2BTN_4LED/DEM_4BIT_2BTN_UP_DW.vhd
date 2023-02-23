----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:33:34 06/06/2020 
-- Design Name: 
-- Module Name:    DEM_4BIT_2BTN_UP_DW - Behavioral 
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

entity DEM_4BIT_2BTN_UP_DW is
	Port ( CKHT :in  STD_LOGIC;
	        BTN_DW : in  STD_LOGIC;
	        RST: in  STD_LOGIC;
			  BTN_UP : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(3 DOWNTO 0)
		   );
end DEM_4BIT_2BTN_UP_DW;

architecture Behavioral of DEM_4BIT_2BTN_UP_DW is
--SIGNAL ENA_DB:STD_LOGIC;
SIGNAL ENA_UP, ENA_DW : STD_LOGIC;
begin
IC1: ENTITY WORK.CD_LAM_HEP_BTN
	  PORT MAP(CKHT => CKHT,
				  BTN=> BTN_UP,
				  BTN_CDLH => ENA_UP);
				  
IC2: ENTITY WORK.CD_LAM_HEP_BTN
	  PORT MAP(CKHT => CKHT,
				  BTN => BTN_DW,
				  BTN_CDLH => ENA_DW);
				  
IC3: ENTITY WORK.DEM_4BIT_UP_DW
	  PORT MAP(CKHT => CKHT,
				  RST => RST,
				  ENA_UP => ENA_UP,
				  ENA_DW => ENA_DW,
				  Q => Q);

end Behavioral;

