----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:20:38 11/14/2019 
-- Design Name: 
-- Module Name:    DO_ND_DS18B20_HT_THAP_PHAN_HT_7D0AN - Behavioral 
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

entity DO_ND_DS18B20_HT_THAP_PHAN_HT_7D0AN is
    Port ( CKHT : in  STD_LOGIC;
           DS18B20 : inout  STD_LOGIC;
           BTN : in  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (3 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0);
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0));
end DO_ND_DS18B20_HT_THAP_PHAN_HT_7D0AN;

architecture Behavioral of DO_ND_DS18B20_HT_THAP_PHAN_HT_7D0AN is

begin


end Behavioral;

