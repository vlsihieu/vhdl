----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:32:43 06/03/2020 
-- Design Name: 
-- Module Name:    KIEMTRA1 - Behavioral 
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

entity DE_SO2 is
    Port ( CKHT: in  STD_LOGIC;
           BTN : in  STD_LOGIC_VECTOR (3 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
			  LED : out STD_LOGIC_VECTOR (7 downto 0)
			  );
end DE_SO2;
architecture Behavioral of DE_SO2 is
SIGNAL ENA: STD_LOGIC;
-----------------------------------
SIGNAL ENA_DB : STD_LOGIC;
SIGNAL ENA2HZ, ENA5HZ : STD_LOGIC;
SIGNAL ENA1KHZ : STD_LOGIC;
-------------------- ---------------
SIGNAL ENA_SS : STD_LOGIC;
SIGNAL ENA_DW : STD_LOGIC;
SIGNAL ENA_CD : STD_LOGIC;
---------------------------------
SIGNAL RST    : STD_LOGIC;
SIGNAL BTN_HZ : STD_LOGIC;
SIGNAL BTN_DW : STD_LOGIC;
SIGNAL BTN_SS : STD_LOGIC;
-----------------------
SIGNAL ENA_8LED : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DC_8LED  : STD_LOGIC_VECTOR(7 DOWNTO 0);
-----------------------
--SIGNAL OE : STD_LOGIC_VECTOR(1 DOWNTO 0);
------------------------------------
SIGNAL Q_STD_TNV_TTR : STD_LOGIC_VECTOR(7 DOWNTO 0);
--SIGNAL Q_STD_TTR : STD_LOGIC_VECTOR(7 DOWNTO 0);
-------------------------------
SIGNAL DONVI :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DONVI_GH : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_GH : STD_LOGIC_VECTOR(3 DOWNTO 0);
---------------------------------------------
SIGNAL DEM : STD_LOGIC;-- HET CHU KY DAO LED
begin
RST    <= NOT BTN(0);
BTN_SS <= NOT BTN(1);
BTN_HZ <= NOT BTN(2);
BTN_DW <= NOT BTN(3);
--------------------
DC_8LED <= X"FF";
ENA_8LED <= "01101111";
------------------------
--LED <= Q_STD_TNV OR Q_STD_TTR;
LED <= Q_STD_TNV_TTR;
-- KHOI BTN_SS
IC0: ENTITY WORK.DEM_1BIT_BTN
	PORT MAP(CKHT => CKHT,
				RST => RST,
				BTN => BTN_SS,
				Q => ENA_SS
				);
-- KHOI BTN_DW
IC0_1: ENTITY WORK.CD_LAM_HEP_BTN 
   PORT MAP(CKHT	=> CKHT,
				BTN 	=> BTN_DW,
				BTN_CDLH => ENA_DW
				); 			
-- KHOI XU LY CHON TAN SO 
IC1: ENTITY WORK.DEM_1BIT_BTN
	PORT MAP(CKHT => CKHT,
				RST => RST,
				BTN => BTN_HZ,
				Q => ENA_CD
				);						
IC1_1: ENTITY WORK.CHIA_10ENA
	PORT MAP(CKHT=> CKHT,
	         ENA2HZ => ENA2HZ,
				ENA5HZ => ENA5HZ,
				ENA1KHZ => ENA1KHZ
				);
IC1_2: ENTITY WORK.CHON_TANSO
   PORT MAP (ENA2HZ => ENA2HZ,
	          ENA5HZ => ENA5HZ,
				 SEL_1B => ENA_CD,
				 ENA_O  => ENA_DB
				 );
LED1 : ENTITY WORK.LED_STD_TNV_TTR
		PORT MAP(CKHT 		=> CKHT,
					ENA_DB 	=> ENA_DB,
					ENA_SS   => ENA_SS,
					RST		=> RST,
				   DEM      => DEM,
					Q			=> Q_STD_TNV_TTR
				   );
--LED1 : ENTITY WORK.DK_8LED_2CT_STD_TNV_TTR
--    PORT MAP( CKHT => CKHT,
--              RST  => RST ,
--				  DEM  => DEM,
--				  ENA_DB => ENA_DB,
--              Q    => Q_STD_TNV_TTR
--				  );
-- KHOI DEM 2 SO 			
IC2: ENTITY WORK.DEM_2SO
	PORT MAP(CKHT=> CKHT,
				RST=> RST,
				ENA_SS => ENA_SS,--- BTN_SS
				ENA_DB => ENA_DB, ---BTN_TANSO
--				ENA => ENA, -- CAP CHO KHOI DIEU KHIEN LED
				DONVI => DONVI,
				CHUC  => CHUC,
				DEM   => DEM,
				DONVI_GH => DONVI_GH,---B
				CHUC_GH  => CHUC_GH---B
				);
-- KHOI CAI DAT GIOI HAN B
-- A= 2 GIOI HAN B TU A+ 27 -> A+ 13
IC3: ENTITY WORK.CAIDAT_GH_B
	PORT MAP(	CKHT		=> CKHT,
					RST		=> RST,
					ENA_SS	=> ENA_SS,
					ENA_DW   => ENA_DW,
					DONVI_GH		=> DONVI_GH,
					CHUC_GH		=> CHUC_GH
					
				);	
---- KHOI XU LY LED
--IC4 : ENTITY WORK.DK_CP_LED
--	   PORT MAP ( CKHT => CKHT,
--		           RST  => RST,
--					  ENA_DB => ENA_DB,
--					  ENA_SS => ENA_SS,
--					  ENA    => ENA,
--					  OE     => OE
--					 );
--IC5 : ENTITY WORK.LED_STD_TTR
--		PORT MAP(	CKHT 		=> CKHT,
--						ENA_DB 	=> ENA_DB,
--						ENA_SS   => ENA_SS,
--						RST		=> RST,
--						OE			=> OE(1),
--						Q			=> Q_STD_TTR
--				   );	
--IC6 : ENTITY WORK.LED_STD_TNV
--		PORT MAP(	CKHT 		=> CKHT,
--						ENA_DB 	=> ENA_DB,
--						ENA_SS   => ENA_SS,
--						RST		=> RST,
--						OE			=> OE(2),
--						Q			=> Q_STD_TNV
--				   );							
--------------------------------------
IC7: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DONVI,
						LED71		=> CHUC, 
						LED72		=> X"2", -- A
						LED73		=> X"0", --A
						LED74		=> X"F", 
						LED75		=> DONVI_GH, --B
						LED76		=> CHUC_GH,---B
						LED77		=> X"F",
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);
end Behavioral;

