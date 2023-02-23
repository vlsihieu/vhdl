library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LCD_KHOITAO_HIENTHI_CGRAM_SO_TO is
	Port(	LCD_CK: IN STD_LOGIC;
			LCD_RST: IN STD_LOGIC;
			LCD_HANG_1: IN STD_LOGIC_VECTOR(127 DOWNTO 0);
			LCD_HANG_2: IN STD_LOGIC_VECTOR(127 DOWNTO 0);
			LCD_RS: OUT STD_LOGIC;
			LCD_E: OUT STD_LOGIC;
			LCD_DB: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
end LCD_KHOITAO_HIENTHI_CGRAM_SO_TO;
architecture Behavioral of LCD_KHOITAO_HIENTHI_CGRAM_SO_TO is
TYPE LCD_MACHINE IS(	LCD_INIT,
							LCD_CGRAM_ADDRESS,
							LCD_CGRAM_DATA,
							LCD_ADDR_L1,
							LCD_DATA_L1,
							LCD_ADDR_L2,
							LCD_DATA_L2,
							LCD_STOP);
SIGNAL LCD_STATE: LCD_MACHINE:= LCD_INIT;
TYPE LCD_CMD_TB IS ARRAY(INTEGER RANGE 0 TO 5) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
CONSTANT LCD_CMD: LCD_CMD_TB:= (	0 => X"00",
											1 => X"3C",
											2 => X"0C",
											3 => X"01",
											4 => X"02",
											5 => X"06");
TYPE LCD_DIS_L1 IS ARRAY(INTEGER RANGE 0 TO 15) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
TYPE LCD_DIS_L2 IS ARRAY(INTEGER RANGE 0 TO 15) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LCD_DIS1: LCD_DIS_L1;
SIGNAL LCD_DIS2: LCD_DIS_L2;
TYPE LCD_CGRAM_TABLE IS ARRAY (INTEGER RANGE 0 TO 63) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
CONSTANT LCD_CGRAM: LCD_CGRAM_TABLE:=( 
	X"07",X"0F",X"1F",X"1F",X"1F",X"1F",X"1F",X"1F", --F - 0
	X"1F",X"1F",X"1F",X"00",X"00",X"00",X"00",X"00", --A - 1
	X"1C",X"1E",X"1F",X"1F",X"1F",X"1F",X"1F",X"1F", --B - 2
	X"00",X"00",X"00",X"00",X"00",X"1F",X"1F",X"1F", --D - 3
	
	X"1F",X"1F",X"1F",X"1F",X"1F",X"1F",X"0F",X"07", --E - 4
	X"1F",X"1F",X"1F",X"1F",X"1F",X"1F",X"1E",X"1C", --C- 5
	X"1F",X"1F",X"1F",X"00",X"00",X"00",X"1F",X"1F", --G+D - 6
	X"1F",X"1F",X"1F",X"1F",X"1F",X"1F",X"1F",X"1F" 	--I - 7
	
	);
SIGNAL PTR: INTEGER RANGE 0 TO LCD_CGRAM'HIGH:=0;
SIGNAL SLX: INTEGER RANGE 0 TO 1000000:= 0;
--SIGNAL PTR: INTEGER RANGE 0 TO CGRAM_TIM'HIGH:=0;

begin
	PROCESS(LCD_HANG_1,LCD_HANG_2)
	BEGIN 
		FOR I IN 0 TO 15
		LOOP
			LCD_DIS1(I) <= LCD_HANG_1((I*8+7) DOWNTO I*8);
			LCD_DIS2(I) <= LCD_HANG_2((I*8+7) DOWNTO I*8);
		END LOOP;
	END PROCESS;
	
	PROCESS(LCD_CK, SLX,LCD_RST)
	BEGIN
		IF LCD_RST = '1' THEN LCD_STATE <= LCD_INIT;
									 SLX <= 0;
									 PTR <= 0;
		ELSIF FALLING_EDGE(LCD_CK) THEN
			CASE LCD_STATE IS
				WHEN LCD_INIT => LCD_RS <= '0';
									  SLX <= SLX +1;
					  IF SLX = 164000 THEN SLX <= 0;
							IF PTR = LCD_CGRAM'HIGH THEN LCD_STATE <= LCD_CGRAM_ADDRESS;
							ELSE				 				  PTR <= PTR +1;
							END IF;
					  ELSIF SLX = 30 THEN LCD_E <= '0';
					  ELSIF SLX = 10 THEN LCD_E <= '1';
					  ELSE					 LCD_DB <= LCD_CMD(PTR);
					  END IF;
				
				WHEN LCD_CGRAM_ADDRESS => LCD_RS <= '0';
												  SLX <= SLX +1;
					  IF SLX = 5000 THEN SLX <= 0;
												LCD_STATE <= LCD_CGRAM_DATA;
												PTR <= 0;
					  ELSIF SLX = 30 THEN LCD_E <= '0';
					  ELSIF SLX = 10 THEN LCD_E <= '1';
					  ELSE					 LCD_DB <= X"40";
					  END IF;
	
				WHEN LCD_CGRAM_DATA => 	LCD_RS <= '1';
												SLX <= SLX +1;
					  IF SLX = 5000 THEN SLX <= 0;
							IF PTR = 63 THEN	LCD_STATE <= LCD_ADDR_L1;
							ELSE						PTR <= PTR+1;
							END IF;
					  ELSIF SLX = 30 THEN LCD_E <= '0';
					  ELSIF SLX = 10 THEN LCD_E <= '1';
					  ELSE					 LCD_DB <= LCD_CGRAM(PTR);
					  END IF;
	
				WHEN LCD_ADDR_L1 => LCD_RS <= '0';
										  SLX <= SLX +1;
					  IF SLX = 5000 THEN SLX <= 0;
												LCD_STATE <= LCD_DATA_L1;
												PTR <= 0;
					  ELSIF SLX = 30 THEN LCD_E <= '0';
					  ELSIF SLX = 10 THEN LCD_E <= '1';
					  ELSE					 LCD_DB <= X"80";
					  END IF;
					  
				WHEN LCD_DATA_L1 => LCD_RS <= '1';
										  SLX <= SLX +1;
					  IF SLX = 5000 	THEN SLX <= 0;
							IF PTR = 15 THEN LCD_STATE <= LCD_ADDR_L2;
							ELSE				  PTR <= PTR +1;
							END IF;
					  ELSIF SLX = 30 THEN LCD_E <= '0';
					  ELSIF SLX = 10 THEN LCD_E <= '1';
					  ELSE					 LCD_DB <= LCD_DIS1(PTR);
					  END IF;
				WHEN LCD_ADDR_L2 => LCD_RS <= '0';
										  SLX <= SLX +1;
					  IF SLX = 5000 THEN SLX <= 0;
												LCD_STATE <= LCD_DATA_L2;
												PTR <= 0;
					  ELSIF SLX = 30 THEN LCD_E <= '0';
					  ELSIF SLX = 10 THEN LCD_E <= '1';
					  ELSE					 LCD_DB <= X"C0";
					  END IF;
					  
				WHEN LCD_DATA_L2 => LCD_RS <= '1';
										  SLX <= SLX +1;
					  IF SLX = 5000 	THEN SLX <= 0;
							IF PTR = 15 THEN LCD_STATE <= LCD_STOP;
							ELSE				  PTR <= PTR +1;
							END IF;
					  ELSIF SLX = 30 THEN LCD_E <= '0';
					  ELSIF SLX = 10 THEN LCD_E <= '1';
					  ELSE					 LCD_DB <= LCD_DIS2(PTR);
					  END IF;
				WHEN LCD_STOP => SLX <= SLX +1;
					  IF SLX = 1000000 THEN SLX <= 0;
													LCD_STATE <= LCD_ADDR_L1;
					  END IF;
			END CASE;
		END IF;
	END PROCESS;
end Behavioral;