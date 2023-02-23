----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:17:29 10/17/2016 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DAHOP_8KENH is
    Port ( SEL_3B : in  STD_LOGIC_VECTOR (2 downto 0);
           LED70,LED71,LED72,LED73,LED74,LED75,LED76,LED77 : in  STD_LOGIC_VECTOR (3 downto 0);
           DAU_CHAM_8LED : in  STD_LOGIC_VECTOR (7 downto 0);
           ENA_GIAIMA_8LED : in  STD_LOGIC_VECTOR (7 downto 0);
           DAU_CHAM_1LED, ENA_GIAIMA_1LED : out  STD_LOGIC;
           SO_GIAIMA : out  STD_LOGIC_VECTOR (3 downto 0));
end DAHOP_8KENH;

architecture Behavioral of DAHOP_8KENH is

begin
	PROCESS(SEL_3B,LED70,LED71,LED72,LED73,LED74,LED75,LED76,LED77,DAU_CHAM_8LED,ENA_GIAIMA_8LED)
	BEGIN
		CASE SEL_3B IS
			WHEN "000" => SO_GIAIMA	<=LED70;
			WHEN "001" => SO_GIAIMA	<=LED71;
			WHEN "010" => SO_GIAIMA	<=LED72;
			WHEN "011" => SO_GIAIMA	<=LED73;
			WHEN "100" => SO_GIAIMA	<=LED74;
			WHEN "101" => SO_GIAIMA	<=LED75;
			WHEN "110" => SO_GIAIMA	<=LED76;
			WHEN OTHERS => SO_GIAIMA <=LED77;
		END CASE;
	END PROCESS;
	
	PROCESS(SEL_3B,DAU_CHAM_8LED)
	BEGIN
			CASE SEL_3B IS
			WHEN "000" =>  DAU_CHAM_1LED <=DAU_CHAM_8LED(0);
			WHEN "001" =>  DAU_CHAM_1LED <=DAU_CHAM_8LED(1);
			WHEN "010" =>  DAU_CHAM_1LED <=DAU_CHAM_8LED(2);
			WHEN "011" =>  DAU_CHAM_1LED <=DAU_CHAM_8LED(3);
			WHEN "100" =>  DAU_CHAM_1LED <=DAU_CHAM_8LED(4);
			WHEN "101" =>  DAU_CHAM_1LED <=DAU_CHAM_8LED(5);
			WHEN "110" =>  DAU_CHAM_1LED <=DAU_CHAM_8LED(6);
			WHEN OTHERS => DAU_CHAM_1LED <=DAU_CHAM_8LED(7);
		END CASE;
	END PROCESS;
	
	PROCESS(SEL_3B,ENA_GIAIMA_8LED)
	BEGIN
			CASE SEL_3B IS
			WHEN "000" =>  ENA_GIAIMA_1LED <=ENA_GIAIMA_8LED(0);
			WHEN "001" =>  ENA_GIAIMA_1LED <=ENA_GIAIMA_8LED(1);
			WHEN "010" =>  ENA_GIAIMA_1LED <=ENA_GIAIMA_8LED(2);
			WHEN "011" =>  ENA_GIAIMA_1LED <=ENA_GIAIMA_8LED(3);
			WHEN "100" =>  ENA_GIAIMA_1LED <=ENA_GIAIMA_8LED(4);
			WHEN "101" =>  ENA_GIAIMA_1LED <=ENA_GIAIMA_8LED(5);
			WHEN "110" =>  ENA_GIAIMA_1LED <=ENA_GIAIMA_8LED(6);
			WHEN OTHERS => ENA_GIAIMA_1LED <=ENA_GIAIMA_8LED(7);
		END CASE;
	END PROCESS;
	
end Behavioral;

