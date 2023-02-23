
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity UART_CONTROLLER_RX is
    GENERIC ( dbit: INTEGER:=8;
	           sb_tick: INTEGER:=16);
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           UART_RX : in  STD_LOGIC;
           S_TICK : in  STD_LOGIC;
           UART_RX_DONE_TICK : OUT  STD_LOGIC;
           UART_RX_DATA : out  STD_LOGIC_VECTOR (7 downto 0));
end UART_CONTROLLER_RX;

architecture Behavioral of UART_CONTROLLER_RX is
type state_type is ( idle,start,data,stop);
signal state_r : state_type;
signal state_n : state_type;
signal s_r,s_n: UNSIGNED (3 downto 0);
signal n_r,n_n: UNSIGNED (2 downto 0);
signal b_r,b_n: std_logic_vector( 7 downto 0);
begin
------------------
PROCESS(CKHT,RST)
BEGIN
  IF RST = '1' THEN state_r <= idle;
                    s_r <= (others =>'0');
						  n_r <= (others =>'0');
						  b_r <= (others =>'0');
  elsif falling_edge(ckht) then  state_r <= state_n;
                                 s_r <= s_n;
											n_r <= n_n;
											b_r <= b_n;
  end if;
END PROCESS;
-------------------------
PROCESS(state_r,s_r,n_r,b_r,s_tick,uart_rx)
BEGIN
  state_n <= state_r;
  s_n <= s_r;
  n_n <=n_r;
  b_n <= b_r;
  uart_rx_done_tick <='0';
  case (state_r) is
     when idle =>  if uart_rx = '0' then state_n <= start;
	                                      s_n <= (others =>'0');
						 end if;
	  when start => if (s_tick = '1')then
	                   if s_r = 7 then  state_n <= data;
							                  s_n <= (others =>'0');
													n_n <= (others =>'0');
							 else             s_n <= s_r + 1;
							 end if;
	                end if;
	  when data => if (s_tick = '1') then
	                   if s_r = 15 then s_n <= (others =>'0');
							     b_n <= uart_rx & b_r( 7 downto 1);
								  if n_r = (dbit-1) then state_n <= stop;
								  else                   n_n <= n_r +1;
								  end if;
							 else             s_n <= s_r + 1;
							 end if;
	                end if;
	  when stop =>  if s_tick = '1' then
	                   if (s_r = (sb_tick -1)) then state_n <= idle;
							                              uart_rx_done_tick <='1';
							 else                         s_n <= s_r + 1;
							 END IF;
	                end if;
  end case;
END PROCESS;
UART_RX_DATA <= b_r;
-----------------------
end Behavioral;

