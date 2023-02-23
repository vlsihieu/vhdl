library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity HEX_BCD7BIT is
    Port ( DONVI : out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC : out  STD_LOGIC_VECTOR (3 downto 0);
           SOHEX7BIT : in  STD_LOGIC_VECTOR (6 downto 0));
end HEX_BCD7BIT;

architecture Behavioral of HEX_BCD7BIT is
begin
dich_pr : process(SOHEX7BIT)
	variable bcd_hex : std_logic_vector(14 downto 0);
	variable dem : integer range 0 to 6;
	begin
		bcd_hex := "00000000" & SOHEX7BIT;
		dem := 6;
		while dem > 0
		loop
			bcd_hex := bcd_hex(13 downto 0) & '0';
			dem := dem - 1;
			if bcd_hex (14 downto 11) >= "0101" then
				bcd_hex (14 downto 11) := bcd_hex(14 downto 11) + "0011" ;
			end if;
			if bcd_hex (10 downto 7) >= "0101" then
				bcd_hex (10 downto 7) := bcd_hex(10 downto 7) + "0011" ;
			end if;
		end loop;
		bcd_hex := bcd_hex(13 DOWNTO 0) & '0';
		DONVI <= bcd_hex(10 DOWNTO 7);
		CHUC <= bcd_hex(14 DOWNTO 11);
	end process;
end Behavioral;

