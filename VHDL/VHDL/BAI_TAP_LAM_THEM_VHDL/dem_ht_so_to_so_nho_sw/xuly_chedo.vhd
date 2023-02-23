----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:48:12 08/22/2020 
-- Design Name: 
-- Module Name:    xuly_chedo - Behavioral 
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity xuly_chedo is
    Port ( ckht : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ena_dw : in  STD_LOGIC;
           ena_up : in  STD_LOGIC;
--           ena_db : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (1 downto 0)
			  );
end xuly_chedo;

architecture Behavioral of xuly_chedo is
signal q_r : std_logic_vector(1 downto 0);
signal q_n : std_logic_vector(1 downto 0);
begin
-------------------------------
process(ckht,rst)
begin
		if rst = '1' THEN q_r <= "00";
		elsif FALLING_EDGE (CKHT) then q_r <= q_n;
		END IF;
end process;
------------------------------------
q_n <= q_r + 1 when ( ena_up = '1') else
       q_r - 1 when ( ena_dw = '1') else
		 q_r;
----------------------------------------
q <= q_r;

end Behavioral;

