----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:32:43 06/03/2020 
-- Design Name: 
-- Module Name:    KIEMTRA1 - Behavioral 
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

entity DE_SO1 is
    Port ( CKHT,BTN0 : in  STD_LOGIC;
           SW : in  STD_LOGIC_VECTOR (1 downto 0);
           LED : out  STD_LOGIC_VECTOR (11 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (6 downto 0));
end DE_SO1;

architecture Behavioral of DE_SO1 is
SIGNAL ENA: STD_LOGIC;
-----------------------------------
SIGNAL ENA_DB : STD_LOGIC;
SIGNAL ENA2HZ, ENA5HZ : STD_LOGIC;
-----------------------------------
SIGNAL RST : STD_LOGIC;
-----------------------
SIGNAL SEL_1B : STD_LOGIC;
SIGNAL UP: STD_LOGIC;
-----------------------
begin
RST <= NOT BTN0;
SEL_1B <= SW(0);
UP <= SW(1);
ANODE <= "11111110";

IC1: ENTITY WORK.CHIA_10ENA
	PORT MAP(CKHT=> CKHT,
	         ENA2HZ => ENA2HZ,
				ENA5HZ => ENA5HZ
				);
IC2: ENTITY WORK.XULY_TANSO_HT
   PORT MAP (ENA2HZ => ENA2HZ,
	          ENA5HZ => ENA5HZ,
				 SEL_1B => SEL_1B,
				 ENA_O => ENA_DB,
				 Q    => LED(11 DOWNTO 9)
    			 );				
IC3: ENTITY WORK.DEM_3_40_UD
	PORT MAP(CKHT=> CKHT,
				RST=> RST,
				Q=>LED(8 DOWNTO 3),
				UP => UP,
				SSEG => SSEG,
				ENA => ENA,
				ENA_DB=>ENA_DB);
IC4: ENTITY WORK.DEM_3BIT
	PORT MAP(CKHT=> CKHT,
				RST => RST,
				ENA => ENA,
				ENA_DB => ENA_DB,
				Q => LED(2 DOWNTO 0)
			   );

end Behavioral;

