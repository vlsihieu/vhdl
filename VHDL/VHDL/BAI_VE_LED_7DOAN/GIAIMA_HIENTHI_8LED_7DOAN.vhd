library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity GIAIMA_HIENTHI_8LED_7DOAN is
    Port ( 	LED70, LED71, LED72, LED73: in  STD_LOGIC_VECTOR (3 downto 0);
				LED74, LED75, LED76, LED77: in  STD_LOGIC_VECTOR (3 downto 0);
				ENA_GIAIMA_8LED : in  STD_LOGIC_VECTOR (7 downto 0);
				SSEG7, SSEG6, SSEG5, SSEG4: out  STD_LOGIC_VECTOR (6 downto 0);
				SSEG3, SSEG2, SSEG1, SSEG0: out  STD_LOGIC_VECTOR (6 downto 0));
end GIAIMA_HIENTHI_8LED_7DOAN;

architecture Behavioral of GIAIMA_HIENTHI_8LED_7DOAN is
begin
	
GIAIMA_HIENTHI_LED0: ENTITY WORK.GIAIMA_7DOAN_ENA
		PORT MAP(	SO_GIAIMA				=> LED70,
						ENA_GIAIMA_1LED		=> ENA_GIAIMA_8LED(0),
						SSEG						=> SSEG0);

GIAIMA_HIENTHI_LED1: ENTITY WORK.GIAIMA_7DOAN_ENA
		PORT MAP(	SO_GIAIMA				=> LED71,
						ENA_GIAIMA_1LED	=> ENA_GIAIMA_8LED(1),
						SSEG					=> SSEG1
					);

GIAIMA_HIENTHI_LED2: ENTITY WORK.GIAIMA_7DOAN_ENA
		PORT MAP(	SO_GIAIMA				=> LED72,
						ENA_GIAIMA_1LED		=> ENA_GIAIMA_8LED(2),
						SSEG						=> SSEG2);

GIAIMA_HIENTHI_LED3: ENTITY WORK.GIAIMA_7DOAN_ENA
		PORT MAP(	SO_GIAIMA				=> LED73,
						ENA_GIAIMA_1LED		=> ENA_GIAIMA_8LED(3),
						SSEG						=> SSEG3);

GIAIMA_HIENTHI_LED4: ENTITY WORK.GIAIMA_7DOAN_ENA
		PORT MAP(	SO_GIAIMA				=> LED74,
						ENA_GIAIMA_1LED		=> ENA_GIAIMA_8LED(4),
						SSEG						=> SSEG4);

GIAIMA_HIENTHI_LED5: ENTITY WORK.GIAIMA_7DOAN_ENA
		PORT MAP(	SO_GIAIMA				=> LED75,
						ENA_GIAIMA_1LED		=> ENA_GIAIMA_8LED(5),
						SSEG						=> SSEG5);

GIAIMA_HIENTHI_LED6: ENTITY WORK.GIAIMA_7DOAN_ENA
		PORT MAP(	SO_GIAIMA				=> LED76,
						ENA_GIAIMA_1LED		=> ENA_GIAIMA_8LED(6),
						SSEG						=> SSEG6);

GIAIMA_HIENTHI_LED7: ENTITY WORK.GIAIMA_7DOAN_ENA
		PORT MAP(	SO_GIAIMA				=> LED77,
						ENA_GIAIMA_1LED	=> ENA_GIAIMA_8LED(7),
						SSEG						=> SSEG7);					
						
end Behavioral;
