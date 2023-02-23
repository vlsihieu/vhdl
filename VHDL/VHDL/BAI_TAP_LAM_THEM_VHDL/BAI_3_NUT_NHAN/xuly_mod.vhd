LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY xuly_mod IS
	PORT (
	      RST : IN STD_LOGIC;
			ena_ct1 : in std_logic;
			ena_ct2 : in std_logic;
			ena_ct3 : in std_logic;
			btn_out : out std_logic_vector(2 downto 0)
			);
END xuly_mod;

ARCHITECTURE A OF xuly_mod IS
BEGIN
---------------------
	PROCESS (ena_ct1,ena_ct2,ena_ct3,rst)
	BEGIN
		IF RST='1' THEN btn_out <= "000";
		ELSE
	       if    (ena_ct1 = '1') then btn_out <= not ena_ct1 & ena_ct2 & ena_ct3;
			 elsif (ena_ct2 = '1') then btn_out <= ena_ct1 & not ena_ct2 & ena_ct3;
	       elsif (ena_ct3 = '1') then btn_out <= ena_ct1 & ena_ct2 & not ena_ct3;
			 end if;                          
		END IF;
	END PROCESS;
-------------------------


END A;
-- mot mach dem, nhan nut 1 tu A-> b
-- nhan nut 2 dem tu A-C
-- NHAN nut 3 dem tu A-D
-- voi bai nay thay doi gioi han ket thuc.
-- dang mach thu 2: dk 1 mach dem
-- khi ngan btn1 dem tu a-b
-- khi nhan btn2 dem tu b-c
-- khi nhan btn3 dem tu c-d (khai bao bien chua gia tri bat dau, bien chua gia tri ket thuc )