----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:36:27 11/07/2019 
-- Design Name: 
-- Module Name:    GIO_PHUT_GIAY_3KEY_NHAPNHAY - Behavioral 
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

entity GIO_PHUT_GIAY_3KEY_NHAPNHAY is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
           SW : in  STD_LOGIC;
           ANODE : out  STD_LOGIC_VECTOR (7 downto 0);
           SSEG : out  STD_LOGIC_VECTOR (7 downto 0));
end GIO_PHUT_GIAY_3KEY_NHAPNHAY;

architecture Behavioral of GIO_PHUT_GIAY_3KEY_NHAPNHAY is

begin


end Behavioral;

