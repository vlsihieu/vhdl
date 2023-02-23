library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DEM_NHI_PHAN_8BIT_UD_SS_SW is
    Port ( CKHT : in STD_LOGIC;
	        BTN0 : in  STD_LOGIC;
           SW : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           LED: out  STD_LOGIC_VECTOR (7 downto 0)
			 );
end DEM_NHI_PHAN_8BIT_UD_SS_SW;

architecture Behavioral of DEM_NHI_PHAN_8BIT_UD_SS_SW is
SIGNAL ENA_DB,RST: STD_LOGIC ;
begin
	RST <= NOT BTN0;
	
	
IC1 :ENTITY WORK.CHIA_10ENA
	PORT MAP(CKHT => CKHT,
				ENA5HZ=> ENA_DB
				);
				
				
IC2:ENTITY WORK.DEM_8BIT_UD_SS_SW
	PORT MAP(CKHT => CKHT,
				RST => RST,
				ENA_DB => ENA_DB,
				ENA_SS => SW(1),
				ENA_UD => SW(0),
				Q => LED);
end Behavioral;