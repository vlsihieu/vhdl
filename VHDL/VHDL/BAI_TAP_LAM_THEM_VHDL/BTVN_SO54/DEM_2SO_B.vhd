LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY DEM_2SO_B IS
PORT (CKHT,RST :IN STD_LOGIC;
		ENA_UP,ENA_DW :IN STD_LOGIC;
		OE  : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		DONVI,CHUC    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END DEM_2SO_B;

ARCHITECTURE THAN OF DEM_2SO_B IS
SIGNAL DONVI_REG, DONVI_NEXT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_REG, CHUC_NEXT   : STD_LOGIC_VECTOR(3 DOWNTO 0);  
SIGNAL DONVI_REG_B, DONVI_NEXT_B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_REG_B, CHUC_NEXT_B   : STD_LOGIC_VECTOR(3 DOWNTO 0); 
BEGIN
PROCESS(CKHT,RST)
BEGIN
	IF RST='1'  THEN DONVI_REG <= X"0";
						  CHUC_REG  <= X"0";
	ELSIF FALLING_EDGE(CKHT) THEN DONVI_REG  <= DONVI_NEXT;
											CHUC_REG   <= CHUC_NEXT;
											DONVI_REG_B  <= DONVI_NEXT_B;
											CHUC_REG_B   <= CHUC_NEXT_B;
	END IF;
END PROCESS;

PROCESS(DONVI_REG,CHUC_REG,DONVI_REG_B,CHUC_REG_B,OE, ENA_DW, ENA_UP)
BEGIN
	DONVI_NEXT <= DONVI_REG;
	CHUC_NEXT  <= CHUC_REG;
	DONVI_NEXT_B <= DONVI_REG_B;
	CHUC_NEXT_B <= CHUC_REG_B;
	IF OE(0) = '1' THEN 
			IF ENA_UP = '1' THEN 
					IF DONVI_REG_B = X"0" AND CHUC_REG_B = X"6" THEN DONVI_NEXT_B <= X"0";
																					 CHUC_NEXT_B  <= X"6";
					ELSIF DONVI_REG_B /= X"9" THEN DONVI_NEXT_B <= DONVI_REG_B + 1;
					ELSE							  
					   DONVI_NEXT_B <= X"0";
						IF CHUC_REG_B /= X"9" THEN CHUC_NEXT_B <= CHUC_REG_B + 1;
						ELSE							   CHUC_NEXT_B <= X"0";
						END IF;
					END IF;
			ELSIF ENA_DW = '1' THEN
					IF DONVI_REG_B = X"0" AND CHUC_REG_B = X"4" THEN DONVI_NEXT_B <= X"0";
																					 CHUC_NEXT_B  <= X"4";
					ELSIF DONVI_REG_B /= X"0" THEN DONVI_NEXT_B <= DONVI_REG_B - 1;
					ELSE							  
					   DONVI_NEXT_B <= X"9";
						IF CHUC_REG_B /= X"0" THEN CHUC_NEXT_B <= CHUC_REG_B - 1;
						ELSE							   CHUC_NEXT_B <= X"9";
						END IF;
					END IF;			
			END IF;
			
	ELSIF OE(1) = '1' THEN  CHUC_NEXT_B <= CHUC_REG_B;
	                        DONVI_NEXT_B <= DONVI_REG_B;
--	ELSIF OE(2) = '1' THEN  CHUC_NEXT_B <= CHUC_REG_B;
--	                        DONVI_NEXT_B <= DONVI_REG_B;
	ELSE 
	-- KHONG CHO PHEP THI HIEN THI 00 NHUNG KHI CHO PHEP THI DEM TU A
		DONVI_NEXT_B <= X"0";
		CHUC_NEXT_B  <= X"4";
		DONVI_NEXT <= X"0";
		CHUC_NEXT  <= X"0";
	END IF;
END PROCESS;
					  
	DONVI <= DONVI_REG_B WHEN OE(0)= '1' ELSE
	         DONVI_REG_B WHEN OE(1)= '1' ELSE
--				DONVI_REG_B WHEN OE(2)= '1' ELSE
				DONVI_REG;
	CHUC  <= CHUC_REG_B WHEN  OE(0) = '1' ELSE
	         CHUC_REG_B WHEN  OE(1) = '1' ELSE
--				CHUC_REG_B WHEN  OE(2) = '1' ELSE
				CHUC_REG;
END THAN;
