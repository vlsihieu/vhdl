----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:54:09 10/08/2019 
-- Design Name: 
-- Module Name:    DS18B20_TEMPERATURE - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DS18B20_TEMPERATURE is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           DS18B20 : inout  STD_LOGIC;
           DS_PRESENT : out  STD_LOGIC;
           TEMPERATURE : out  STD_LOGIC_VECTOR(11 DOWNTO 0));
end DS18B20_TEMPERATURE;

architecture Behavioral of DS18B20_TEMPERATURE is

CONSTANT ML_SKIP_ROM:	STD_LOGIC_VECTOR(7 DOWNTO 0):= X"CC";
CONSTANT ML_CONVERT:		STD_LOGIC_VECTOR(7 DOWNTO 0):= X"44";
CONSTANT ML_READ_SCRAT:	STD_LOGIC_VECTOR(7 DOWNTO 0):= X"BE";

TYPE STATE_TYPE IS	(
	RESET,
	SKIP_ROM,
	WRITE_BYTE,
	WRITE_BIT_0,
	WRITE_BIT_1,
	READ_BIT,
	CONVERT_T,
	READ_SCRAT,
	GET_TEMP,
	WAIT4MS
	);
	
SIGNAL STATE:			STATE_TYPE:= RESET;
SIGNAL J:				INTEGER RANGE 0 TO 200001:=0;
SIGNAL WR_STATE_I:	INTEGER RANGE 0 TO 4:=0;

SIGNAL S_WR_BIT_0:	INTEGER RANGE 0 TO 2:=0;
SIGNAL S_WR_BIT_1:	INTEGER RANGE 0 TO 2:=0;
SIGNAL S_RST:			INTEGER RANGE 0 TO 3:=0;
SIGNAL S_RD_BIT:		INTEGER RANGE 0 TO 3:=0;

SIGNAL PTR:				INTEGER RANGE 0 TO 13:=0;
SIGNAL DS_IN:			STD_LOGIC;
SIGNAL DS_OUT:			STD_LOGIC;
SIGNAL DS_ENA:			STD_LOGIC;
SIGNAL WR_BYTE:		STD_LOGIC_VECTOR(7 DOWNTO 0):= X"00";
SIGNAL TEMP:			STD_LOGIC_VECTOR(11 DOWNTO 0);

