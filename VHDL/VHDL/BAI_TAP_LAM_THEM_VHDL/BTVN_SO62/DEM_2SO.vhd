LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY DEM_2SO IS
PORT (CKHT,RST :IN STD_LOGIC;
		OE : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		ENA_DB   :IN STD_LOGIC;
		ENA_SS   :IN STD_LOGIC;
		dv0       : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		dv1,ch1   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);		
		dv2,ch2   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		dv3_to,ch3_to   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		dv4,ch4   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		dv5,ch5   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		dv6,ch6   : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		btn_cdlh  : in std_logic;
		dem       : in std_logic_vector(2 downto 0)
		);
END DEM_2SO;

ARCHITECTURE THAN OF DEM_2SO IS
---------------------------------------------------------
SIGNAL DONVI_REG_0, DONVI_NEXT_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
--------------------------------------------------------
SIGNAL DONVI_REG_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0) :=X"0";
signal DONVI_NEXT_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_REG_1: STD_LOGIC_VECTOR(3 DOWNTO 0) := X"1";
SIGNAL CHUC_NEXT_1   : STD_LOGIC_VECTOR(3 DOWNTO 0); 
-------------------------------------------------------------
SIGNAL DONVI_REG_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0) := X"0";
SIGNAL DONVI_NEXT_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_REG_2:   STD_LOGIC_VECTOR(3 DOWNTO 0):=X"2";
SIGNAL CHUC_NEXT_2   : STD_LOGIC_VECTOR(3 DOWNTO 0); 
------------------------------------------------------------
SIGNAL DONVI_REG_3: STD_LOGIC_VECTOR(3 DOWNTO 0):= X"0";
SIGNAL DONVI_NEXT_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_REG_3: STD_LOGIC_VECTOR(3 DOWNTO 0):=X"3";
SIGNAL CHUC_NEXT_3   : STD_LOGIC_VECTOR(3 DOWNTO 0); 
-----------------------------------------------------
SIGNAL DONVI_REG_4: STD_LOGIC_VECTOR(3 DOWNTO 0):= X"0";
SIGNAL DONVI_NEXT_4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_REG_4: STD_LOGIC_VECTOR(3 DOWNTO 0):=X"7";
SIGNAL CHUC_NEXT_4   : STD_LOGIC_VECTOR(3 DOWNTO 0); 
-------------------------------------------------------
SIGNAL DONVI_REG_5:STD_LOGIC_VECTOR(3 DOWNTO 0):=X"0";
SIGNAL  DONVI_NEXT_5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_REG_5:STD_LOGIC_VECTOR(3 DOWNTO 0):=X"8";
SIGNAL  CHUC_NEXT_5   : STD_LOGIC_VECTOR(3 DOWNTO 0);  
----------------------------------------------
SIGNAL DONVI_REG_6: STD_LOGIC_VECTOR(3 DOWNTO 0):= X"0";
SIGNAL DONVI_NEXT_6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_REG_6: STD_LOGIC_VECTOR(3 DOWNTO 0):=X"9";
SIGNAL CHUC_NEXT_6   : STD_LOGIC_VECTOR(3 DOWNTO 0); 
BEGIN
PROCESS(CKHT,RST,btn_cdlh,dem)
BEGIN
	IF RST='1' or (btn_cdlh = '1' and dem = "110")  THEN 
			  DONVI_REG_0  <=  X"0";
			  ------------------------
			  DONVI_REG_1  <=  X"0";
			  CHUC_REG_1   <=  X"1";
			  ------------------------
			  DONVI_REG_2  <=  X"0";
			  CHUC_REG_2   <=  X"2";
			  -----------------------
			  DONVI_REG_3  <=  X"0";
			  CHUC_REG_3   <=  X"3";
			  ---------------------
			  DONVI_REG_4  <=  X"0";
			  CHUC_REG_4   <=  X"7";
			  ------------------------
			  DONVI_REG_5  <=  X"0";
			  CHUC_REG_5   <=  X"8";
			  ------------------------
			  DONVI_REG_6  <=  X"0";
			  CHUC_REG_6   <=  X"9";
	ELSIF FALLING_EDGE(CKHT) THEN 
			  DONVI_REG_0  <= DONVI_NEXT_0;
			  DONVI_REG_1  <= DONVI_NEXT_1;
			  CHUC_REG_1   <= CHUC_NEXT_1;
			  DONVI_REG_2  <= DONVI_NEXT_2;
			  CHUC_REG_2   <= CHUC_NEXT_2;
			  DONVI_REG_3  <= DONVI_NEXT_3;
			  CHUC_REG_3   <= CHUC_NEXT_3;
			  DONVI_REG_4  <= DONVI_NEXT_4;
			  CHUC_REG_4   <= CHUC_NEXT_4;
			  DONVI_REG_5  <= DONVI_NEXT_5;
			  CHUC_REG_5   <= CHUC_NEXT_5;
			  DONVI_REG_6  <= DONVI_NEXT_6;
			  CHUC_REG_6   <= CHUC_NEXT_6;
	END IF;
