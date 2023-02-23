----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:21:39 09/27/2019 
-- Design Name: 
-- Module Name:    CD_LAM_HEP_BTN - Behavioral 
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

entity CD_LAM_HEP_BTN is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
           BTN_CDLH : out  STD_LOGIC);  
end CD_LAM_HEP_BTN;

architecture Behavioral of CD_LAM_HEP_BTN is
SIGNAL ENA_D: STD_LOGIC;
begin
	IC3: ENTITY WORK.DEBOUNCE_BTN
		PORT MAP(	CKHT	=> CKHT,
						BTN	=> BTN,-------- tu ben ngoai
						DB_TICK=> ENA_D);
						
	IC4: ENTITY WORK.LAM_HEP_XUNG
		PORT MAP(	CKHT	=> CKHT,
						D		=> ENA_D,
						Q		=> BTN_CDLH);
						

end Behavioral;