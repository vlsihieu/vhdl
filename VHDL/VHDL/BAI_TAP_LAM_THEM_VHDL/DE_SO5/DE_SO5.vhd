----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:42:15 10/25/2019 
-- Design Name: 
-- Module Name:    BAITAP_SO100 - Behavioral 
-- Project Name: 
-- Target Devices: outpww 
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

entity DE_SO5 is
    Port ( CKHT  : in  STD_LOGIC;
           BTN   : in  STD_LOGIC_VECTOR   (1 DOWNTO 0);
			  SW    : IN   STD_LOGIC_VECTOR(1 DOWNTO 0);
			  SSEG  : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
           LED   : out  STD_LOGIC_VECTOR (5 downto 0));
end DE_SO5;

architecture Behavioral of DE_SO5 is
SIGNAL ENA1KHZ : STD_LOGIC;
SIGNAL ENA5HZ, ENA2HZ : STD_LOGIC;
----------------------------

SIGNAL ENA_DW  :STD_LOGIC;
SIGNAL ENA_DB : STD_LOGIC;
---------------------------
SIGNAL RST : STD_LOGIC;
SIGNAL BTN_DW : STD_LOGIC;
-------------------------------------
SIGNAL DEM : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL STOP : STD_LOGIC;
--SIGNAL OE : STD_LOGIC_VECTOR(1 DOWNTO 0); 
---------------------------------------------
SIGNAL Q_SD_TSP : 	STD_LOGIC_VECTOR( 5 DOWNTO 0); 
-------------------------------------------------
SIGNAL DONVI:  STD_LOGIC_VECTOR( 3 DOWNTO 0); 
SIGNAL CHUC :	STD_LOGIC_VECTOR( 3 DOWNTO 0); 
SIGNAL DONVI_GH :STD_LOGIC_VECTOR( 3 DOWNTO 0); 
SIGNAL CHUC_GH :STD_LOGIC_VECTOR( 3 DOWNTO 0); 
SIGNAL DV:STD_LOGIC_VECTOR( 3 DOWNTO 0); 
SIGNAL CH :STD_LOGIC_VECTOR( 3 DOWNTO 0); 
----------------------------------------------------
SIGNAL DC_8LED : 			STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL HT_TANSO : STD_LOGIC_VECTOR(3 DOWNTO 0);
------------------------------------
SIGNAL ENA : STD_LOGIC;
begin

	RST	<=   NOT BTN(0); 
	BTN_DW<=  NOT BTN(1);
			
	DC_8LED 		<= X"FF"; 
	ENA_8LED 	<= "10111111" ;
	-----	XU LY BTN CHO ENA_SS		
	
	-----		BTN_DW
	IC0: ENTITY WORK.CD_LAM_HEP_BTN 
		PORT MAP(	CKHT	=> CKHT,
						BTN 	=> BTN_DW,
						BTN_CDLH => ENA_DW
						); 
	-----	
	IC2: ENTITY WORK.CHIA_10ENA  
		PORT MAP(	CKHT 		=> CKHT,
						ENA2HZ	=> ENA2HZ,
						ENA5HZ   => ENA5HZ,
						ENA1KHZ	=> ENA1KHZ
					);
	ENA_DB <= ENA2HZ WHEN SW(1) = '1' ELSE
	          ENA5HZ;
	HT_TANSO <= X"2" WHEN SW(1) = '1' ELSE
	            X"5";
--  IC2_1 : ENTITY WORK.XULY_TANSO_HT
--       PORT MAP (  SEL => SW[1],
--		             ENA_DB => ENA_DB,
--						 HT_TANSO => HT_TANSO
--					 );
-- 6 LED-----------------------------------------			
	IC3:  ENTITY WORK.DEM_3_40_UD_6BIT
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB 	=> ENA_DB,-- TAN SO
						DEM		=> DEM,-- CAP HTBCD_6BIT
						UP       => SW(0),
						STOP     => STOP,
						ENA      => ENA,
						Q        => LED
				   );
IC4: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP( SOHEX6BIT => DEM,
					 DONVI     => DV,
					 CHUC      => CH
					);	
---------------------------------------------------
   ICSSEG1 : ENTITY WORK.CAIDAT_2SO_XX
	PORT MAP(	CKHT		=> CKHT,
					RST		=> RST,
					ENA_DW   => ENA_DW,
					DONVI_GH		=> DONVI_GH,
					CHUC_GH		=> CHUC_GH		
				);	
	ICSSEG2: ENTITY WORK.DEM_2SO
	PORT MAP(	CKHT		=> CKHT,
					RST		=> RST,
					ENA_DB 	=> ENA_DB,
					DONVI		=> DONVI,
					CHUC		=> CHUC,
					ENA      => ENA,
					DONVI_GH => DONVI_GH,
					CHUC_GH  =>CHUC_GH,
					STOP     => STOP
				);	
					
						
	ICSSEG3: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DONVI,
						LED71		=> CHUC, -- CHINH SUA
						LED72		=> DONVI_GH, -- CHINH SUA
						LED73		=> CHUC_GH, -- CHINH SUA
						LED74		=> DV, -- CHINH SUA
						LED75		=> CH, -- CHINH SUA
						LED76		=> X"F",
						LED77		=> HT_TANSO,
						ANODE		=> ANODE,
						SSEG		=> SSEG, -- 00111100
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);



end Behavioral;

