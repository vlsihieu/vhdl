----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:53:09 10/23/2017 
-- Design Name: 
-- Module Name:    HAI_BO_DEM_00_99_HT_7DOAN - Behavioral 
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

entity HAI_BO_DEM_00_99_HT_7DOAN is
	Port ( CKHT : in  STD_LOGIC;
				BTN : IN STD_LOGIC_VECTOR( 3 DOWNTO 0);
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end HAI_BO_DEM_00_99_HT_7DOAN;

architecture Behavioral of HAI_BO_DEM_00_99_HT_7DOAN is
SIGNAL ENA_5HZ, ENA_10HZ, ENA1KHZ, RST, RST2, ENA_SS1, ENA_SS2 , BTN1, BTN3: STD_LOGIC;
SIGNAL DONVI, CHUC :STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DONVI1, CHUC1 :STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DAU_CHAM_8LED:STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ENA_GIAIMA_8LED:STD_LOGIC_VECTOR(7 DOWNTO 0);
begin
	BTN1 <=  BTN(1);
	RST2 <=  BTN(2);
	BTN3 <=  BTN(3);
	RST <=  BTN(0);
	DAU_CHAM_8LED		<=X"FF";    -- "11111111"
	ENA_GIAIMA_8LED	<= X"C3";   ---"00000011" -- KHI THEM LED PHAI SUA LAI
	

	
CHIA_10ENA: ENTITY WORK.CHIA_10ENA
		PORT MAP(CKHT => CKHT,
					ENA5HZ => ENA_5HZ,
					ENA10HZ => ENA_10HZ,
					ENA1KHZ => ENA1KHZ);

DEM_1BIT_BTN1 : ENTITY WORK.DEM_1BIT_BTN_1  ---- ENA_SS  MACH 1
		PORT MAP ( CKHT => CKHT,
					  RST  => RST,
					  BTN => BTN1,
					  Q => ENA_SS1);
DEM_2S0_5HZ: ENTITY WORK.DEM_2SO				------- MACH 1
		PORT MAP(CKHT => CKHT,
					RST => RST,
					ENA_DB => ENA_5HZ,
					ENA_SS => ENA_SS1,
					DONVI => DONVI,
					CHUC => CHUC );

DEM_1BIT_BTN2 : ENTITY WORK.DEM_1BIT_BTN_2  ---- ENA_SS  MACH 2
		PORT MAP ( CKHT => CKHT,
					  RST  => RST2,
					  BTN => BTN3,
					  Q => ENA_SS2 );
				 
DEM_2S0_10HZ: ENTITY WORK.DEM_2SO			 ------- MACH 2
		PORT MAP(CKHT => CKHT,
					RST => RST2,
					ENA_DB => ENA_10HZ,
					ENA_SS => ENA_SS2,
					DONVI => DONVI1,
					CHUC => CHUC1 );
					
HIENTHI_2LED: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(CKHT => CKHT,
					ENA1KHZ => ENA1KHZ,
					LED70 => DONVI,
					LED71 => CHUC,
					LED72 => X"F",
					LED73 => X"F",
					LED74 => X"F",
					LED75 => X"F",
					LED76 => DONVI1,
					LED77 => CHUC1,
					
					DAU_CHAM_8LED => DAU_CHAM_8LED,
					ENA_GIAIMA_8LED => ENA_GIAIMA_8LED,
					ANODE => ANODE,
					SSEG => SSEG);
					
end Behavioral;

