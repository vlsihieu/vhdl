LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY MACH_DEM_Chuky IS 
	PORT ( dem : in std_logic_vector(5 downto 0);
	       RST : IN STD_LOGIC;
			 CKHT :IN STD_LOGIC;
			 ENA_DB: IN STD_LOGIC;
			 CHUKY : OUT STD_LOGIC
			 );
END MACH_DEM_Chuky;
ARCHITECTURE PMH OF MACH_DEM_Chuky IS 
SIGNAL Q_REG,Q_NEXT : STD_LOGIC_VECTOR ( 2 DOWNTO 0);
BEGIN
	PROCESS(RST,ckht,q_reg)
	BEGIN	
		IF RST='1' THEN               Q_REG <= "000";
		ELSIF FALLING_EDGE(CKHT)THEN  Q_REG <= Q_NEXT;
	   END IF;
	END PROCESS;
	Q_NEXT <= Q_REG + 1 WHEN dem = "100101"  AND ENA_DB='1'  ELSE 
				 Q_REG;
	CHUKY <= '0' WHEN Q_REG(0)='1' ELSE 
				'1';
END PMH;
--000
--001
--010
--- CK1 :  Q_R(0) = '0'  HT NHIET DO 0000
--- CK2 :  Q_R(0) = '1'  HT SO DEM   0001
--- CK3 :  Q_R(0) = '0'  HT NHIET DO 0010
--- CK4 :  Q_R(0) = '0'  HT so dem 0011 0100 0101 0110 0111 1000 1001 1010 