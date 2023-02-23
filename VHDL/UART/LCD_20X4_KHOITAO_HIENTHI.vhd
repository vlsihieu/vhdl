----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:32:25 11/14/2019 
-- Design Name: 
-- Module Name:    LCD_20X4_KHOITAO_HIENTHI - Behavioral 
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

entity LCD_20X4_KHOITAO_HIENTHI is
    Port ( LCD_CK : in  STD_LOGIC;
           LCD_RST : in  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;
           LCD_E : out  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0);
           LCD_H1 : in  STD_LOGIC_VECTOR (159 downto 0);
           LCD_H2 : in  STD_LOGIC_VECTOR (159 downto 0)
			  );
end LCD_20X4_KHOITAO_HIENTHI;

architecture Behavioral of LCD_20X4_KHOITAO_HIENTHI is
TYPE LCD_MACHINE IS (
						LCD_INITIAL,
						
						LCD_ADDR_L1,
						LCD_DATA_L1,
						
						LCD_ADDR_L2,
						LCD_DATA_L2,
						

						
						LCD_STOP);
						
SIGNAL LCD_STATE: LCD_MACHINE := LCD_INITIAL;

TYPE LCD_CMD_TB IS ARRAY (INTEGER RANGE 0 TO 5) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
CONSTANT LCD_CMD : LCD_CMD_TB := (
						0 => X"00",
						1 => X"3C", -- FUNCTITON SET
						2 => X"0C", -- CONTROL DISPLAY
						3 => X"01", -- CLEAR
						4 => X"02", -- RETURN HOME
						5 => X"06"  -- ENTRY MODE SET
						);
TYPE LCD_DIS_L1 IS ARRAY (INTEGER RANGE 0 TO 19) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
TYPE LCD_DIS_L2 IS ARRAY (INTEGER RANGE 0 TO 19) OF STD_LOGIC_VECTOR(7 DOWNTO 0);

SIGNAL LCD_DIS1 : LCD_DIS_L1;
SIGNAL LCD_DIS2 : LCD_DIS_L2;

SIGNAL PTR : INTEGER RANGE 0 TO 19 := 0;
SIGNAL SLX : INTEGER RANGE 0 TO 1000000 := 0;


begin

	PROCESS(LCD_H1, LCD_H2)
	BEGIN
		FOR I IN 0 TO 19
		LOOP 
			LCD_DIS1 (I)	<= LCD_H1((I*8+7) DOWNTO I*8);
			LCD_DIS2 (I)	<= LCD_H2((I*8+7) DOWNTO I*8);
		END LOOP;
	END PROCESS;
	
	PROCESS(LCD_CK, SLX, LCD_RST)
	BEGIN
		IF LCD_RST = '1' THEN 	LCD_STATE 	<= LCD_INITIAL;
										SLX			<= 0;
										PTR			<= 0;
		ELSIF FALLING_EDGE(LCD_CK) THEN 
			CASE LCD_STATE IS
				WHEN LCD_INITIAL => 	LCD_RS 	<= '0';
											SLX		<= SLX + 1;
											IF SLX = 164000 	THEN 	SLX  <= 0;
																			IF PTR = 5 THEN 	LCD_STATE 	<= LCD_ADDR_L1;
																			ELSE					PTR			<= PTR +1;
																			END IF;
											ELSIF SLX = 30 	THEN 	LCD_E <= '0';
											ELSIF SLX = 10 	THEN 	LCD_E <= '1';
											ELSE							LCD_DB<= LCD_CMD(PTR);
											END IF;
---- HANG 1	
				WHEN LCD_ADDR_L1 => 	LCD_RS 	<= '0' ;
											SLX		<= SLX + 1;
											IF SLX = 5000 		THEN 	SLX 			<= 0;
																			LCD_STATE	<= LCD_DATA_L1;
																			PTR 			<= 0;
											ELSIF SLX = 30 	THEN	LCD_E			<= '0';
											ELSIF SLX = 10 	THEN 	LCD_E 		<= '1';
											ELSE 							LCD_DB		<= X"80";
											END IF;
											
				WHEN LCD_DATA_L1 =>	LCD_RS	<= '1';
											SLX		<= SLX +1;
											IF SLX = 5000 		THEN	SLX 			<= 0;
												IF PTR = 19 		THEN 	LCD_STATE 	<= LCD_ADDR_L2;
												ELSE							PTR			<= PTR + 1;
												END IF;
											ELSIF SLX = 30		THEN 	LCD_E 		<= '0';
											ELSIF SLX = 10 	THEN 	LCD_E 		<= '1';
											ELSE							LCD_DB		<= LCD_DIS1(PTR);
											END IF;
											
---- HANG 2
				WHEN LCD_ADDR_L2 => 	LCD_RS 	<= '0';
											SLX		<= SLX + 1;
											IF SLX = 5000 		THEN 	SLX 			<= 0;
																			LCD_STATE	<= LCD_DATA_L2;
																			PTR 			<= 0;
											ELSIF SLX = 30 	THEN	LCD_E			<= '0';
											ELSIF SLX = 10 	THEN 	LCD_E 		<= '1';
											ELSE 							LCD_DB		<= X"C0";
											END IF;
											
				WHEN LCD_DATA_L2 =>	LCD_RS	<= '1';
											SLX		<= SLX +1;
											IF SLX = 5000 		THEN	SLX 			<= 0;
												IF PTR = 19 		THEN 	LCD_STATE 	<= LCD_STOP;
												ELSE							PTR			<= PTR + 1;
												END IF;
											ELSIF SLX = 30		THEN 	LCD_E 		<= '0';
											ELSIF SLX = 10 	THEN 	LCD_E 		<= '1';
											ELSE							LCD_DB		<= LCD_DIS2(PTR);
											END IF;
											
---- END SAU HANG 
				WHEN LCD_STOP 	=>		SLX	<= SLX + 1;
											IF SLX = 1000000	THEN 	SLX 			<= 0;
																			LCD_STATE	<= LCD_ADDR_L1;
											END IF;
				END CASE;
			END IF;
		END PROCESS;
											


end Behavioral;
