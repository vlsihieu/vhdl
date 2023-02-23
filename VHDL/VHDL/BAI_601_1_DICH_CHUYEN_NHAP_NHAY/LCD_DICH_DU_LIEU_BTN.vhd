library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LCD_DICH_DU_LIEU_BTN is
    Port ( CKHT: in  STD_LOGIC;
	        RST : in  STD_LOGIC;
			  ena_dc : in  STD_LOGIC;--ENA2HZ
			  ENA_SS : in  STD_LOGIC;
			  LCD_H3 : in  STD_LOGIC_VECTOR (159 downto 0);
			  H3 : out  STD_LOGIC_VECTOR (159 downto 0)
			  );
end LCD_DICH_DU_LIEU_BTN;

architecture Behavioral of LCD_DICH_DU_LIEU_BTN is
--SIGNAL H2_REG , H2_NEXT: STD_LOGIC_VECTOR (159 downto 0);
SIGNAL H3_REG , H3_NEXT: STD_LOGIC_VECTOR (159 downto 0);
--SIGNAL H4_REG , H4_NEXT: STD_LOGIC_VECTOR (159 downto 0);
begin
--TAO XUNG CK_2HZ
	PROCESS(CKHT,RST,LCD_H3 )
	BEGIN
		IF RST = '1' THEN 
--		                  H2_REG <= LCD_H2;
								H3_REG <= LCD_H3;
--								H4_REG <= LCD_H4;
		ELSIF FALLING_EDGE(CKHT) THEN 
--		                              H2_REG     <= H2_NEXT;
												H3_REG     <= H3_NEXT;
--												H4_REG     <= H4_NEXT;
		END IF;
	END PROCESS;
-------------------------------------------------------------------------	
--NEXT
	PROCESS(ENA_DC, ENA_SS , H3_REG)-- DIEU KHIEN HANG 2 , 3
	BEGIN
--		H2_NEXT <= H2_REG;
		H3_NEXT <= H3_REG;
		IF ENA_SS = '1' THEN
			IF ENA_DC = '1' THEN 
				H3_NEXT <= H3_REG(151 DOWNTO 0) & H3_REG(159 DOWNTO 152);--DICH PST HANG3
--				H2_NEXT <= H2_REG(7 DOWNTO 0) & H2_REG(159 DOWNTO 8); -- DICH TSP HANG2
			END IF;
		END IF;
	END PROCESS;		  
--OUTPUT
--	H2 <= H2_REG;
	H3 <= H3_REG;
--	H4 <= H4_REG;
end Behavioral;