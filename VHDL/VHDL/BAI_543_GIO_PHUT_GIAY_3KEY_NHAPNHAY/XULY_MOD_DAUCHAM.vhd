----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:43:58 11/01/2016 
-- Design Name: 
-- Module Name:    XULY_MOD_DAUCHAM - Behavioral 
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
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity XULY_MOD_DAUCHAM_NHAP_NHAY is
    Port ( CKHT, ENA_DB	:  in  STD_LOGIC;
			  ENA2HZ : 			in  STD_LOGIC;
			  ENA_UP, ENA_DW: in  STD_LOGIC;
           GIATRI_MOD :    out  STD_LOGIC_VECTOR (1 downto 0);
			  ENA_GIAIMA_8LED : out  STD_LOGIC_VECTOR (7 downto 0);
           DAU_CHAM_8LED : out  STD_LOGIC_VECTOR (7 downto 0));
end XULY_MOD_DAUCHAM_NHAP_NHAY;

architecture Behavioral of XULY_MOD_DAUCHAM_NHAP_NHAY is
SIGNAL GIATRI_MOD_REG: STD_LOGIC_VECTOR( 1 DOWNTO 0) :="00";
SIGNAL GIATRI_MOD_NEXT: STD_LOGIC_VECTOR( 1 DOWNTO 0);
SIGNAL ENAGM_8LED_REG : STD_LOGIC_VECTOR (7 downto 0):=X"FF";
SIGNAL ENAGM_8LED_NEXT : STD_LOGIC_VECTOR (7 downto 0);
SIGNAL DLNN_REG  :STD_LOGIC_VECTOR (4 downto 0):="00000";
SIGNAL DLNN_NEXT :STD_LOGIC_VECTOR (4 downto 0);
begin
	PROCESS(CKHT)
		begin
			IF FALLING_EDGE(CKHT) THEN GIATRI_MOD_REG <= GIATRI_MOD_NEXT;
												ENAGM_8LED_REG <= ENAGM_8LED_NEXT;
												DLNN_REG			<= DLNN_NEXT;
			END IF;
	END PROCESS;

	GIATRI_MOD_NEXT <= GIATRI_MOD_REG + 1 WHEN ENA_DB = '1' ELSE 
							  "00" WHEN DLNN_REG = "10100" ELSE
							  GIATRI_MOD_REG;
	
	
	PROCESS (GIATRI_MOD_REG, ENA_UP , ENA_DW, ENA2HZ,ENAGM_8LED_REG, DLNN_REG  )
	BEGIN
		ENAGM_8LED_NEXT <= ENAGM_8LED_REG;
		DLNN_NEXT		 <= DLNN_REG;
		IF GIATRI_MOD_REG = "01" THEN
			IF ( ENA_UP ='0' AND ENA_DW = '0' ) THEN
				IF ENA2HZ ='1' THEN
					ENAGM_8LED_NEXT <= "110110" & NOT ENAGM_8LED_REG( 1 DOWNTO 0);
					DLNN_NEXT <= DLNN_REG + 1;
				END IF;
			ELSE ENAGM_8LED_NEXT <= X"DB";
				  DLNN_NEXT <= (OTHERS => '0');
		   END IF;
			
		ELSIF GIATRI_MOD_REG = "10" THEN
			IF ( ENA_UP ='0' AND ENA_DW = '0' ) THEN
				IF ENA2HZ ='1' THEN
					ENAGM_8LED_NEXT <= "110" & NOT ENAGM_8LED_REG( 4 DOWNTO 3) & "011" ;
					DLNN_NEXT <= DLNN_REG + 1;
				END IF;
			ELSE ENAGM_8LED_NEXT <= X"DB";
				  DLNN_NEXT <= (OTHERS => '0');
		   END IF;
		
		ELSIF GIATRI_MOD_REG = "11" THEN
			IF ( ENA_UP ='0' AND ENA_DW = '0' ) THEN
				IF ENA2HZ ='1' THEN
					ENAGM_8LED_NEXT <=  NOT ENAGM_8LED_REG( 7 DOWNTO 6) & "011011" ;
					DLNN_NEXT <= DLNN_REG + 1;
				END IF;
			ELSE ENAGM_8LED_NEXT <= X"DB";
				  DLNN_NEXT <= (OTHERS => '0');
				  
			END IF;
		
		ELSE 	  ENAGM_8LED_NEXT <= X"DB";
				  DLNN_NEXT <= (OTHERS => '0');
		END IF;	
		END PROCESS;
		
		PROCESS( GIATRI_MOD_REG)
		BEGIN
			CASE GIATRI_MOD_REG IS
				WHEN "01" => DAU_CHAM_8LED <= X"FE";
				WHEN "10" => DAU_CHAM_8LED <= X"F7";
				WHEN "11" => DAU_CHAM_8LED <= X"BF";
				WHEN OTHERS => DAU_CHAM_8LED <= X"FF";
			END CASE;
			
		END PROCESS;
	
	ENA_GIAIMA_8LED <= ENAGM_8LED_REG;
	GIATRI_MOD <= GIATRI_MOD_REG;
	
end Behavioral;

