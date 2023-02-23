library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
USE ieee.std_logic_arith.all;
entity ControlLEDUart is
	port(
	clk:in std_logic;	
	-- UART
	UART_TXD : out std_logic;
	UART_RXD : in std_logic;
	-- UART
	--LED
	LED : out std_logic_vector(3 downto 0) := "1111"
	--LED
	--BUTTON
	--BUTTON
	);
end ControlLEDUart;

architecture haha of ControlLEDUart is
	-- UART
	signal tx_data: std_logic_vector (7 downto 0);
	signal tx_start: std_logic :='0';
	signal tx_busy: std_logic;
	signal rx_data: std_logic_vector (7 downto 0);
	signal rx_busy: std_logic;
	signal convet : std_logic := '0';
	component TX
	port(
	  clk      : in std_logic;
	  start    : in std_logic;
	  busy     : out std_logic;
	  data     : in std_logic_vector(7 downto 0);
	  tx_line  : out std_logic
	);
	end component TX;
-----------------------------------
	component RX
	port(
	  clk      : in std_logic;
	  rx_line  : in std_logic;
	  
	  data     : out std_logic_vector(7 downto 0);
	  busy     : out std_logic
	);
	end component RX;
	-- UART
begin
	-- UART
	U1: TX port map (clk, tx_start, tx_busy, tx_data, UART_TXD);
	U2: RX port map (clk, UART_RXD, rx_data, rx_busy);
	-- UART
--UART
	process(clk,rx_busy)
	variable LED_TG : std_logic_vector(3 downto 0):= "1111";
	variable count : integer range 0 to 50000001 := 0;
	variable compa_rx : integer range 0 to 99 ;
	begin
		if(falling_edge(rx_busy)) then
			compa_rx := CONV_INTEGER(rx_data);
		end if;
		if(rising_edge(clk)) then
			case compa_rx is
			when 1 => LED(0) <= '0';
			when 2 => LED(0) <= '1';
			when 3 => LED(1) <= '0';
			when 4 => LED(1) <= '1';
			when 5 => LED(2) <= '0';
			when 6 => LED(2) <= '1';
			when 7 => LED(3) <= '0';
			when 8 => LED(3) <= '1';
			when 9 => count := count +1;
				if ( count = 25000000) then
					LED <= "0000";
				end if;
				if ( count = 50000000) then
					LED <= "1111";
					count := 0;
				end if;	
			when 10 => count := count +1;
				if ( count = 25000000) then
					LED <= "0101";
				end if;
				if ( count = 50000000) then
					LED <="1010";
					count := 0;
				end if;		
			when 11 => count := count +1;
				if ( count = 50000000) then
					LED_TG := LED_TG + 1;
					LED <= LED_TG;
					count := 0;
				end if;	
			when 12 => count := count +1;
				if ( count = 50000000) then
					LED_TG := LED_TG + "0010";
					LED <= LED_TG;
					count := 0;
				end if;	
			when others => 
		end case;
	end if;
	end process;
	process(clk)
	variable count : integer range 0 to 50000001 := 0;
	begin
		count := count +1;
		if(count = 500000) then
			if (convet = '0') then
				tx_data <= "01000101";
				tx_start <= '1';
				convet<= not convet;
			end if;
			if (convet = '1') then 
				tx_data <= "01010100";
				tx_start <= '1';
				convet <= not convet;
			end if;
			count := 0;
		end if;
	end process;
	--UART
end haha;