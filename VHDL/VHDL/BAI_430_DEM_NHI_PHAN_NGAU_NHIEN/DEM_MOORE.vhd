library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DEM_MOORE is
    Port ( CKHT : in STD_LOGIC;
	        BTN0  : in STD_LOGIC;
           LED: out  STD_LOGIC_VECTOR (5 downto 0);
			  SSEG  : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0)
			 );
end DEM_MOORE;

architecture Behavioral of DEM_MOORE is
SIGNAL ENA_DB : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL ENA1KHZ : STD_LOGIC;
SIGNAL DC_8LED : 			STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL DV0:STD_LOGIC_VECTOR( 3 DOWNTO 0); 
SIGNAL DV1 :STD_LOGIC_VECTOR( 3 DOWNTO 0); 
----------------------------------
SIGNAL DEM1,DEM0 : STD_LOGIC_VECTOR(2 DOWNTO 0);
begin
RST <= NOT BTN0;
DC_8LED <= X"FF";
ENA_8LED <= "10000001";
IC1 :ENTITY WORK.CHIA_10ENA
	PORT MAP(CKHT => CKHT,
				ENA2HZ=> ENA_DB,
				ENA1KHZ => ENA1KHZ
				);
							
IC2:ENTITY WORK.DEM_3BIT
	PORT MAP(CKHT => CKHT,
				ENA_DB => ENA_DB,
				RST  => RST,
				DEM0 => DEM0,
				DEM1 => DEM1,
				Q_nn => LED(5 downto 3),
				Q_bt => LED(2 DOWNTO 0)
				);
				
IC3: ENTITY WORK.HEXTOBCD_3BIT
		PORT MAP( SOHEX3BIT => DEM0,
					 DONVI     => DV0
					);

IC4: ENTITY WORK.HEXTOBCD_3BIT
		PORT MAP( SOHEX3BIT => DEM1,
					 DONVI     => DV1
					);
IC5: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DV0,
						LED71		=> X"F", 
						LED72		=> X"F", 
						LED73		=> X"F", 
						LED74		=> X"F", 
						LED75		=> X"F", 
						LED76		=> X"F",
						LED77		=> DV1,
						ANODE		=> ANODE,
						SSEG		=> SSEG, 
						DC_8LED	=> DC_8LED, 
						ENA_8LED	=> ENA_8LED);

end Behavioral;