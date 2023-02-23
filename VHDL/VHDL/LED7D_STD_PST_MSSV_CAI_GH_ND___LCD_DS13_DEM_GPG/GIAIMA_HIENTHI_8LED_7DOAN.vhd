----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:27 10/06/2019 
-- Design Name: 
-- Module Name:    GIAIMA_HIENTHI_8LED_7DOAN - Behavioral 
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

entity GIAIMA_HIENTHI_8LED_7DOAN is
    Port ( CKHT, ENA1KHZ : in  STD_LOGIC;
           LED70, LED71 : in  STD_LOGIC_VECTOR (3 downto 0);
           LED72, LED73 : in  STD_LOGIC_VECTOR (3 downto 0);
           LED74, LED75 : in  STD_LOGIC_VECTOR (3 downto 0);
           LED76, LED77 : in  STD_LOGIC_VECTOR (3 downto 0);
           DC_8LED, ENA_8LED : in  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0));
end GIAIMA_HIENTHI_8LED_7DOAN;

architecture Behavioral of GIAIMA_HIENTHI_8LED_7DOAN is
SIGNAL SEL_3B: STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL SO_GMA: STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DC_1LED, ENA_1LED: STD_LOGIC;
begin

K1: ENTITY WORK.DEM_3BIT_CHON_8KENH
	PORT MAP( ENA1KHZ	=> ENA1KHZ,
				 CKHT		=> CKHT,
				 Q			=> SEL_3B);
				 
K2: ENTITY WORK.QUET_ANODE_8LED_7DOAN
	PORT MAP( SEL_3B	=> SEL_3B,
				 ANODE	=> ANODE);
		
K3: ENTITY WORK.DAHOP_8KENH
	PORT MAP( SEL_3B	=> SEL_3B,
				 LED70	=> LED70,
				 LED71	=> LED71,
				 LED72	=> LED72,
				 LED73	=> LED73,
				 LED74	=> LED74,
				 LED75	=> LED75,
				 LED76	=> LED76,
				 LED77	=> LED77,
				 
				 DC_8LED	=> DC_8LED,
				 ENA_8LED => ENA_8LED,
				 
				 DC_1LED	=> DC_1LED,
				 ENA_1LED => ENA_1LED,
				 SO_GMA	=> SO_GMA);
				 
K4: ENTITY WORK.GIAIMA_7DOAN_ENA
	PORT MAP( DC_1LED	=> DC_1LED,
				 ENA_1LED => ENA_1LED,
				 SO_GMA	=> SO_GMA,
				 SSEG		=> SSEG);

end Behavioral;

