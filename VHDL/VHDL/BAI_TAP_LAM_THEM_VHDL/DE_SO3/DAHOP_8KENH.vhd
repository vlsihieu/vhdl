----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:34 10/23/2019 
-- Design Name: 
-- Module Name:    DAHOP_8KENH - Behavioral 
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

entity DAHOP_8KENH is
    Port ( SEL_3B : in  STD_LOGIC_VECTOR (2 downto 0);
           LED70, LED71 : in  STD_LOGIC_VECTOR (3 downto 0);
           LED72, LED73 : in  STD_LOGIC_VECTOR (3 downto 0);
           LED74, LED75 : in  STD_LOGIC_VECTOR (3 downto 0);
           LED76, LED77 : in  STD_LOGIC_VECTOR (3 downto 0);
           DC_8LED : in  STD_LOGIC_VECTOR (7 downto 0);
           ENA_8LED : in  STD_LOGIC_VECTOR (7 downto 0);
           DC_1LED : out  STD_LOGIC;
           ENA_1LED : out  STD_LOGIC;
           SO_GMA : out  STD_LOGIC_VECTOR (3 downto 0));
end DAHOP_8KENH;

architecture Behavioral of DAHOP_8KENH is

begin

	PROCESS(SEL_3B, LED70, LED71, LED72, LED73, LED74, LED75, LED76, LED77)
	BEGIN
		CASE SEL_3B IS
			WHEN "000" => SO_GMA <= LED70;
			WHEN "001" => SO_GMA <= LED71;
			WHEN "010" => SO_GMA <= LED72;
			WHEN "011" => SO_GMA <= LED73;
			WHEN "100" => SO_GMA <= LED74;
			WHEN "101" => SO_GMA <= LED75;
			WHEN "110" => SO_GMA <= LED76;
			WHEN OTHERS=> SO_GMA <= LED77;

		END CASE;
	END PROCESS;
	
	PROCESS(SEL_3B, DC_8LED)
	BEGIN
		CASE SEL_3B IS
			WHEN "000" => DC_1LED <= DC_8LED(0);
			WHEN "001" => DC_1LED <= DC_8LED(1);
			WHEN "010" => DC_1LED <= DC_8LED(2);
			WHEN "011" => DC_1LED <= DC_8LED(3);
			WHEN "100" => DC_1LED <= DC_8LED(4);
			WHEN "101" => DC_1LED <= DC_8LED(5);
			WHEN "110" => DC_1LED <= DC_8LED(6);
			WHEN OTHERS=> DC_1LED <= DC_8LED(7);
		END CASE;
	END PROCESS;
	
	PROCESS(SEL_3B, ENA_8LED)
	BEGIN
		CASE SEL_3B IS
			WHEN "000" => ENA_1LED <= ENA_8LED(0);
			WHEN "001" => ENA_1LED <= ENA_8LED(1);
			WHEN "010" => ENA_1LED <= ENA_8LED(2);
			WHEN "011" => ENA_1LED <= ENA_8LED(3);
			WHEN "100" => ENA_1LED <= ENA_8LED(4);
			WHEN "101" => ENA_1LED <= ENA_8LED(5);
			WHEN "110" => ENA_1LED <= ENA_8LED(6);
			WHEN OTHERS=> ENA_1LED <= ENA_8LED(7);
		END CASE;
	END PROCESS;

end Behavioral;

