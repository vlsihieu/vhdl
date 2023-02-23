----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:34:04 11/24/2019 
-- Design Name: 
-- Module Name:    DHT11_HU_TEMP - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DHT11_HU_TEMP is
    Port ( CKHT, RST : in  STD_LOGIC;
           DHT11 : inout  STD_LOGIC;
           DHT11_PRE : out  STD_LOGIC;
           HU_TE_OUT : out  STD_LOGIC_VECTOR (39 downto 0));
end DHT11_HU_TEMP;

architecture Behavioral of DHT11_HU_TEMP is
CONSTANT N: INTEGER := 5000000;
TYPE STATE_TYPE IS (
	RESET,
	GET_HUMI_TEMP,
	READ_BIT,
	WAIT_MS
	);
SIGNAL STATE:				STATE_TYPE:= RESET;	
SIGNAL J:					INTEGER RANGE 0 TO N*2:=0;
SIGNAL DHT11_IN: 	STD_LOGIC;
SIGNAL DHT11_OUT: STD_LOGIC;
SIGNAL DHT11_ENA: STD_LOGIC;
SIGNAL DHT_DATA: STD_LOGIC;

SIGNAL S_RST:				INTEGER RANGE 0 TO 7:=0;
SIGNAL S_RD_BIT:			INTEGER RANGE 0 TO 3:=0;	
SIGNAL RD_PTR:				INTEGER RANGE 0 TO 42:=0;	
begin
		DHT11 <= DHT11_OUT WHEN DHT11_ENA = '1' ELSE
				  'Z';
	PROCESS (STATE, CKHT, RST)
		BEGIN
			IF(RST = '1') THEN STATE 			<= RESET;
									 S_RD_BIT 		<= 0;
									 S_RST			<= 0;
									 RD_PTR			<= 0;
			ELSIF	FALLING_EDGE(CKHT) THEN
				CASE STATE IS
					WHEN RESET	=>
						CASE S_RST IS
							WHEN 0 => DHT11_OUT <= '0';
										 IF J = 3000 THEN  J 		<= 0;
																 S_RST 	<= 1;
										 ELSE					 J 		<= J + 1;
										 END IF;
										 
							WHEN 1 => DHT11_OUT <= '0';
										 DHT11_ENA <= '1';
										 IF J = 1250000 THEN  	J 		 	<= 0;
																		S_RST 	<= 2;
										 ELSE					 		J 		<= J + 1;
										 END IF;
										 
							WHEN 2 => 
										 DHT11_ENA <= '0';
										 IF J = 3000 THEN  		J 		 	<= 0;
																		S_RST 	<= 3;
										 ELSE					 		J 		<= J + 1;
										 END IF;
										 
--DHT11 KEO VE 0
							WHEN 3 => DHT11_ENA  <= '0';
										 DHT11_IN 	<= DHT11;
										 IF J = 4000 THEN  		J 		 	<= 0;
																		S_RST 	<= 7;
										 ELSE					 		J 		<= J + 1;
											IF	DHT11_IN = '0' THEN S_RST <= 4;
																		  J	<= 	0;
											END IF;
										 END IF;
--DHT11 KEO LEN 1
							WHEN 4 => DHT11_ENA  <= '0';
										 DHT11_IN 	<= DHT11;
										 IF J = 4000 THEN  		J 		 	<= 0;
																		S_RST 	<= 7;
										 ELSE					 		J 		<= J + 1;
											IF	DHT11_IN = '1' THEN S_RST <= 5;
																		  J	<= 	0;
											END IF;
										 END IF;
--DHT11 KEO VE 0 LÀ KET THUC
							WHEN 5 => DHT11_ENA  <= '0';
										 DHT11_IN 	<= DHT11;
										 IF	DHT11_IN = '0' THEN S_RST <= 6;
																		  J	<= 	0;
										 END IF;		
							WHEN 6 => S_RST 		<= 0;
										 STATE 		<= GET_HUMI_TEMP;
										 DHT11_PRE 	<= '0';
							WHEN 7 => S_RST 		<= 0;
										 STATE 		<= RESET;
										 DHT11_PRE 	<= '1';		
							WHEN OTHERS => STATE <= RESET;
						END CASE;
						
					WHEN GET_HUMI_TEMP =>
						CASE RD_PTR IS
							WHEN 0 => STATE 	<= READ_BIT;
										 RD_PTR 	<= RD_PTR + 1;
							
							WHEN 1 TO 40 => STATE 	<= READ_BIT;
												 HU_TE_OUT(40 - RD_PTR) <= DHT_DATA;
												 RD_PTR 	<= RD_PTR + 1;
												 IF RD_PTR = 40 THEN 	STATE 	<= WAIT_MS;
																				RD_PTR 	<= 0;
												 END IF;
							
							WHEN 41 => 	RD_PTR 	<= 0;
											STATE 	<= WAIT_MS;

							WHEN OTHERS => STATE 	<= GET_HUMI_TEMP;
						END CASE;
						
					WHEN READ_BIT =>
						CASE S_RD_BIT IS
							WHEN 0 => DHT11_ENA  <= '0';
										 DHT11_IN 	<= DHT11;
										 IF DHT11_IN = '0' THEN S_RD_BIT <= 1;
																		J 			<= 0;
										 END IF;
							
							WHEN 1 => DHT11_ENA  <= '0';
										 DHT11_IN 	<= DHT11;
										 IF DHT11_IN = '1' THEN S_RD_BIT <= 2;
																		J 			<= 0;
										 END IF;
							
							WHEN 2 => DHT11_ENA  <= '0';
										 DHT11_IN 	<= DHT11;
										 IF DHT11_IN = '1' THEN J <= J+1;
										 ELSE
											S_RD_BIT <= 3;
											IF J > 2000 THEN DHT_DATA <= '1';
											ELSE				  DHT_DATA <= '0';
											END IF;
										 END IF;
							
							WHEN 3 => S_RD_BIT <= 0; J <= 0;
										 STATE	 <= GET_HUMI_TEMP;
							
							WHEN OTHERS => S_RD_BIT <= 0;
												STATE	 <= GET_HUMI_TEMP;
						END CASE;
					WHEN WAIT_MS	=> J <= J +1;
											IF (J >= N*2) THEN STATE <= RESET;
											ELSE						 J		 <= 0;

											END IF;
					WHEN OTHERS		=> STATE <= RESET;
				END CASE;
			END IF;
		END PROCESS;
end Behavioral;

