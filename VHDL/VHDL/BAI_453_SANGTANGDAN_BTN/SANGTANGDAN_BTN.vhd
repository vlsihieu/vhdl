----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:50:23 10/17/2019 
-- Design Name: 
-- Module Name:    SANGTANGDAN_BTN - Behavioral 
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

entity SANGTANGDAN_BTN is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC_VECTOR( 1 DOWNTO 0 );
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end SANGTANGDAN_BTN;

architecture Behavioral of SANGTANGDAN_BTN is
SIGNAL ENA_DB : STD_LOGIC;
SIGNAL RST : STD_LOGIC;

SIGNAL Q_STD_PST : STD_LOGIC_VECTOR( 7 DOWNTO 0);
begin

	RST <= BTN(0);
	LED <= Q_STD_PST;
	
	IC1: ENTITY WORK.CD_LAM_HEP_BTN
		PORT MAP(	CKHT	=> CKHT,  -- XUNG CKHT
						BTN 	=> BTN(1),   -- XUNG DAU VAO CAN CHONG DOI VA LAM HEP
						BTN_CDLH => ENA_DB); -- XUNG DAU RA TU CHUONG TRINH CON BTN_CDLH

						
	IC2 : ENTITY WORK.LED_STD_PST
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						RST		=> RST,
						Q			=> Q_STD_PST);
	
	
	
	
	
end Behavioral;

