
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

//-- Uncomment the following library declaration if using
//-- arithmetic functions with Signed or Unsigned values
//--use IEEE.NUMERIC_STD.ALL;
//
//-- Uncomment the following library declaration if instantiating
//-- any Xilinx primitives in this code.
//--library UNISIM;
//--use UNISIM.VComponents.all;

entity DEM_2SO is
    Port ( CKHT : 	in  STD_LOGIC;
           RST : 		in  STD_LOGIC;
           ENA_DB : 	in  STD_LOGIC;
           ENA_SS : 	in  STD_LOGIC;
           DONVI : 	out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC : 	out  STD_LOGIC_VECTOR (3 downto 0));
end DEM_2SO;

architecture Behavioral of DEM_2SO is
SIGNAL DONVI_R, DONVI_N : 	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_R, CHUC_N :	 	STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
	-- KHOI  REGISTER
	PROCESS(CKHT, RST)
	BEGIN
		IF RST = '1' THEN DONVI_R <= "0000" ;
								CHUC_R <= "0000" ;
		ELSIF FALLING_EDGE(CKHT) THEN DONVI_R <= DONVI_N ;
												CHUC_R <= CHUC_N ;
		END IF;
	END PROCESS;
	--- KHOI TAO TRANG THAI KE
	PROCESS( DONVI_R, CHUC_R, ENA_SS, ENA_DB)
	BEGIN
		DONVI_N <= DONVI_R;
		CHUC_N <= CHUC_R;
		IF ENA_DB = '1' THEN
			IF ENA_SS ='1' THEN -- CHO PHEP ENA_SS  = '1' , NGUNG ENA_SS = '0'
				IF DONVI_R /= X"9" THEN 	DONVI_N <= DONVI_R + 1 ;
				ELSE 
													DONVI_N <= X"0";
					IF CHUC_R /= X"9" THEN 	CHUC_N <= CHUC_R + 1;
					ELSE
													CHUC_N <= X"0";
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	
	-- OUTPUT
	DONVI <= DONVI_R;
	CHUC <= CHUC_R;

end Behavioral;

