LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY SANG_DON_MSSV_LED_7DOAN IS
	PORT( CKHT :  IN STD_LOGIC;
	      BTN0: IN STD_LOGIC;
         SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
         ANODE : out  STD_LOGIC_VECTOR (7 downto 0)
			);
END SANG_DON_MSSV_LED_7DOAN;

ARCHITECTURE THAN OF SANG_DON_MSSV_LED_7DOAN IS 
SIGNAL ENA_DB : std_logic;
SIGNAL ENA1KHZ : 	STD_LOGIC;
-------------------------------
signal RST : STD_LOGIC;
--SIGNAL DONVI  : STD_LOGIC_VECTOR(3 DOWNTO 0);
--------------------------------------------------
SIGNAL DC_8LED : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : STD_LOGIC_VECTOR ( 7 DOWNTO 0);
-------------------------------------------------
SIGNAL DL : INTEGER RANGE 0 TO 7;
SIGNAL SO1,SO2,SO3,SO4,SO5,SO6,SO7,SO8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

	RST <= NOT BTN0;
	DC_8LED 		<= X"FF";
	PROCESS(DL)
		BEGIN 
									SO1 <= X"0";
									SO2 <= X"0";
									SO3 <= X"0";
									SO4 <= X"0";
									SO5 <= X"0";
									SO6 <= X"0";
									SO7 <= X"0";
									SO8 <= X"0";------
				IF DL = 7 THEN SO1 <= X"1";
									SO2 <= X"1";
									SO3 <= X"1";
									SO4 <= X"1";
									SO5 <= X"1";
									SO6 <= X"1";
									SO7 <= X"1";
									SO8 <= X"1";--- DICH 8 LAN
			ELSIF DL = 6 THEN SO1 <= X"6";
									SO2 <= X"6";
									SO3 <= X"6";
									SO4 <= X"6";
									SO5 <= X"6";
									SO6 <= X"6";
									SO7 <= X"6";-- DICH 7 LAN 
									SO8 <= X"1";-- GIUA TRANG THAI TRUOC 1
			ELSIF DL = 5 THEN SO1 <= X"1";
									SO2 <= X"1";
									SO3 <= X"1";
									SO4 <= X"1";
									SO5 <= X"1";
									SO6 <= X"1";-- DICH 6 LAN
									SO7 <= X"6";-- GIUA TRANG THAI TRUOC 6
									SO8 <= X"1";-- GIUA TRANG THAI TRUOC 1
			ELSIF DL = 4 THEN SO1 <= X"1";
									SO2 <= X"1";
									SO3 <= X"1";
									SO4 <= X"1";
									SO5 <= X"1";-- DICH 5 LAN
									SO6 <= X"1";
									SO7 <= X"6";
									SO8 <= X"1";
			ELSIF DL = 3 THEN SO1 <= X"9";
									SO2 <= X"9";
									SO3 <= X"9";
									SO4 <= X"9";-- DICH 4 LAN
									SO5 <= X"1";
									SO6 <= X"1";
									SO7 <= X"6";
									SO8 <= X"1";
			ELSIF DL = 2 THEN SO1 <= X"0";
									SO2 <= X"0";
									SO3 <= X"0";-- DICH 3 LAN
									SO4 <= X"9";
									SO5 <= X"1";
									SO6 <= X"1";
									SO7 <= X"6";
									SO8 <= X"1";
			ELSIF DL = 1 THEN SO1 <= X"8";
									SO2 <= X"8";-- DICH 2 LAN
									SO3 <= X"0";
									SO4 <= X"9";
									SO5 <= X"1";
									SO6 <= X"1";
									SO7 <= X"6";
									SO8 <= X"1";
			ELSIF DL = 0 THEN SO1 <= X"8";-- DICH 1 LAN
									SO2 <= X"8";
									SO3 <= X"0";
									SO4 <= X"9";
									SO5 <= X"1";
									SO6 <= X"1";
									SO7 <= X"6";
									SO8 <= X"1";
			END IF;	
	END PROCESS;
	
IC0: ENTITY WORK.LED_SANGDON_PST
		PORT MAP(CKHT => CKHT,
				   ENA_DB  => ENA_DB,
					RST  => RST,
					OE   => '1',
					DL   => DL,
					Q    => ENA_8LED
					);
	
IC1: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA5HZ => ENA_DB,
				  ENA1KHZ => ENA1KHZ
				 );
				
IC3: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> SO1,
						LED71		=> SO2, -- CHINH SUA
						LED72		=> SO3, -- CHINH SUA
						LED73		=> SO4, -- CHINH SUA
						LED74		=> SO5, -- CHINH SUA
						LED75		=> SO6, -- CHINH SUA
						LED76		=> SO7, -- CHINH SUA
						LED77		=> SO8, -- CHINH SUA
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);
				  
END THAN;