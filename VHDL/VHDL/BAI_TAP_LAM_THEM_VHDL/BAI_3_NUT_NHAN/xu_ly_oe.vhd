LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY xu_ly_oe IS
	PORT (CKHT : IN STD_LOGIC;
	      RST :  IN STD_LOGIC;
			ena_ct1 : IN STD_LOGIC;
			ena_ct2 : IN STD_LOGIC;
			ena_ct3 : IN STD_LOGIC;
--			a : out std_logic;
			oe  :  out std_logic_vector(2 downto 0)
			);
END xu_ly_oe ;

ARCHITECTURE A OF xu_ly_oe  IS
signal dem_r1, dem_n1 : STD_LOGIC;
--------------------------------------
signal dem_r2, dem_n2 : STD_LOGIC;
------------------------------------------------
signal dem_r3, dem_n3 : STD_LOGIC;
BEGIN
---------------------
	PROCESS (CKHT, RST)
	BEGIN
		if RST='1' then  dem_r1 <= '0';
		                 dem_r2 <= '0';
							  dem_r3 <= '0';
		ELSIF FALLING_EDGE (CKHT) THEN   dem_r1 <= dem_n1;
                                       dem_r2 <= dem_n2;
                                       dem_r3 <= dem_n3;													
		END IF;
	END PROCESS;
-------------------------
	PROCESS (ena_ct1,ena_ct2,ena_ct3,dem_r1,dem_r2,dem_r3)
	BEGIN
      dem_n1 <= dem_r1;
		dem_n2 <= dem_r2;
		dem_n3 <= dem_r3;
		if (ena_ct1 = '1' )    then dem_n1 <= not dem_r1;
		                            dem_n2 <= '0';
										    dem_n3 <= '0';
	   elsif (ena_ct2 = '1' ) then dem_n1 <= '0';
		                            dem_n2 <= not dem_r2;
											 dem_n3 <= '0';
	   elsif (ena_ct3 = '1' ) then dem_n1 <= '0';
		                            dem_n2 <= '0';
											 dem_n3 <= not dem_r3;
-- b?n ch?t là m?ch d?m 1 bit á, mà vi?t g?m hihi
											 
		end if;
	END PROCESS;
--------------------------				 
oe <= dem_r3 & dem_r2 & dem_r1; -- n?i bit l?i v?i nhau á,

END A;
-- mot mach dem, nhan nut 1 tu A-> b
-- nhan nut 2 dem tu A-C
-- NHAN nut 3 dem tu A-D
-- voi bai nay thay doi gioi han ket thuc.
-- dang mach thu 2: dk 1 mach dem
-- khi ngan btn1 dem tu a-b
-- khi nhan btn2 dem tu b-c
-- khi nhan btn3 dem tu c-d (khai bao bien chua gia tri bat dau, bien chua gia tri ket thuc )