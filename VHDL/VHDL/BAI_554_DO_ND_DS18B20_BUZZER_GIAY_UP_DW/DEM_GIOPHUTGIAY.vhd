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
    Port ( CKHT,ENA_DB,RST : in  STD_LOGIC;
           GIAY : out  STD_LOGIC_VECTOR (5 downto 0)
           );
end DEM_GIOPHUTGIAY;

architecture Behavioral of DEM_GIOPHUTGIAY is
SIGNAL GIAY_REG, GIAY_NEXT :STD_LOGIC_VECTOR(5 DOWNTO 0);

begin
	PROCESS(CKHT,RST)
	BEGIN
		IF RST = '1' THEN GIAY_REG <= (OTHERS => '0');
								
		ELSIF FALLING_EDGE(CKHT) THEN 
								GIAY_REG <= GIAY_NEXT;
							
		END IF;
	END PROCESS ;

	PROCESS(GIAY_REG,ENA_DB)
	BEGIN
		GIAY_NEXT <= GIAY_REG;
		IF ENA_DB = '1' THEN
			IF GIAY_REG = "111011" THEN GIAY_NEXT <= (OTHERS => '0');
			ELSE								 GIAY_NEXT <= GIAY_REG + 1;
			END IF;
		END IF;
	END PROCESS ; 

	

	GIAY <= GIAY_REG;

end Behavioral;






