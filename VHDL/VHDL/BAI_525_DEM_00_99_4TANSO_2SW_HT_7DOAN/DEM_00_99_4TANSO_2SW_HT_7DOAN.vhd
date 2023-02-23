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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DEM_00_99_4TANSO_2SW_HT_7DOAN is
			Port ( CKHT : in  STD_LOGIC;
					 BTN, SW : IN STD_LOGIC_VECTOR( 1 DOWNTO 0);
				    SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
				    ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
					 LED : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
					 
end DEM_00_99_4TANSO_2SW_HT_7DOAN;

architecture Behavioral of DEM_00_99_4TANSO_2SW_HT_7DOAN is
SIGNAL ENA_DB, ENA1KHZ,RST, ENA_SS , BTN1 , ENA1, ENA5, ENA10, ENA20: STD_LOGIC;
SIGNAL DONVI, CHUC :STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DAU_CHAM_8LED:STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ENA_GIAIMA_8LED:STD_LOGIC_VECTOR(7 DOWNTO 0);
begin
	BTN1 <=  BTN(1);
	RST <=  BTN(0);
	DAU_CHAM_8LED		<= X"FF";    -- "11111111"
	ENA_GIAIMA_8LED	<= X"03";   ---"00000011"
	
	LED(0) <=  ENA_SS;
	LED(2 DOWNTO 1) <= SW;
	LED(3) <= '0';
CHIA_10ENA: ENTITY WORK.CHIA_10ENA
		PORT MAP(CKHT => CKHT,
					ENA1HZ => ENA1,
					ENA5HZ => ENA5,
					ENA10HZ => ENA10,
					ENA20HZ => ENA20,
					ENA1KHZ => ENA1KHZ);
					
CHON_TAN_SO : ENTITY WORK.CHON_TAN_SO
		PORT MAP ( SEL => SW,
					  ENA1 => ENA1,
					  ENA5 => ENA5,
					  ENA10 => ENA10,
					  ENA20 => ENA20,
				     ENA_O => ENA_DB );			

DEM_1BIT_BTN : ENTITY WORK.DEM_1BIT_BTN  ---- ENA _ SS
		PORT MAP ( CKHT => CKHT,
					  RST  => RST,
					  BTN => BTN1,
					  Q => ENA_SS 
					  	 		);

DEM_2S0: ENTITY WORK.DEM_2SO
		PORT MAP(CKHT => CKHT,
					RST => RST,
					ENA_DB => ENA_DB,
					ENA_SS => ENA_SS,
					DONVI => DONVI,
					CHUC => CHUC
				 );
					
HIENTHI_2LED: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(CKHT => CKHT,
					ENA1KHZ => ENA1KHZ,
					LED70 => DONVI,
					LED71 => CHUC,
					LED72 => X"5",
					LED73 => X"4",
					LED74 => X"F",
					LED75 => X"F",
					LED76 => X"F",
					LED77 => X"F",
					
					DAU_CHAM_8LED => DAU_CHAM_8LED,
					ENA_GIAIMA_8LED => ENA_GIAIMA_8LED,
					ANODE => ANODE,
					SSEG => SSEG);
					
end Behavioral;