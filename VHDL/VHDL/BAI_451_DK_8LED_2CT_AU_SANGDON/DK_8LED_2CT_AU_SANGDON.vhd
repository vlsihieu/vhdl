----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:05:35 10/10/2019 
-- Design Name: 
-- Module Name:    DK_8LED_2CT_AU_SANGDON - Behavioral 
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

entity DK_8LED_2CT_AU_SANGDON is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end DK_8LED_2CT_AU_SANGDON;

architecture Behavioral of DK_8LED_2CT_AU_SANGDON is
SIGNAL ENA_DB : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL OE : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Q_SD_PST: STD_LOGIC_VECTOR(7 DOWNTO 0); 
SIGNAL Q_SD_TSP: STD_LOGIC_VECTOR(7 DOWNTO 0); 
begin
	RST <= BTN;
	LED <= Q_SD_PST OR Q_SD_TSP ;
	
	IC1: ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT => CKHT,
						ENA5HZ => ENA_DB);
						
	IC2:  ENTITY WORK.LED_SANGDON_PST
		PORT MAP(	CKHT	=> CKHT,
						RST	=> RST,
						ENA_DB => ENA_DB,
						OE		=> OE(0),
						Q		=> Q_SD_PST);
						
	IC3:  ENTITY WORK.LED_SANGDON_TSP
		PORT MAP(	CKHT	=> CKHT,
						RST	=> RST,
						ENA_DB => ENA_DB,
						OE		=> OE(1),
						Q		=> Q_SD_TSP);
	
	IC4 : ENTITY WORK.DIEUKHIEN_CHOPHEP
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB	=> ENA_DB,
						OE			=> OE);
	
	
end Behavioral;

