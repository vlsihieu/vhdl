----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:03:04 12/04/2019 
-- Design Name: 
-- Module Name:    LCD_20X4_HIENTHI_SO_TO - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
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

entity LCD_20X4_DEM_0_9_SO_TO is
    Port ( CKHT : in  STD_LOGIC;
           BTN0 : in  STD_LOGIC;
--           SW0 : in  STD_LOGIC;
           SW1 : in std_logic;
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;
--           LCD_P : out  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0));
end LCD_20X4_DEM_0_9_SO_TO ;

architecture Behavioral of LCD_20X4_DEM_0_9_SO_TO is
SIGNAL LCD_H1 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 :	STD_LOGIC_VECTOR(159 DOWNTO 0);

SIGNAL LCD_MA_DONVI 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL DONVI			:	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RST				:	STD_LOGIC;
signal ena_db : std_logic;
begin

	RST	<= not  BTN0;
--	LCD_P	<= SW0;
--	DONVI	<= X"0";
	IC11: ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT 		=> CKHT,
						ENA1HZ 	=> ENA_DB
					);
	IC21: ENTITY WORK.DEM_1SO
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_DB 	=> ENA_DB,
						ENA_SS	=> SW1,
						DONVI		=> DONVI);
	IC1 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> DONVI,
						LCD_MA_TO	=> LCD_MA_DONVI);
						
	IC2 : ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP(	LCD_MA_DONVI	=> LCD_MA_DONVI,
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4);
						
	IC3 : ENTITY WORK.LCD_KHOITAO_HIENTHI_SO_TO
		PORT MAP(	LCD_DB		=> LCD_DB,
						LCD_RS		=> LCD_RS,
						LCD_E			=> LCD_E,
						LCD_RST		=> RST,
						LCD_CK		=> CKHT,
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4);
						

end Behavioral;

