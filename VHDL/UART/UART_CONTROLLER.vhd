library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity UART_CONTROLLER is
    GENERIC (
	          DBIT : INTEGER:=8;
	          SB_TICK : INTEGER:=16;
				 DVSR : INTEGER:=163;
				 DVSR_BIT : INTEGER:=9;
				 FIFO_W : INTEGER:=2
				 );
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           UART_RX : in  STD_LOGIC;
			  UART_TX : out  STD_LOGIC;
           FIFO_UART_RX_ENA_RD : in std_logic;
			  FIFO_UART_RX_DATA_RD : OUT std_logic_VECTOR(7 DOWNTO 0);
			  FIFO_UART_RX_EMPTY : OUT std_logic;

           FIFO_UART_TX_ENA_WR : in std_logic;
			  FIFO_UART_TX_DATA_WR : in std_logic_VECTOR(7 DOWNTO 0);
			  FIFO_UART_TX_FULL : OUT std_logic		  
			  );
end UART_CONTROLLER;

architecture Behavioral of UART_CONTROLLER is
signal s_tick:  STD_LOGIC;
signal UART_RX_FIFO_IN: std_logic_VECTOR(7 DOWNTO 0);
SIGNAL UART_RX_DONE_TICK:  STD_LOGIC;
SIGNAL UART_TX_FIFO_OUT:  std_logic_VECTOR(7 DOWNTO 0);
SIGNAL UART_TX_DONE_TICK:  STD_LOGIC;
SIGNAL UART_TX_FIFO_NOT_EMPRY: STD_LOGIC; 
SIGNAL FIFO_UART_TX_EMPTY: STD_LOGIC;

begin

U1: ENTITY WORK.MOD_M_COUNTER(arch)
   GENERIC MAP ( M => DVSR,
	              N => DVSR_BIT )
	PORT MAP( CKHT => CKHT,
	          RST  => RST,
				 TICK => S_TICK );
------------------
U2: ENTITY WORK.UART_CONTROLLER_RX(arch)
   GENERIC MAP ( DBIT => DBIT,
	              SB_TICK => SB_TICK )
					  
   PORT MAP(CKHT =>CKHT,
	         RST  => RST,
				S_TICK => S_TICK,
				UART_RX => UART_RX,
				UART_RX_DATA => UART_RX_FIFO_IN,
				UART_RX_DONE_TICK   => UART_RX_DONE_TICK );
--------------
U3: ENTITY WORK.FIFO_RX(arch)
   GENERIC MAP ( B => DBIT,
	              W => FIFO_W )
					  
   PORT MAP(CKHT =>CKHT,
	         RST  => RST,
				DATA_WR => UART_RX_FIFO_IN,
				WR => UART_RX_DONE_TICK,
				RD => FIFO_UART_RX_ENA_RD,
				DATA_RD => FIFO_UART_RX_DATA_RD,
				EMPTY => FIFO_UART_RX_EMPTY
				);
------------
U4: ENTITY WORK.UART_CONTROLLER_TX(arch)
   GENERIC MAP ( DBIT => DBIT,
	              SB_TICK => SB_TICK )
					  
   PORT MAP(CKHT =>CKHT,
	         RST  => RST,
				S_TICK => S_TICK,
				UART_TX => UART_TX,
				UART_TX_DATA => UART_TX_FIFO_OUT,
				UART_TX_DONE_TICK   => UART_TX_DONE_TICK,
				UART_TX_FIFO_NOT_EMPRY => UART_TX_FIFO_NOT_EMPRY
				);
------------
UART_TX_FIFO_NOT_EMPRY <= NOT FIFO_UART_TX_EMPTY;
------------
U5: ENTITY WORK.FIFO_TX(arch)
   GENERIC MAP ( B => DBIT,
	              W => FIFO_W )
					  
   PORT MAP(CKHT =>CKHT,
	         RST  => RST,
				RD => UART_TX_DONE_TICK,
				DATA_RD => UART_TX_FIFO_OUT,
				EMPTY => FIFO_UART_TX_EMPTY,
				WR => FIFO_UART_TX_ENA_WR,
				DATA_WR => FIFO_UART_TX_DATA_WR,
				FULL => FIFO_UART_TX_FULL
				);
				
end Behavioral;

