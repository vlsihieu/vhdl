library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity THEM_DEM_CO_GIOI_HAN is
    Port ( CKHT : in STD_LOGIC;
	        BTN : in  STD_LOGIC;
           SW : in  STD_LOGIC;
           LED: out  STD_LOGIC_VECTOR (3 downto 0)
			 );
end THEM_DEM_CO_GIOI_HAN;

architecture Behavioral of THEM_DEM_CO_GIOI_HAN is
SIGNAL ENA_DB,RST: STD_LOGIC ;
begin
	RST <=  BTN;
	
	
IC1 :ENTITY WORK.CHIA_10ENA
	PORT MAP(CKHT => CKHT,
				ENA1HZ=> ENA_DB
				);
				
				
IC2:ENTITY WORK.DEM_4BIT_UD_AUTO_SS_SW
	PORT MAP(CKHT => CKHT,
				RST => RST,
				ENA_DB => ENA_DB,
				ENA_SS => SW,
				Q => LED);
end Behavioral;