LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY BTVN_SO54 IS
	PORT( CKHT : IN STD_LOGIC;
			BTN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			sw0 : in std_logic;
			SSEG: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			ANODE: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			);
END BTVN_SO54;

ARCHITECTURE THAN OF BTVN_SO54 IS 
SIGNAL ENA_DB :STD_LOGIC;

SIGNAL ENA1KHZ : STD_LOGIC;
-------------------------------
SIGNAL BTN_UP : STD_LOGIC;
SIGNAL BTN_DW :STD_LOGIC;
SIGNAL BTN_START : STD_LOGIC;
SIGNAL RST  : STD_LOGIC;
SIGNAL BTN_MOD :STD_LOGIC;
-----------------------------
SIGNAL ENA_SS : STD_LOGIC;
SIGNAL ENA_UP : STD_LOGIC;
SIGNAL ENA_DW : STD_LOGIC;
signal ena_ud : std_logic;
--SIGNAL ENA_MOD : STD_LOGIC;
--------------------------------
SIGNAL DONVI_A,CHUC_A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DONVI_B,CHUC_B : STD_LOGIC_VECTOR(3 DOWNTO 0);
-----------------------------------------------
SIGNAL DONVI,CHUC  : STD_LOGIC_VECTOR(3 DOWNTO 0);
-----------------------------------------------
SIGNAL ENA_8LED : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DC_8LED : STD_LOGIC_VECTOR(7 DOWNTO 0);
------------------------------------
SIGNAL OE : STD_LOGIC_VECTOR(2 DOWNTO 0);
-----------------------------------------
BEGIN
	BTN_MOD   <= NOT BTN(4);
	BTN_UP    <= NOT BTN(3);
	BTN_DW    <= NOT BTN(2);
	BTN_START <= NOT BTN(1);
	RST       <= NOT BTN(0);
	-----------------------
	ENA_8LED <= "11011011"; 
	DC_8LED  <= X"FF";
	ena_ud   <= sw0;
---------- UP OK
IC0: ENTITY WORK.CD_LAM_HEP_BTN
   PORT MAP( CKHT => CKHT,
				 BTN => BTN_UP,
	          BTN_CDLH => ENA_UP);
------------ DW	OK
IC1: ENTITY WORK.CD_LAM_HEP_BTN
   PORT MAP( CKHT => CKHT,
				 BTN => BTN_DW,
	          BTN_CDLH => ENA_DW);
-------------- START/STOP
IC3: ENTITY WORK.DEM_1BIT_BTN_SS
	PORT MAP ( CKHT => CKHT,
				  RST  => RST,
				  BTN  => BTN_START,
				  Q   => ENA_SS
				 ); 
------------ MODE				  
IC4: ENTITY WORK.DEM_2BIT_BTN_MODE
	PORT MAP ( CKHT => CKHT,
				  RST => RST,
				  BTN  => BTN_MOD,
				  Q   => OE
				 ); 		 
------------------------------				  
IC5: ENTITY WORK.DEM_2SO_A
	PORT MAP ( CKHT => CKHT,
					RST => RST,-- RST TU DONG
					OE  => OE,
				   ENA_UP => ENA_UP,
				   ENA_DW => ENA_DW,
			      DONVI => DONVI_A,
				   CHUC => CHUC_A
					);
	
IC6: ENTITY WORK.DEM_2SO_B
	PORT MAP ( CKHT => CKHT,
					RST => RST,
					OE  => OE(2 DOWNTO 1),
				   ENA_UP => ENA_UP,
				   ENA_DW => ENA_DW,
			      DONVI => DONVI_B,
				   CHUC   => CHUC_B
				 );
	
IC7: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA5HZ => ENA_DB,
				  ENA1KHZ => ENA1KHZ
				 );

IC8: ENTITY WORK.DEM_2SO
	PORT MAP ( CKHT => CKHT,
				  RST => RST,
				  ENA_DB => ENA_DB,
				  ENA_SS => ENA_SS,
				  ena_ud  => ena_ud,
				  OE     => OE(2),
			     DONVI_A  => DONVI_A,
				  CHUC_A => CHUC_A,
			     DONVI_B  => DONVI_B,
				  CHUC_B => CHUC_B,
				  DONVI  => DONVI,
				  CHUC   => CHUC);
IC9: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN --OK
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DONVI_A,
						LED71		=> CHUC_A, -- CHINH SUA
						LED72		=> X"F", -- CHINH SUA
						LED73		=> DONVI, -- CHINH SUA
						LED74		=> CHUC, -- CHINH SUA
						LED75		=> X"F", -- CHINH SUA
						LED76		=> DONVI_B, -- CHINH SUA
						LED77		=> CHUC_B, -- CHINH SUA
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED
					);
				  
END THAN;