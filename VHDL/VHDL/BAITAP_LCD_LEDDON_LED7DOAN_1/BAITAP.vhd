----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:59:43 11/18/2019 
-- Design Name: 
-- Module Name:    BAITAP - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BAITAP is
    Port ( CKHT : in  STD_LOGIC;
			  BTN: IN STD_LOGIC_VECTOR(1 DOWNTO 0);

           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;			   
           LCD_P : out  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR(7 DOWNTO 0));
end BAITAP;

architecture Behavioral of BAITAP is

SIGNAL LCD_H1,LCD_H2,LCD_H3,LCD_H4: STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL ENA_DB, RST, ENA_TO_NHO: STD_LOGIC;

SIGNAL LCD_MA_DONVI : STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL DONVI, CHUC, DEM : STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
	  RST		<= BTN(0);
	  LCD_P	<=	'1';
IC1: ENTITY WORK.CHIA_10ENA
		PORT MAP ( CKHT => CKHT,
					  ENA5HZ=> ENA_DB);
					  
IC2: ENTITY WORK.DEM_1SO
		PORT MAP( CKHT 	=> CKHT,
					 RST  	=> RST,
					 ENA_DB	=> ENA_DB,
					 ENA_SS	=> '1',
					 DONVI	=> DEM);
IC3: ENTITY WORK.HEXTOBCD_4BIT
		PORT MAP( SOHEX4BIT => DEM,
					 CHUC		  => CHUC,
					 DONVI	  => DONVI);					 

IC4: ENTITY WORK.DEM_1BIT_BTN
	PORT MAP(CKHT	=>	CKHT,
				RST	=> RST,
				BTN	=> BTN(1),
				Q		=> ENA_TO_NHO);
					
IC5: ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP( SO_GMA 		=> DEM,
					 LCD_MA_TO  => LCD_MA_DONVI);
					 
IC6: ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP( LCD_MA_DONVI => LCD_MA_DONVI,
					 ENA_TO_NHO	=> ENA_TO_NHO,
					 H1_19		=> DONVI,
					 LCD_H1		=> LCD_H1,
					 LCD_H2		=> LCD_H2,
					 LCD_H3		=> LCD_H3,
					 LCD_H4		=> LCD_H4);
					 
IC7: ENTITY WORK.LCD_20X4_KHOITAO_HIENTHI_SO_TO
		PORT MAP( LCD_DB=> LCD_DB,
					 LCD_RS=> LCD_RS,
					 LCD_E => LCD_E,
					 LCD_RST=> RST,
					 LCD_CK => CKHT,
					 LCD_H1=> LCD_H1,
					 LCD_H2=> LCD_H2,
					 LCD_H3=> LCD_H3,
					 LCD_H4=> LCD_H4);


end Behavioral;

