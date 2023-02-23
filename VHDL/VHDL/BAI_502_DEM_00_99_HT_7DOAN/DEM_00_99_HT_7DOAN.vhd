----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:18:43 10/13/2019 
-- Design Name: 
-- Module Name:    DEM_00_99_HT_7DOAN - Behavioral 
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

entity DEM_00_99_HT_7DOAN is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
           SW : in  STD_LOGIC;
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (6 downto 0));
end DEM_00_99_HT_7DOAN;

architecture Behavioral of DEM_00_99_HT_7DOAN is
SIGNAL ENA_DB : 	STD_LOGIC;
SIGNAL RST : 		STD_LOGIC;
SIGNAL ENA1KHZ : 	STD_LOGIC;
SIGNAL SEL_1B : 	STD_LOGIC;
SIGNAL SO_GMA : 	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DONVI : 	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC : 		STD_LOGIC_VECTOR(3 DOWNTO 0);
begin

	RST <= BTN;
	
	IC1 : ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT 		=> CKHT,
						ENA5HZ 	=> ENA_DB,
						ENA1KHZ	=> ENA1KHZ);
						
	IC2 : ENTITY WORK.DEM_2SO
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_SS	=> SW,
						ENA_DB	=> ENA_DB,
						DONVI		=> DONVI,
						CHUC		=> CHUC);
						
	IC3 : ENTITY WORK.DEM_1BIT_SELECT
		PORT MAP(	ENA1KHZ	=> ENA1KHZ,
						CKHT		=> CKHT,
						Q 			=> SEL_1B);
	
	IC4 : ENTITY WORK.DAHOP_2KENH
		PORT MAP(	SEL_1B	=> SEL_1B,
						KENH_UOT => SO_GMA,
						KENH_I0  => DONVI,
						KENH_I1  => CHUC,
						ANODE		=> ANODE);
						
	IC5 : ENTITY WORK.GIAIMA_7DOAN
		PORT MAP(	SO_GMA	=> SO_GMA,
						SSEG		=> SSEG);


end Behavioral;

