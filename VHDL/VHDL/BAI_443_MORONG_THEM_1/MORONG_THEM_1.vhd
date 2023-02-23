----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:14:09 10/10/2019 
-- Design Name: 
-- Module Name:    BAITAP_MORONG_THEM_ENA_SS_SW1_5HZ - Behavioral 
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
-- 2 BTN -- 1 BTN -> RESET_____ 1 BTN -> ENA_SS__0->DEM _1->NGUNG DEM  
-- 2 SW -- 1-> OE_____ 1-> THAY DOI ENA1HZ VA ENA5HZ

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MORONG_THEM_1 is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC_VECTOR (1 downto 0);
           SW : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end MORONG_THEM_1;

architecture Behavioral of MORONG_THEM_1 is
SIGNAL ENA_DB : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL OE : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Q_STD_TSP : STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL Q_STD_PST : STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_SS, ENA : STD_LOGIC;
SIGNAL ENA1HZ,ENA5HZ : STD_LOGIC;
begin
		
	RST <= BTN(0);
	LED <= Q_STD_PST OR Q_STD_TSP ;
	
	OE <= "01" WHEN SW = '0' ELSE
			"10" ;
--	ENA_DB	<=  	ENA5HZ WHEN SW(1) = '1' ELSE
--						ENA1HZ;
	
	IC1 : ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT => CKHT,
						ENA1HZ => ENA1HZ,
						ENA5HZ => ENA5HZ);
						
	IC2 : ENTITY WORK.LED_STD_PST
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA1HZ,
						RST		=> RST,
						ENA_SS	=> ENA_SS,
						OE			=> OE(0),
						Q			=> Q_STD_PST);
						
	IC3 : ENTITY WORK.LED_STD_TSP
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA5HZ,
						ENA_SS	=> ENA_SS,
						RST		=> RST,
						OE			=> OE(1),
						Q			=> Q_STD_TSP);
						
	
	IC4: ENTITY WORK.CD_LAM_HEP_BTN
		PORT MAP(	CKHT	=> CKHT,
						BTN 	=> BTN(1),
						BTN_CDLH => ENA);
						
	-- MACH DEM 1 BIT Ð? NH?N LUU TR?NG THÁI
	IC5: ENTITY WORK.DEM_1BIT
		PORT MAP(	CKHT	=> CKHT,
						RST 	=> RST,
						Q		=> ENA_SS,
						ENA_DB=> ENA);

end Behavioral;

