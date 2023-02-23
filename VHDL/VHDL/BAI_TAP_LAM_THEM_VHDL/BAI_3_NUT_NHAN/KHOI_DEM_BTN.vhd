LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY KHOI_DEM_BTN IS
	PORT (CKHT : IN STD_LOGIC;
	      RST : IN STD_LOGIC;
         oe  : in std_logic_vector(2 downto 0);
			ENA_DB: IN STD_LOGIC;
			donvi : out std_logic_vector(3 downto 0);
			chuc  : out std_logic_vector(3 downto 0)
			);
END KHOI_DEM_BTN;

ARCHITECTURE A OF KHOI_DEM_BTN IS
SIGNAL donvi_r0 : STD_LOGIC_VECTOR(3 DOWNTO 0):= x"0";
SIGNAL donvi_n0: STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL chuc_r0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL chuc_n0: STD_LOGIC_VECTOR(3 DOWNTO 0);
--------------------------------------
SIGNAL donvi_r1 : STD_LOGIC_VECTOR(3 DOWNTO 0):= x"1";
SIGNAL donvi_n1: STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL chuc_r1 : STD_LOGIC_VECTOR(3 DOWNTO 0):= x"2";
SIGNAL chuc_n1: STD_LOGIC_VECTOR(3 DOWNTO 0);
------------------------------------------------
SIGNAL donvi_r2 : STD_LOGIC_VECTOR(3 DOWNTO 0):= x"1";
SIGNAL donvi_n2: STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL chuc_r2 : STD_LOGIC_VECTOR(3 DOWNTO 0):= x"4";
SIGNAL chuc_n2: STD_LOGIC_VECTOR(3 DOWNTO 0);
-------------------------
BEGIN
---------------------
	PROCESS (CKHT, RST)
	BEGIN
		IF RST='1' 				     THEN 
		      donvi_r0 <= x"0";
				chuc_r0  <= x"0";
				donvi_r1 <= x"1";
				chuc_r1  <= x"2";
				donvi_r2 <= x"1";
				chuc_r2  <= x"4";
		ELSIF FALLING_EDGE (CKHT) THEN 
		      donvi_r0 <= donvi_n0;
				chuc_r0  <= chuc_n0;
				donvi_r1 <= donvi_n1;
				chuc_r1  <= chuc_n1;
				donvi_r2 <= donvi_n2;
				chuc_r2  <= chuc_n2;		
		END IF;
	END PROCESS;
-------------------------
	PROCESS (donvi_r0,donvi_r1,donvi_r2,ena_db,oe,chuc_r0,chuc_r1,chuc_r2)
	BEGIN
	  donvi_n0 <= donvi_r0;
	  chuc_n0  <= chuc_r0;
	  donvi_n1 <= donvi_r1;
	  chuc_n1  <= chuc_r1;
	  donvi_n2 <= donvi_r2;
	  chuc_n2  <= chuc_r2;
	  if (ena_db = '1' ) then 
       if (oe(0) = '1') then
	       donvi_n1 <= x"1";-- vi?t ki?u s? hex á gi?ng 4'h1 nè ok chua
	       chuc_n1  <= x"2";
	       donvi_n2 <= x"1";
	       chuc_n2  <= x"4";
		    if (donvi_r0 = x"0" and chuc_r0 = x"2") then donvi_n0 <= donv_r0;
			                                              chuc_n0  <= chuc_r0;
			 ELSIF DONVI_R0 /= X"9" THEN DONVI_N0 <= DONVI_R0 + 1;
			 ELSE							  
			      DONVI_N0 <= X"0";
					IF CHUC_R0 /= X"9" THEN CHUC_N0 <= CHUC_R0 + 1;
					ELSE							   CHUC_N0 <= X"0";
					END IF;
			 END IF;
		 elsif (oe(1) = '1' ) then
	       donvi_n0 <= x"0";
	       chuc_n0  <= x"0";
	       donvi_n2 <= x"1";
	       chuc_n2  <= x"4";
		    if (donvi_r1 = x"0" and chuc_r1 = x"4") then donvi_n1 <= x"1";
			                                              chuc_n1  <= x"2";
			 ELSIF DONVI_R1 /= X"9" THEN DONVI_N1 <= DONVI_R1 + 1;
			 ELSE							  
			      DONVI_N1 <= X"0";
					IF CHUC_R1 /= X"9" THEN CHUC_N1 <= CHUC_R1 + 1;
					ELSE							   CHUC_N1 <= X"0";
					END IF;
			 END IF;
		 elsif (oe(2) = '1' ) then
	       donvi_n0 <= x"0";
	       chuc_n0  <= x"0";
	       donvi_n1 <= x"1";
	       chuc_n1  <= x"2";
		    if (donvi_r2 = x"0" and chuc_r2 = x"6") then donvi_n2 <= x"1";
			                                              chuc_n2  <= x"4";
			 ELSIF DONVI_r2 /= X"9" THEN DONVI_N2 <= DONVI_R2 + 1;
			 ELSE							  
			      DONVI_N2 <= X"0";
					IF CHUC_R2 /= X"9" THEN CHUC_N2 <= CHUC_R2 + 1;
					ELSE							CHUC_N2 <= X"0";
					END IF;
			 END IF;			  
		 else
	     donvi_n0 <= x"0";
	     chuc_n0  <= x"0";
	     donvi_n1 <= x"1";
	     chuc_n1  <= x"2";
	     donvi_n2 <= x"1";
	     chuc_n2  <= x"4";
		 end if;  
	  end if;
	END PROCESS;
