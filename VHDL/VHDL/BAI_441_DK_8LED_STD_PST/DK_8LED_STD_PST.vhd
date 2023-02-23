----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:52:54 10/01/2019 
-- Design Name: 
-- Module Name:    DK_8LED_STD_PST - Behavioral 
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

entity DK_8LED_STD_PST is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
			  LED : out STD_LOGIC_VECTOR(7 DOWNTO 0);
           SW : in  STD_LOGIC);
end DK_8LED_STD_PST;

architecture Behavioral of DK_8LED_STD_PST is
SIGNAL ENA_DB : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL Q_STD_PST : STD_LOGIC_VECTOR( 7 DOWNTO 0);
begin

	RST <= BTN;
	LED <= Q_STD_PST;
	
	IC1 : ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT => CKHT,
						ENA5HZ => ENA_DB);
						
	IC2 : ENTITY WORK.LED_STD_PST
		PORT MAP(	CKHT 		=> CKHT,
						ENA_DB 	=> ENA_DB,
						RST		=> RST,
						OE			=> SW,
						Q			=> Q_STD_PST);
						


end Behavioral;