END PROCESS;

PROCESS(ENA_SS,ENA_DB,OE,DONVI_REG_0,DONVI_REG_1,CHUC_REG_1,DONVI_REG_2,CHUC_REG_2,DONVI_REG_3,CHUC_REG_3,DONVI_REG_4,CHUC_REG_4,DONVI_REG_5,CHUC_REG_5,CHUC_REG_6,donvi_reg_6)
BEGIN
	DONVI_NEXT_0 <= DONVI_REG_0;
	DONVI_NEXT_1 <= DONVI_REG_1;
	CHUC_NEXT_1  <= CHUC_REG_1;
	DONVI_NEXT_2 <= DONVI_REG_2;
	CHUC_NEXT_2  <= CHUC_REG_2;
	DONVI_NEXT_3 <= DONVI_REG_3;
	CHUC_NEXT_3  <= CHUC_REG_3;
	DONVI_NEXT_4 <= DONVI_REG_4;
	CHUC_NEXT_4  <= CHUC_REG_4;
	DONVI_NEXT_5 <= DONVI_REG_5;
	CHUC_NEXT_5  <= CHUC_REG_5;
	DONVI_NEXT_6 <= DONVI_REG_6;
	CHUC_NEXT_6  <= CHUC_REG_6;	
	IF OE(0) = '1' THEN
		IF ENA_DB = '1' THEN	
			IF ENA_SS = '1' THEN 
				IF DONVI_REG_0 = X"9"  THEN DONVI_NEXT_0 <= DONVI_REG_0;
				ELSIF DONVI_REG_0 /= X"9" THEN DONVI_NEXT_0 <= DONVI_REG_0 + 1;
--				ELSE DONVI_NEXT_0 <= X"0";
				END IF;
			END IF;
		END IF;
	ELSIF OE(1)='1' THEN DONVI_NEXT_0 <= DONVI_REG_0;
	ELSIF OE(2)='1' THEN DONVI_NEXT_0 <= DONVI_REG_0;
	ELSIF OE(3)='1' THEN DONVI_NEXT_0 <= DONVI_REG_0;
	ELSIF OE(4)='1' THEN DONVI_NEXT_0 <= DONVI_REG_0;
	ELSIF OE(5)='1' THEN DONVI_NEXT_0 <= DONVI_REG_0;
	ELSIF OE(6)='1' THEN DONVI_NEXT_0 <= DONVI_REG_0;
	ELSE     DONVI_NEXT_0 <= X"0";
--	ELSE  
	END IF;
---------------------------------------------------------------	
	IF OE(1) = '1' and DONVI_REG_0 = X"9" THEN
		IF ENA_DB = '1' THEN	
			IF ENA_SS = '1' THEN 
				IF DONVI_REG_1 = X"9" AND CHUC_REG_1 = X"1" THEN DONVI_NEXT_1 <= DONVI_REG_1;
																			    CHUC_NEXT_1  <= CHUC_REG_1;
				ELSIF DONVI_REG_1 /= X"9" THEN DONVI_NEXT_1 <= DONVI_REG_1 + 1;
				ELSE							  
				   DONVI_NEXT_1 <= X"0";
					IF CHUC_REG_1 /= X"9" THEN CHUC_NEXT_1 <= CHUC_REG_1 + 1;
					ELSE							   CHUC_NEXT_1 <= X"0";
					END IF;
				END IF;
			END IF;
		END IF;
	ELSIF OE(2) = '1' THEN    DONVI_NEXT_1 <= DONVI_REG_1;
	                          CHUC_NEXT_1  <= CHUC_REG_1;
	ELSIF OE(3) = '1' THEN    DONVI_NEXT_1 <= DONVI_REG_1;
	                          CHUC_NEXT_1  <= CHUC_REG_1;
	ELSIF OE(4) = '1' THEN    DONVI_NEXT_1 <= DONVI_REG_1;
	                          CHUC_NEXT_1  <= CHUC_REG_1;	
	ELSIF OE(5) = '1' THEN    DONVI_NEXT_1 <= DONVI_REG_1;
	                          CHUC_NEXT_1  <= CHUC_REG_1;	
	ELSIF OE(6) = '1' THEN    DONVI_NEXT_1 <= DONVI_REG_1;
	                          CHUC_NEXT_1  <= CHUC_REG_1;									  
	END IF;
