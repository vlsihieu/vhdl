----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:35:25 07/17/2020 
-- Design Name: 
-- Module Name:    exem - Behavioral 
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

entity exem is
    Port ( cout : out  STD_LOGIC_VECTOR (15 downto 0);
           enable : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end exem;

--architecture Behavioral of exem is
--
--begin
--
--
--end Behavioral;
architecture rtl of exem is
signal count :std_logic_vector (15 downto 0);
--signal dr,dn : std_logic_vector(15 downto 0);
begin
process (clk, reset)
begin
if (reset = '1') then   count <= (others=>'0');
elsif (rising_edge(clk)) then
    if (count < X"7FFF") then ------7FFF= (32767)
        count <= count + 1;
    end if;
end if;
--if (reset = '1') then   dr <= (others=>'0');
--elsif (rising_edge(clk)) then  dr <= dn;
--end if;
end process;
cout <= count;
-- next state logic
--dn <= X"0000" when dr = X"7fff" AND clk = '1' else
--      dr +1   when clk = '1' else
--		dr;
--cout <= dn;
enable <= '1' when count < X"7FFF" else '0';
--enable <= '1' when dr < X"7FFF" else '0';
end rtl;
