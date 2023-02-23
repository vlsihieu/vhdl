----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:02:20 10/07/2019 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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

entity CAI_GIOI_HAN_NÐ is
    Port ( CKHT : in  STD_LOGIC;
           ENA_UP : in  STD_LOGIC;
           ENA_DW : in  STD_LOGIC;
			  ENA_DB: in  STD_LOGIC;
           RST : in  STD_LOGIC;
           DONVI_GH : out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC_GH : out  STD_LOGIC_VECTOR (3 downto 0));
end CAI_GIOI_HAN_NÐ;

architecture Behavioral of CAI_GIOI_HAN_NÐ is
SIGNAL DONVI_GH_N, DONVI_GH_R, CHUC_GH_N, CHUC_GH_R: STD_LOGIC_VECTOR(3 DOWNTO 0);
begin

	PROCESS(CKHT, RST)
		BEGIN
			IF RST = '1' THEN DONVI_GH_R 	<= X"1";
									CHUC_GH_R 	<= X"3";
			ELSIF FALLING_EDGE(CKHT) THEN DONVI_GH_R 	<= DONVI_GH_N;
													CHUC_GH_R 	<= CHUC_GH_N;
			END IF;
		END PROCESS;
	
	PROCESS(DONVI_GH_R, CHUC_GH_R, ENA_UP, ENA_DW,ENA_DB)
		BEGIN
		
			DONVI_GH_N 	<= DONVI_GH_R;
			CHUC_GH_N 	<= CHUC_GH_R;
			
				IF ENA_UP = '1' AND ENA_DB = '1' THEN
					IF DONVI_GH_R = X"1" AND CHUC_GH_R = X"4" 
														THEN DONVI_GH_N <= DONVI_GH_R;
															  CHUC_GH_N  <= CHUC_GH_R;
					ELSE							
						IF DONVI_GH_R /= X"9" 	THEN DONVI_GH_N <= DONVI_GH_R + 1;
						ELSE							  	  DONVI_GH_N <= X"0";
							IF CHUC_GH_R /= X"9" THEN CHUC_GH_N  <= CHUC_GH_R + 1;
							ELSE							  CHUC_GH_N  <= X"0";
							END IF;
						END IF;
					END IF;		
				ELSIF ENA_DW = '1' AND ENA_DB = '1' THEN
					IF DONVI_GH_R = X"0" AND CHUC_GH_R = X"2"
														THEN DONVI_GH_N <= DONVI_GH_R;
															  CHUC_GH_N  <= CHUC_GH_R;
					ELSE
						IF DONVI_GH_R /= X"0" 	THEN DONVI_GH_N <= DONVI_GH_R - 1;
						ELSE							  	  DONVI_GH_N <= X"9";
							IF CHUC_GH_R /= X"0" THEN CHUC_GH_N  <= CHUC_GH_R - 1;
							ELSE							  CHUC_GH_N  <= X"9";
							END IF;
						END IF;
					END IF;
				END IF;
		END PROCESS;
		
	DONVI_GH <= DONVI_GH_R;
	CHUC_GH	<= CHUC_GH_R;
						
end Behavioral;

