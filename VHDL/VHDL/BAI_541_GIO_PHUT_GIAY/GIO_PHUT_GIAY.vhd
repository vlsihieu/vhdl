----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:41:52 11/07/2019 
-- Design Name: 
-- Module Name:    GIO_PHUT_GIAY - Behavioral 
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

entity GIO_PHUT_GIAY is
    Port ( CKHT : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
			  SW0 : in  STD_LOGIC;
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end GIO_PHUT_GIAY;

architecture Behavioral of GIO_PHUT_GIAY is
SIGNAL RST 		:				STD_LOGIC;
SIGNAL ENA_DB, ENA1KHZ : 	STD_LOGIC;
SIGNAL ENA1HZ, ENA20HZ :	STD_LOGIC;

SIGNAL GIAY, PHUT, GIO : 	STD_LOGIC_VECTOR( 5 DOWNTO 0);
SIGNAL GIO5 : 					STD_LOGIC_VECTOR( 4 DOWNTO 0);

SIGNAL CH_GIO, DV_GIO : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL CH_PHUT, DV_PHUT : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL CH_GIAY, DV_GIAY : 	STD_LOGIC_VECTOR( 3 DOWNTO 0);

SIGNAL DC_8LED : 				STD_LOGIC_VECTOR( 7 DOWNTO 0 );
SIGNAL ENA_8LED: 				STD_LOGIC_VECTOR( 7 DOWNTO 0);


begin
	RST <= not BTN0;
	DC_8LED <= X"FF";
	ENA_8LED <= X"DB";
	GIO <= '0' & GIO5;
	
	ENA_DB <= 	ENA20HZ WHEN SW0 = '1' ELSE 
					ENA1HZ;
	IC1: ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT		=> CKHT,
						ENA1HZ	=> ENA1HZ,
						ENA20HZ	=> ENA20HZ,
						ENA1KHZ	=> ENA1KHZ);
					
	IC2: ENTITY WORK.DEM_GIOPHUTGIAY
		PORT MAP(	CKHT	=> CKHT,
						ENA_DB	=> ENA_DB,
						RST		=> RST,
						GIO		=> GIO5,
						PHUT		=> PHUT,
						GIAY		=> GIAY);
						
	IC3: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP(	SOHEX6BIT=> GIO,
						DONVI		=> DV_GIO,
						CHUC		=> CH_GIO);
	
	IC4: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP(	SOHEX6BIT=> PHUT,
						DONVI		=> DV_PHUT,
						CHUC		=> CH_PHUT);
						
	IC5: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP(	SOHEX6BIT=> GIAY,
						DONVI		=> DV_GIAY,
						CHUC		=> CH_GIAY);
						
	IC6: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
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

