----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:49:21 11/28/2019 
-- Design Name: 
-- Module Name:    LCD_HIENTHI_3_KY_TU - Behavioral 
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

entity LCD_HIENTHI_3_KY_TU is
    Port ( CKHT,BTN0: in  STD_LOGIC;
--	        SW0 : in  STD_LOGIC;
           LCD_E, LCD_RS: out std_logic;
			  LCD_P : out  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0));
end LCD_HIENTHI_3_KY_TU;

architecture Behavioral of LCD_HIENTHI_3_KY_TU is

SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL RST :STD_LOGIC;
begin

--	LCD_P <= SW;
	RST <= not BTN0;
	
	IC1: ENTITY WORK.LCD_20X4_GAN_DULIEU_KY_TU
		PORT MAP(	LCD_H1	=> LCD_H1,
						LCD_H2	=> LCD_H2,
						LCD_H3	=> LCD_H3,
						LCD_H4	=> LCD_H4);

	IC2: ENTITY WORK.LCD_20X4_KHOITAO_HIENTHI_CGRAM_3_KY_TU
		PORT MAP(	LCD_DB	=> LCD_DB,
						LCD_RS	=> LCD_RS,
						LCD_E		=> LCD_E,
						LCD_RST	=> RST,
						LCD_CK	=> CKHT,
						LCD_H1	=> LCD_H1,
						LCD_H2	=> LCD_H2,
						LCD_H3	=> LCD_H3,
						LCD_H4	=> LCD_H4);

end Behavioral;

