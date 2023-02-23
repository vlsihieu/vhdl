----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:22:03 10/24/2019 
-- Design Name: 
-- Module Name:    DEM_UD_AU_SS_00_99_HT_7DOAN_BTN - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DEM_UD_AU_SS_00_99_HT_7DOAN_BTN is
    Port ( CKHT : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR( 1 DOWNTO 0);
           BTN : in  STD_LOGIC_VECTOR (1 downto 0);
           SW : in  STD_LOGIC;
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end DEM_UD_AU_SS_00_99_HT_7DOAN_BTN;

architecture Behavioral of DEM_UD_AU_SS_00_99_HT_7DOAN_BTN is
SIGNAL RST : 		STD_LOGIC;
SIGNAL ENA: 		STD_LOGIC; -- CHO CHUONG CHINH BTN
SIGNAL ENA_DB: 	STD_LOGIC;
SIGNAL ENA_SS: 	STD_LOGIC; -- 0-> KO CHAY /// 1 --> CHAY
SIGNAL ENA_UD: 	STD_LOGIC;
SIGNAL ENA1HZ  : 	STD_LOGIC;
SIGNAL ENA10HZ	:	STD_LOGIC;
SIGNAL ENA1KHZ : 	STD_LOGIC;
SIGNAL DONVI : 	STD_LOGIC_VECTOR( 3 DOWNTO 0); -- CHINH SUA THEM BOT 
SIGNAL CHUC :		STD_LOGIC_VECTOR( 3 DOWNTO 0); -- CHINH SUA THEM BOT 
SIGNAL DC_8LED : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : STD_LOGIC_VECTOR ( 7 DOWNTO 0);
begin

	RST 			<= BTN(0);  -- CHINH SUA
	DC_8LED 		<= X"FF"; -- CHINH SUA -- TAT 8 DAU CHAM
	ENA_8LED 	<= X"03"; -- CHINH SUA "0000 0011" 
	LED(0) <= ENA_UD;
	LED(1) <= ENA_SS;
	ENA_DB <= 	ENA1HZ WHEN SW = '1' ELSE
					ENA10HZ;
					
	-----				 
	ICK1: ENTITY WORK.CD_LAM_HEP_BTN
		PORT MAP(	CKHT	=> CKHT,
						BTN 	=> BTN(1), -- CHINH SUA
						BTN_CDLH => ENA); -- CHINH SUA __DAY NOI GIUA 2 CHUONG TRINH CON
						
	ICK2: ENTITY WORK.DEM_1BIT
		PORT MAP(	CKHT	=> CKHT,
						RST 	=> RST,
						Q		=> ENA_SS, -- CHINH SUA
						ENA_DB=> ENA); -- CHINH SUA 
	-----
					
	
	IC1: ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT 		=> CKHT,
						ENA1HZ 	=> ENA1HZ,
						ENA10HZ	=> ENA10HZ,
						ENA1KHZ	=> ENA1KHZ);
						
	IC2: ENTITY WORK.DEM_2SO_UD_AU -- CHINH SUA
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB 	=> ENA_DB,
						ENA_SS	=> ENA_SS,
						ENA_UD	=> ENA_UD, -- DUNG LAY RA GAN CHO LED DON DE BIET NO LEN HAY XUONG
						DONVI		=> DONVI,-- CHINH SUA
						CHUC		=> CHUC);
						
	IC3: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DONVI,
						LED71		=> CHUC, -- CHINH SUA
						LED72		=> X"F", -- CHINH SUA
						LED73		=> X"F", -- CHINH SUA
						LED74		=> X"F", -- CHINH SUA
						LED75		=> X"F", -- CHINH SUA
						LED76		=> X"F", -- CHINH SUA
						LED77		=> X"F", -- CHINH SUA
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);


end Behavioral;


