LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CHUONG_TRINH_LED_DON_7DOAN_THEO_BTN IS
	PORT (CKHT: IN STD_LOGIC;
			BTN: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
			anode : out std_logic_vector (7 downto 0);
			sseg  : out std_logic_vector (7 downto 0)
         );
END CHUONG_TRINH_LED_DON_7DOAN_THEO_BTN;

ARCHITECTURE A OF CHUONG_TRINH_LED_DON_7DOAN_THEO_BTN IS
SIGNAL ENA_10HZ :  STD_LOGIC;
signal ena1khz : STD_LOGIC;
signal RST : STD_LOGIC;
signal ENA_5HZ :  STD_LOGIC;
signal ENA_1HZ :  STD_LOGIC;
signal ENA_2HZ : STD_LOGIC;
signal BTN_1 : STD_LOGIC;
signal ENA_DB : STD_LOGIC;
SIGNAL SO_1, SO_2, SO_3, SO_4, SO_5, SO_6, SO_7, SO_8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DC_8LED : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : STD_LOGIC_VECTOR ( 7 DOWNTO 0);
SIGNAL OE: STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN

	RST <= NOT BTN(0);
	BTN_1 <= NOT BTN(1);
	
	SO_1 <=  X"1" WHEN OE="00001" ELSE
				X"4" WHEN OE="00010" ELSE
				X"1" WHEN OE="00011" ELSE
				X"4" WHEN OE="00100" ELSE
				X"1" WHEN OE="00101" ELSE
				X"1" WHEN OE="00110" ELSE
				X"7" WHEN OE="00111" ELSE
				X"8" WHEN OE="01000" ;
				
	SO_2 <=  X"1" WHEN OE="00010" ELSE
				X"4" WHEN OE="00011" ELSE
				X"1" WHEN OE="00100" ELSE
				X"4" WHEN OE="00101" ELSE
				X"1" WHEN OE="00110" ELSE
				X"1" WHEN OE="00111" ELSE
				X"7" WHEN OE="01000" ELSE
				X"8" WHEN OE="01001"; 
				
	SO_3 <=  X"1" WHEN OE="00011" ELSE
				X"4" WHEN OE="00100" ELSE
				X"1" WHEN OE="00101" ELSE
				X"4" WHEN OE="00110" ELSE
				X"1" WHEN OE="00111" ELSE
				X"1" WHEN OE="01000" ELSE
				X"7" WHEN OE="01001" ELSE
				X"8" WHEN OE="01010"; 
				
	SO_4 <=  X"1" WHEN OE="00100" ELSE
				X"4" WHEN OE="00101" ELSE
				X"1" WHEN OE="00110" ELSE
				X"4" WHEN OE="00111" ELSE
				X"1" WHEN OE="01000" ELSE
				X"1" WHEN OE="01001" ELSE
				X"7" WHEN OE="01010" ELSE
				X"8" WHEN OE="01011"; 
				
	SO_5 <= 	X"1" WHEN OE="00101" ELSE
				X"4" WHEN OE="00110" ELSE
				X"1" WHEN OE="00111" ELSE
				X"4" WHEN OE="01000" ELSE
				X"1" WHEN OE="01001" ELSE
				X"1" WHEN OE="01010" ELSE
				X"7" WHEN OE="01011" ELSE
				X"8" WHEN OE="01100";
				
	SO_6 <=  X"1" WHEN OE="00110" ELSE
				X"4" WHEN OE="00111" ELSE
				X"1" WHEN OE="01000" ELSE
				X"4" WHEN OE="01001" ELSE
				X"1" WHEN OE="01010" ELSE
				X"1" WHEN OE="01011" ELSE
				X"7" WHEN OE="01100" ELSE
				X"8" WHEN OE="01101"; 
				
	SO_7 <=  X"1" WHEN OE="00111" ELSE
				X"4" WHEN OE="01000" ELSE
				X"1" WHEN OE="01001" ELSE
				X"4" WHEN OE="01010" ELSE
				X"1" WHEN OE="01011" ELSE
				X"1" WHEN OE="01100" ELSE
				X"7" WHEN OE="01101" ELSE
				X"8" WHEN OE="01110"; 
				
	SO_8 <=  X"1" WHEN OE="01000" ELSE
				X"4" WHEN OE="01001" ELSE
				X"1" WHEN OE="01010" ELSE
				X"4" WHEN OE="01011" ELSE
				X"1" WHEN OE="01100" ELSE
				X"1" WHEN OE="01101" ELSE
				X"7" WHEN OE="01110" ELSE
				X"8" WHEN OE="01111";
				
				
			

IC0: ENTITY WORK.CHIA_10ENA
	PORT MAP(CKHT => CKHT,
				ENA1HZ => ENA_1HZ,
				ENA2HZ => ENA_2HZ,
				ENA10HZ => ENA_10HZ,
				ENA5HZ => ENA_5HZ,
				ena1khz => ena1khz
			   );
				

				 
IC1: ENTITY WORK.DIEUKHIEN_CHOPHEP
		PORT MAP( CKHT => CKHT,
					 RST => RST,
					 ENA_DB=> ENA_2HZ,
					 OE => OE
					);
			 
				 
HIENTHI_2LED: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
	PORT MAP( LED70 => SO_1,
				 LED71 => SO_2,
				 LED72 => SO_3,
				 LED73 => SO_4,
				 LED74 => SO_5,
				 LED75 => SO_6,
				 LED76 => SO_7,
				 LED77 => SO_8,
				 ENA_GIAIMA_8LED => ENA_GIAIMA_8LED,
				 SSEG0 => SSEG0,
				 SSEG1 => SSEG1,
				 SSEG2 => SSEG2,
				 SSEG3 => SSEG3,
				 SSEG4 => SSEG4,
				 SSEG5 => SSEG5,
				 SSEG6 => SSEG6,
				 SSEG7 => SSEG7);						
						
ENA_GIAIMA_8LED <= X"01" when OE ="00001" ELSE
		   X"03" WHEN OE ="00010" ELSE
		   X"07" WHEN OE ="00011" ELSE
			X"0F" WHEN OE ="00100" ELSE
			X"1F" WHEN OE ="00101" ELSE
			X"3F" WHEN OE ="00110" ELSE
			X"7F" WHEN OE ="00111" ELSE
			X"FF" WHEN OE ="01000" ELSE
			X"FE" WHEN OE ="01001" ELSE
			X"FC" WHEN OE ="01010" ELSE
			X"F8" WHEN OE ="01011" ELSE
			X"F0" WHEN OE ="01100" ELSE
			X"E0" WHEN OE ="01101" ELSE
			X"C0" WHEN OE ="01110" ELSE
			X"80" WHEN OE ="01111" ELSE
			X"00";


END A;
--OR Q_TSP