------------------------------------------
	IF OE(2) = '1' and DONVI_REG_1 = X"9" AND CHUC_REG_1 = X"1" THEN
		IF ENA_DB = '1' THEN	
			IF ENA_SS = '1' THEN 
				IF DONVI_REG_2 = X"9" AND CHUC_REG_2 = X"2" THEN DONVI_NEXT_2 <= DONVI_REG_2;
																			    CHUC_NEXT_2  <= CHUC_REG_2;
				ELSIF DONVI_REG_2 /= X"9" THEN DONVI_NEXT_2 <= DONVI_REG_2 + 1;
				ELSE							  
				   DONVI_NEXT_2 <= X"0";
					IF CHUC_REG_2 /= X"9" THEN CHUC_NEXT_2 <= CHUC_REG_2 + 1;
					ELSE							   CHUC_NEXT_2 <= X"0";
					END IF;
				END IF;
			END IF;
		END IF;
	ELSIF OE(3)= '1' THEN
           DONVI_NEXT_2 <= DONVI_REG_2;
	        CHUC_NEXT_2  <= CHUC_REG_2;
	ELSIF OE(4)= '1' THEN
           DONVI_NEXT_2 <= DONVI_REG_2;
	        CHUC_NEXT_2  <= CHUC_REG_2;
	ELSIF OE(5)= '1' THEN
           DONVI_NEXT_2 <= DONVI_REG_2;
	        CHUC_NEXT_2  <= CHUC_REG_2;
	ELSIF OE(6)= '1' THEN
           DONVI_NEXT_2 <= DONVI_REG_2;
	        CHUC_NEXT_2  <= CHUC_REG_2;
   END IF;			  
---------------------------------------------------------------------------------------
	IF OE(3) = '1' and DONVI_REG_2 = X"9" AND CHUC_REG_2 = X"2"  THEN
		IF ENA_DB = '1' THEN	
			IF ENA_SS = '1' THEN 
				IF DONVI_REG_3 = X"9" AND CHUC_REG_3 = X"6" THEN DONVI_NEXT_3 <= DONVI_REG_3;
																			    CHUC_NEXT_3  <= CHUC_REG_3;
				ELSIF DONVI_REG_3 /= X"9" THEN DONVI_NEXT_3 <= DONVI_REG_3 + 1;
				ELSE							  
				   DONVI_NEXT_3 <= X"0";
					IF CHUC_REG_3 /= X"9" THEN CHUC_NEXT_3 <= CHUC_REG_3 + 1;
					ELSE							   CHUC_NEXT_3 <= X"0";
					END IF;
				END IF;
			END IF;
		END IF;
	ELSIF OE(4)= '1' THEN
           DONVI_NEXT_3 <= DONVI_REG_3;
	        CHUC_NEXT_3  <= CHUC_REG_3;
	ELSIF OE(5)= '1' THEN
           DONVI_NEXT_3 <= DONVI_REG_3;
	        CHUC_NEXT_3  <= CHUC_REG_3;
	ELSIF OE(6)= '1' THEN
           DONVI_NEXT_3 <= DONVI_REG_3;
	        CHUC_NEXT_3  <= CHUC_REG_3;		
	END IF;		  

--------------------------------
	IF OE(4) = '1' and DONVI_REG_3 = X"9" AND CHUC_REG_3 = X"6"  THEN
		IF ENA_DB = '1' THEN	
			IF ENA_SS = '1' THEN 
				IF DONVI_REG_4 = X"9" AND CHUC_REG_4 = X"7" THEN DONVI_NEXT_4 <= DONVI_REG_4;
																			    CHUC_NEXT_4  <= CHUC_REG_4;
				ELSIF DONVI_REG_4 /= X"9" THEN DONVI_NEXT_4 <= DONVI_REG_4 + 1;
				ELSE							  DONVI_NEXT_4 <= X"0";
					IF CHUC_REG_4 /= X"9" THEN CHUC_NEXT_4 <= CHUC_REG_4 + 1;
					ELSE							 CHUC_NEXT_4 <= X"0";
					END IF;
				END IF;
			END IF;
		END IF;
	ELSIF OE(5)='1' THEN
           DONVI_NEXT_4 <= DONVI_REG_4;
	        CHUC_NEXT_4  <= CHUC_REG_4;
	ELSIF OE(6)='1' THEN
           DONVI_NEXT_4 <= DONVI_REG_4;
	        CHUC_NEXT_4  <= CHUC_REG_4;
   END IF;			  
----------------------------------------------------
	IF OE(5) = '1' and DONVI_REG_4 = X"9" AND CHUC_REG_4 = X"7" THEN
		IF ENA_DB = '1' THEN	
			IF ENA_SS = '1' THEN 
				IF DONVI_REG_5 = X"9" AND CHUC_REG_5 = X"8" THEN DONVI_NEXT_5 <= DONVI_REG_5;
																			    CHUC_NEXT_5  <= CHUC_REG_5;
				ELSIF DONVI_REG_5 /= X"9" THEN DONVI_NEXT_5 <= DONVI_REG_5 + 1;
				ELSE							       DONVI_NEXT_5 <= X"0";
					IF CHUC_REG_5 /= X"9" THEN CHUC_NEXT_5 <= CHUC_REG_5 + 1;
					ELSE							   CHUC_NEXT_5 <= X"0";
					END IF;
				END IF;
			END IF;
		END IF;
   ELSIF OE(6) = '1' THEN 
	   DONVI_NEXT_5 <= DONVI_REG_5;
		CHUC_NEXT_5  <= CHUC_REG_5;
	END IF;
