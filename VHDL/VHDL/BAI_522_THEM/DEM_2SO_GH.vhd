----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:31 10/24/2019 
-- Design Name: 
-- Module Name:    DEM_2SO_GH - Behavioral 
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

entity DEM_2SO_GH is
    Port ( CKHT : 		in  STD_LOGIC;
           RST : 			in  STD_LOGIC;
           ENA_DB : 		in  STD_LOGIC;
           ENA_SS : 		in  STD_LOGIC;
			  ENA_UD :     out  STD_LOGIC;
			  DONVI_GH_T : 	IN STD_LOGIC_VECTOR(3 DOWNTO 0 );
			  CHUC_GH_T  : 	IN STD_LOGIC_VECTOR( 3 DOWNTO 0);
			  DONVI_GH_D : 	IN STD_LOGIC_VECTOR(3 DOWNTO 0 );
			  CHUC_GH_D  : 	IN STD_LOGIC_VECTOR( 3 DOWNTO 0);
           DONVI : 		out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC : 		out  STD_LOGIC_VECTOR (3 downto 0));
end DEM_2SO_GH;

architecture Behavioral of DEM_2SO_GH is
SIGNAL DONVI_R, DONVI_N : 	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_R, CHUC_N :	 	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ENA_UD_R, ENA_UD_N : STD_LOGIC;
begin
	-- KHOI  REGISTER
	PROCESS(CKHT, RST,DONVI_GH_D,CHUC_GH_D)
	BEGIN
		IF RST = '1' THEN DONVI_R <= DONVI_GH_D ;
								CHUC_R  <= CHUC_GH_D ;
								ENA_UD_R <= '0';
		ELSIF FALLING_EDGE(CKHT) THEN DONVI_R <= DONVI_N ;
												CHUC_R <= CHUC_N ;
												ENA_UD_R <= ENA_UD_N;
		END IF;
	END PROCESS;
---------------------------------------------------------------
	ENA_UD_N <= '0' WHEN (DONVI_R =X"0" AND CHUC_R = X"0") ELSE
	            '1' WHEN (DONVI_R =X"9" AND CHUC_R = X"9") ELSE
					ENA_UD_R;
   ENA_UD <= ENA_UD_R;	--- KHOI TAO TRANG THAI KE
------------------------------------------------------------------


	PROCESS(ENA_UD_N, DONVI_R, CHUC_R, ENA_SS, ENA_DB, CHUC_GH_T, DONVI_GH_T, CHUC_GH_D, DONVI_GH_D)
	BEGIN
		DONVI_N <= DONVI_R;
		CHUC_N <= CHUC_R;
		IF ENA_DB = '1' THEN -- DEM LEN
			IF (ENA_SS ='1' AND ENA_UD_N = '0') THEN 
				IF DONVI_R /= X"9" THEN 	DONVI_N <= DONVI_R + 1 ;
				ELSE 
			      DONVI_N <= X"0";
					IF CHUC_R /= X"9" THEN 	CHUC_N <= CHUC_R + 1;
					ELSE                    CHUC_N <= X"0";
					END IF;
				END IF;
			END IF;
		END IF;
	--- SET GIOI HAN	
		IF CHUC_R = CHUC_GH_T AND DONVI_R = DONVI_GH_T AND ENA_DB = '1' THEN  CHUC_N <= CHUC_GH_D;
																								    DONVI_N<= DONVI_GH_D;
		END IF;
---------------------------------------------------------------------------------------------------
		IF ENA_DB = '1' THEN -- DEM LEN
			IF (ENA_SS ='1' AND ENA_UD_N = '1') THEN 
				IF DONVI_R /= X"0" THEN 	DONVI_N <= DONVI_R - 1 ;
				ELSE 
			      DONVI_N <= X"9";
					IF CHUC_R /= X"0" THEN 	CHUC_N <= CHUC_R - 1;
					ELSE                    CHUC_N <= X"9";
					END IF;
				END IF;
			END IF;
		END IF;
	--- SET GIOI HAN	
		IF CHUC_R = CHUC_GH_D AND DONVI_R = DONVI_GH_D AND ENA_DB = '1' THEN 	CHUC_N <= CHUC_GH_T;
																								      DONVI_N<= DONVI_GH_T;
		END IF;
	
	END PROCESS;
	

	-- OUTPUT
	DONVI <= DONVI_R;
	CHUC <= CHUC_R;


end Behavioral;

