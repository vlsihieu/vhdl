----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:12:26 07/08/2020 
-- Design Name: 
-- Module Name:    XULY_TANSO_HT - Behavioral 
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

entity XULY_TANSO_HT is
    Port ( ENA2HZ : in  STD_LOGIC;
           ENA5HZ : in  STD_LOGIC;
           SEL_1B : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0);
           ENA_O : out  STD_LOGIC);
end XULY_TANSO_HT;

architecture Behavioral of XULY_TANSO_HT is

begin
  ENA_O <= ENA2HZ WHEN SEL_1B = '1' ELSE
           ENA5HZ;
  Q <= "010" WHEN SEL_1B = '1' ELSE
       "101" ;
end Behavioral;

