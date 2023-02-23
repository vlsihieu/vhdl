----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:38:34 10/05/2019 
-- Design Name: 
-- Module Name:    DK_8LED_2CT_STD_TNV_TTR - Behavioral 
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

entity DK_8LED_2CT_STD_TNV_TTR is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end DK_8LED_2CT_STD_TNV_TTR;

architecture Behavioral of DK_8LED_2CT_STD_TNV_TTR is

SIGNAL ENA_DB : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL OE : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Q_STD_TNV : STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_STD_TTR : STD_LOGIC_VECTOR( 7 DOWNTO 0);

begin

	RST <= BTN;
	LED <= Q_STD_TNV OR Q_STD_TTR ;
--	OE <= "01" WHEN SW = '0' ELSE
--			"10" ;
	
	IC1 : ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT => CKHT,
						ENA5HZ => ENA_DB);
						
	IC2 : ENTITY WORK.LED_STD_TNV
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						RST		=> RST,
						OE			=> OE(0),
						Q			=> Q_STD_TNV);
						
	IC3 : ENTITY WORK.LED_STD_TTR
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						RST		=> RST,
						OE			=> OE(1),
						Q			=> Q_STD_TTR);
						
	IC4 : ENTITY WORK.DIEUKHIEN_CHOPHEP
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB	=> ENA_DB,
						OE			=> OE);

end Behavioral;

