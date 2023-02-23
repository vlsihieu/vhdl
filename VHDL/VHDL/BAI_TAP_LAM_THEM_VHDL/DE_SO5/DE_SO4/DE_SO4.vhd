----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:24:44 10/23/2017 
-- Design Name: 
-- Module Name:    DEM_00_99_4TANSO_2SW_HT_7DOAN - Behavioral 
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

entity DE_SO4 is
			Port ( CKHT : in  STD_LOGIC;
					 BTN : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
					 SW : IN STD_LOGIC_VECTOR( 1 DOWNTO 0);
				    SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
				    ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
					 LED : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
					 );
					 
end DE_SO4;

architecture Behavioral of DE_SO4 is
SIGNAL RST :STD_LOGIC;
SIGNAL BTN_UP:STD_LOGIC;
SIGNAL BTN_DW:STD_LOGIC;
SIGNAL BTN_CD1:STD_LOGIC;
SIGNAL BTN_CD2:STD_LOGIC;
-------------------------
SIGNAL ENA_UP:STD_LOGIC;
SIGNAL ENA_DW:STD_LOGIC;
SIGNAL ENA_CD1:STD_LOGIC;
SIGNAL ENA_CD2:STD_LOGIC;
----------------------------
SIGNAL  ENA1KHZ : STD_LOGIC;
SIGNAL  ENA2HZ : STD_LOGIC;
SIGNAL  ENA5HZ : STD_LOGIC;
SIGNAL  ENA10HZ: STD_LOGIC;
--------------------------------------------
SIGNAL DONVI_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_0 :STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DONVI_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_1 :STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DONVI_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_2 :STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DONVI_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_3 :STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DONVI : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC :STD_LOGIC_VECTOR(3 DOWNTO 0);
------------------------------------
SIGNAL DC_8LED:STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ENA_8LED:STD_LOGIC_VECTOR(7 DOWNTO 0);
---------------------------------------
SIGNAL OE : STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
   BTN_DW  <=  NOT BTN(4);
   BTN_UP  <=  NOT BTN(3);
   BTN_CD2 <=  NOT BTN(2);
	BTN_CD1 <=  NOT BTN(1);
	RST     <=  NOT BTN(0);
	DC_8LED		<= X"FF";    -- "11111111"
	ENA_8LED	   <= X"03";   ---"00000011"
	
	
IC0: ENTITY WORK.CHIA_10ENA
		PORT MAP(CKHT => CKHT,
					ENA5HZ => ENA5HZ,--- led
					ENA10HZ => ENA10HZ,--- led
					ENA2HZ => ENA2HZ,-- 7doan
					ENA1KHZ => ENA1KHZ-- 7doan
				  );
				  
	
IC2: ENTITY WORK.DEM_1BIT_BTN 
		PORT MAP ( CKHT => CKHT,
					  RST  => RST,
					  BTN => BTN_CD1,
					  Q => ENA_CD1 
					  	 		);
IC2_1: ENTITY WORK.DEM_1BIT_BTN 
		PORT MAP ( CKHT => CKHT,
					  RST  => RST,
					  BTN => BTN_CD2,
					  Q => ENA_CD2 
					  	 		);
IC3: ENTITY WORK.DK_CP_3LED_TSP_PST
		PORT MAP ( CKHT => CKHT,
					  RST  => RST,
					  ENA_DB => ENA5HZ,
					  CP1   => ENA_CD1,
					  Q => LED(2 DOWNTO 0)
					 ); 
IC4: ENTITY WORK.DK_CP_5LED_DSDC
		PORT MAP ( CKHT => CKHT,
					  RST  => RST,
					  ENA_DB => ENA10HZ,
					  CP2   => ENA_CD2,
					  Q => LED(7 DOWNTO 3)
					 );  					 
---------------------------------------
IC5_1: ENTITY WORK.CD_LAM_HEP_BTN 
   PORT MAP(CKHT	=> CKHT,
				BTN 	=> BTN_DW,
				BTN_CDLH => ENA_DW
				);
IC5_2: ENTITY WORK.CD_LAM_HEP_BTN 
   PORT MAP(CKHT	=> CKHT,
				BTN 	=> BTN_UP,
				BTN_CDLH => ENA_UP
				); 					
IC1: ENTITY WORK.CHON_CHUONGTRINH_7DOAN
		PORT MAP ( SEL_2B => SW,
                 OE  => OE
					  );	
CT1 : ENTITY WORK.DEM_LEN_A_B_AU
	PORT MAP(	CKHT		=> CKHT,
					RST		=> RST,
					ENA_DB 	=> ENA2HZ,
					OE       => OE(0),
					DONVI		=> DONVI_0,
					CHUC		=> CHUC_0
				);	
CT2 : ENTITY WORK.DEM_XUONG_A_B_AU
    	PORT MAP(CKHT		=> CKHT,
					RST		=> RST,
					ENA_DB 	=> ENA2HZ,
					OE       => OE(1),
					DONVI		=> DONVI_1,
					CHUC		=> CHUC_1
				   );	
CT3 : ENTITY WORK.DEM_UP_A_B_BTN
	PORT MAP(	CKHT		=> CKHT,
					RST		=> RST,
					OE       => OE(2),
					ENA_UP   => ENA_UP,
					DONVI		=> DONVI_2,
					CHUC		=> CHUC_2
				);	
CT4 : ENTITY WORK.DEM_DW_A_B_BTN
	PORT MAP(	CKHT		=> CKHT,
					RST		=> RST,
					OE       => OE(3),
					ENA_DW   => ENA_DW,
					DONVI		=> DONVI_3,
					CHUC		=> CHUC_3
				);	
CHUC <= CHUC_0 WHEN  OE(0) = '1' ELSE
        CHUC_1 WHEN  OE(1) = '1' ELSE
		  CHUC_2 WHEN  OE(2) = '1' ELSE
		  CHUC_3 WHEN  OE(3) = '1' ELSE
		  X"0";

DONVI <= DONVI_0 WHEN OE(0) = '1' ELSE
         DONVI_1 WHEN OE(1) = '1' ELSE
			DONVI_2 WHEN OE(2) = '1' ELSE
			DONVI_3 WHEN OE(3) = '1' ELSE
			X"0";
IC5: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DONVI,
						LED71		=> CHUC, -- CHINH SUA
						LED72		=> X"F", -- CHINH SUA
						LED73		=> X"F", -- CHINH SUA
						LED74		=> X"F", -- CHINH SUA
						LED75		=> X"F", -- CHINH SUA
						LED76		=> X"F",
						LED77		=> X"F",
						ANODE		=> ANODE,
						SSEG		=> SSEG, -- 00111100
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);
					
end Behavioral;