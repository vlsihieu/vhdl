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

entity DIEUKHIEN_CHOPHEP is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           OE : out  STD_LOGIC_VECTOR(3 DOWNTO 0)); -- CHINH SUA KHI THEM BOT CHUONG TRINH
end DIEUKHIEN_CHOPHEP;

architecture Behavioral of DIEUKHIEN_CHOPHEP is
SIGNAL DEM_R, DEM_N : INTEGER RANGE 0 TO 47 := 0; -- CHINH SUA KHI THEM BOT CHUONG TRINH
begin
	PROCESS(CKHT, RST)
	BEGIN
		IF 	RST = '1' 					THEN DEM_R <= 0;
		ELSIF FALLING_EDGE(CKHT) 	THEN DEM_R <= DEM_N;
		END IF;
	END PROCESS;
	
	DEM_N <= 0 			WHEN DEM_R = 47 AND ENA_DB = '1' ELSE -- CHINH SUA KHI THEM BOT CHUONG TRINH
				DEM_R +1 WHEN ENA_DB = '1' 					ELSE 
				DEM_R ;
				
	PROCESS(DEM_R, RST)
	BEGIN
		OE <= "0000"; 
		IF 	RST = '1' 	THEN OE <= "0000";  -- CHINH SUA KHI THEM BOT CHUONG TRINH
		ELSIF DEM_R < 16  THEN OE <= "0001";  -- CHINH SUA KHI THEM BOT CHUONG TRINH
		ELSIF DEM_R < 32  THEN OE <= "0010";  -- CHINH SUA KHI THEM BOT CHUONG TRINH
		ELSIF DEM_R < 40  THEN OE <= "0100";
		ELSIF DEM_R < 48  THEN OE <= "1000";
		END IF;
	END PROCESS;


end Behavioral;

