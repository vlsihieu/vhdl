----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:30:21 10/22/2019 
-- Design Name: 
-- Module Name:    DEM_0_9999_HT_7DOAN - Behavioral 
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
library IEEE;--ok
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

entity DEM_0_9999_HT_7DOAN is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
           SW : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           SSEG : out  STD_LOGIC_VECTOR (6 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end DEM_0_9999_HT_7DOAN;

architecture Behavioral of DEM_0_9999_HT_7DOAN is
SIGNAL ENA_DB, ENA5HZ, ENA20HZ : 	STD_LOGIC;
SIGNAL RST : 		STD_LOGIC;
SIGNAL ENA1KHZ : 	STD_LOGIC;
SIGNAL SEL_2B : 	STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SO_GMA : 	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DONVI : 	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC : 		STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL TRAM : 		STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL NGHIN : 	STD_LOGIC_VECTOR(3 DOWNTO 0);
begin

	RST <= BTN;
	
	ENA_DB <= 	ENA5HZ WHEN SW(1) = '1' ELSE
					ENA20HZ ;
					
	IC1 : ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT 		=> CKHT,
						ENA5HZ 	=> ENA5HZ,
						ENA20HZ	=> ENA20HZ,
						ENA1KHZ	=> ENA1KHZ);
						
	IC2 : ENTITY WORK.DEM_4SO  -- CHINH SUA
		PORT MAP(	CKHT		=> CKHT,
						RST		=> RST,
						ENA_SS	=> SW(0),
						ENA_DB	=> ENA_DB,
						DONVI		=> DONVI,
						CHUC		=> CHUC,
						TRAM		=> TRAM,
						NGHIN		=> NGHIN);
						
	IC3 : ENTITY WORK.DEM_2BIT_SELECT -- CHINH SUA
		PORT MAP(	ENA1KHZ	=> ENA1KHZ,
						CKHT		=> CKHT,
						Q 			=> SEL_2B);
	
	IC4 : ENTITY WORK.DAHOP_4KENH -- CHINH SUA
		PORT MAP(	SEL_2B	=> SEL_2B,
						KENH_OUT => SO_GMA,
						KENH_I0  => DONVI,
						KENH_I1  => CHUC,
						KENH_I2  => TRAM,
						KENH_I3	=> NGHIN,
						ANODE		=> ANODE);
						
	IC5 : ENTITY WORK.GIAIMA_7DOAN
		PORT MAP(	SO_GMA	=> SO_GMA,
						SSEG		=> SSEG);

end Behavioral;

