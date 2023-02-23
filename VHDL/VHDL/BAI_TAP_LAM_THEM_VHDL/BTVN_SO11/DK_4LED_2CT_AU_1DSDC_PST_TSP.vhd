----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:34:51 10/05/2019 
-- Design Name: 
-- Module Name:    DK_4LED_2CT_AU_1DSDC_PST_TSP - Behavioral 
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

entity DK_4LED_2CT_AU_1DSDC_PST_TSP is
    Port ( CKHT : in  STD_LOGIC;
           RST  : in  STD_LOGIC;
			  ENA_DB : IN STD_LOGIC;
			  CP  : IN STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end DK_4LED_2CT_AU_1DSDC_PST_TSP;

architecture Behavioral of DK_4LED_2CT_AU_1DSDC_PST_TSP is

SIGNAL OE : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Q_DSDC_PST : STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL Q_DSDC_TSP : STD_LOGIC_VECTOR( 3 DOWNTO 0);

begin
   Q <= (Q_DSDC_PST OR Q_DSDC_TSP) WHEN CP ='1' ELSE
	     (OTHERS => '0');
				 
	IC1 : ENTITY WORK.LED_DSDC_PST
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						RST		=> RST,
						CP       => CP,
						OE			=> OE(0),
						Q			=> Q_DSDC_PST);
						
	IC2 : ENTITY WORK.LED_DSDC_TSP
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						RST		=> RST,
						CP       => CP,
						OE			=> OE(1),
						Q			=> Q_DSDC_TSP);
						
	IC3 : ENTITY WORK.DIEUKHIEN_CHOPHEP
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB	=> ENA_DB,
						OE			=> OE,
						CP       => CP
					  );

end Behavioral;



