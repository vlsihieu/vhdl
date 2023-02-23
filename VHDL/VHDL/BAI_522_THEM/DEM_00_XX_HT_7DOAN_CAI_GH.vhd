----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:36:45 10/24/2019 
-- Design Name: 
-- Module Name:    DEM_00_XX_HT_7DOAN_CAI_GH - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DEM_00_XX_HT_7DOAN_CAI_GH is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC_VECTOR (3 downto 0);
           SW : in  STD_LOGIC;
           LED : out  STD_LOGIC;
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end DEM_00_XX_HT_7DOAN_CAI_GH;

architecture Behavioral of DEM_00_XX_HT_7DOAN_CAI_GH is
SIGNAL RST : 				STD_LOGIC;
SIGNAL ENA: 				STD_LOGIC; -- CHO CHUONG CHINH BTN ENA_SS
SIGNAL ENA_DB: 			STD_LOGIC;
SIGNAL ENA_SS: 			STD_LOGIC; -- 0-> KO CHAY /// 1 --> CHAY
SIGNAL ENA_UP, ENA_DW: 	STD_LOGIC; --
SIGNAL ENA1HZ  : 			STD_LOGIC;
SIGNAL ENA10HZ	:			STD_LOGIC;
SIGNAL ENA1KHZ : 			STD_LOGIC;
SIGNAL DONVI, DONVI_GH: STD_LOGIC_VECTOR( 3 DOWNTO 0); -- CHINH SUA THEM BOT 
SIGNAL CHUC, CHUC_GH :	STD_LOGIC_VECTOR( 3 DOWNTO 0); -- CHINH SUA THEM BOT 
SIGNAL DC_8LED : 			STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
begin

	RST 			<= BTN(0);  -- CHINH SUA
	DC_8LED 		<= X"FF"; -- CHINH SUA -- TAT 8 DAU CHAM
	ENA_8LED 	<= "11000011" ; -- CHINH SUA "1100 0011" 
	LED <= ENA_SS;
	ENA_DB <= 	ENA1HZ WHEN SW = '1' ELSE
					ENA10HZ;
					
	-----	XU LY BTN CHO ENA_SS			 
	ICK1: ENTITY WORK.CD_LAM_HEP_BTN --OK
		PORT MAP(	CKHT	=> CKHT,
						BTN 	=> BTN(1), -- CHINH SUA
						BTN_CDLH => ENA); -- CHINH SUA __DAY NOI GIUA 2 CHUONG TRINH CON
						
	ICK2: ENTITY WORK.DEM_1BIT  --OK
		PORT MAP(	CKHT	=> CKHT,
						RST 	=> RST,
						Q		=> ENA_SS, -- CHINH SUA
						ENA_DB=> ENA); -- CHINH SUA 
	-----
	-----XU LY BTN 2+3
	ICA1: ENTITY WORK.CD_LAM_HEP_BTN  --OK
		PORT MAP(	CKHT	=> CKHT,
						BTN	=> BTN(2),
						BTN_CDLH	=> ENA_UP);
						
	ICA2: ENTITY WORK.CD_LAM_HEP_BTN  --OK
		PORT MAP(	CKHT	=> CKHT,
						BTN	=> BTN(3),
						BTN_CDLH	=> ENA_DW);
						
	ICA3: ENTITY WORK.DEM_GH_UD_2BTN --OK -- CHINH SUA TRONG CODE + O NGOAI
		PORT MAP(	CKHT		=> CKHT,
						ENA_UP	=> ENA_UP,
						ENA_DW	=> ENA_DW,
						RST		=>RST,
						DONVI_GH	=> DONVI_GH,
						CHUC_GH	=> CHUC_GH);

	-----
	
	IC1: ENTITY WORK.CHIA_10ENA  --OK
		PORT MAP(	CKHT 		=> CKHT,
						ENA1HZ 	=> ENA1HZ,
						ENA10HZ	=> ENA10HZ,
						ENA1KHZ	=> ENA1KHZ);
						
	IC2: ENTITY WORK.DEM_2SO_GH --OK-- CHINH SUA TRONG CODE + O NGOAI
	PORT MAP(	CKHT		=> CKHT,
					RST		=> RST,
					ENA_DB 	=> ENA_DB,
					ENA_SS	=> ENA_SS,
					DONVI		=> DONVI,-- CHINH SUA
					CHUC		=> CHUC,
					DONVI_GH => DONVI_GH,
					CHUC_GH	=> CHUC_GH);	
					
						
	IC3: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN --OK
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DONVI,
						LED71		=> CHUC, -- CHINH SUA
						LED72		=> X"F", -- CHINH SUA
						LED73		=> X"F", -- CHINH SUA
						LED74		=> X"F", -- CHINH SUA
						LED75		=> X"F", -- CHINH SUA
						LED76		=> DONVI_GH, -- CHINH SUA
						LED77		=> CHUC_GH, -- CHINH SUA
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);


end Behavioral;




