----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:42:15 10/25/2019 
-- Design Name: 
-- Module Name:    DK_16LED_8CT - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
---
-- CO SW DK ENA_SS
---
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DK_16LED_8CT is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           SW : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
			  SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
           LED : out  STD_LOGIC_VECTOR (12 downto 0));
end DK_16LED_8CT;

architecture Behavioral of DK_16LED_8CT is
SIGNAL ENA_DB : STD_LOGIC;
SIGNAL ENA5HZ : STD_LOGIC;
SIGNAL ENASS, ENAUD, ENATS: 				STD_LOGIC; -- CHO CHUONG CHINH BTN ENA_SS
SIGNAL ENA_SS, ENA_UD, ENA_TS : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL OE : STD_LOGIC_VECTOR(3 DOWNTO 0); -- CHINH SUA TUY THEO SO CHUONG TRINH DIEU KHIEN

SIGNAL Q_DSDC_PST : 	STD_LOGIC_VECTOR( 12 DOWNTO 0);
SIGNAL Q_DSDC_TSP : 	STD_LOGIC_VECTOR( 12 DOWNTO 0);
SIGNAL Q_SD_PST : 	STD_LOGIC_VECTOR( 12 DOWNTO 0); 
SIGNAL Q_SD_TSP : 	STD_LOGIC_VECTOR( 12 DOWNTO 0); 

--

SIGNAL ENA10HZ	:			STD_LOGIC;
SIGNAL ENA1KHZ : 			STD_LOGIC;
SIGNAL DONVI: STD_LOGIC_VECTOR( 3 DOWNTO 0); -- CHINH SUA THEM BOT 
SIGNAL CHUC :	STD_LOGIC_VECTOR( 3 DOWNTO 0); -- CHINH SUA THEM BOT 
SIGNAL DC_8LED : 			STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
begin

	RST	<= BTN(0); 
	OE <= "0001" WHEN SW(1 DOWNTO 0) = "00" ELSE
			"0010" WHEN SW(1 DOWNTO 0) = "01" ELSE
			"0100" WHEN SW(1 DOWNTO 0) = "10" ELSE
			"1000";
	LED <=  Q_DSDC_PST OR Q_DSDC_TSP OR Q_SD_PST OR Q_SD_TSP; -- CHINH SUA KHI THEM BOT CHUONG TRINH
	ENA_DB <= 	ENA5HZ WHEN ENA_TS = '0' ELSE
					ENA10HZ;
					
	DC_8LED 		<= X"FF"; -- CHINH SUA -- TAT 8 DAU CHAM
	ENA_8LED 	<= "00000011" ; -- CHINH SUA "1100 0011" 
					
	-----	XU LY BTN CHO ENA_SS		
	
	ICK1: ENTITY WORK.CD_LAM_HEP_BTN --OK
		PORT MAP(	CKHT	=> CKHT,
						BTN 	=> BTN(1), -- CHINH SUA
						BTN_CDLH => ENASS); -- CHINH SUA __DAY NOI GIUA 2 CHUONG TRINH CON
						
	ICK2: ENTITY WORK.DEM_1BIT  --OK
		PORT MAP(	CKHT	=> CKHT,
						RST 	=> RST,
						Q		=> ENA_SS, -- CHINH SUA
						ENA_DB=> ENASS); -- CHINH SUA 
	-----		
	-----	XU LY BTN CHO ENA_UD	
	
	ICK12: ENTITY WORK.CD_LAM_HEP_BTN --OK
		PORT MAP(	CKHT	=> CKHT,
						BTN 	=> BTN(2), -- CHINH SUA
						BTN_CDLH => ENAUD); -- CHINH SUA __DAY NOI GIUA 2 CHUONG TRINH CON
						
	ICK22: ENTITY WORK.DEM_1BIT  --OK
		PORT MAP(	CKHT	=> CKHT,
						RST 	=> RST,
						Q		=> ENA_UD, -- CHINH SUA
						ENA_DB=> ENAUD); -- CHINH SUA 
	-----	
	-----	XU LY BTN CHO ENA_TS	
	
	ICK13: ENTITY WORK.CD_LAM_HEP_BTN --OK
		PORT MAP(	CKHT	=> CKHT,
						BTN 	=> BTN(3), -- CHINH SUA
						BTN_CDLH => ENATS); -- CHINH SUA __DAY NOI GIUA 2 CHUONG TRINH CON
						
	ICK23: ENTITY WORK.DEM_1BIT  --OK
		PORT MAP(	CKHT	=> CKHT,
						RST 	=> RST,
						Q		=> ENA_TS, -- CHINH SUA
						ENA_DB=> ENATS); -- CHINH SUA 
	-----	
	IC1: ENTITY WORK.CHIA_10ENA  --OK
		PORT MAP(	CKHT 		=> CKHT,
						ENA5HZ 	=> ENA5HZ,
						ENA10HZ	=> ENA10HZ,
						ENA1KHZ	=> ENA1KHZ);
					
						
						
						
	IC6 : ENTITY WORK.LED_DSDC_PST  --OKOK--0__0-->12(13TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA5HZ,
						RST		=> RST,
						ENA_SS	=> ENA_SS,
						OE			=> OE(0), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_DSDC_PST);
						
	IC7 : ENTITY WORK.LED_DSDC_TSP  --OKOK--0__0-->12(13TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA5HZ,
						RST		=> RST,
						ENA_SS	=> ENA_SS,
						OE			=> OE(1), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_DSDC_TSP);
	
	IC8:  ENTITY WORK.LED_SANGDON_PST  --OKOK--0__0-->91(92TT)
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_SS	=> ENA_SS,
						ENA_DB 	=> ENA5HZ,
						OE			=> OE(2), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_SD_PST);
						
	IC9:  ENTITY WORK.LED_SANGDON_TSP  --OKOK--0__0-->91(92TT)
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_SS	=> ENA_SS,
						ENA_DB 	=> ENA5HZ,
						OE			=> OE(3), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_SD_TSP);
						
---------------------------------------------------

	ICSSEG2: ENTITY WORK.DEM_2SO_GH -- CHINH SUA
	PORT MAP(	CKHT		=> CKHT,
					RST		=> RST,
					ENA_UD 	=> ENA_UD,
					ENA_DB 	=> ENA_DB,
					ENA_SS	=> ENA_SS,
					DONVI		=> DONVI,-- CHINH SUA
					CHUC		=> CHUC);	
					
						
	ICSSEG3: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DONVI,
						LED71		=> CHUC, -- CHINH SUA
						LED72		=> X"F", -- CHINH SUA
						LED73		=> X"F", -- CHINH SUA
						LED74		=> X"F", -- CHINH SUA
						LED75		=> X"F", -- CHINH SUA
						LED76		=> X"5", -- CHINH SUA
						LED77		=> X"4", -- CHINH SUA
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);



end Behavioral;

