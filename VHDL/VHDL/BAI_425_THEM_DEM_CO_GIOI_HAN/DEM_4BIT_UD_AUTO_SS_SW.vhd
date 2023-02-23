----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:59:39 09/08/2019 
-- Design Name: 
-- Module Name:    DEM_8BIT - Behavioral 
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

entity DEM_4BIT_UD_AUTO_SS_SW is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  ENA_SS : IN STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end DEM_4BIT_UD_AUTO_SS_SW;

architecture Behavioral of DEM_4BIT_UD_AUTO_SS_SW is
SIGNAL Q_R, Q_N : STD_LOGIC_VECTOR( 3 DOWNTO 0) := "0010" ;
SIGNAL ENA_UD_N,ENA_UD_R : STD_LOGIC := '0' ;


begin

	PROCESS(CKHT, RST, ENA_DB, Q_N)
	BEGIN
		IF RST = '0' 								THEN 	Q_R <= "0010";
															
		ELSIF FALLING_EDGE (CKHT) 				THEN 	Q_R <= Q_N  ;
																ENA_UD_R<=ENA_UD_N;
																
		END IF;	
		
		
		
	END PROCESS;
	
	ENA_UD_N <= '1'	WHEN Q_R = "0010" ELSE -- DEM LEN
					'0' 	WHEN Q_R = "1010" ELSE -- DEM XUONG
					ENA_UD_R; --  CÓ NH? --> KHAI BAO , VA CHAY NHU Q_N, Q_R

	-- CHÚ Ý N?U NH?P NHÁY LIÊN TUC --> DO SAI ENA_UD_N GÁN SAI 0 VÀ 1 CHO D?M LÊN VÀ XU?NG
	Q_N <= 	Q_R + 1 WHEN ENA_DB = '1' AND ENA_SS = '1' AND ENA_UD_N = '1' ELSE -- DEM LEN
				Q_R - 1 WHEN ENA_DB = '1' AND ENA_SS = '1' AND ENA_UD_N = '0' ELSE -- DEM XUONG 
				Q_R;
				
	Q <= Q_N;
		

end Behavioral;
