----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:00:19 10/19/2019 
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
    Port ( CKHT, ENA_DB : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           GIAY : OUT  STD_LOGIC_VECTOR (5 downto 0));
end DEM_GIOPHUTGIAY;

architecture Behavioral of DEM_GIOPHUTGIAY is
SIGNAL GIAY_R, GIAY_N: STD_LOGIC_VECTOR (5 downto 0);

begin
	PROCESS(CKHT, RST)
		BEGIN
			IF RST = '1' 						THEN GIAY_R <= (OTHERS => '0');

			ELSIF FALLING_EDGE	(CKHT)	THEN GIAY_R <= GIAY_N;

			END IF;
	END PROCESS;
	
	PROCESS(ENA_DB, GIAY_R)
		BEGIN
		GIAY_N <= GIAY_R;	
			IF ENA_DB = '1' THEN
				IF GIAY_R = "111011" THEN GIAY_N <= (OTHERS => '0');
				ELSE							  GIAY_N	<=	GIAY_R + 1;
				END IF;
			END IF;
	END PROCESS;
	

GIAY	<= GIAY_R;
end Behavioral;

