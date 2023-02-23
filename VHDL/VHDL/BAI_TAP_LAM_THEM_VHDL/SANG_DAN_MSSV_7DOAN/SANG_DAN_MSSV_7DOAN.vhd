
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SANG_DAN_MSSV_7DOAN_TAT_HET is
    Port ( CKHT : IN STD_LOGIC;
	        BTN0 : in  STD_LOGIC;
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end SANG_DAN_MSSV_7DOAN_TAT_HET ;

architecture Behavioral of SANG_DAN_MSSV_7DOAN_TAT_HET is
--------------------
SIGNAL ENA_DB : std_logic;
SIGNAL ENA1KHZ : 	STD_LOGIC;
--------------------------------------
SIGNAL MSSV: STD_LOGIC_VECTOR (31 downto 0);
SIGNAL DC_8LED : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : STD_LOGIC_VECTOR ( 7 DOWNTO 0);
--------------------------------------------
SIGNAL RST : STD_LOGIC;
begin
	RST 	 <= NOT BTN0;
   DC_8LED <= X"FF";
IC1: ENTITY WORK.CHIA_10ENA
	PORT MAP ( CKHT => CKHT,
				  ENA1HZ => ENA_DB,
				  ENA1KHZ => ENA1KHZ
				 );

IC2:	ENTITY WORK.DICH
	PORT MAP (	CKHT		=>	CKHT,
					RST		=>	RST,
					ENA_DB 	=> ENA_DB,
					ENA_8LED  => ENA_8LED ,
					MSSV      => MSSV
				);	
IC3: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> MSSV(3 DOWNTO 0),
						LED71		=> MSSV(7 DOWNTO 4),
						LED72		=> MSSV(11 DOWNTO 8),
						LED73		=> MSSV(15 DOWNTO 12),
						LED74		=> MSSV(19 DOWNTO 16),
						LED75		=> MSSV(23 DOWNTO 20),
						LED76		=> MSSV(27 DOWNTO 24),
						LED77		=> MSSV(31 DOWNTO 28),
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED
						);				
end Behavioral;

