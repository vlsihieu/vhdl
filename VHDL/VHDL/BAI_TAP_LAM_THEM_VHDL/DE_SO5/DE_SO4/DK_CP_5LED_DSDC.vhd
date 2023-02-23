----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:21:16 07/12/2020 
-- Design Name: 
-- Module Name:    DK_CP_5LED_DSDC - Behavioral 
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

entity DK_CP_5LED_DSDC is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           CP2 : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (4 downto 0));
end DK_CP_5LED_DSDC;

architecture Behavioral of DK_CP_5LED_DSDC is
SIGNAL OE : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Q_DSDC_PST : STD_LOGIC_VECTOR( 4 DOWNTO 0);
SIGNAL Q_DSDC_TSP : STD_LOGIC_VECTOR( 4 DOWNTO 0);
begin
	Q <= Q_DSDC_PST OR Q_DSDC_TSP ;
	OE <= "01" WHEN CP2 = '0' ELSE
			"10" ;
IC2 : ENTITY WORK.LED_DSDC_PST
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
end Behavioral;

