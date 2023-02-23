LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY DEM_2SO IS
PORT (CKHT,RST :IN STD_LOGIC;
		OE : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		ENA_DB   :IN STD_LOGIC;
		ENA_SS   :IN STD_LOGIC;
		sseg77, sseg76, sseg75, donvi: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
END DEM_2SO;

ARCHITECTURE THAN OF DEM_2SO IS 
SIGNAL DV_R0 , DV_N0: STD_LOGIC_VECTOR(3 DOWNTO 0);
---------------------------------------------------
SIGNAL DV_R1, DV_N1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CH_R1, CH_N1   : STD_LOGIC_VECTOR(3 DOWNTO 0); 
-------------------------------------------------------
SIGNAL DV_R2, DV_N2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CH_R2, CH_N2   : STD_LOGIC_VECTOR(3 DOWNTO 0); 
---------------------------------------------------------------
SIGNAL DV_R3, DV_N3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CH_R3, CH_N3   : STD_LOGIC_VECTOR(3 DOWNTO 0);  
SIGNAL TR_R3, TR_N3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
----------------------------------------------------------------
SIGNAL DV_R4, DV_N4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CH_R4, CH_N4   : STD_LOGIC_VECTOR(3 DOWNTO 0);  
SIGNAL TR_R4, TR_N4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
---------------------------------------------------------
BEGIN
PROCESS(CKHT,RST)
BEGIN
	IF RST='1'   THEN DV_R0 <= X"0";
	                  ------------------------
	                  DV_R1 <= X"0";
							CH_R1 <= X"1";
							-------------------------
							DV_R2 <= X"0";
							CH_R2 <= X"5";
							-------------------------
							DV_R3 <= X"0";
							CH_R3 <= X"0";
                     TR_R3 <=	X"1";
                     -------------------------
							DV_R4 <= X"0";
							CH_R4 <= X"5";
                     TR_R4 <=	X"1";
                     ------------------------							
	ELSIF FALLING_EDGE(CKHT) THEN DV_R0 <= DV_N0;
	                              ---------------
											DV_R1 <= DV_N1;
											CH_R1 <= CH_N1;
											--------------
											DV_R2 <= DV_N2;
											CH_R2 <= CH_N2;
											--------------
											DV_R3 <= DV_N3;
											CH_R3 <= CH_N3;
											TR_R3 <= TR_N3;
											--------------
											DV_R4 <= DV_N4;
											CH_R4 <= CH_N4;
											TR_R4 <= TR_N4;	                              
	END IF;
END PROCESS;

PROCESS(TR_R3,TR_R4,DV_R0,DV_R1,CH_R1,CH_R2,CH_R3,CH_R4,DV_R2, DV_R3, DV_R4,OE,ENA_DB,ENA_SS)
BEGIN
   DV_N0 <= DV_R0;
   --------------
	DV_N1 <= DV_R1;
	CH_N1 <= CH_R1;
	--------------
	DV_N2 <= DV_R2;
	CH_N2 <= CH_R2;
	--------------
	DV_N3 <= DV_R3;
	CH_N3 <= CH_R3;
	TR_N3 <= TR_R3;
	--------------
	DV_N4 <= DV_R4;
	CH_N4 <= CH_R4;
	TR_N4 <= TR_R4;
	
	IF OE(0) = '1' THEN
		DV_N1 <= X"0";
		CH_N1 <= X"1";
		--------------------
		DV_N2 <= X"0";
		CH_N2 <= X"5";
		---------------------
		DV_N3<= X"0";
		CH_N3<= X"0";
		TR_N3<= X"1";
		---------------------
		DV_N4 <= X"0";
		CH_N4 <= X"5";
		TR_N4 <= X"1"; -- CHÚ Ý
		IF ENA_DB = '1' THEN	
			IF ENA_SS = '1' THEN 
				IF DV_R0 = X"9" THEN DV_N0 <= DV_R0;																
				ELSIF DV_R0 /= X"9" THEN DV_N0<= DV_R0 + 1;
				ELSE							 DV_N0 <= X"0";
				END IF;
			END IF;
		END IF;
	ELSIF OE(1) = '1' THEN 
		DV_N0 <= X"0";
		--------------------
		DV_N2 <= X"0";
		CH_N2 <= X"5";
		---------------------
		DV_N3<= X"0";
		CH_N3<= X"0";
		TR_N3<= X"1";
		---------------------
		DV_N4 <= X"0";
		CH_N4 <= X"5";
		TR_N4 <= X"1"; -- CHÚ Ý
		IF ENA_DB = '1' THEN	
			IF ENA_SS = '1' THEN 
				IF DV_R1= X"9" AND CH_R1 = X"4" THEN DV_N1 <= DV_R1;
																 CH_N1 <= CH_R1;
				ELSIF DV_R1 /= X"9" THEN DV_N1 <= DV_R1 + 1;
				ELSE							  
				   DV_N1 <= X"0";
					IF CH_R1 /= X"9" THEN CH_N1 <= CH_R1 + 1;
					ELSE						 CH_N1 <= X"0";
					END IF;
				END IF;
			END IF;
		END IF;
	ELSIF OE(2) = '1' THEN
		DV_N1 <= X"0";
		CH_N1 <= X"1";
		--------------------
		DV_N0 <= X"0";
		---------------------
		DV_N3<= X"0";
		CH_N3<= X"0";
		TR_N3<= X"1";
		---------------------
		DV_N4 <= X"0";
		CH_N4 <= X"5";
		TR_N4 <= X"1"; 
		IF ENA_DB = '1' THEN	
			IF ENA_SS = '1' THEN 
				IF DV_R2 = X"9" AND CH_R2 = X"9" THEN DV_N2 <= DV_R2;
																  CH_N2  <= CH_R2;
				ELSIF DV_R2 /= X"9" THEN DV_N2 <= DV_R2 + 1;
				ELSE							 
				   DV_N2 <= X"0";
					IF CH_R2 /= X"9" THEN CH_N2 <= CH_R2 + 1;
					ELSE						 CH_N2 <= X"0";
					END IF;
				END IF;
			END IF;
		END IF;
	ELSIF OE(3) = '1' THEN
		DV_N1 <= X"0";
		CH_N1 <= X"1";
		--------------------
		DV_N2 <= X"0";
		CH_N2 <= X"5";
		---------------------
		DV_N0<= X"0";
		---------------------
		DV_N4 <= X"0";
		CH_N4 <= X"5";
		TR_N4 <= X"1"; -- CHÚ Ý
		IF ENA_DB = '1' THEN	
			IF ENA_SS = '1' THEN 
				IF DV_R3 = X"9" AND CH_R3 = X"4" AND TR_R3 = X"1" THEN DV_N3 <= DV_R3;
																                   CH_N3  <= CH_R3;
																						 TR_N3  <= TR_R3;
				ELSIF DV_R3 /= X"9" THEN DV_N3 <= DV_R3 + 1;
				ELSE							  
				   DV_N3 <= X"0";
					IF CH_R3 /= X"9" THEN CH_N3 <= CH_R3 + 1;
					ELSE							 
					  CH_N3 <= X"0";
					  IF (TR_R3 /= X"9") THEN TR_N3 <= TR_R3 +1;
					  ELSE                    TR_N3 <= X"0";
					  END IF;
					END IF;
				END IF;
			END IF;
		END IF;
	ELSIF OE(4) = '1' THEN	
		DV_N1 <= X"0";
		CH_N1 <= X"1";
		--------------------
		DV_N2 <= X"0";
		CH_N2 <= X"5";
		---------------------
		DV_N0<= X"0";
		---------------------
		DV_N3 <= X"0";
		CH_N3 <= X"0";
		TR_N3 <= X"1"; -- CHÚ Ý
		IF ENA_DB = '1' THEN	
			IF ENA_SS = '1' THEN 
				IF DV_R4 = X"0" AND CH_R4 = X"0" AND TR_R4 = X"2" THEN DV_N4  <= DV_R4;
																			          CH_N4  <= CH_R4;
																						 TR_N4  <= TR_R4;
				ELSIF DV_R4 /= X"9" THEN DV_N4 <= DV_R4 + 1;
				ELSE							  
				   DV_N4 <= X"0";
					IF CH_R4 /= X"9" THEN CH_N4 <= CH_R4 + 1;
					ELSE							 
					  CH_N4 <= X"0";
					  IF (TR_R4 /= X"9") THEN TR_N4 <= TR_R4 +1;
					  ELSE                    TR_N4 <= X"0";
					  END IF;
					END IF;
				END IF;
			END IF;
		END IF;
	ELSE 
		DV_N1 <= X"0";
		CH_N1 <= X"1";
		--------------------
		DV_N2 <= X"0";
		CH_N2 <= X"5";
		---------------------
		DV_N0<= X"0";
		---------------------
		DV_N4 <= X"0";
		CH_N4 <= X"5";
		TR_N4 <= X"1"; -- CHÚ Ý
	   -------------
		DV_N3 <= X"9";
		CH_N3 <= X"4";
		TR_N3 <= X"1"; -- CHÚ Ý
	END IF;
END PROCESS;
	
	sseg77 <= DV_R0 WHEN OE(0) = '1' ELSE
				 CH_R1 WHEN OE(1) = '1' ELSE
				 TR_R3 WHEN OE(3) = '1' ELSE
				 X"0";
	sseg76 <= DV_R1 WHEN OE(1) = '1' ELSE
				 CH_R2 WHEN OE(2) = '1' ELSE
				 CH_R3 WHEN OE(3) = '1' ELSE
				 TR_R4 WHEN OE(4) = '1' ELSE
				 X"0";
	sseg75 <= DV_R2 WHEN OE(2) = '1' ELSE
				 DV_R3 WHEN OE(3) = '1' ELSE
				 CH_R4 WHEN OE(4) = '1' ELSE
				 X"0";
   donvi <= DV_R4 WHEN OE(4) = '1' ELSE
            X"0";	
END THAN;
