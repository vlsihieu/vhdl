----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:47:30 02/03/2022 
-- Design Name: 
-- Module Name:    MOD_M_COUNTER - Behavioral 
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
entity FIFO_TX is
    GENERIC ( B: natural:=8;
	           W: natural:=2
				  );
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           RD : in  STD_LOGIC;
           WR : in  STD_LOGIC;
           DATA_WR : in  STD_LOGIC_vector(b-1 downto 0);
           EMPTY : out  STD_LOGIC;
           FULL : out  STD_LOGIC;
           DATA_RD : out  STD_LOGIC_vector(b-1 downto 0) );
end FIFO_TX;

architecture arch of FIFO_TX is
TYPE REG_FILE_TYPE IS ARRAY (2**W-1 DOWNTO 0) OF STD_LOGIC_VECTOR(B-1 DOWNTO 0);

SIGNAL array_r: reg_file_type;
signal w_ptr_r: STD_LOGIC_VECTOR(w-1 DOWNTO 0);
signal w_ptr_n: STD_LOGIC_VECTOR(w-1 DOWNTO 0);
signal w_ptr_succ: STD_LOGIC_VECTOR(w-1 DOWNTO 0);

signal r_ptr_r: STD_LOGIC_VECTOR(w-1 DOWNTO 0);
signal r_ptr_n: STD_LOGIC_VECTOR(w-1 DOWNTO 0);
signal r_ptr_succ: STD_LOGIC_VECTOR(w-1 DOWNTO 0);

signal full_r: STD_LOGIC;
signal full_n: STD_LOGIC;
signal empty_r: STD_LOGIC;
signal empty_n: STD_LOGIC;

signal wr_op: STD_LOGIC_VECTOR(1 DOWNTO 0);
signal wr_en: STD_LOGIC;
begin
-----------------------
process (ckht,rst)
begin
   if rst = '1' then array_r <= (others =>(others=>'0'));
	elsif falling_edge(ckht) then
	      if wr_en = '1' then
			   array_r(conv_integer(unsigned(w_ptr_r))) <= data_wr;
			end if;
	end if;
end process;
-----------------------
data_rd <= array_r(conv_integer(unsigned(r_ptr_r)));
wr_en <= wr and (not full_r);
-----------------------------------------
process (ckht,rst)
begin
   if rst = '1' then  w_ptr_r <= (others=>'0');
	                   r_ptr_r <= (others=>'0');
							 full_r  <= '0';
							 empty_r <= '1';
	elsif falling_edge(ckht) then  w_ptr_r <= w_ptr_n;
	                               r_ptr_r <= r_ptr_n;
							             full_r  <= full_n;
							             empty_r <= empty_n;
	end if;
end process;
-----------------------------------------
w_ptr_succ <= w_ptr_r + 1;
r_ptr_succ <= r_ptr_r + 1;
wr_op <= wr & rd;
-----------------------------------------
process (w_ptr_r, w_ptr_succ,r_ptr_r,r_ptr_succ,wr_op,empty_r,full_r)
begin
  w_ptr_n <= w_ptr_r;
  r_ptr_n <= r_ptr_r;
  full_n <= full_r;
  empty_n <= empty_r;
  case (wr_op) is
     when "00" =>
	  when "01" => if empty_r = '0' then r_ptr_n <= r_ptr_succ;
	                                     full_n <='0';
							if (r_ptr_succ = w_ptr_r) then
							    empty_n <= '1';
							end if;
				      end if;
	  when "10" => if full_r = '0' then w_ptr_n <= w_ptr_succ;
	                                    empty_n <='0';
							if (w_ptr_succ = r_ptr_r) then
							    full_n <= '1';
							end if;
				      end if;
	  when others => w_ptr_n <= w_ptr_succ;
	                 r_ptr_n <= r_ptr_succ;
  end case;
end process;
full <= full_r;
empty <= empty_r;
-----------------------------------------
end arch;

