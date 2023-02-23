----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:18:01 10/29/2017 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DONGHO_BAMGIO is
    Port ( CKHT : in  STD_LOGIC;
			  BTN : IN STD_LOGIC_VECTOR (1 DOWNTO 0); 
           SSEG, ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end DONGHO_BAMGIO;

architecture Behavioral of DONGHO_BAMGIO is

SIGNAL RST, BTN1 : STD_LOGIC;
SIGNAL ENA_DB , ENA1KHZ, ENA_SS : STD_LOGIC;

SIGNAL GIAY, PHUT, GIO : STD_LOGIC_VECTOR (5 DOWNTO 0);
SIGNAL GIO5: 				 STD_LOGIC_VECTOR (4 DOWNTO 0);

SIGNAL CH_GIO, DV_GIO : STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL CH_PHUT, DV_PHUT: STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL CH_GIAY, DV_GIAY : STD_LOGIC_VECTOR (3 DOWNTO 0);

SIGNAL DAU_CHAM_8LED :		STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL ENA_GIAIMA_8LED: 	STD_LOGIC_VECTOR (7 DOWNTO 0);
begin
	RST <= BTN(0);
	BTN1 <=  BTN(1);
	DAU_CHAM_8LED <= X"FF";
	ENA_GIAIMA_8LED <= X"DB";
	GIO <= '0' & GIO5;

CHIA_10ENA: ENTITY WORK.CHIA_10ENA
		PORT MAP( CKHT => CKHT,
					 ENA100HZ => ENA_DB,
					 ENA1KHZ => ENA1KHZ);
					 
DEM_1BIT_BTN_SS : ENTITY WORK.DEM_1BIT_BTN	
		PORT MAP ( CKHT => CKHT, 
				     RST => RST,
					  BTN => BTN1,
					  Q => ENA_SS );		
			
DEM_GIOPHUTGIAY : ENTITY WORK.DEM_GIOPHUTGIAY
		PORT MAP( CKHT   => CKHT,
					 RST    => RST,
					 ENA_DB => ENA_DB,
					 ENA_SS => ENA_SS,
					 GIO    => GIO5,
					 PHUT   => PHUT,
					 GIAY   => GIAY);

HEXTOBCD_GIO: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP( SOHEX6BIT => GIO,
					 DONVI     => DV_GIO,
					 CHUC      => CH_GIO);
			
HEXTOBCD_PHUT: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP( SOHEX6BIT => PHUT,
					 DONVI     => DV_PHUT,
					 CHUC      => CH_PHUT);			

HEXTOBCD_GIAY: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP( SOHEX6BIT => GIAY,
					 DONVI     => DV_GIAY,
					 CHUC      => CH_GIAY);	

HIENTHI_8LED: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP( CKHT => CKHT,
					 ENA1KHZ => ENA1KHZ,
					 LED70 => DV_GIAY,
					 LED71 => CH_GIAY,
					 LED72 => X"F",
					 LED73 => DV_PHUT,
					 LED74 => CH_PHUT,
					 LED75 => X"F",
					 LED76 => DV_GIO,
					 LED77 => CH_GIO,
					 DAU_CHAM_8LED => DAU_CHAM_8LED,
					 ENA_GIAIMA_8LED => ENA_GIAIMA_8LED,
					 ANODE => ANODE,
					 SSEG => SSEG);

end Behavioral;

	

