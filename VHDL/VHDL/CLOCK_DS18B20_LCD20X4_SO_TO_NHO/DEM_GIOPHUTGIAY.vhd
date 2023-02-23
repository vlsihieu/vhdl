----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:20:49 09/27/2019 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DEM_GIOPHUTGIAY is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           GIO : out  STD_LOGIC_VECTOR (4 downto 0);
           PHUT : out  STD_LOGIC_VECTOR (5 downto 0);
           GIAY : out  STD_LOGIC_VECTOR (5 downto 0));
end DEM_GIOPHUTGIAY;

architecture Behavioral of DEM_GIOPHUTGIAY is

SIGNAL GIAY_R, GIAY_N: STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL PHUT_R, PHUT_N: STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL GIO_R, GIO_N:   STD_LOGIC_VECTOR(4 DOWNTO 0);

begin

--REGISTER
	PROCESS(CKHT,RST)
	BEGIN
		IF 	RST='1'	THEN	GIAY_R		<= (OTHERS => '0');
									PHUT_R		<= (OTHERS => '0');
									GIO_R			<= (OTHERS => '0');
		ELSIF	FALLING_EDGE(CKHT)	THEN
									GIAY_R		<= GIAY_N;
									PHUT_R		<= PHUT_N;
									GIO_R			<= GIO_N;
		END IF;
	END PROCESS;

--NEXT STATE LOGIC
	PROCESS(GIAY_R, ENA_DB)
	BEGIN
		GIAY_N	<= GIAY_R;
		IF ENA_DB = '1' THEN
			IF GIAY_R = "111011" THEN	GIAY_N	<= (OTHERS => '0');
			ELSE								GIAY_N	<= GIAY_R + 1;
			END IF;
		END IF;
	END PROCESS;
	
	PROCESS(GIAY_R, PHUT_R, ENA_DB)
	BEGIN
		PHUT_N	<= PHUT_R;
		IF ENA_DB = '1' AND GIAY_R = "111011" THEN
			IF PHUT_R = "111011" THEN	PHUT_N	<= (OTHERS => '0');
			ELSE								PHUT_N	<= PHUT_R + 1;
			END IF;
		END IF;
	END PROCESS;
	
	PROCESS(GIAY_R, PHUT_R, GIO_R, ENA_DB)
	BEGIN
		GIO_N	<= GIO_R;
		IF ENA_DB = '1' AND GIAY_R = "111011" AND PHUT_R = "111011" THEN
			IF GIO_R = "10111"	THEN	GIO_N	<= (OTHERS => '0');
			ELSE								GIO_N	<= GIO_R + 1;
			END IF;
		END IF;
	END PROCESS;

--OUTPUT LOGIC
	GIAY	<= GIAY_R;
	PHUT	<= PHUT_R;
	GIO	<= GIO_R;

end Behavioral;

