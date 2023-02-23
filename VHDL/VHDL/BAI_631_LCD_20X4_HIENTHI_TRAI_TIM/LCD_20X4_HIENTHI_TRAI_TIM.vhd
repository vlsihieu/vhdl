----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:00:52 11/28/2019 
-- Design Name: 
-- Module Name:    LCD_20X4_HIENTHI_TRAI_TIM - Behavioral 
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

entity LCD_20X4_HIENTHI_TRAI_TIM is
    Port ( CKHT,BTN0: in  STD_LOGIC;
	        SW0 : in  STD_LOGIC;
           LCD_E, LCD_RS: out  STD_LOGIC;
 			  LCD_P : out  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0));
end LCD_20X4_HIENTHI_TRAI_TIM;

architecture Behavioral of LCD_20X4_HIENTHI_TRAI_TIM is
SIGNAL LCD_H1 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 : STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 : STD_LOGIC_VECTOR(159 DOWNTO 0);

SIGNAL RST : STD_LOGIC;

BEGIN

	LCD_P <= SW0;
	RST <=  BTN0;
	
	IC1: ENTITY WORK.LCD_20X4_GAN_DULIEU_TTIM
		PORT MAP(	LCD_H1	=> LCD_H1,
						LCD_H2	=> LCD_H2,
						LCD_H3	=> LCD_H3,
						LCD_H4	=> LCD_H4);

	IC2: ENTITY WORK.LCD_20X4_KHOITAO_HIENTHI_CGRAM_TTIM
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