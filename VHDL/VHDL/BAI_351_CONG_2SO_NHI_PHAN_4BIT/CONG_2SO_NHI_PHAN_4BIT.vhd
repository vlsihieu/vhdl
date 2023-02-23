----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:08:35 09/04/2019 
-- Design Name: 
-- Module Name:    CONG_2SO_NHI_PHAN_4BIT - Behavioral 
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
-- CHU Y : KHI CO CAC PHEP TOAN TRONG CHUONG TRINH CON PHAI ADD DAY DU THU VIEN --> BAO LOI KO DINH NGHIA
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

entity CONG_2SO_NHI_PHAN_4BIT is
    Port ( SW : in  STD_LOGIC_VECTOR (7 downto 0);
           LED : out  STD_LOGIC_VECTOR (4 downto 0));
end CONG_2SO_NHI_PHAN_4BIT;

architecture Behavioral of CONG_2SO_NHI_PHAN_4BIT is

begin
	
	CONG_2SO_4BIT : ENTITY WORK.CONG_2SO_4BIT
		PORT MAP ( 	SOA => SW(3 DOWNTO 0),
						SOB => SW(7 DOWNTO 4),
						KETQUA => LED);

end Behavioral;

