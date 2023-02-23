----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:16:38 10/07/2019 
-- Design Name: 
-- Module Name:    DEM_2_SO_GH - Behavioral 
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

entity DEM_2_SO_GH is
    Port ( CKHT : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           ENA_SS : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  DONVI_GH, CHUC_GH : IN  STD_LOGIC_VECTOR (3 downto 0);
           DONVI : out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC : out  STD_LOGIC_VECTOR (3 downto 0));
end DEM_2_SO_GH;

architecture Behavioral of DEM_2_SO_GH is
SIGNAL DONVI_N, DONVI_R, CHUC_N, CHUC_R: STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
	
	PROCESS(CKHT, RST)
		BEGIN
			IF RST = '1' THEN DONVI_R 	<= (OTHERS => '0');
									CHUC_R 	<= (OTHERS => '0');
			ELSIF FALLING_EDGE(CKHT) THEN DONVI_R 	<= DONVI_N;
													CHUC_R 	<= CHUC_N;
			END IF;
		END PROCESS;
	
	PROCESS(DONVI_R, CHUC_R, ENA_DB, ENA_SS, DONVI_GH, CHUC_GH)
		BEGIN
			DONVI_N 	<= DONVI_R;
			CHUC_N 	<= CHUC_R;
			
			IF ENA_DB = '1' THEN
				IF ENA_SS = '1' THEN
					IF DONVI_R = DONVI_GH AND CHUC_R = CHUC_GH	THEN 
														DONVI_N <= X"0";
													   CHUC_N  <= X"0";
					ELSE							  
					IF DONVI_R /= X"9" THEN DONVI_N   <= DONVI_R + 1;
					ELSE						   DONVI_N	 <= X"0";
						IF CHUC_R /= X"9" THEN  CHUC_N    <= CHUC_R + 1;
						ELSE						   CHUC_N	 <= X"0";
						END IF;

					END IF;

					END IF;
				END IF;
			END IF;
		END PROCESS;
		
	DONVI <= DONVI_R;
	CHUC	<= CHUC_R;
						
end Behavioral;

