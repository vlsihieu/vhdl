----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:09:51 11/14/2019 
-- Design Name: 
-- Module Name:    DO_ND_DS18B20_HT_7DOAN - Behavioral 
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

entity DO_ND_DS18B20_HT_7DOAN is
    Port ( CKHT : in  STD_LOGIC;
           DS18B20 : inout	  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (3 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end DO_ND_DS18B20_HT_7DOAN;

architecture Behavioral of DO_ND_DS18B20_HT_7DOAN is
SIGNAL DC_8LED :				STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : 			STD_LOGIC_VECTOR( 7 DOWNTO 0);

SIGNAL ENA1KHZ, RST : 		STD_LOGIC;
SIGNAL DS_PRESENT : 			STD_LOGIC;
SIGNAL DONVI, CHUC, TRAM : STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL DV, CH :            STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL THP : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LED0, LED1, LED2 : 	STD_LOGIC_VECTOR( 3 DOWNTO 0); -- LED SSEG
SIGNAL NHIETDO : 				STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL TEMPERATURE :  		STD_LOGIC_VECTOR(11 DOWNTO 0);
begin


	RST 		<= not BTN0;
	DC_8LED 	<= "11111011";
	
	NHIETDO 	<= TEMPERATURE(11 DOWNTO 4);
	LED 		<= TEMPERATURE( 3 DOWNTO 0);
	THP      <= TEMPERATURE( 3 DOWNTO 0);
	IC1: ENTITY WORK.DS18B20_TEMPERATURE
		PORT MAP(	CKHT	=> CKHT,
						RST			=> RST,
						DS18B20		=> DS18B20,
						DS_PRESENT	=> DS_PRESENT,
						TEMPERATURE	=> TEMPERATURE);
						
		PROCESS(DS_PRESENT, DONVI, CHUC, TRAM)
		BEGIN
			IF DS_PRESENT = '0' THEN	LED0	<= DONVI;
												LED1	<= CHUC;
												LED2	<= TRAM;
			ELSE								LED0	<= X"E";
												LED1	<= X"E";
												LED2	<= X"E";
			END IF;
		END PROCESS;
		
		ENA_8LED		<= X"0F" WHEN LED2 = X"0" ELSE
							X"1F" ;
							
	IC2: ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ);
									
	IC3: ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP(	SOHEX8BIT	=> NHIETDO,
						DONVI			=> DONVI,
						CHUC			=> CHUC,
						TRAM			=> TRAM);

	IC31: ENTITY WORK.HEXTOBCD_4BIT
		PORT MAP(	SOHEX4BIT	=> THP,
						DONVI			=> DV,
						CHUC			=> CH
						);	
						
	IC4: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DV,
						LED71		=> CH,
						LED72		=> LED0,
						LED73		=> LED1,
						LED74		=> LED2,
						LED75		=> X"F",
						LED76		=> X"F",
						LED77		=> X"F",
						DC_8LED	=> DC_8LED,
						ENA_8LED	=> ENA_8LED,
						ANODE		=> ANODE,
						SSEG		=> SSEG);

end Behavioral;

