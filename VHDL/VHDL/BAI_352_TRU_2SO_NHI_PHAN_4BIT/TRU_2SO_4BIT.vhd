----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:37:03 09/04/2019 
-- Design Name: 
-- Module Name:    TRU_2SO_4BIT - Behavioral 
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

entity TRU_2SO_4BIT is
    Port ( SOA : in  STD_LOGIC_VECTOR (3 downto 0);
           SOB : in  STD_LOGIC_VECTOR (3 downto 0);
           KETQUA : out  STD_LOGIC_VECTOR (4 downto 0));
end TRU_2SO_4BIT;

architecture Behavioral of TRU_2SO_4BIT is

SIGNAL SOAT, SOBT, KQH : SIGNED ( 4 DOWNTO 0);
SIGNAL  KQH_STD : STD_LOGIC_VECTOR(4 DOWNTO 0);


begin

	SOAT <= '0' & SIGNED(SOA);
	SOBT <= '0' & SIGNED(SOB);
	KQH <= (SOAT - SOBT) ;
	
	KQH_STD <= STD_LOGIC_VECTOR(KQH);
	
	PROCESS( KQH_STD)
	BEGIN
		IF KQH_STD(4) = '0'  THEN KETQUA <= 	KQH_STD;
		ELSIF KQH_STD(4) = '1'  THEN     KQH_STD <= (KQH_STD + '1' + '1');
													KETQUA <= 	NOT(KQH_STD(4)) & KQH_STD(3 DOWNTO 0);
														
		END IF;
	END PROCESS;
		
	
	
	
	

	


end Behavioral;

