----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:01:41 02/03/2022 
-- Design Name: 
-- Module Name:    FPGA_LCD_DEM_PC_UART - Behavioral 
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

entity FPGA_LCD_DEM_PC_UART is
    Port ( CKHT : IN STD_LOGIC;
	        BTN0 : IN STD_LOGIC;
			  SW0  : IN STD_LOGIC;
			  UART_RX :  IN STD_LOGIC;
			  UART_TX : OUT STD_LOGIC
			  );
end FPGA_LCD_DEM_PC_UART;

architecture Behavioral of FPGA_LCD_DEM_PC_UART is
SIGNAL RST  :  STD_LOGIC;
SIGNAL UART_TX_FULL : STD_LOGIC;
SIGNAL UART_RX_EMPTY: STD_LOGIC;

SIGNAL UART_RECV_DATA: STD_LOGIC_VECTOR (7 downto 0);
SIGNAL UART_TRANS_DATA: STD_LOGIC_VECTOR (7 downto 0);
SIGNAL UART_ENA_TX: STD_LOGIC;
SIGNAL UART_ENA_RD: STD_LOGIC;

SIGNAL ENA_DB: STD_LOGIC;
SIGNAL ENA_RX: STD_LOGIC;

SIGNAL DEM: STD_LOGIC_VECTOR (7 downto 0);

begin
RST <= not BTN0;

ENA_RX <= CKHT;

IC1: ENTITY WORK.CHIA_10ENA
   PORT MAP(CKHT =>CKHT,
	         ENA5HZ => ENA_DB);

IC2: ENTITY WORK.UART_CONTROLLER
   PORT MAP(CKHT =>CKHT,
	         RST  => RST,
				UART_RX => UART_RX,
				UART_TX => UART_TX,
				FIFO_UART_RX_ENA_RD => UART_ENA_RD,
				FIFO_UART_RX_DATA_RD => UART_RECV_DATA,
				FIFO_UART_RX_EMPTY   => UART_RX_EMPTY,

				FIFO_UART_TX_ENA_WR => UART_ENA_TX,
				FIFO_UART_TX_DATA_WR => UART_TRANS_DATA,
				FIFO_UART_TX_FULL   => UART_TX_FULL
				);

--------------------				
PROCESS(UART_TX_FULL,ENA_DB,SW0,DEM)
BEGIN
  UART_TRANS_DATA <= DEM;
  IF UART_TX_FULL = '0' THEN
     UART_ENA_TX <= ENA_DB AND SW0; -- TAO XUNG PHAT
  ELSE
     UART_ENA_TX <='0';
  END IF;
END PROCESS;
----------------------
UART_ENA_RD <= ENA_RX AND ( NOT UART_RX_EMPTY);

------------------------
IC3: ENTITY WORK.DEM_8BIT
   PORT MAP(CKHT =>CKHT,
	         RST  => RST,
				ENA_SS => SW0,
	         ENA_DB => ENA_DB,
				DEM => DEM
				);
				
end Behavioral;

