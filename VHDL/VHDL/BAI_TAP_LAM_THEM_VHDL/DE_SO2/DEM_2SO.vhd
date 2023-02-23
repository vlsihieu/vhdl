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

entity DEM_2SO is
		PORT ( CKHT : IN STD_LOGIC;
				  RST : IN STD_LOGIC;
				  ENA_DB: IN STD_LOGIC;
				  DEM   : OUT STD_LOGIC;
				  ENA_SS : IN STD_LOGIC;
				  DONVI , CHUC	: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
           	  DONVI_GH, CHUC_GH : in STD_LOGIC_VECTOR (3 DOWNTO 0)
				  );
end DEM_2SO;

architecture Behavioral of DEM_2SO is
SIGNAL DONVI_REG , DONVI_NEXT : STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL CHUC_REG, CHUC_NEXT : STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL DR,DN : STD_LOGIC;
begin
---REGISTER
	PROCESS (CKHT , RST)
	BEGIN
		IF RST = '1' THEN DONVI_REG <= X"2";
								CHUC_REG <= X"0";
                        DR <= '0';
		ELSIF	FALLING_EDGE (CKHT) THEN DONVI_REG <= DONVI_NEXT;
												 CHUC_REG  <= CHUC_NEXT;
												 DR <= DN;
		END IF;
		
	END PROCESS;
--- NEXT STATE
	PROCESS( DONVI_REG, CHUC_REG , ENA_SS, ENA_DB,DONVI_GH,CHUC_GH,DR)
	BEGIN
		DONVI_NEXT <= DONVI_REG;
		CHUC_NEXT  <= CHUC_REG;
		IF ENA_SS ='1' AND DR = '0'  THEN
			IF ENA_DB = '1'  THEN
			   IF (DONVI_REG = DONVI_GH AND CHUC_REG = CHUC_GH ) THEN DONVI_NEXT <= X"2";
				                                                       CHUC_NEXT <= X"0";
				ELSIF  DONVI_REG /= X"9" THEN DONVI_NEXT <= DONVI_REG + 1;
				ELSE						     
				   DONVI_NEXT <= X"0";
					IF CHUC_REG /= X"9" THEN CHUC_NEXT <= CHUC_REG + 1;
					ELSE							 CHUC_NEXT <= X"0";  	
					END IF;
				END IF;
       	END IF;
      END IF;
		IF ENA_SS ='1' AND DR = '1'  THEN
			IF ENA_DB = '1'  THEN
			   IF (DONVI_REG = DONVI_GH AND CHUC_REG = CHUC_GH ) THEN DONVI_NEXT <= X"2";
				                                                       CHUC_NEXT <= X"0";
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
--------------------------------		
	DONVI <= DONVI_REG;	
	CHUC <= CHUC_REG;	
--------------------------------
	DN <= NOT DR WHEN (DONVI_REG = DONVI_GH AND CHUC_REG = CHUC_GH AND ENA_SS ='1') ELSE
	      DR;
	DEM <= DR;
end Behavioral;

