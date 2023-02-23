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

entity DE_SO3 is
    Port ( CKHT  : in  STD_LOGIC;
           BTN   : in  STD_LOGIC_VECTOR   (2 DOWNTO 0);
			  SSEG  : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
           LED   : out  STD_LOGIC_VECTOR (5 downto 0));
end DE_SO3;

architecture Behavioral of DE_SO3 is
SIGNAL ENA1KHZ : STD_LOGIC;
----------------------------
SIGNAL ENA_SS	:STD_LOGIC; 
SIGNAL ENA_UP  :STD_LOGIC;
SIGNAL ENA_DB : STD_LOGIC;
---------------------------
SIGNAL RST : STD_LOGIC;
SIGNAL BTN_CDLH : STD_LOGIC;
SIGNAL BTN_SS : STD_LOGIC;
SIGNAL BTN_UP : STD_LOGIC;
-------------------------------------
SIGNAL DEM : STD_LOGIC;
SIGNAL STOP : STD_LOGIC;
--SIGNAL OE : STD_LOGIC_VECTOR(1 DOWNTO 0); 
---------------------------------------------
SIGNAL Q_SD_TSP : 	STD_LOGIC_VECTOR( 5 DOWNTO 0); 
-------------------------------------------------
SIGNAL DONVI:  STD_LOGIC_VECTOR( 3 DOWNTO 0); 
SIGNAL CHUC :	STD_LOGIC_VECTOR( 3 DOWNTO 0); 
SIGNAL DONVI_GH :STD_LOGIC_VECTOR( 3 DOWNTO 0); 
SIGNAL CHUC_GH :STD_LOGIC_VECTOR( 3 DOWNTO 0); 
----------------------------------------------------
SIGNAL DC_8LED : 			STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : 		STD_LOGIC_VECTOR( 7 DOWNTO 0);
begin

	RST	<=   NOT BTN(0); 
	BTN_SS <=  NOT BTN(1);
	BTN_UP <=  NOT BTN(2);
			
	DC_8LED 		<= X"FF"; 
	ENA_8LED 	<= "11000011" ;
	LED <= Q_SD_TSP;	
	-----	XU LY BTN CHO ENA_SS		
	
	IC0: ENTITY WORK.CD_LAM_HEP_BTN --OK
		PORT MAP(	CKHT	=> CKHT,
						BTN 	=> BTN_SS, 
						BTN_CDLH => BTN_CDLH
					);
						
	IC0_1: ENTITY WORK.DEM_1BIT  --OK
		PORT MAP(	CKHT	=> CKHT,
						RST 	=> RST,
						ENA_DB=> BTN_CDLH,
						Q		=> ENA_SS -- ENA_SS

					); 
	-----		BTN_UP
	IC1: ENTITY WORK.CD_LAM_HEP_BTN 
		PORT MAP(	CKHT	=> CKHT,
						BTN 	=> BTN_UP,
						BTN_CDLH => ENA_UP
						); 
	-----	
	IC2: ENTITY WORK.CHIA_10ENA  
		PORT MAP(	CKHT 		=> CKHT,
						ENA10HZ	=> ENA_DB,
						ENA1KHZ	=> ENA1KHZ
					);
-- 6 LED SANGDON_TSP				
	IC3:  ENTITY WORK.LED_SANGDON_TSP 
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_SS	=> ENA_SS,
						ENA_DB 	=> ENA_DB,
                  OE       => '1',
						DEM      => DEM,
						Q			=> Q_SD_TSP,
						STOP        => STOP
				   );
--	IC4 : ENTITY WORK.DK_CHOPHEP
--	   PORT MAP ( CKHT => CKHT,
--		           RST  => RST,
--					  ENA_DB => ENA_DB,
--					  ENA_SS => ENA_SS,
--					  OE   => 
---------------------------------------------------
   ICSSEG1 : ENTITY WORK.CAIDAT_2SO_XX
	PORT MAP(	CKHT		=> CKHT,
					RST		=> RST,
--					ENA_DB 	=> ENA_DB,
					ENA_SS	=> ENA_SS,
					ENA_UP   => ENA_UP,
					DONVI_GH		=> DONVI_GH,
					CHUC_GH		=> CHUC_GH
					
				);	
	ICSSEG2: ENTITY WORK.DEM_2SO
	PORT MAP(	CKHT		=> CKHT,
					RST		=> RST,
					ENA_DB 	=> ENA_DB,
					ENA_SS	=> ENA_SS,
					DEM      => DEM,
					DONVI		=> DONVI,
					CHUC		=> CHUC,
					DONVI_GH => DONVI_GH,
					CHUC_GH  =>CHUC_GH,
					STOP     => STOP
				);	
					
						
	ICSSEG3: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DONVI,
						LED71		=> CHUC, -- CHINH SUA
						LED72		=> X"F", -- CHINH SUA
						LED73		=> X"F", -- CHINH SUA
						LED74		=> X"F", -- CHINH SUA
						LED75		=> X"F", -- CHINH SUA
						LED76		=> DONVI_GH,
						LED77		=> CHUC_GH,
						ANODE		=> ANODE,
						SSEG		=> SSEG, -- 00111100
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);



end Behavioral;

