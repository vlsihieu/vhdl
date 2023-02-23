----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:38 11/07/2019 
-- Design Name: 
-- Module Name:    GIO_PHUT_GIAY_3KEY - Behavioral 
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

entity GIO_PHUT_GIAY_3KEY is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC_VECTOR (3 downto 0);
           SW : in  STD_LOGIC;
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end GIO_PHUT_GIAY_3KEY;

architecture Behavioral of GIO_PHUT_GIAY_3KEY is

SIGNAL RST 		:				STD_LOGIC;
SIGNAL ENA_DB, ENA1KHZ : 	STD_LOGIC;
SIGNAL ENA1HZ, ENA20HZ :	STD_LOGIC;
SIGNAL ENA_CHINH	:			STD_LOGIC;

SIGNAL GIAY, PHUT, GIO : 	STD_LOGIC_VECTOR( 5 DOWNTO 0);
SIGNAL GIO5 : 					STD_LOGIC_VECTOR( 4 DOWNTO 0);

SIGNAL CH_GIO, DV_GIO : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL CH_PHUT, DV_PHUT : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL CH_GIAY, DV_GIAY : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);

--SIGNAL BTN_UP, BTN_DW : 	STD_LOGIC;
--SIGNAL BTN_MOD : 				STD_LOGIC;

SIGNAL ENA_UP, ENA_DW : 	STD_LOGIC;
SIGNAL ENA_MOD : 				STD_LOGIC;

SIGNAL GT_MOD : 				STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL DC_8LED : 				STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ENA_8LED: 				STD_LOGIC_VECTOR(7 DOWNTO 0);

begin

	RST <= BTN(0);
	
	ENA_8LED <= X"DB";
	GIO <= '0' & GIO5;
	
	ENA_DB <= 	ENA20HZ WHEN SW = '1' ELSE 
					ENA1HZ;
	
	IC1: ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT		=> CKHT,
						ENA1HZ	=> ENA1HZ,
						ENA20HZ	=> ENA20HZ,
						ENA5HZ	=> ENA_CHINH,
						ENA1KHZ	=> ENA1KHZ);
						
	IC2: ENTITY WORK.DEBOUNCE_BTN
		PORT MAP(	CKHT		=> CKHT,
						BTN		=> BTN(1),
						DB_TICK	=> ENA_UP);
	
	IC3: ENTITY WORK.DEBOUNCE_BTN
		PORT MAP(	CKHT		=> CKHT,
						BTN		=> BTN(2),
						DB_TICK	=> ENA_DW);
						
	IC4: ENTITY WORK.CD_LAM_HEP_BTN
		PORT MAP(	CKHT		=> CKHT,
						BTN		=> BTN(3),
						BTN_CDLH 	=> ENA_MOD);
	
	IC5: ENTITY WORK.XULY_MOD_DAUCHAM
		PORT MAP(	CKHT		=> CKHT,
						ENA_DB	=> ENA_MOD,
						GT_MOD	=> GT_MOD,
						DC_8LED	=> DC_8LED);
						
	IC6: ENTITY WORK.DEM_GIOPHUTGIAY
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB	=> ENA_DB,
						GT_MOD	=> GT_MOD,
						ENA_UP	=> ENA_UP,
						ENA_DW	=> ENA_DW,
						ENA_CHINH=> ENA_CHINH,
						GIO		=> GIO5,
						PHUT		=> PHUT,
						GIAY		=> GIAY);
	
	IC7: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP(	SOHEX6BIT=> GIO,
						DONVI		=> DV_GIO,
						CHUC		=> CH_GIO);
	
	IC8: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP(	SOHEX6BIT=> PHUT,
						DONVI		=> DV_PHUT,
						CHUC		=> CH_PHUT);
						
	IC9: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP(	SOHEX6BIT=> GIAY,
						DONVI		=> DV_GIAY,
						CHUC		=> CH_GIAY);
						
	IC10: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DV_GIAY,
						LED71		=> CH_GIAY,
						LED72		=> X"F",
						LED73		=> DV_PHUT,
						LED74		=> CH_PHUT,
						LED75		=> X"F",
						LED76		=> DV_GIO,
						LED77		=> CH_GIO,
						DC_8LED	=> DC_8LED,
						ENA_8LED	=> ENA_8LED,
						ANODE		=> ANODE,
						SSEG		=> SSEG);
	
end Behavioral;

