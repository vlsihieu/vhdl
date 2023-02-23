----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:04:50 10/10/2019 
-- Design Name: 
-- Module Name:    DEM_0_9_HT_7DOAN - Behavioral 
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

entity DEM_0_9_HT_7DOAN is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
           SW : in  STD_LOGIC;
           ANODE : OUT  STD_LOGIC_VECTOR (7 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (6 downto 0));
end DEM_0_9_HT_7DOAN;

architecture Behavioral of DEM_0_9_HT_7DOAN is
SIGNAL ENA_DB : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL DONVI: STD_LOGIC_VECTOR(3 DOWNTO 0);

begin
	
	RST <= BTN;
	ANODE	<= "11111110";
	
	IC1 : ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT	=> CKHT,
						ENA1HZ=> ENA_DB);
						
	IC2 : ENTITY WORK.DEM_1SO
		PORT MAP(	CKHT	=> CKHT,
						RST	=> RST,
						ENA_DB=> ENA_DB,
						ENA_SS=> SW,
						DONVI => DONVI);
						
	IC3 : ENTITY WORK.GIAIMA_7DOAN
		PORT MAP(	SO_GMA	=> DONVI,
						SSEG		=> SSEG);
						

end Behavioral;

