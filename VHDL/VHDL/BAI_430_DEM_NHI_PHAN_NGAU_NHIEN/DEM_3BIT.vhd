library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DEM_3BIT is
    Port ( CKHT,RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
			  DEM0, DEM1 : out  STD_LOGIC_VECTOR (2 downto 0);
           Q_bt, Q_nn : out  STD_LOGIC_VECTOR (2 downto 0)
			  );
end DEM_3BIT;


architecture Behavioral of DEM_3BIT is
--TYPE FSM IS (A,B,C,D,E,F,G,H);
SIGNAL TT_NEXT , TT_REG     : STD_LOGIC_VECTOR(2 DOWNTO 0);
-- khi q_r ='0' dem xuong
-- khi q_r ='1' dem len
begin
	PROCESS(CKHT,RST)
	BEGIN
		IF RST = '1' THEN TT_REG <= "000";
		ELSIF FALLING_EDGE(CKHT) THEN TT_REG <= TT_NEXT;
		END IF;
	END PROCESS;
-- OUTPUT LOGIC Ð?NG B? NG?U NHIÊN
	PROCESS(TT_REG)
	BEGIN
      CASE TT_REG IS
	       WHEN "000" => Q_nn <= "000"; --0
	       WHEN "001" => Q_nn <= "011";--3
	       WHEN "010" => Q_nn <= "100";--4
	       WHEN "011" => Q_nn <= "001";--1
	       WHEN "100" => Q_nn <= "010";--2
	       WHEN "101" => Q_nn <= "110";--6
	       WHEN "110" => Q_nn <= "101";--5
	       WHEN OTHERS => Q_nn <= "111";--7
       END CASE;	
   END PROCESS;
-------------------------
	PROCESS(TT_REG)
	BEGIN
      CASE TT_REG IS
	       WHEN "000" => DEM1 <= "000"; --0
	       WHEN "001" => DEM1<= "011";--3
	       WHEN "010" => DEM1 <= "100";--4
	       WHEN "011" => DEM1 <= "001";--1
	       WHEN "100" => DEM1 <= "010";--2
	       WHEN "101" => DEM1 <= "110";--6
	       WHEN "110" => DEM1 <= "101";--5
	       WHEN OTHERS => DEM1 <= "111";--7
       END CASE;	
   END PROCESS;	
-- NEXT STATE LOGIC
   TT_NEXT <= TT_REG + 1 WHEN ENA_DB = '1' ELSE
	           TT_REG;
---- OUTPUT LOGIC
   Q_bt <= TT_REG;
   DEM0 <= TT_REG;
end Behavioral;