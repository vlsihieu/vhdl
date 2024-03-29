LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY DEM_2SO_A IS
PORT (CKHT,RST :IN STD_LOGIC;
		ENA_UP,ENA_DW :IN STD_LOGIC;
		OE  : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		DONVI,CHUC    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END DEM_2SO_A;

ARCHITECTURE THAN OF DEM_2SO_A IS
SIGNAL DONVI_REG, DONVI_NEXT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_REG, CHUC_NEXT   : STD_LOGIC_VECTOR(3 DOWNTO 0);  
SIGNAL DONVI_REG_A, DONVI_NEXT_A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_REG_A, CHUC_NEXT_A   : STD_LOGIC_VECTOR(3 DOWNTO 0); 
BEGIN
PROCESS(CKHT,RST)
BEGIN
	IF RST='1'  THEN DONVI_REG <= X"0";
						  CHUC_REG  <= X"0";
	ELSIF FALLING_EDGE(CKHT) THEN DONVI_REG  <= DONVI_NEXT;
											CHUC_REG   <= CHUC_NEXT;
											DONVI_REG_A  <= DONVI_NEXT_A;
											CHUC_REG_A   <= CHUC_NEXT_A;
	END IF;
END PROCESS;

PROCESS(DONVI_REG,CHUC_REG,DONVI_REG_A,CHUC_REG_A,OE, ENA_DW,ENA_UP)
BEGIN
	DONVI_NEXT <= DONVI_REG;
	CHUC_NEXT  <= CHUC_REG;
	DONVI_NEXT_A <= DONVI_REG_A;
	CHUC_NEXT_A <= CHUC_REG_A;
	IF OE(0) = '1' THEN 
			IF ENA_UP = '1' THEN 
					IF DONVI_REG_A = X"0" AND CHUC_REG_A = X"2" THEN DONVI_NEXT_A <= X"0";
																					 CHUC_NEXT_A  <= X"2";
					ELSIF DONVI_REG_A /= X"9" THEN DONVI_NEXT_A <= DONVI_REG_A + 1;
					ELSE							  
					   DONVI_NEXT_A <= X"0";
						IF CHUC_REG_A /= X"9" THEN CHUC_NEXT_A <= CHUC_REG_A + 1;
						ELSE							   CHUC_NEXT_A <= X"0";
						END IF;
					END IF;
			ELSIF ENA_DW = '1' THEN
					IF DONVI_REG_A = X"0" AND CHUC_REG_A = X"1" THEN DONVI_NEXT_A <= X"0";
																					 CHUC_NEXT_A  <= X"1";
					ELSIF DONVI_REG_A /= X"0" THEN DONVI_NEXT_A <= DONVI_REG_A - 1;
					ELSE							  
					   DONVI_NEXT_A <= X"9";
						IF CHUC_REG_A /= X"0" THEN CHUC_NEXT_A <= CHUC_REG_A - 1;
						ELSE							   CHUC_NEXT_A <= X"9";
						END IF;
					END IF;			
			END IF;
			
	ELSIF OE(1) = '1' THEN  CHUC_NEXT_A <= CHUC_REG_A;
	                        DONVI_NEXT_A <= DONVI_REG_A;
	ELSIF OE(2) = '1' THEN  CHUC_NEXT_A <= CHUC_REG_A;
	                        DONVI_NEXT_A <= DONVI_REG_A;
	ELSE 
	-- KHONG CHO PHEP THI HIEN THI 00 NHUNG KHI CHO PHEP THI DEM TU A
		DONVI_NEXT_A <= X"0";
		CHUC_NEXT_A  <= X"1";
		DONVI_NEXT <= X"0";
		CHUC_NEXT  <= X"0";
	END IF;
END PROCESS;
					  
	DONVI <= DONVI_REG_A WHEN OE(0)= '1' ELSE
	         DONVI_REG_A WHEN OE(1)= '1' ELSE
				DONVI_REG_A WHEN OE(2)= '1' ELSE
				DONVI_REG;
	CHUC  <= CHUC_REG_A WHEN  OE(0) = '1' ELSE
	         CHUC_REG_A WHEN  OE(1) = '1' ELSE
				CHUC_REG_A WHEN  OE(2) = '1' ELSE
				CHUC_REG;
END THAN;
