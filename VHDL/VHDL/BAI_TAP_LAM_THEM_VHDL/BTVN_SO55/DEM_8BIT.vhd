----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:13:50 11/07/2019 
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

entity DEM_8BIT is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
			  OE     : IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
           ENA_SS : in  STD_LOGIC;
           DEM : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end DEM_8BIT;

architecture Behavioral of DEM_8BIT is
SIGNAL Q_REG, Q_NEXT: STD_LOGIC_VECTOR(7 DOWNTO 0);
begin
	PROCESS( CKHT, RST)
	BEGIN
		IF RST = '1' THEN Q_REG <= (OTHERS => '0');
		ELSIF FALLING_EDGE (CKHT) THEN Q_REG<= Q_NEXT;
		END IF;
	END PROCESS;
	
--	DEM_N <= DEM_R + 1 WHEN ENA_DB = '1' AND ENA_SS = '1' ELSE
--				DEM_R;
				
--	DEM <= DEM_R;
	PROCESS( CKHT, RST,OE, ENA_DB, ENA_SS,Q_REG)
	BEGIN
	   Q_NEXT <= Q_REG;
      IF (OE(0) = '1') THEN 
		  IF (ENA_DB = '1' AND ENA_SS = '1') THEN
		      IF (Q_REG = "00001001")  THEN Q_NEXT <= "00001001";
				ELSE                          Q_NEXT <= Q_REG +1;
				END IF;
			END IF;
		ELSIF (OE(1) = '1') THEN
		  IF (ENA_DB = '1' AND ENA_SS = '1') THEN
		      IF (Q_REG = "00110001" ) THEN Q_NEXT <= "00110001";
				ELSE                          Q_NEXT <= Q_REG +1;
				END IF;
		  END IF;
		ELSIF (OE(2) = '1')  THEN
		  IF (ENA_DB = '1' AND ENA_SS = '1') THEN
		      IF (Q_REG = "01100011" ) THEN Q_NEXT <= "01100011";
				ELSE                          Q_NEXT <= Q_REG +1;
				END IF;
		  END IF;
      ELSIF (OE(3) = '1') THEN
		  IF (ENA_DB = '1' AND ENA_SS = '1') THEN
		      IF (Q_REG = "10010101" ) THEN Q_NEXT <= "10010101";
				ELSE                          Q_NEXT <= Q_REG +1;
				END IF;
		  END IF;
      ELSIF (OE(4) = '1') THEN
		  IF (ENA_DB = '1' AND ENA_SS = '1') THEN
		      IF (Q_REG = "11001000" ) THEN Q_NEXT <= "11001000";
				ELSE                          Q_NEXT <= Q_REG +1;
				END IF;
		  END IF;
      ELSE
        Q_NEXT <= "00000000";
      END IF;		  
	END PROCESS;	
dem <= Q_REG;
--Q_NEXT <=  "00001010" WHEN Q_REG = "0001001" AND ENA_DB ='1' AND ENA_SS='1' AND OE(0) = '1' ELSE  -- CHAN GH BANG NHI PHAN MOD
--				Q_REG + 1 WHEN ENA_DB ='1' AND ENA_SS='1' AND OE(0) = '1' ELSE
--            Q_REG;
--
--Q_NEXT <=  "00001010" WHEN Q_REG = "0001001" AND ENA_DB ='1' AND ENA_SS='1' AND OE(0) = '1' ELSE  -- CHAN GH BANG NHI PHAN MOD
--				Q_REG + 1 WHEN ENA_DB ='1' AND ENA_SS='1' AND OE(0) = '1' ELSE
--            Q_REG;
end Behavioral;

