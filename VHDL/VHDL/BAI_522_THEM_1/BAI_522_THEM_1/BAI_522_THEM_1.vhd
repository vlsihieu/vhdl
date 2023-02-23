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

entity BAI_522_THEM_1 is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC_VECTOR (3 downto 0);
           LED0 : out  STD_LOGIC;
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end BAI_522_THEM_1;

architecture Behavioral of BAI_522_THEM_1 is

SIGNAL ENA_CK: 			STD_LOGIC;
SIGNAL ENA_UD:          STD_LOGIC;
SIGNAL ENA_SS: 			STD_LOGIC; -- 0-> KO CHAY /// 1 --> CHAY
SIGNAL ENA_UP_T, ENA_DW_T:  STD_LOGIC; --
SIGNAL ENA1KHZ : 			STD_LOGIC;
-- XU LY NUT NHAN 
SIGNAL RST : 				STD_LOGIC;
SIGNAL BTN_SS : STD_LOGIC;
SIGNAL BTN_UP_T, BTN_DW_T : STD_LOGIC;
SIGNAL BTN_CDLH :STD_LOGIC;
-- XU LY SO DEM, SO GIOI HAN
SIGNAL DONVI, CHUC: STD_LOGIC_VECTOR( 3 DOWNTO 0); -- CHINH SUA THEM BOT 
SIGNAL DONVI_GH_T, CHUC_GH_T :	STD_LOGIC_VECTOR( 3 DOWNTO 0); -- CHINH SUA THEM BOT 
SIGNAL DC_8LED : 			STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
begin

	RST 			<= NOT BTN(0);  -- CHINH SUA
	BTN_SS      <= NOT BTN(1);--START/STOP
	BTN_UP_T    <= BTN(2);--TANG
	BTN_DW_T    <= BTN(3);-- GIAM
	DC_8LED 		<= X"FF"; -- CHINH SUA -- TAT 8 DAU CHAM
	ENA_8LED 	<= "11011011" ; -- CHINH SUA "1100 0011" 
	LED0 <= ENA_UD;
	
	-----	XU LY BTN CHO ENA_SS			 
	IC1: ENTITY WORK.CD_LAM_HEP_BTN --OK
		PORT MAP(	CKHT	=> CKHT,
						BTN 	=> BTN_SS, -- CHINH SUA
						BTN_CDLH => BTN_CDLH); -- CHINH SUA __DAY NOI GIUA 2 CHUONG TRINH CON
						
	IC2: ENTITY WORK.DEM_1BIT  --OK
		PORT MAP(	CKHT	=> CKHT,
						RST 	=> RST,
						Q		=> ENA_SS, -- CHINH SUA
						ENA_DB=> BTN_CDLH); -- CHINH SUA 
	-----
	-----XU LY BTN 2
	IC3: ENTITY WORK.CD_LAM_HEP_BTN  --OK
		PORT MAP(	CKHT	=> CKHT,
						BTN	=> BTN_UP_T,
						BTN_CDLH	=> ENA_UP_T);
	-- XU LY BTN 3					
	IC4: ENTITY WORK.CD_LAM_HEP_BTN  --OK
		PORT MAP(	CKHT	=> CKHT,
						BTN	=> BTN_DW_T,
						BTN_CDLH	=> ENA_DW_T);
		-----XU LY BTN 4


						
	IC5: ENTITY WORK.CAI_GH_T_BTN --OK -- CHINH SUA TRONG CODE + O NGOAI
		PORT MAP(	CKHT		=> CKHT,
						ENA_UP	=> ENA_UP_T,
						ENA_DW	=> ENA_DW_T,
						RST		=> RST,
						DONVI_GH	=> DONVI_GH_T,
						CHUC_GH	=> CHUC_GH_T
					);
	
	IC6: ENTITY WORK.CHIA_10ENA  --OK
		PORT MAP(	CKHT 		=> CKHT,
                  ENA_CK   => ENA_CK,
						ENA_UD   => ENA_UD,
						ENA1KHZ	=> ENA1KHZ);
						
	IC7: ENTITY WORK.DEM_2SO_GH --OK-- CHINH SUA TRONG CODE + O NGOAI
	PORT MAP(	CKHT		=> CKHT,
					RST		=> RST,
					ENA_DB 	=> ENA_CK,
					ENA_SS	=> ENA_SS,
					ENA_UD   => ENA_UD,
					DONVI		=> DONVI,-- CHINH SUA
					CHUC		=> CHUC,
					DONVI_GH_T => DONVI_GH_T,
					CHUC_GH_T	=> CHUC_GH_T
				);	
					
						
	IC8: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN --OK
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> X"5",
						LED71		=> X"2", -- CHINH SUA
						LED72		=> X"F", -- CHINH SUA
						LED73		=> donvi, -- CHINH SUA
						LED74		=> chuc, -- CHINH SUA
						LED75		=> X"F", -- CHINH SUA
						LED76		=> DONVI_GH_T, -- CHINH SUA
						LED77		=> CHUC_GH_T, -- CHINH SUA
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);


end Behavioral;




