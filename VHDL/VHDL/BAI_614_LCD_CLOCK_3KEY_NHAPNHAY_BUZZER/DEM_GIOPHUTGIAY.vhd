----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:04:39 11/07/2019 
-- Design Name: 
-- Module Name:    DEM_GIOPHUTGIAY - Behavioral 
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

entity DEM_GIOPHUTGIAY is
    Port ( CKHT, RST : in  STD_LOGIC;
           ENA_DB, ENA_UP, ENA_DW, ENA_CHINH : in  STD_LOGIC;
			  GT_MOD : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
           GIAY : out  STD_LOGIC_VECTOR (5 downto 0);
			  bell : out std_logic;
           PHUT : out  STD_LOGIC_VECTOR (5 downto 0);
           GIO : out   STD_LOGIC_VECTOR (4 downto 0));
end DEM_GIOPHUTGIAY ;

architecture Behavioral of DEM_GIOPHUTGIAY is
SIGNAL GIAY_R, GIAY_N : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL PHUT_R, PHUT_N : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL GIO_R,  GIO_N  : STD_LOGIC_VECTOR(4 DOWNTO 0);
-----------------------------------------------------
TYPE Type_bell IS (A,B); -- A : tat : B keu

SIGNAL tt_r, tt_n: Type_bell;
CONSTANT N: INTEGER:= 50000000; -- 1s
signal dl_r , dl_n :INTEGER RANGE 0 TO N*2 := 1;-- max 2s
signal dl_rst: std_logic;
begin

-- REGISTER
		PROCESS(CKHT, RST)
		BEGIN
			IF RST = '1' THEN GIAY_R <= (OTHERS => '0');
									PHUT_R <= (OTHERS => '0');
									GIO_R	 <= (OTHERS => '0');
									tt_r   <= A;
			ELSIF FALLING_EDGE(CKHT) THEN		GIAY_R <= GIAY_N;
														PHUT_R <= PHUT_N;
														GIO_R  <= GIO_N;
														dl_r <= dl_n;
--														count <= count + 1;
														tt_r <= tt_n;
			END IF;
		END PROCESS;
dl_n <= 1 when (dl_rst = '1') else
        dl_r + 1;	
process(tt_r,giay_r,dl_rst,tt_n,dl_r, gt_mod,ena_up,ena_dw,ena_chinh)
begin
  case (tt_r) is
     when A  => bell <= '0';
	             if (giay_r = "111011" or (GT_MOD = "10" AND ENA_UP = '1' AND ENA_CHINH = '1')) then
					    tt_n <= B;
						 dl_rst <= '1';
					 else
					     tt_n <= tt_r;
						  dl_rst <= '0';
					 end if;
	  when B  => bell <= '1';
	             if (dl_r = N*2 ) then
					     tt_n <= A;
						  dl_rst <= '1';
					 else
					     tt_n <= tt_r;
						  dl_rst <= '0';					    
					 end if;
  end case;
end process;		  
-- NEST STATE LOGIC
	PROCESS(GIAY_R, ENA_DB, GT_MOD, ENA_UP, ENA_DW, ENA_CHINH)
	BEGIN
		GIAY_N <= GIAY_R;
		IF ENA_DB = '1' 														THEN
			IF GIAY_R = "111011" THEN 	GIAY_N <= (OTHERS => '0');
			ELSE								GIAY_N <= GIAY_R + 1;
			END IF;
		ELSIF GT_MOD = "01" AND ENA_UP = '1' AND ENA_CHINH = '1' THEN 
			IF GIAY_R = "111011" THEN 	GIAY_N <= (OTHERS => '0');
			ELSE 								GIAY_N <= GIAY_R + 1;
			END IF;
		ELSIF GT_MOD = "01" AND ENA_DW = '1' AND ENA_CHINH = '1' THEN 
			IF GIAY_R = "000000" THEN 	GIAY_N <= "111011";
			ELSE 								GIAY_N <= GIAY_R - 1;
			END IF;
		END IF;
	END PROCESS;
	
	
	PROCESS(PHUT_R, ENA_DB, GIAY_R, GT_MOD, ENA_UP, ENA_DW, ENA_CHINH)
	BEGIN
		PHUT_N <= PHUT_R;
		IF ENA_DB = '1' AND GIAY_R = "111011" THEN
			IF PHUT_R = "111011" THEN 	PHUT_N <= (OTHERS => '0');
			ELSE								PHUT_N <= PHUT_R + 1;
			END IF;
		ELSIF GT_MOD = "10" AND ENA_UP = '1' AND ENA_CHINH = '1' THEN 
			IF PHUT_R = "111011" THEN 	PHUT_N <= (OTHERS => '0');
			ELSE								PHUT_N <= PHUT_R + 1;
			END IF;
		ELSIF GT_MOD = "10" AND ENA_DW = '1' AND ENA_CHINH = '1' THEN 
			IF PHUT_R = "000000" THEN 	PHUT_N <= "111011";
			ELSE 								PHUT_N <= PHUT_R - 1;
			END IF;
		END IF;
	END PROCESS;
	
	PROCESS(PHUT_R, ENA_DB, GIAY_R, GIO_R, GT_MOD, ENA_UP, ENA_DW, ENA_CHINH)
	BEGIN
		GIO_N <= GIO_R;
		IF ENA_DB = '1' AND GIAY_R = "111011" AND PHUT_R = "111011" THEN
			IF GIO_R = "10111" THEN 	GIO_N <= (OTHERS => '0');
			ELSE								GIO_N <= GIO_R + 1;
			END IF;
		ELSIF GT_MOD = "11" AND ENA_UP = '1' AND ENA_CHINH = '1' THEN 
			IF GIO_R = "10111" THEN 	GIO_N <= (OTHERS => '0');
			ELSE								GIO_N <= GIO_R + 1;
			END IF;
		ELSIF GT_MOD = "11" AND ENA_DW = '1' AND ENA_CHINH = '1' THEN 
			IF GIO_R = "00000" THEN 	GIO_N <= "10111";
			ELSE 								GIO_N <= GIO_R - 1;
			END IF;
		END IF;
	END PROCESS;
		
-- OUTPUT
	GIAY <= GIAY_R;
	PHUT <= PHUT_R;
	GIO  <= GIO_R;

end Behavioral;

