library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--------------------------------
entity sorting_block is
port (clk,rst : in std_logic;
         reg_A : IN  std_logic_vector(3 downto 0);
         reg_B : IN  std_logic_vector(3 downto 0);
         reg_C : IN  std_logic_vector(3 downto 0);
		 max   : OUT std_logic_vector(3 downto 0);
         mid   : OUT std_logic_vector(3 downto 0);
         min   : OUT std_logic_vector(3 downto 0));
 end sorting_block;
-------------------------------- 
architecture Behavioral of sorting_block is

type matrix is array (0 to 2) of std_logic_vector(3 downto 0);
signal mat_temp    : matrix := (others    => "0000"); 
signal temp_mat    : matrix := (others    => "0000"); 
signal temp      : std_logic_vector(3 downto 0):=(others =>'0');

begin

temp_mat(0)<= reg_A;
temp_mat(1)<= reg_B;
temp_mat(2)<= reg_C;

PROCESS(clk,rst)
variable i,j : integer;

BEGIN
	if(rst='1')then
		temp_mat  <= (others =>"0000");
		temp      <= (others =>'0');
	elsif(clk'event AND clk = '1') then
	loop1 :for i in 0 to 3 loop
		loop2 :for j in 3 downto i loop
		if(temp_mat(j-1)>temp_mat(j))then
			temp<=temp_mat(j-1);
			temp_mat(j-1)<=temp_mat(j);
			temp_mat(j)<=temp;
		end if;
		end loop loop2;
	end loop loop1;
	end if;
	max <= temp_mat(2);
	mid <= temp_mat(1);
	min <= temp_mat(0);
END PROCESS;

end Behavioral;