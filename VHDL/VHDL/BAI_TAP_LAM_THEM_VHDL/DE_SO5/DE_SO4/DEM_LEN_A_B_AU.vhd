----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:29 07/12/2020 
-- Design Name: 
-- Module Name:    DEM_LEN_A_B_AU - Behavioral 
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

entity DEM_LEN_A_B_AU is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           OE : in  STD_LOGIC;
           DONVI : out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC : out  STD_LOGIC_VECTOR (3 downto 0));
end DEM_LEN_A_B_AU;

architecture Behavioral of DEM_LEN_A_B_AU is
SIGNAL DONVI_REG , DONVI_NEXT : STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL CHUC_REG, CHUC_NEXT : STD_LOGIC_VECTOR (3 DOWNTO 0);
begin
---REGISTER
	PROCESS (CKHT , RST)
	BEGIN
		IF RST = '1' THEN DONVI_REG <= X"0";
								CHUC_REG  <= X"1";
		ELSIF	FALLING_EDGE (CKHT) THEN DONVI_REG <= DONVI_NEXT;
												 CHUC_REG  <= CHUC_NEXT;
		END IF;
		
	END PROCESS;
-------------------------
	PROCESS( DONVI_REG, CHUC_REG , ENA_DB,OE)
	BEGIN
		DONVI_NEXT <= DONVI_REG;
		CHUC_NEXT  <= CHUC_REG;
		
		IF OE ='1' THEN
			IF ENA_DB = '1'  THEN
			   IF (DONVI_REG = X"0" AND CHUC_REG = X"2" ) THEN DONVI_NEXT <= X"0";
				                                                 CHUC_NEXT <= X"1";
				ELSIF  DONVI_REG /= X"9" THEN DONVI_NEXT <= DONVI_REG + 1;
				ELSE						     
				   DONVI_NEXT <= X"0";
					IF CHUC_REG /= X"9" THEN CHUC_NEXT <= CHUC_REG + 1;
					ELSE							 CHUC_NEXT <= X"0";  	
					END IF;
				END IF;
       	END IF;
      END IF;
   END PROCESS;
		
	DONVI <= DONVI_REG;	
	CHUC <= CHUC_REG;	
end Behavioral;

