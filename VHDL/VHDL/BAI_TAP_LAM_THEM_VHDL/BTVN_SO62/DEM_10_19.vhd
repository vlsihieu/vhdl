----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:50:59 10/23/2019 
-- Design Name: 
-- Module Name:    DEM_2SO - Behavioral 
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

entity DEM_10_19 is
    Port ( CKHT : 	in  STD_LOGIC;
           RST : 		in  STD_LOGIC;
           ENA_DB : 	in  STD_LOGIC;
           ENA_SS : 	in  STD_LOGIC;
			  oe   : in std_logic;
			  dl_rst : in std_logic;
           DONVI : 	out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC : 	out  STD_LOGIC_VECTOR (3 downto 0));
end DEM_10_19;

architecture Behavioral of DEM_10_19 is
SIGNAL DONVI_R, DONVI_N : 	STD_LOGIC_VECTOR(3 DOWNTO 0):=X"0";
SIGNAL CHUC_R, CHUC_N :	 	STD_LOGIC_VECTOR(3 DOWNTO 0):=X"1";
begin
	-- KHOI  REGISTER
	PROCESS(CKHT, RST,dl_rst)
	BEGIN
		IF RST = '1' or dl_rst = '1' THEN DONVI_R <= X"0" ;
								                CHUC_R <=  X"1" ;
		ELSIF FALLING_EDGE(CKHT) THEN DONVI_R <= DONVI_N ;
												CHUC_R <= CHUC_N ;
		END IF;
	END PROCESS;
	--- KHOI TAO TRANG THAI KE
	PROCESS( DONVI_R, CHUC_R, ENA_SS, ENA_DB,OE)
	BEGIN
		DONVI_N <= DONVI_R;
		CHUC_N <= CHUC_R;
		IF ENA_DB = '1'  AND ENA_SS = '1' THEN
			IF OE ='1'  THEN -- CHO PHEP ENA_SS  = '1' , NGUNG ENA_SS = '0'
			   IF (DONVI_R = X"9" AND CHUC_R = X"1") THEN DONVI_N <= DONVI_R;
			                                              CHUC_N <= CHUC_R;
				ELSIF DONVI_R /= X"9" THEN 	DONVI_N <= DONVI_R + 1 ;
				ELSE 
					DONVI_N <= X"0";
					IF CHUC_R /= X"9" THEN 	CHUC_N <= CHUC_R + 1;
					ELSE                    CHUC_N <= X"0";
					END IF;
				END IF;			  
			END IF;
		END IF;
	END PROCESS;
	
	-- OUTPUT
	DONVI <= DONVI_R;
	CHUC <= CHUC_R;

end Behavioral;

