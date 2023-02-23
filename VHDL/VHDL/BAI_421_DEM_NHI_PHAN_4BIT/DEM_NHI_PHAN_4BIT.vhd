library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEM_NHI_PHAN_4BIT is
    Port ( CKHT, BTN0 : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (3 downto 0)
			);
end DEM_NHI_PHAN_4BIT;

architecture Behavioral of DEM_NHI_PHAN_4BIT is
SIGNAL ENA_DB, RST: STD_LOGIC;
begin
	RST <= NOT BTN0;
IC1:ENTITY WORK.CHIA_ENA1HZ
	PORT MAP(CKHT => CKHT,
				ENA1HZ => ENA_DB);
				
				
IC2:ENTITY WORK.DEM_4BIT
	PORT MAP(CKHT => CKHT,
				RST => RST,
				ENA_DB => ENA_DB,
				Q => LED);
end Behavioral;