-------------------------------------------------------------
	IF OE(6) = '1' and DONVI_REG_5 = X"9" AND CHUC_REG_5 = X"8" THEN
		IF ENA_DB = '1' THEN	
			IF ENA_SS = '1' THEN 
				IF DONVI_REG_6 = X"9" AND CHUC_REG_6 = X"9" THEN DONVI_NEXT_6 <= DONVI_REG_6;
																			    CHUC_NEXT_6  <= CHUC_REG_6;
				ELSIF DONVI_REG_6 /= X"9" THEN DONVI_NEXT_6 <= DONVI_REG_6 + 1;
				ELSE							       DONVI_NEXT_6 <= X"0";
					IF CHUC_REG_6 /= X"9" THEN CHUC_NEXT_6 <= CHUC_REG_6 + 1;
					ELSE							   CHUC_NEXT_6 <= X"0";
					END IF;
				END IF;
			END IF;
		END IF;
	END IF;
END PROCESS;
----------------------------------------------------	
dv0 <= donvi_reg_0 when oe(0) = '1' else
       donvi_reg_0 when oe(1) = '1' else
		 donvi_reg_0 when oe(2) = '1' else
		 donvi_reg_0 when oe(3) = '1' else
		 donvi_reg_0 when oe(4) = '1' else
		 donvi_reg_0 when oe(5) = '1' else
		 donvi_reg_0 when oe(6) = '1' else
		 X"0";

----------------------------------------
dv1 <= donvi_reg_1 when oe(1) = '1' else
       donvi_reg_1 when oe(2) = '1' else
		 donvi_reg_1 when oe(3) = '1' else
		 donvi_reg_1 when oe(4) = '1' else
		 donvi_reg_1 when oe(5) = '1' else
		 donvi_reg_1 when oe(6) = '1' else
       X"0";
ch1 <= chuc_reg_1 when oe(1) = '1' else
       chuc_reg_1 when oe(2) = '1' else
		 chuc_reg_1 when oe(3) = '1' else
		 chuc_reg_1 when oe(4) = '1' else
		 chuc_reg_1 when oe(5) = '1' else
		 chuc_reg_1 when oe(6) = '1' else
       X"1";
-----------------------------------------	
dv2 <= donvi_reg_2 when oe(2) = '1' else
       donvi_reg_2 when oe(3) = '1' else
		 donvi_reg_2 when oe(4) = '1' else
		 donvi_reg_2 when oe(5) = '1' else
		 donvi_reg_2 when oe(6) = '1' else
       X"0";
ch2 <= chuc_reg_2  when oe(2) = '1' else
       chuc_reg_2 when oe(3) = '1' else
		 chuc_reg_2 when oe(4) = '1' else
		 chuc_reg_2 when oe(5) = '1' else
		 chuc_reg_2 when oe(6) = '1' else
       X"2";
-----------------------------------------
dv3_to <= donvi_reg_3 when oe(3) = '1' else
          donvi_reg_3 when oe(4) = '1' else
			 donvi_reg_3 when oe(5) = '1' else
			 donvi_reg_3 when oe(6) = '1' else
          X"0";
ch3_to <= chuc_reg_3 when oe(3) = '1' else
          chuc_reg_3 when oe(4) = '1' else
			 chuc_reg_3 when oe(5) = '1' else
			 chuc_reg_3 when oe(6) = '1' else
          X"3";
---------------------------------------------
dv4 <= donvi_reg_4 when oe(4) = '1' else
       donvi_reg_4 when oe(5) = '1' else
		 donvi_reg_4 when oe(6) = '1' else
       X"0";
ch4 <= chuc_reg_4 when oe(4) = '1' else
       chuc_reg_4 when oe(5) = '1' else
		 chuc_reg_4 when oe(6) = '1' else
		 X"7";
       -------------------------------------------
dv5 <= donvi_reg_5 when oe(5) = '1' else
       donvi_reg_5 when oe(6) = '1' else
       X"0";
ch5 <= chuc_reg_5 when oe(5) = '1' else
       chuc_reg_5 when oe(6) = '1' else
       X"8";
---------------------------------------
dv6 <= donvi_reg_6 when oe(6) = '1' else
       X"0";
ch6 <= chuc_reg_6 when oe(6) = '1' else
       X"9";
END THAN;
