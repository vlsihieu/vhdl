----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:28:13 10/23/2019 
-- Design Name: 
-- Module Name:    DEM_4SO - Behavioral 
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

entity DEM_4SO is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_SS : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           DONVI : out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC : out  STD_LOGIC_VECTOR (3 downto 0);
           TRAM : out  STD_LOGIC_VECTOR (3 downto 0);
           NGHIN : out  STD_LOGIC_VECTOR (3 downto 0));
end DEM_4SO;

architecture Behavioral of DEM_4SO is
SIGNAL DONVI_R, DONVI_N : STD_LOGIC_VECTOR(3 DOWNTO 0); -- CHINH SUA
SIGNAL CHUC_R, CHUC_N : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL TRAM_R, TRAM_N : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL NGHIN_R, NGHIN_N : STD_LOGIC_VECTOR(3 DOWNTO 0);
begin

	-- KHOI  REGISTER
	PROCESS(CKHT, RST)
	BEGIN
		IF RST = '1' THEN DONVI_R <= "0000" ; -- CHINH SUA
								CHUC_R <= "0000" ;
								TRAM_R <= "0000" ;
								NGHIN_R <= "0000" ;
		ELSIF FALLING_EDGE(CKHT) THEN DONVI_R <= DONVI_N ; -- CHINH SUA
												CHUC_R <= CHUC_N ;
												TRAM_R <= TRAM_N ;
												NGHIN_R<= NGHIN_N;
		END IF;
	END PROCESS;
	--- KHOI TAO TRANG THAI KE
	PROCESS( DONVI_R, CHUC_R, TRAM_R, NGHIN_R, ENA_SS, ENA_DB) -- CHINH SUA
	BEGIN
		DONVI_N 	<= DONVI_R;  -- CHINH SUA
		CHUC_N 	<= CHUC_R; 
		TRAM_N 	<= TRAM_R; 
		NGHIN_N 	<= NGHIN_R;
		IF ENA_DB = '1' THEN
			IF ENA_SS ='1' THEN -- CHO PHEP ENA_SS  = '1' , NGUNG ENA_SS = '0'
				IF DONVI_R /= X"9" THEN DONVI_N <= DONVI_R + 1 ;
				ELSE 
					DONVI_N <= X"0";
					IF CHUC_R /= X"9" THEN CHUC_N <= CHUC_R + 1;
					ELSE
						CHUC_N <= X"0";
						IF TRAM_R /= X"9" THEN TRAM_N <= TRAM_R + 1;
						ELSE
							TRAM_N <= X"0";
							IF NGHIN_R /= X"9" THEN NGHIN_N <= NGHIN_R + 1;
							ELSE
								NGHIN_N <= X"0";
							END IF;
						END IF;
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	
	-- OUTPUT
	DONVI <= DONVI_R; -- CHINH SUA
	CHUC <= CHUC_R;
	TRAM <= TRAM_R;
	NGHIN <= NGHIN_R;


end Behavioral;

