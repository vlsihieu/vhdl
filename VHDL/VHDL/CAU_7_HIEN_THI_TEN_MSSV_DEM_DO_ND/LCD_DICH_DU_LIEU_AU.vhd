library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LCD_DICH_DU_LIEU_AU is
    Port ( CKHT: in  STD_LOGIC;
	        RST : in  STD_LOGIC;
			  ENA_DB : in  STD_LOGIC;--ENA2HZ
--			  ENA_SS : in  STD_LOGIC;
           oe     : in std_logic_vector(3 downto 0);
			  LCD_H1 : in  STD_LOGIC_VECTOR (159 downto 0);
			  H1 : out  STD_LOGIC_VECTOR (159 downto 0)
			  );
end LCD_DICH_DU_LIEU_AU;

architecture Behavioral of LCD_DICH_DU_LIEU_AU is
SIGNAL H1_REG , H1_NEXT: STD_LOGIC_VECTOR (159 downto 0);
--SIGNAL H3_REG , H3_NEXT: STD_LOGIC_VECTOR (159 downto 0);
--SIGNAL H4_REG , H4_NEXT: STD_LOGIC_VECTOR (159 downto 0);
begin
--TAO XUNG CK_2HZ
	PROCESS(CKHT,RST,LCD_H1 )
	BEGIN
		IF RST = '1' THEN H1_REG <= LCD_H1;
--								H3_REG <= LCD_H3;
--								H4_REG <= LCD_H4;
		ELSIF FALLING_EDGE(CKHT) THEN H1_REG     <= H1_NEXT;
--												H3_REG     <= H3_NEXT;
--												H4_REG     <= H4_NEXT;
		END IF;
	END PROCESS;
-------------------------------------------------------------------------	
--NEXT
	PROCESS(ENA_DB, H1_REG,oe )-- DIEU KHIEN HANG 2 , 3
	BEGIN
		H1_NEXT <= H1_REG;
--		H3_NEXT <= H3_REG;
--		IF ENA_SS = '1' THEN
			IF ENA_DB = '1' THEN 
--				H3_NEXT <= H3_REG(151 DOWNTO 0) & H3_REG(159 DOWNTO 152);--DICH PST HANG3
            if (oe(0) = '1' or oe(1) = '1' or oe(2) = '1' or oe(3) ='1'  ) then
				 H1_NEXT <= H1_REG(7 DOWNTO 0) & H1_REG(159 DOWNTO 8); -- DICH TSP HANG2
				end if;
			END IF;
--		END IF;
	END PROCESS;		  
--OUTPUT
	H1 <= H1_REG;
--	H3 <= H3_REG;
--	H4 <= H4_REG;
end Behavioral;

