----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:04:00 10/27/2019 
-- Design Name: 
-- Module Name:    DK_8LED_8CT_ENA_SS - Behavioral 
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

entity DK_8LED_8CT_ENA_SS is
    Port ( CKHT : in  STD_LOGIC;
           SW : in  STD_LOGIC_VECTOR (1 downto 0);
           BTN : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end DK_8LED_8CT_ENA_SS;

architecture Behavioral of DK_8LED_8CT_ENA_SS is

SIGNAL ENA_DB : 			STD_LOGIC;
SIGNAL ENA_SS : 			STD_LOGIC;
SIGNAL ENA5HZ, ENA20HZ : STD_LOGIC;
SIGNAL RST : 				STD_LOGIC;
SIGNAL OE : 				STD_LOGIC_VECTOR( 7 DOWNTO 0); -- CHINH SUA TUY THEO SO CHUONG TRINH DIEU KHIEN
SIGNAL Q_STD_TSP : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_STD_PST : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_STD_TNV : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_STD_TTR : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_DSDC_PST : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_DSDC_TSP : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_SD_PST: 			STD_LOGIC_VECTOR( 7 DOWNTO 0); 
SIGNAL Q_SD_TSP: 			STD_LOGIC_VECTOR( 7 DOWNTO 0); 

begin

	RST <= BTN;
	LED <= Q_STD_PST OR Q_STD_TSP OR Q_STD_TNV OR Q_STD_TTR OR Q_DSDC_PST OR Q_DSDC_TSP OR Q_SD_PST OR Q_SD_TSP; -- CHINH SUA KHI THEM BOT CHUONG TRINH

	ENA_DB <= 	ENA5HZ WHEN SW(1) = '1' ELSE
					ENA20HZ;
	ENA_SS <= SW(0);

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
						
end Behavioral;

