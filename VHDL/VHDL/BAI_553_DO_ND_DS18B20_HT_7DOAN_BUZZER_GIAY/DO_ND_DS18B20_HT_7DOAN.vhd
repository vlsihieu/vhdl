----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:36:03 11/14/2019 
-- Design Name: 
-- Module Name:    DO_ND_DS_18B20_HT_7DOAN_BUZZER - Behavioral 
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

entity DO_ND_DS_18B20_HT_7DOAN_BUZZER_GIAY is
    Port ( CKHT : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
			  BELL : OUT STD_LOGIC;
           DS18B20 : inout  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (3 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end DO_ND_DS_18B20_HT_7DOAN_BUZZER_GIAY;

architecture Behavioral of DO_ND_DS_18B20_HT_7DOAN_BUZZER_GIAY is
SIGNAL DC_8LED :				STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL ENA_8LED : 			STD_LOGIC_VECTOR( 7 DOWNTO 0);

SIGNAL ENA1KHZ, RST : 		STD_LOGIC;
SIGNAL DS_PRESENT : 			STD_LOGIC;
SIGNAL DONVI, CHUC, TRAM : STD_LOGIC_VECTOR( 3 DOWNTO 0);
SIGNAL LED0, LED1, LED2 : 	STD_LOGIC_VECTOR( 3 DOWNTO 0); -- LED SSEG
SIGNAL NHIETDO : 				STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL TEMPERATURE :  		STD_LOGIC_VECTOR(11 DOWNTO 0);
-----------------------------------------------
SIGNAL COUNT : STD_LOGIC_VECTOR(27 DOWNTO 0);
SIGNAL CH_GIAY, DV_GIAY : STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL ENA_DB : STD_LOGIC;
SIGNAL GIAY : STD_LOGIC_VECTOR (5 DOWNTO 0);
begin


	RST 		<= NOT BTN0;
	DC_8LED 	<= X"FF";
	
	NHIETDO 	<= TEMPERATURE(11 DOWNTO 4);
	LED 		<= TEMPERATURE( 3 DOWNTO 0);
	
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
		
		ENA_8LED		<= X"F3" WHEN LED2 = X"0" ELSE
							X"F7" ;

	PROCESS(CKHT)
	BEGIN
		IF FALLING_EDGE (CKHT) THEN 	
				COUNT <= COUNT  + 1;
		END IF;
	END PROCESS;
								
	BELL <= not ( COUNT(13) AND COUNT(24) AND COUNT(27)) WHEN  NHIETDO >= "00011100" ELSE
           '0';	
--	BELL <=  '1' WHEN NHIETDO > "00011100" ELSE
--				'0';
							
	IC2: ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT		=> CKHT,
		            ENA20HZ => ENA_DB,
						ENA1KHZ	=> ENA1KHZ);
									
	IC3: ENTITY WORK.HEXTOBCD_8BIT
		PORT MAP(	SOHEX8BIT	=> NHIETDO,
						DONVI			=> DONVI,
						CHUC			=> CHUC,
						TRAM			=> TRAM);
--- kh?i d?m giây
    IC31: ENTITY WORK.DEM_GIOPHUTGIAY
		   PORT MAP( CKHT   => CKHT,
					 RST    => RST,
					 ENA_DB => ENA_DB,
					 GIAY   => GIAY);
    IC32: ENTITY WORK.HEXTOBCD_6BIT
		PORT MAP( SOHEX6BIT => GIAY,
					 DONVI     => DV_GIAY,
					 CHUC      => CH_GIAY);						 
	IC4: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> LED0,
						LED71		=> LED1,
						LED72		=> LED2,
						LED73		=> X"0",
						LED74		=> dv_giay,
						LED75		=> ch_giay,
						LED76		=> X"8",
						LED77		=> X"2",
						DC_8LED	=> DC_8LED,
						ENA_8LED	=> ENA_8LED,
						ANODE		=> ANODE,
						SSEG		=> SSEG);

end Behavioral;