--------------------------	
process(oe,donvi_r0,donvi_r1,donvi_r2)
begin
   if    (oe(0) = '1') then donvi <= donvi_r0;
   elsif (oe(1) = '1') then donvi <= donvi_r1;
   elsif (oe(2) = '1') then donvi <= donvi_r2;
	else                     donvi <= x"0";
   end if;
end process;	 
-- 4 nút nh?n bài c?a c?u nó có 1 bi?n c?ng d?n
-- 3 nút nh?n , m?i nút nh?n m?t bi?n d?c l?p 
-- khi các chuong trình d?c l?p mu?n hi?n th? t?i v? trí x,y ha
-- t?i m?i oe khác nhau tuong ?ng v?i chuong trình c?a nó
-- led74 led73 led72 led71 : c?u ph?i làm sao ?
--                2    0  :  nh?n l?n 1
--         4      0 : nh?n l?n 2
--  6      0 : nh?n l?n 3
-- c?u t?o 4 bi?n thôi tên nhu trên
-- led71 <= donvi0 when (oe(0) = '1') else
--           x"0";
-- led72 <= chuc0 when (oe(0) = '1' ) else
--          donvi1 when (oe(1) = '1' ) else
-- led73 <= chuc1 when (oe(1) = '1' ) else
--            donvi2 when (oe(2) = '1' ) else
-- led74 <= chuc2 when (oe(2) = '1') else
--             x"0"; 
-- nh?p nháy nè : c?u nh? bài dèn giao thông ko
-- c?u chia th?i gian 0.5 sáng, 0.5 t?t -- khi t?t thì d?o tr?ng thái 2 bit 00
-- khi sáng d?o tr?ng thái 2bit lên 11 r?i 2 bit dó c?u c?p vô th?ng cho phép hi?n th? á
-- ena_8led là cho phép sáng và không sáng :
process(oe,chuc_r0,chuc_r1,chuc_r2)
begin
   if    (oe(0) = '1') then chuc <= chuc_r0;
   elsif (oe(1) = '1') then chuc <= chuc_r1;
   elsif (oe(2) = '1') then chuc <= chuc_r2;
	else                     chuc <= x"0";
   end if;
end process;

END A;
-- mot mach dem, nhan nut 1 tu A-> b
-- nhan nut 2 dem tu A-C
-- NHAN nut 3 dem tu A-D
-- voi bai nay thay doi gioi han ket thuc.
-- dang mach thu 2: dk 1 mach dem
-- khi ngan btn1 dem tu a-b
-- khi nhan btn2 dem tu b-c
-- khi nhan btn3 dem tu c-d (khai bao bien chua gia tri bat dau, bien chua gia tri ket thuc )