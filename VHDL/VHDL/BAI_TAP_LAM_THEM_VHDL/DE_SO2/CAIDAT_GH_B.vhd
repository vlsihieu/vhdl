----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:02:02 10/24/2019 
-- Design Name: 
-- Module Name:    DEM_GH_UD_2BTN - Behavioral 
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

entity CAIDAT_GH_B is
    Port ( CKHT : in  STD_LOGIC;
           ENA_DW : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  ENA_SS : IN STD_LOGIC;
           DONVI_GH: out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC_GH: out  STD_LOGIC_VECTOR (3 downto 0));
end CAIDAT_GH_B ;

architecture Behavioral of CAIDAT_GH_B  is
SIGNAL DONVI_R, DONVI_N : 	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_R, CHUC_N :	 	STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
	-- KHOI  REGISTER
	PROCESS(CKHT, RST)
	BEGIN
		IF RST = '1' THEN DONVI_R <= X"7" ;
								CHUC_R  <= X"2" ;
		ELSIF FALLING_EDGE(CKHT) THEN DONVI_R <= DONVI_N ;
												CHUC_R <= CHUC_N ;
		END IF;
	END PROCESS;
	
	--- KHOI TAO TRANG THAI KE
	PROCESS( DONVI_R, CHUC_R, ENA_DW,ENA_SS)
	BEGIN
		DONVI_N <= DONVI_R;
		CHUC_N <= CHUC_R;
	------ KHOI DEM LEN
    IF ENA_SS = '0' THEN
		IF ENA_DW = '1' THEN -- DEM LEN
			IF DONVI_R /= X"0" THEN 	DONVI_N <= DONVI_R - 1 ;
			ELSE 
			   DONVI_N <= X"9";
				IF CHUC_R /= X"0" THEN 	CHUC_N <= CHUC_R - 1;
				ELSE                    CHUC_N <= X"9";
				END IF;
			END IF;
		END IF;
	 ELSE
	   DONVI_N <= DONVI_R;
		CHUC_N <= CHUC_R;
	 END IF;
	------ SET GIOI HAN DEM LEN
		IF (CHUC_R = X"1" AND DONVI_R = X"5" AND ENA_DW = '1' AND ENA_SS = '0')THEN 	CHUC_N <= X"2";
																						                  DONVI_N<= X"7";
		END IF;
	
	END PROCESS;
	
	-- OUTPUT
	DONVI_GH<= DONVI_R;
	CHUC_GH<= CHUC_R;

end Behavioral;

