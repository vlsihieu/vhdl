----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:20:08 10/12/2019 
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
    Port ( CKHT : 		in  STD_LOGIC;
           ENA_DB : 		in  STD_LOGIC;
           RST,SW0 : 	in  STD_LOGIC;
           GIAY, PHUT : out  STD_LOGIC_VECTOR (5 downto 0);
           GIO : 			out  STD_LOGIC_VECTOR (4 downto 0));
end DEM_GIOPHUTGIAY;

architecture Behavioral of DEM_GIOPHUTGIAY is

SIGNAL GIAY_R, GIAY_N: STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL PHUT_R, PHUT_N: STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL GIO_R, GIO_N:   STD_LOGIC_VECTOR(4 DOWNTO 0);

begin

	PROCESS(CKHT, RST)
		BEGIN
			IF RST = '1' THEN GIAY_R 	<= (OTHERS => '0');
									PHUT_R 	<= "100011";
									GIO_R 	<= "01101";
									
			ELSIF FALLING_EDGE(CKHT) THEN GIAY_R 	<= GIAY_N;
													PHUT_R 	<= PHUT_N;
													GIO_R 	<= GIO_N;
			END IF;
		END PROCESS;
	
	PROCESS(GIAY_R, ENA_DB,SW0)
		BEGIN
			GIAY_N 	<= GIAY_R;
			IF ENA_DB = '1' AND SW0 = '0' THEN
				IF GIAY_R = "111011"	THEN GIAY_N <= (OTHERS => '0');
				ELSE							  GIAY_N <= GIAY_R + 1;
				END IF;
			ELSIF ENA_DB = '1' AND SW0 = '1' THEN
				IF GIAY_R = "000000"	THEN GIAY_N <= "111011";
				ELSE							  GIAY_N <= GIAY_R - 1;
				END IF;
			END IF;
		END PROCESS;
		
	PROCESS(GIAY_R, PHUT_R, ENA_DB,SW0)
		BEGIN 
			PHUT_N 	<= PHUT_R;
			IF ENA_DB = '1' AND SW0 = '0' AND GIAY_R = "111011" THEN
				IF PHUT_R = "111011"	THEN PHUT_N <= (OTHERS => '0');
				ELSE							  PHUT_N <= PHUT_R + 1;
				END IF;
			ELSIF ENA_DB = '1' AND SW0 = '1' AND GIAY_R = "000000" THEN
				IF PHUT_R = "111011"	THEN PHUT_N <= (OTHERS => '0');
				ELSE							  PHUT_N <= PHUT_R + 1;
				END IF;
			END IF;
		END PROCESS;
	
	PROCESS(GIAY_R, PHUT_R, GIO_R, ENA_DB)
		BEGIN
			GIO_N 	<= GIO_R;
			IF ENA_DB = '1' AND GIAY_R = "111011" AND PHUT_R = "111011" THEN
				IF GIO_R = "111011"	THEN GIO_N <= (OTHERS => '0');
				ELSE							  GIO_N <= GIO_R + 1;
				END IF;
			END IF;
		END PROCESS;
	
	GIAY	<= GIAY_R;
	PHUT	<= PHUT_R;
	GIO	<= GIO_R;
	
end Behavioral;

