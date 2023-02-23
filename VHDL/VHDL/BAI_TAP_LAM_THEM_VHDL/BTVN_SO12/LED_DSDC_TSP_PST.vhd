library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LED_DSDC_TSP_PST is
    Port ( CKHT,RST,ENA_DB,CP : in  STD_LOGIC;
           Q 				      : out  STD_LOGIC_VECTOR (7 downto 0));
end LED_DSDC_TSP_PST;

architecture Behavioral of LED_DSDC_TSP_PST is
SIGNAL Q_DSDC_PST,Q_DSDC_TSP : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL OE : STD_LOGIC_VECTOR(1 DOWNTO 0);
begin

IC0: ENTITY WORK.LED_DSDC_PST
    PORT MAP( CKHT => CKHT,
				  RST => RST,
	           ENA_DB => ENA_DB,
				  CP => CP,
				  OE => OE(1),
				  Q => Q_DSDC_PST
				 );
IC1: ENTITY WORK.LED_DSDC_TSP
    PORT MAP( CKHT => CKHT,
	           ENA_DB => ENA_DB,
				  RST => RST,
				  CP => CP,
				  OE => OE(0),
				  Q => Q_DSDC_TSP
				 );
IC2: ENTITY WORK.DIEUKHIEN_CHOPHEP_DSDC
   PORT MAP( CKHT => CKHT,
	          RST => RST,
				 CP  => CP,
				 ENA_DB => ENA_DB,
				 OE => OE 
				);
				
 Q <= (Q_DSDC_TSP OR Q_DSDC_PST ) WHEN CP = '1' ELSE
       (OTHERS => '0');
end Behavioral;
