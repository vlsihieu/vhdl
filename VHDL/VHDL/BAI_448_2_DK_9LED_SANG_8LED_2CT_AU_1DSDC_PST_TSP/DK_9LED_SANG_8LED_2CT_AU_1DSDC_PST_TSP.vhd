----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:00:48 10/17/2019 
-- Design Name: 
-- Module Name:    DK_9LED_SANG_8LED_2CT_AU_1DSDC_PST_TSP - Behavioral 
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

entity DK_9LED_SANG_8LED_2CT_AU_1DSDC_PST_TSP is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end DK_9LED_SANG_8LED_2CT_AU_1DSDC_PST_TSP;

architecture Behavioral of DK_9LED_SANG_8LED_2CT_AU_1DSDC_PST_TSP is

SIGNAL ENA_DB : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL OE : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Q_DSDC_PST : STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_DSDC_TSP : STD_LOGIC_VECTOR( 7 DOWNTO 0);

begin

	RST <= BTN;
	LED <= Q_DSDC_PST OR Q_DSDC_TSP ;
--	OE <= "01" WHEN SW = '0' ELSE
--			"10" ;
	
	IC1 : ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT => CKHT,
						ENA5HZ => ENA_DB);
						
	IC2 : ENTITY WORK.LED_DSDC_PST -- DIEU KHIEN 9 LED 
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						RST		=> RST,
						OE			=> OE(0),
						Q			=> Q_DSDC_PST);
						
	IC3 : ENTITY WORK.LED_DSDC_TSP 
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						RST		=> RST,
						OE			=> OE(1),
						Q			=> Q_DSDC_TSP);
						
	IC4 : ENTITY WORK.DIEUKHIEN_CHOPHEP
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB	=> ENA_DB,
						OE			=> OE);

end Behavioral;


