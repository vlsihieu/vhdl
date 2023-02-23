library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RX is
port(
  clk      : in std_logic;
  rx_line  : in std_logic;		
  busy     : out std_logic;	
  data     : out std_logic_vector(7 downto 0)	-- output data luu tr? d? li?u dua di x? lý 
);
end RX;

architecture main of RX is
signal PRSCL: integer range 0 to 5208:= 0;  -- xung d?ng b? t?c d? baud 9600
signal index: integer range 0 to 9:=0; 
signal datafll: std_logic_vector(9 downto 0);	-- frame data
signal rx_flg: std_logic:='0';  -- co bao nhan
begin
process(clk)
begin
   if (rising_edge(clk))then
      if (rx_flg = '0' and rx_line='0')then	--khi nh?n start bit  = 0 b?t d?u nhân d? li?u
      index <= 0;
		PRSCL <= 0;
		busy  <='1';
		rx_flg <='1'; 
		end if;	
	   if (rx_flg='1')then
		datafll(index)<=rx_line;	
		   if (PRSCL<5207)then	
			  PRSCL <= PRSCL +1;
			  else
			  PRSCL <= 0;
			end if;
         if (PRSCL = 3000)then	-- x? lý d? li?u ? gi?a xung nh?n
			  if (index<9) then
			     index <= index +1;
			  else
			     if (datafll(0) = '0' and datafll(9)='1') then -- ki?m tra nh?n d? d? li?u thì k?t thúc nh?n 
				     data <= datafll(8 downto 1);
					  else
					  data <= (others =>'0');
				  end if;
			  rx_flg <='0';
			  busy <='0';	-- c? k?t th?c chuy?n d?i 
			  end if;
			end if;
	   end if;	
   end if;
end process;
end main;