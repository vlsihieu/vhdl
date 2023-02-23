----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:09:25 10/27/2019 
-- Design Name: 
-- Module Name:    DK_2_LUONG_8LED_8CT_ENA_SS - Behavioral 
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

entity DK_2_LUONG_8LED_8CT_ENA_SS is
    Port ( CKHT : in  STD_LOGIC;
           SW : in  STD_LOGIC_VECTOR (2 downto 0);
           BTN : in  STD_LOGIC_VECTOR (1 downto 0);
           LED : out  STD_LOGIC_VECTOR (15 downto 0));
end DK_2_LUONG_8LED_8CT_ENA_SS;

architecture Behavioral of DK_2_LUONG_8LED_8CT_ENA_SS is


SIGNAL RST : 				STD_LOGIC;
--------------- DIEU KHIEN AUTO
SIGNAL ENA_SS : 			STD_LOGIC;
SIGNAL ENA_DB : 			STD_LOGIC;
SIGNAL ENA5HZ, ENA20HZ : STD_LOGIC;
SIGNAL OE : 				STD_LOGIC_VECTOR( 7 DOWNTO 0); -- CHINH SUA TUY THEO SO CHUONG TRINH DIEU KHIEN
SIGNAL Q_STD_TSP : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_STD_PST : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_STD_TNV : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_STD_TTR : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_DSDC_PST : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_DSDC_TSP : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_SD_PST: 			STD_LOGIC_VECTOR( 7 DOWNTO 0); 
SIGNAL Q_SD_TSP: 			STD_LOGIC_VECTOR( 7 DOWNTO 0); 

--------------- DIEU KHIEN BANG TAY
SIGNAL ENA_SS2 : 			STD_LOGIC;
SIGNAL ENA_DB2 : 			STD_LOGIC;
SIGNAL OE2 : 				STD_LOGIC_VECTOR( 7 DOWNTO 0); -- CHINH SUA TUY THEO SO CHUONG TRINH DIEU KHIEN 
SIGNAL Q_STD_TSP2 : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_STD_PST2 : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_STD_TNV2 : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_STD_TTR2 : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_DSDC_PST2 : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_DSDC_TSP2 : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_SD_PST2 : 		STD_LOGIC_VECTOR( 7 DOWNTO 0); 
SIGNAL Q_SD_TSP2 : 		STD_LOGIC_VECTOR( 7 DOWNTO 0); 

