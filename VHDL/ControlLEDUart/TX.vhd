library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TX is
port(
  clk      : in std_logic;
  start    : in std_logic;	-- tín hi?u b?t d?u cho phép truy?n d? li?u
  busy     : out std_logic;	
  data     : in std_logic_vector(7 downto 0);	
  tx_line  : out std_logic	-- du?ng truy?n tín hi?u 
);
end TX;


architecture main of TX is
signal PRSCL: integer range 0 to 5208:= 0;	-- xung d?ng b? t?c d? baud 9600bps
signal index: integer range 0 to 9:=0;
signal datafll: std_logic_vector(9 downto 0);	-- frame data
signal tx_flg: std_logic:='0';
begin
process(clk)
begin 

if (rising_edge(clk))then
  if(tx_flg = '0' and start = '1')then	-- có xung start = 1 b?t d?y truy?n 
    tx_flg <= '1';
	 busy<='1';
	 datafll(0)<='0';							-- thi?t l?p khung d? li?u
	 datafll(9)<= '1';
	 datafll(8 downto 1) <= data;
  end if; 
  if (tx_flg = '1') then
    if (PRSCL < 5207) then
			PRSCL <= PRSCL + 1;
		 else
			PRSCL<=0;
	 end if;
	 if (PRSCL = 2800) then  -- x? lý d? li?u ? gi?a xung
	    tx_line <= datafll(index); -- dua d? li?u l?n lu?t vào chân TX
		 if (index<9) then
			index <= index + 1;
		 else
			 tx_flg<='0';
			 busy<='0';
			 index <=0;
		 end if;
	 end if;
	end if;
end if;
end process;
end main;
	 



