----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:27:40 07/12/2020 
-- Design Name: 
-- Module Name:    DK_CP_3LED_TSP_PST - Behavioral 
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

entity DK_CP_3LED_TSP_PST is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           CP1 : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end DK_CP_3LED_TSP_PST;

architecture Behavioral of DK_CP_3LED_TSP_PST is
SIGNAL OE : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Q_STD_TSP : STD_LOGIC_VECTOR( 2 DOWNTO 0);
SIGNAL Q_STD_PST : STD_LOGIC_VECTOR( 2 DOWNTO 0);
begin

	Q  <= Q_STD_PST OR Q_STD_TSP ;
	OE <= "01" WHEN CP1 = '0' ELSE
			"10" ;

	IC2 : ENTITY WORK.LED_STD_PST
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						RST		=> RST,
						OE			=> OE(0),
						Q			=> Q_STD_PST);
						
	IC3 : ENTITY WORK.LED_STD_TSP
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						RST		=> RST,
						OE			=> OE(1),
						Q			=> Q_STD_TSP);

end Behavioral;