begin
	
	RST <= BTN(0);
	ENA_SS <= SW(0);
	ENA_SS2 <= SW(1);
	
	LED(7 DOWNTO 0)  <= Q_STD_PST OR Q_STD_TSP OR Q_STD_TNV OR Q_STD_TTR OR Q_DSDC_PST OR Q_DSDC_TSP OR Q_SD_PST OR Q_SD_TSP; -- CHINH SUA KHI THEM BOT CHUONG TRINH
	LED(15 DOWNTO 8) <= Q_STD_PST2 OR Q_STD_TSP2 OR Q_STD_TNV2 OR Q_STD_TTR2 OR Q_DSDC_PST2 OR Q_DSDC_TSP2 OR Q_SD_PST2 OR Q_SD_TSP2; -- CHINH SUA KHI THEM BOT CHUONG TRINH


	----------------------------------------------------------
	--BEGIN LUONG 1-------AUTO--------------------------------
	ENA_DB <= 	ENA5HZ WHEN SW(2) = '1' ELSE
					ENA20HZ;
	
	IC1 : ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT 		=> CKHT,
						ENA5HZ 	=> ENA5HZ,
						ENA20HZ	=> ENA20HZ);
	
	IC2 : ENTITY WORK.LED_STD_PST   -- OK ___0__0-->15(16TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						ENA_SS	=> ENA_SS,
						RST		=> RST,
						OE			=> OE(0), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_STD_PST);
						
	IC3 : ENTITY WORK.LED_STD_TSP  -- OK ___0__0-->15(16TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						ENA_SS	=> ENA_SS,
						RST		=> RST,
						OE			=> OE(1), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_STD_TSP);
						
	IC4 : ENTITY WORK.LED_STD_TNV -- OK ___0__0-->7(8TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						ENA_SS	=> ENA_SS,
						RST		=> RST,
						OE			=> OE(2), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_STD_TNV);
						
	IC5 : ENTITY WORK.LED_STD_TTR  -- OK ___0__0-->7(8TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						ENA_SS	=> ENA_SS,
						RST		=> RST,
						OE			=> OE(3), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_STD_TTR);
						
						
	IC6 : ENTITY WORK.LED_DSDC_PST -- OK ___0__0-->7(8TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						ENA_SS	=> ENA_SS,
						RST		=> RST,
						OE			=> OE(4), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_DSDC_PST);
						
	IC7 : ENTITY WORK.LED_DSDC_TSP -- OK ___0__0-->7(8TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						ENA_SS	=> ENA_SS,
						RST		=> RST,
						OE			=> OE(5), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_DSDC_TSP);
	
	IC8:  ENTITY WORK.LED_SANGDON_PST  -- OK ___0__0-->36(37TT)
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB 	=> ENA_DB,
						ENA_SS	=> ENA_SS,
						OE			=> OE(6), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_SD_PST);
						
	IC9:  ENTITY WORK.LED_SANGDON_TSP  -- OK ___0__0-->36(37TT)
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB 	=> ENA_DB,
						ENA_SS	=> ENA_SS,
						OE			=> OE(7), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_SD_TSP);
						
	IC10 : ENTITY WORK.DIEUKHIEN_CHOPHEP
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB	=> ENA_DB,
						ENA_SS	=> ENA_SS,
						OE			=> OE);
	
	
	--END LUONG 1 --------------------------------------------
	----------------------------------------------------------
	--BEGIN LUONG 2 ------------------------------------------
	IC12: ENTITY WORK.CD_LAM_HEP_BTN
		PORT MAP(	CKHT	=> CKHT,  -- XUNG CKHT
						BTN 	=> BTN(1),   -- XUNG DAU VAO CAN CHONG DOI VA LAM HEP
						BTN_CDLH => ENA_DB2); -- XUNG DAU RA TU CHUONG TRINH CON BTN_CDLH

	IC22 : ENTITY WORK.LED_STD_PST   -- OK ___0__0-->15(16TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB2,
						ENA_SS	=> ENA_SS2,
						RST		=> RST,
						OE			=> OE2(0), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_STD_PST2);
						
	IC32 : ENTITY WORK.LED_STD_TSP  -- OK ___0__0-->15(16TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB2,
						ENA_SS	=> ENA_SS2,
						RST		=> RST,
						OE			=> OE2(1), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_STD_TSP2);
						
	IC42 : ENTITY WORK.LED_STD_TNV -- OK ___0__0-->7(8TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB2,
						ENA_SS	=> ENA_SS2,
						RST		=> RST,
						OE			=> OE2(2), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_STD_TNV2);
						
	IC52 : ENTITY WORK.LED_STD_TTR  -- OK ___0__0-->7(8TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB2,
						ENA_SS	=> ENA_SS2,
						RST		=> RST,
						OE			=> OE2(3), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_STD_TTR2);
						
						
	IC62 : ENTITY WORK.LED_DSDC_PST -- OK ___0__0-->7(8TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB2,
						ENA_SS	=> ENA_SS2,
						RST		=> RST,
						OE			=> OE2(4), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_DSDC_PST2);
						
	IC72 : ENTITY WORK.LED_DSDC_TSP -- OK ___0__0-->7(8TT)
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB2,
						ENA_SS	=> ENA_SS2,
						RST		=> RST,
						OE			=> OE2(5), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_DSDC_TSP2);
	
	IC82 :  ENTITY WORK.LED_SANGDON_PST  -- OK ___0__0-->36(37TT)
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB 	=> ENA_DB2,
						ENA_SS	=> ENA_SS2,
						OE			=> OE2(6), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_SD_PST2);
						
	IC92 :  ENTITY WORK.LED_SANGDON_TSP  -- OK ___0__0-->36(37TT)
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB 	=> ENA_DB2,
						ENA_SS	=> ENA_SS2,
						OE			=> OE2(7), -- CHINH SUA KHI THEM BOT CHUONG TRINH
						Q			=> Q_SD_TSP2);
						
	IC102 : ENTITY WORK.DIEUKHIEN_CHOPHEP
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB	=> ENA_DB2,
						ENA_SS	=> ENA_SS2,
						OE			=> OE2);
	--END LUONG 2 --------------------------------------------

end Behavioral;

