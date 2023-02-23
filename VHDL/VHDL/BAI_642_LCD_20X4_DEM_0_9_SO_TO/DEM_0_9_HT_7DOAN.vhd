----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:53:17 10/23/2019 
-- Design Name: 
-- Module Name:    DEM_0_9_HT_7DOAN - Behavioral 
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
library IEEE; -- CODE CHUA TEST TREN KIT
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

entity DEM_0_9_HT_7DOAN is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
           SW : in  STD_LOGIC_VECTOR (1 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end DEM_0_9_HT_7DOAN;

architecture Behavioral of DEM_0_9_HT_7DOAN is
SIGNAL RST : 		STD_LOGIC;
SIGNAL ENA_DB: 	STD_LOGIC;
SIGNAL ENA1HZ  : 	STD_LOGIC;
SIGNAL ENA10HZ	:	STD_LOGIC;
SIGNAL ENA1KHZ : 	STD_LOGIC;
SIGNAL DONVI : 	STD_LOGIC_VECTOR( 3 DOWNTO 0); -- CHINH SUA THEM BOT 
SIGNAL DC_8LED : 	STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : STD_LOGIC_VECTOR ( 7 DOWNTO 0);
begin

	RST 			<= BTN;  -- CHINH SUA
	DC_8LED 		<= X"FF"; -- CHINH SUA
	ENA_8LED 	<= X"01"; -- CHINH SUA
	
	ENA_DB <= 	ENA1HZ WHEN SW(1) = '1' ELSE
					ENA10HZ;
	
	IC1: ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT 		=> CKHT,
						ENA1HZ 	=> ENA1HZ,
						ENA10HZ	=> ENA10HZ,
						ENA1KHZ	=> ENA1KHZ);
						
	IC2: ENTITY WORK.DEM_1SO
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB 	=> ENA_DB,
						ENA_SS	=> SW(0),
						DONVI		=> DONVI);
						
	IC3: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DONVI,
						LED71		=> X"F", -- CHINH SUA
						LED72		=> X"F", -- CHINH SUA
						LED73		=> X"F", -- CHINH SUA
						LED74		=> X"F", -- CHINH SUA
						LED75		=> X"F", -- CHINH SUA
						LED76		=> X"F", -- CHINH SUA
						LED77		=> X"F", -- CHINH SUA
						ANODE		=> ANODE,
						SSEG		=> SSEG,
						DC_8LED	=> DC_8LED, -- CHINH SUA DIEU CHINH DAU CHAM LED 7DOAN
						ENA_8LED	=> ENA_8LED);
						
	

end Behavioral;

