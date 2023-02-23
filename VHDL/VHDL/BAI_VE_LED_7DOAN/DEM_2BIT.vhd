library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DEM_2BIT is
	port (
		ENA_DB, CKHT, RST: in std_logic;
		Q: out std_logic_vector(1 downto 0)
	);
end DEM_2BIT;

architecture behavioral of DEM_2BIT is
signal Q_NEXT, Q_REG: std_logic_vector(1 downto 0);
begin
--STATE REGISTER
	process(CKHT,RST)
	begin
		if RST = '1' then Q_REG <= ( others => '0');
		elsif falling_edge (CKHT) then Q_REG <= Q_NEXT;
		end if;
	end process;
--NEXT-STATE LOGIC
	Q_NEXT <=   -- "00"     when q_REG = "11" else -- sử dụng nếu yêu cầu khống chế hoặc nhấn reset thì dừng
				Q_REG + 1 WHEN ENA_DB = '1' ELSE
				Q_REG;
--OUTPUT LOGIC
	Q <= Q_REG;
end behavioral;	