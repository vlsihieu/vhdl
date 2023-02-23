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

entity DIEUKHIEN_MODE is
    Port ( CKHT   : in   STD_LOGIC;
           RST    : in   STD_LOGIC;
           ENA_DB : in   STD_LOGIC;
			  MODE   : IN   STD_LOGIC;
			  SW0    : IN   STD_LOGIC;
           OE     : out  STD_LOGIC_VECTOR(2 DOWNTO 0));
end DIEUKHIEN_MODE;

architecture Behavioral of DIEUKHIEN_MODE is
SIGNAL DEM_R, DEM_N : INTEGER RANGE 0 TO 51 := 0;
SIGNAL D_N,D_R : INTEGER RANGE 0 TO 3 := 0 ; --- MODE
begin
	PROCESS(CKHT, RST)
	BEGIN
		IF 	RST = '1' 				THEN DEM_R <= 0;
		                                D_R   <= 0;
		ELSIF FALLING_EDGE(CKHT) 	THEN DEM_R <= DEM_N;
		                                D_R   <= D_N;
		END IF;
	END PROCESS;
	
	DEM_N <= 0 			WHEN (DEM_R = 51 AND ENA_DB = '1' AND SW0 = '0')  ELSE
				DEM_R +1 WHEN (ENA_DB = '1' AND SW0 = '0') ELSE
				DEM_R ;
	D_N <= 0      WHEN (MODE = '1' AND SW0 = '1' AND D_R = 3) ELSE
	       D_R +1 WHEN (MODE = '1' AND SW0 = '1' AND D_R <3 ) ELSE
			 D_R;
	PROCESS(DEM_R, RST,D_R,SW0)
	BEGIN
		OE <= "000"; --  -- SU DUNG LENH GAN CO DIEU KIEN DC HAY KO
		IF 	 RST = '1'                THEN OE <= "000";
		ELSIF (D_R = 0 AND SW0 = '1' )  THEN OE <= "000";
		ELSIF (D_R = 1 AND SW0 = '1' )  THEN OE <= "001";
		ELSIF (D_R = 2 AND SW0 = '1' )  THEN OE <= "010";
		ELSIF (D_R = 3 AND SW0 = '1' )  THEN OE <= "100";
		ELSIF (DEM_R <22             )  THEN OE <= "001";
		ELSIF (DEM_R <44             )  THEN OE <= "010";
		ELSE                                 OE <= "100";

		END IF;
	END PROCESS;


end Behavioral;

