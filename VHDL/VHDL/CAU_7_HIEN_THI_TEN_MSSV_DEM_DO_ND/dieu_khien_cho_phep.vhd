----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:31:14 10/02/2019 
-- Design Name: 
-- Module Name:    DIEUKHIEN_CHOPHEP - Behavioral 
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

entity DIEU_KHIEN_CHO_PHEP is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
			  ena_ss : in std_logic;
           OE : out  STD_LOGIC_VECTOR(1 DOWNTO 0)
			  );
end DIEU_KHIEN_CHO_PHEP;

architecture Behavioral of DIEU_KHIEN_CHO_PHEP is
SIGNAL DEM_R, DEM_N : INTEGER RANGE 0 TO 19 := 0;
begin
	PROCESS(CKHT, RST)
	BEGIN
		IF 	RST = '1' 					THEN DEM_R <= 0;
		ELSIF FALLING_EDGE(CKHT) 	THEN DEM_R <= DEM_N;
		END IF;
	END PROCESS;
	
	DEM_N <= 0 			WHEN DEM_R = 19 AND ENA_DB = '1' and ena_ss = '1' ELSE
				DEM_R +1 WHEN ENA_DB = '1' and ena_ss = '1' ELSE
				DEM_R ;
				
	PROCESS(DEM_R, RST)
	BEGIN
		OE <= "00"; -- CÓ C?N THI?T HAY KO -- SU DUNG LENH GAN CO DIEU KIEN DC HAY KO
		IF 	RST = '1' 	THEN OE <= "00";
		ELSIF DEM_R < 10  THEN OE <= "01";
		ELSIF DEM_R < 20  THEN OE <= "10";
		END IF;
	END PROCESS;


end Behavioral;

