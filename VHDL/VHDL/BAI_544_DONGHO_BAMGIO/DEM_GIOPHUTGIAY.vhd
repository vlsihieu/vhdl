----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:36:45 11/03/2016 
-- Design Name: 
-- Module Name:    DEM_GIOPHUTGIAY - Behavioral 
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

entity DEM_GIOPHUTGIAY is
    Port ( CKHT,ENA_DB,RST, ENA_SS : in  STD_LOGIC;
           GIAY,PHUT : out  STD_LOGIC_VECTOR (5 downto 0);
           GIO : out  STD_LOGIC_VECTOR (4 downto 0));
end DEM_GIOPHUTGIAY;

architecture Behavioral of DEM_GIOPHUTGIAY is
SIGNAL GIAY_REG, GIAY_NEXT :STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL PHUT_REG, PHUT_NEXT :STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL GIO_REG, GIO_NEXT :STD_LOGIC_VECTOR(4 DOWNTO 0);
begin
-- REGISTER
	PROCESS(CKHT,RST)
	BEGIN
		IF RST = '1' THEN GIAY_REG <= (OTHERS => '0');
								PHUT_REG <= (OTHERS => '0');
								GIO_REG <= (OTHERS => '0');
		ELSIF FALLING_EDGE(CKHT) THEN 
								GIAY_REG <= GIAY_NEXT;
								PHUT_REG <= PHUT_NEXT;
								GIO_REG  <= GIO_NEXT;	
		END IF;
	END PROCESS ;
--NEXT STAGE LOGIC
	PROCESS(GIAY_REG,ENA_DB, ENA_SS )
	BEGIN
		GIAY_NEXT <= GIAY_REG;
	 IF ENA_SS = '1' THEN
		IF ENA_DB = '1' THEN
			IF GIAY_REG = "111011" THEN GIAY_NEXT <= (OTHERS => '0');
			ELSE								 GIAY_NEXT <= GIAY_REG + 1;
			END IF;
		END IF;
--	 ELSE  	
--		GIAY_NEXT <= GIAY_REG;
	 END IF;	
	END PROCESS ; 

	PROCESS(GIAY_REG,PHUT_REG,ENA_DB, ENA_SS)
	BEGIN
		PHUT_NEXT <= PHUT_REG;
	  IF ENA_SS = '1' THEN	
		IF ENA_DB = '1' AND GIAY_REG = "111011"  THEN 
			IF PHUT_REG = "111011" THEN PHUT_NEXT <= (OTHERS => '0');
			ELSE								 PHUT_NEXT <= PHUT_REG + 1;
			END IF;
		END IF;
--	  ELSE 
--		 PHUT_NEXT <= PHUT_REG;
	  END IF; 	
	END PROCESS ;

	PROCESS(GIAY_REG,PHUT_REG,GIO_REG,ENA_DB, ENA_SS)
	BEGIN
		GIO_NEXT <= GIO_REG;
	  IF ENA_SS = '1' THEN	
		IF ENA_DB = '1' AND GIAY_REG = "111011" AND PHUT_REG = "111011" THEN 
			IF GIO_REG = "10111" THEN GIO_NEXT <= (OTHERS => '0');
			ELSE								 GIO_NEXT <= GIO_REG + 1;
			END IF;
		END IF;
--	  ELSE
--		 GIO_NEXT <= GIO_REG;
	  END IF;	
	END PROCESS ;
-- OUTPUT LOGIC
	GIAY <= GIAY_REG;
	PHUT <= PHUT_REG;
	GIO  <= GIO_REG;
		
end Behavioral;






