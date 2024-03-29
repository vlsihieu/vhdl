LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY BKTN IS
	PORT( CKHT  : IN STD_LOGIC;
			BTN   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			SSEG  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			ANODE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			led   : out std_logic_vector(7 downto 0)
			);
END BKTN;
--8SW CHO SO A, 8SW CHO SO B
ARCHITECTURE THAN OF BKTN IS 
SIGNAL ENA_DB , ENA1KHZ: STD_LOGIC; 
SIGNAL RST    : STD_LOGIC;
---------------------------
SIGNAL BTN_UD : STD_LOGIC;
SIGNAL ENA_UD : STD_LOGIC;-- up/down
--------------------------
SIGNAL BTN_SS : STD_LOGIC;
SIGNAL ENA_SS : STD_LOGIC; -- start/stop
--------------------------
SIGNAL BTN_CDLH0, BTN_CDLH1 : STD_LOGIC;
---------------------------
SIGNAL DONVI_A,CHUC_A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DONVI_B,CHUC_B : STD_LOGIC_VECTOR(3 DOWNTO 0);
-----------------------------------------------------
SIGNAL DONVI,CHUC  : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ENA_8LED : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DC_8LED: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	RST    <=  BTN(0);
	BTN_UD <=  BTN(1);
	BTN_SS <=  BTN(2);
------------------------	
	ENA_8LED <= X"DB";
	DC_8LED  <= X"FF";
-- GAN SW CHO SO A, B
	DONVI_A <= SW(3 DOWNTO 0);
	CHUC_A  <= SW(7 DOWNTO 4);
	DONVI_B <= SW(11 DOWNTO 8);
	CHUC_B  <= SW(15 DOWNTO 12);
-- KHOI UP/DW
IC0 : ENTITY WORK.CD_LAM_HEP_BTN
   PORT MAP( CKHT => CKHT,
				 BTN  => BTN_UD,
				 BTN_CDLH => BTN_CDLH0
			   );
IC0_1 : ENTITY WORK.DEM_1BIT
        PORT MAP (ENA_DB => BTN_CDLH0,
		            CKHT => CKHT,
						RST  => RST,
						Q  => ENA_UD
                  );						
--- KHOI START/STOP
IC1 : ENTITY WORK.CD_LAM_HEP_BTN
   PORT MAP( CKHT => CKHT,
				 BTN  => BTN_SS,
				 BTN_CDLH => BTN_CDLH1
			   );
IC1_1 : ENTITY WORK.DEM_1BIT
        PORT MAP (ENA_DB => BTN_CDLH1,
		            CKHT => CKHT,
						RST  => RST,
						Q  => ENA_SS
						);
---------------------------	
IC2: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA5HZ => ENA_DB,
				  ENA1KHZ => ENA1KHZ
				 );

IC3: ENTITY WORK.DEM_2SO
	PORT MAP ( CKHT => CKHT,
					RST => RST,
				   ENA_DB => ENA_DB,
				   ENA_SS => ENA_SS,
				   ENA_UD => ENA_UD,
			      DONVI_A  => DONVI_A,
				   CHUC_A => CHUC_A,
			      DONVI_B  => DONVI_B,
				   CHUC_B => CHUC_B,
				   DONVI  => DONVI,
				   CHUC   => CHUC
				 );
				
IC4: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN --OK
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DONVI,
						LED71		=> CHUC, -- CHINH SUA
						LED72		=> X"F", -- CHINH SUA
						LED73		=> DONVI_A, -- CHINH SUA
						LED74		=> CHUC_A, -- CHINH SUA
						LED75		=> X"F", -- CHINH SUA
						LED76		=> DONVI_B, -- CHINH SUA
						LED77		=> CHUC_B, -- CHINH SUA
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);
				  
END THAN;