begin

	DS18B20	<= DS_OUT WHEN DS_ENA = '1' ELSE
					'Z';
	
	PROCESS(STATE, CKHT, RST)
	BEGIN
		IF		(RST = '1')	THEN	STATE			<= RESET;
										WR_STATE_I	<= 0;
										S_WR_BIT_1	<= 0;
										S_WR_BIT_0	<= 0;
										PTR			<= 0;
										S_RD_BIT		<= 0;
										WR_BYTE		<= "00000001";
										
		ELSIF	RISING_EDGE( CKHT) THEN
			CASE	STATE IS
				WHEN RESET =>
					CASE S_RST IS
						WHEN 0 =>	DS_OUT	<= '0';
										DS_ENA	<= '1';
										IF J = 25000 THEN J		<= 0;
																S_RST	<= 1;						
										ELSE					J		<= J+1;
										END IF;
										
						WHEN 1 =>	DS_ENA	<= '0';
										IF J = 500 THEN 	J		<= 0;
																S_RST	<= 2;
										ELSE					J		<= J+1;
										END IF;
										
						WHEN 2 =>	DS_ENA	<= '0';
										IF J = 12000 THEN J		<= 0;
																S_RST	<= 3;
										ELSE					J		<= J+1;
										END IF;
										
										IF J = 3000 THEN 	DS_PRESENT	<= DS18B20;
																DS_IN			<= DS18B20;
										END IF;
										
						WHEN 3 =>	S_RST		<= 0;
										IF DS_IN = '0' THEN	STATE		<= SKIP_ROM;
										ELSE						STATE		<= RESET;
										END IF;
										
						WHEN OTHERS => 						STATE		<= RESET;
					END CASE;
				
				WHEN SKIP_ROM	=>	WR_BYTE	<= ML_SKIP_ROM;
										STATE		<= WRITE_BYTE;
										
				WHEN WRITE_BYTE=>
					CASE PTR IS
						WHEN 0 TO 7	=> IF (WR_BYTE(PTR)='0')	THEN
														STATE	<=	WRITE_BIT_0;
											ELSE		STATE	<= WRITE_BIT_1;
											END IF;
											PTR	<= PTR + 1;
											
						WHEN 8		=> IF (WR_STATE_I=0)	THEN WR_STATE_I	<= 1;
																STATE	<= CONVERT_T;
																
											ELSIF (WR_STATE_I=1) THEN WR_STATE_I	<= 2;
																STATE	<= RESET;
																
											ELSIF (WR_STATE_I=2) THEN WR_STATE_I	<= 3;
																STATE	<= READ_SCRAT;
																
											ELSIF (WR_STATE_I=3) THEN WR_STATE_I	<= 0;
																STATE	<= GET_TEMP;
																
											END IF;
											PTR	<= 0;
											
						WHEN OTHERS	=> STATE	<= RESET;	
					END CASE;
				
				WHEN WRITE_BIT_0	=>
					CASE S_WR_BIT_0 IS
						WHEN 0		=> DS_OUT	<= '0';
											DS_ENA	<= '1';
											IF (J=3500) THEN	J <= 0;
																	S_WR_BIT_0	<= 1;
											ELSE					J <= J+1;
											END IF;
											
						WHEN 1		=> DS_ENA	<= '0';
											IF (J=250) THEN	J <= 0;
																	S_WR_BIT_0	<= 0;
																	STATE <= WRITE_BYTE;
											ELSE					J <= J+1;
											END IF;
						
						WHEN OTHERS	=> S_WR_BIT_0	<= 0;
					END CASE;
				
				WHEN WRITE_BIT_1	=>
					CASE S_WR_BIT_1 IS
						WHEN 0		=> DS_OUT	<= '0';
											DS_ENA	<= '1';
											IF (J=400) THEN	J <= 0;
																	S_WR_BIT_1	<= 1;
											ELSE					J <= J+1;
											END IF;
											
						WHEN 1		=> DS_ENA	<= '0';
											IF (J=3600) THEN	J <= 0;
																	S_WR_BIT_1	<= 0;
																	STATE <= WRITE_BYTE;
											ELSE					J <= J+1;
											END IF;
						
						WHEN OTHERS	=> S_WR_BIT_1	<= 0;
					END CASE;
					
				WHEN CONVERT_T		=>	WR_BYTE	<=	ML_CONVERT;
											STATE		<= WRITE_BYTE;
											
				WHEN READ_SCRAT	=> WR_BYTE	<= ML_READ_SCRAT;
											STATE		<= WRITE_BYTE;
											
				WHEN READ_BIT		=>
					CASE S_RD_BIT IS
						WHEN 0		=>	DS_OUT	<= '0';
											DS_ENA	<= '1';
											IF (J=200) THEN	S_RD_BIT	<= 1;
																	J <= 0;
											ELSE					J <= J+1;
											END IF;
											
						WHEN 1		=> DS_ENA	<= '0';
											IF (J=200) THEN	S_RD_BIT	<= 2;
																	J <= 0;
											ELSE					J <= J+1;
											END IF;
											
						WHEN 2		=> DS_ENA	<= '0';
											DS_IN		<= DS18B20;
											IF (J=50)	 THEN	S_RD_BIT	<= 3;
																	J <= 0;
											ELSE					J <= J+1;
											END IF;
											
						WHEN 3		=> DS_ENA	<= '0';
											IF (J=2750)	 THEN	J <= 0;
																	S_RD_BIT	<= 0;
																	STATE	<= GET_TEMP;
											ELSE					J <= J+1;
											END IF;
						
						WHEN OTHERS	=> S_RD_BIT	<= 0;
					END CASE;
				
				WHEN GET_TEMP		=>
					CASE PTR IS
						WHEN 0		=>	STATE	<= READ_BIT;
											PTR	<= PTR + 1;
											
						WHEN 1 TO 12=>	STATE	<= READ_BIT;
											TEMP(PTR-1)<= DS_IN;
											PTR	<= PTR + 1;
											
						WHEN 13		=> PTR <= 0;
											STATE	<= WAIT4MS;
					END CASE;
					
				WHEN WAIT4MS		=> IF (J>=200000) THEN	STATE	<= RESET;
																		J		<= 0;
											ELSE						J		<= J + 1;
																		STATE	<= WAIT4MS;
											END IF;
											
				WHEN OTHERS			=> STATE	<= RESET;
			END CASE;
		END IF;
	END PROCESS;
	
	TEMPERATURE	<= TEMP;
	
end Behavioral;

