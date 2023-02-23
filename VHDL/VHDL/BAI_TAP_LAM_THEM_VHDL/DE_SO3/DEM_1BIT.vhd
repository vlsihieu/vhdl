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

entity DEM_1BIT is
	 Port ( CKHT, RST,ENA_DB : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end DEM_1BIT;

architecture Behavioral of DEM_1BIT is
SIGNAL Q_REG, Q_NEXT: STD_LOGIC;
begin
	PROCESS(CKHT,RST)
	BEGIN
		IF RST = '1' THEN Q_REG <= '0';
		ELSIF FALLING_EDGE (CKHT) THEN Q_REG <= Q_NEXT;
		END IF;
	END PROCESS;
	Q_NEXT <= NOT Q_REG WHEN ENA_DB = '1' ELSE
				 Q_REG;
	Q <= Q_REG;

end Behavioral;