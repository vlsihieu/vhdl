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

entity XULY_MOD_DAUCHAM_NHAPNHAY is
    Port ( CKHT, ENA_DB	:  in  STD_LOGIC;
			  ENA2HZ : 			in  STD_LOGIC;
			  ENA_UP, ENA_DW: in  STD_LOGIC;
           gt_mod:    out  STD_LOGIC_VECTOR (1 downto 0);
			  ena_6led : out  STD_LOGIC_VECTOR (5 downto 0)
			  );
end XULY_MOD_DAUCHAM_NHAPNHAY;

architecture Behavioral of XULY_MOD_DAUCHAM_NHAPNHAY is
SIGNAL GIATRI_MOD_REG: STD_LOGIC_VECTOR( 1 DOWNTO 0) :="00";
SIGNAL GIATRI_MOD_NEXT: STD_LOGIC_VECTOR( 1 DOWNTO 0);
SIGNAL ENAGM_8LED_REG : STD_LOGIC_VECTOR (5 downto 0):="111111";
SIGNAL ENAGM_8LED_NEXT : STD_LOGIC_VECTOR (5 downto 0);
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
					ENAGM_8LED_NEXT <= "1111" & NOT ENAGM_8LED_REG( 1 DOWNTO 0);
					DLNN_NEXT <= DLNN_REG + 1;
				END IF;
			ELSE ENAGM_8LED_NEXT <= "111111";
				  DLNN_NEXT <= (OTHERS => '0');
		   END IF;
			
		ELSIF GIATRI_MOD_REG = "10" THEN
			IF ( ENA_UP ='0' AND ENA_DW = '0' ) THEN
				IF ENA2HZ ='1' THEN
					ENAGM_8LED_NEXT <= "11" & NOT ENAGM_8LED_REG( 3 DOWNTO 2) & "11" ;
					DLNN_NEXT <= DLNN_REG + 1;
				END IF;
			ELSE ENAGM_8LED_NEXT <= "111111";
				  DLNN_NEXT <= (OTHERS => '0');
		   END IF;
		
		ELSIF GIATRI_MOD_REG = "11" THEN
			IF ( ENA_UP ='0' AND ENA_DW = '0' ) THEN
				IF ENA2HZ ='1' THEN
					ENAGM_8LED_NEXT <=  NOT ENAGM_8LED_REG( 5 DOWNTO 4) & "1111" ;
					DLNN_NEXT <= DLNN_REG + 1;
				END IF;
			ELSE ENAGM_8LED_NEXT <= "111111";
				  DLNN_NEXT <= (OTHERS => '0');
				  
			END IF;
		
		ELSE 	  ENAGM_8LED_NEXT <= "111111";
				  DLNN_NEXT <= (OTHERS => '0');
		END IF;	
		END PROCESS;
		
	
	ena_6led<= ENAGM_8LED_REG;
	gt_mod <= GIATRI_MOD_REG;
	
end Behavioral;

