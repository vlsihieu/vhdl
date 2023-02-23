 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BTVN_SO12 is
    Port ( CKHT       : in  STD_LOGIC;
			  BTN        : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
           LED        : out  STD_LOGIC_VECTOR (7 downto 0));
end BTVN_SO12;

architecture Behavioral of BTVN_SO12 is
--SIGNAL ENA2HZ: STD_LOGIC;
--SIGNAL ENA5HZ: STD_LOGIC;
--SIGNAL ENA10HZ :STD_LOGIC;
SIGNAL ENA_DB : STD_LOGIC;
---------------------
SIGNAL RST : STD_LOGIC;
SIGNAL BTN_MODE : STD_LOGIC;
SIGNAL BTN_K1:STD_LOGIC;
SIGNAL BTN_CDLH0 : STD_LOGIC;
----------------------------
SIGNAL Q_2DSDC_PST:  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Q_3DSDC_TSP:  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Q_DSDC_TSP_PST : STD_LOGIC_VECTOR(7 DOWNTO 0);
-----------------------------------------------
SIGNAL OE : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL OE_K1: STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL OE_MODE : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL SEL : STD_LOGIC_VECTOR(2 DOWNTO 0);
---------------------------------------------
SIGNAL MODE : STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
  RST 	<= NOT BTN(0);
  BTN_MODE   <=  not BTN(1);
  BTN_K1     <= NOT BTN(2);
--IC0: ENTITY WORK.CHIA_10ENA
--    PORT MAP( CKHT => CKHT,
--              ENA_CK => ENA_DB,
--				  OE => OE
--				  );
--ENA_DB <= ENA10HZ WHEN (OE(0) = '1') ELSE
--          ENA2HZ  WHEN (OE(1) = '1') ELSE
--          ENA5HZ  WHEN (OE(2) = '1') ELSE
--          '0';
IC0: ENTITY WORK.CHIA_10ENA
    PORT MAP( CKHT => CKHT,
				  ENA5HZ  => ENA_DB
             );		 
IC1: ENTITY WORK.LED_2DSDC_PST
		PORT MAP(CKHT   => CKHT,
					ENA_DB => ENA_DB,
					RST    => RST,
					OE     => OE(0),
					Q      => Q_2DSDC_PST
				   );

IC2 : ENTITY WORK.LED_3DSDC_TSP
		PORT MAP(CKHT   => CKHT,
					ENA_DB => ENA_DB,
					RST    => RST,
					OE     => OE(1),
					Q      => Q_3DSDC_TSP
					);
					
IC3: ENTITY WORK.LED_DSDC_TSP_PST
    PORT MAP( CKHT   => CKHT,
	           ENA_DB => ENA_DB,
				  RST    => RST,
				  CP     => OE(2),
				  Q      => Q_DSDC_TSP_PST);
----------------------------------------
--IC4: ENTITY WORK.DEM_3BIT_BTN_MODE
--	 PORT MAP( CKHT   => CKHT,
--				  BTN    => BTN_MODE,
--				  RST    => RST,
--				  MODE     => MODE);
IC4 : ENTITY WORK.CD_LAM_HEP_BTN
   PORT MAP( CKHT => CKHT,
				 BTN  => BTN_MODE,
				 BTN_CDLH => BTN_CDLH0
			   );
IC41: ENTITY WORK.DEM_3BIT
        PORT MAP (ENA_DB => BTN_CDLH0,
		            CKHT => CKHT,
						RST  => RST,
						Q  => SEL
						);
IC42 : ENTITY WORK.XULY_MODE
     PORT MAP (SEL => SEL,
               MODE => MODE
              );					
IC5: ENTITY WORK.DIEUKHIEN_MODE
	 PORT MAP( CKHT  => CKHT,
				  ENA_DB => ENA_DB,
				  RST    => RST,
				  MODE   => MODE(2 DOWNTO 0),
				  OE     => OE_MODE);
----------------------------------	
IC6: ENTITY WORK.DIEUKHIEN_K1
	 PORT MAP( CKHT  => CKHT,
				  RST   => RST,
				  BTN   => BTN_K1,
				  MODE  => MODE(3),
				  OE    => OE_K1
				 );
--IC6 : ENTITY WORK.CD_LAM_HEP_BTN
--   PORT MAP( CKHT => CKHT,
--				 BTN  => BTN_MODE,
--				 BTN_CDLH => BTN_CDLH1
--			   );
--IC60: ENTITY WORK.DEM_2BIT
--        PORT MAP (ENA_DB => BTN_CDLH1,
--		            CKHT => CKHT,
--						RST  => RST,
--						Q  => SEL1
--						);
--IC42 : ENTITY WORK.XULY_MODE
--     PORT MAP (SEL1 => SEL1,
--               MODE => MODE
--              );
----------------------------------------------	
 OE <= OE_K1 OR OE_MODE;
 LED <= Q_3DSDC_TSP OR Q_2DSDC_PST OR Q_DSDC_TSP_PST;
end Behavioral;
