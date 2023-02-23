----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:31:06 11/07/2019 
-- Design Name: 
-- Module Name:    DEM_NHI_PHAN_0_999_HT_7DOAN - Behavioral 
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

entity DEM_NHI_PHAN_0_999_HT_7DOAN is
    Port ( CKHT : in  STD_LOGIC;
           SW : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           BTN : in  STD_LOGIC;
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end DEM_NHI_PHAN_0_999_HT_7DOAN;

architecture Behavioral of DEM_NHI_PHAN_0_999_HT_7DOAN is
SIGNAL ENA_DB, ENA1KHZ, RST : 	STD_LOGIC;
SIGNAL ENA1HZ, ENA20HZ		 : 	STD_LOGIC;
SIGNAL DONVI, CHUC, TRAM : 		STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL DEM :							STD_LOGIC_VECTOR (9 DOWNTO 0) := "0000000000"; -- CHINH SUA
SIGNAL DC_8LED : 						STD_LOGIC_VECTOR (7 DOWNTO 0) ;
SIGNAL ENA_8LED : 					STD_LOGIC_VECTOR (7 DOWNTO 0) ;
begin

	RST <= BTN;
	DC_8LED  <= X"FF";
	ENA_DB <= 	ENA20HZ WHEN SW(1) = '1' ELSE
					ENA1HZ  ;
	
	IC1 : ENTITY WORK.XOA_SO_0_VN
		PORT MAP(	CHUC	=> CHUC,
						TRAM	=> TRAM,
						ENA_8LED=> ENA_8LED);
						
	IC2: ENTITY WORK.CHIA_10ENA
		PORT MAP(	CKHT	=> CKHT,
						ENA20HZ=> ENA20HZ,
						ENA1HZ => ENA1HZ,
						ENA1KHZ=> ENA1KHZ);
						
	IC3: ENTITY WORK.DEM_10BIT -- CHINH SUA
		PORT MAP(	CKHT	=> CKHT,
						RST	=> RST,
						ENA_DB=> ENA_DB,
						ENA_SS=> SW(0), -- CHINH SUA
						DEM	=> DEM);
	IC4: ENTITY WORK.HEXTOBCD_10BIT -- CHINH SUA
		PORT MAP(	SOHEX10BIT	=> DEM, -- CHINH SUA
						DONVI			=> DONVI,
						CHUC			=> CHUC,
						TRAM			=> TRAM);
						
	IC5: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	CKHT		=> CKHT,
						ENA1KHZ	=> ENA1KHZ,
						LED70		=> DONVI,
						LED71		=> CHUC,
						LED72		=> TRAM,
						LED73		=> X"F",
						LED74		=> X"F",
						LED75		=> X"F",
						LED76		=> X"F",
						LED77		=> X"F",
						DC_8LED	=> DC_8LED,
						ENA_8LED	=> ENA_8LED,
						ANODE		=> ANODE,
						SSEG		=> SSEG);

end Behavioral;

