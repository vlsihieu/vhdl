library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BTVN_SO55 is
    Port ( CKHT : in std_logic;
	        BTN0 : in std_logic;
			  SW0 : in  STD_LOGIC;
           SSEG: out  STD_LOGIC_VECTOR (7 downto 0);
			  ANODE: out  STD_LOGIC_VECTOR (7 downto 0));
end BTVN_SO55;

architecture Behavioral of BTVN_SO55 is
SIGNAL ENA_DB : STD_LOGIC;
SIGNAL ENA1,ENA2, ENA5, ENA10 : STD_LOGIC;
SIGNAL ENA1KHZ : STD_LOGIC;
---------------------------------
SIGNAL RST : STD_LOGIC;
SIGNAL ENA_SS : STD_LOGIC;
----------------------------------
--SIGNAL DEM: STD_LOGIC_VECTOR(7 DOWNTO 0):=X"00";
------------------------------------------------
SIGNAL ENA_8LED : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DC_8LED  : STD_LOGIC_VECTOR(7 DOWNTO 0);
-------------------------------------------------
SIGNAL OE : STD_LOGIC_VECTOR(4 DOWNTO 0);
------------------------------------------------
--SIGNAL DONVI : STD_LOGIC_VECTOR(3 DOWNTO 0);
--SIGNAL CHUC  : STD_LOGIC_VECTOR(3 DOWNTO 0);
--SIGNAL TRAM  : STD_LOGIC_VECTOR(3 DOWNTO 0);
--------------------------------------------------
SIGNAL sseg77  : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sseg76  : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sseg75  : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL donvi   : STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
  RST <=  NOT BTN0;
  ENA_SS <=  SW0;
  DC_8LED <= X"FF";

--IC0 : ENTITY WORK.XOA_SO_0_VN
--   PORT MAP (TRAM => TRAM,
--	          CHUC => CHUC,
--				 ENA_8LED => ENA_8LED
--				 );
IC1: ENTITY WORK.DIEUKHIEN_CHOPHEP
	PORT MAP ( CKHT => CKHT,
				  RST  => RST,
				  ENA_SS => ENA_SS,
				  ENA_DB => ENA_DB,
				  ENA_8LED => ENA_8LED,
				  OE   => OE
				 );
--------------------------------
IC2: ENTITY WORK.CHIA_10ENA
   PORT MAP( CKHT => CKHT,
	          ENA1HZ => ENA1,
				 ENA2HZ => ENA2,
				 ENA5HZ => ENA5,
				 ENA10HZ=> ENA10,
				 ENA1KHZ => ENA1KHZ
			   );
IC3 : ENTITY WORK.SELECT_TANSO
   PORT MAP (OE   => OE,
             ENA1 => ENA1,
             ENA2 => ENA2,
             ENA5 => ENA5,
             ENA10 => ENA10,
             ENA_O => ENA_DB
            );	
-------------------------------------	
IC4 : ENTITY WORK.DEM_2SO
	PORT MAP( CKHT => CKHT,
				 RST  => RST,
				 ENA_DB => ENA_DB,
				 ENA_SS => ENA_SS,
				 OE   => OE,
				 sseg77 => sseg77,
				 sseg76 => sseg76,
				 sseg75 => sseg75,
				 donvi  => donvi
				);			 	 
-------------------------------------------
IC6: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN --OK
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> X"F",
						LED71		=> X"F",
						LED72		=> X"F",
						LED73		=> X"F",
						LED74		=> donvi,
						LED75		=> sseg75,
						LED76		=> sseg76,
						LED77		=> sseg77,
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED
				   );
end Behavioral;