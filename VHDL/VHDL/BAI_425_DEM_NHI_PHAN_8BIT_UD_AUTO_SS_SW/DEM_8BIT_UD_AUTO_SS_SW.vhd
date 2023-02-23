library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DEM_8BIT_UD_AUTO_SS_SW is
    Port ( CKHT,RST,ENA_DB : in  STD_LOGIC;
           ENA_SS : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end DEM_8BIT_UD_AUTO_SS_SW;


architecture Behavioral of DEM_8BIT_UD_AUTO_SS_SW is
SIGNAL Q_REG       : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Q_NEXT      : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ena_ud_reg       : STD_LOGIC;
SIGNAL ena_ud_next      : STD_LOGIC;
-- khi q_r ='0' dem xuong
-- khi q_r ='1' dem len
begin
	PROCESS(CKHT,RST)
	BEGIN
		IF RST = '1' THEN Q_REG <= (OTHERS => '0');
		                  ena_ud_reg <= '0';
		ELSIF FALLING_EDGE(CKHT) THEN Q_REG <= Q_NEXT;
		                              ena_ud_reg <= ena_ud_next;
		END IF;
	END PROCESS;
   Q_NEXT <= Q_REG + 1 WHEN ENA_SS = '1' AND ENA_DB = '1' AND ena_ud_reg ='1' ELSE
				 Q_REG - 1 WHEN ENA_SS = '1' AND ENA_DB = '1' AND ena_ud_reg ='0' ELSE
				 Q_REG;
	
   ena_ud_next <= '1' WHEN Q_REG = X"FF" ELSE
	            '0' WHEN Q_REG = X"00" ELSE
	           ena_ud_reg;
   Q <= Q_REG;
end Behavioral;