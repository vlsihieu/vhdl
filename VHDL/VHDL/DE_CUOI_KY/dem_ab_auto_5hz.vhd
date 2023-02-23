----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:59:44 09/06/2020 
-- Design Name: 
-- Module Name:    dem_ab_auto_5hz - Behavioral 
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

entity dem_ab_auto_5hz is
    Port ( ckht : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ena_db : in  STD_LOGIC;
           ena_ss : in  STD_LOGIC;
           ena_ud : in  STD_LOGIC;
           oe : in  STD_LOGIC;
           donvi : out  STD_LOGIC_VECTOR (3 downto 0);
           chuc : out  STD_LOGIC_VECTOR (3 downto 0));
end dem_ab_auto_5hz;

architecture Behavioral of dem_ab_auto_5hz is
SIGNAL DONVI_REG, DONVI_NEXT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_REG, CHUC_NEXT   : STD_LOGIC_VECTOR(3 DOWNTO 0);  
SIGNAL DONVI_REG_A, DONVI_NEXT_A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CHUC_REG_A, CHUC_NEXT_A   : STD_LOGIC_VECTOR(3 DOWNTO 0); 
begin
PROCESS(CKHT,RST,ena_ud)
BEGIN
	IF RST='1'  THEN 
	  if (ena_ud = '1') then
              DONVI_REG  <= X"8";
	           CHUC_REG   <= x"0";
	  else
              DONVI_REG  <= X"8";
	           CHUC_REG   <= x"3";	           
	  end if;
	ELSIF FALLING_EDGE(CKHT) THEN DONVI_REG  <= DONVI_NEXT;
											CHUC_REG   <= CHUC_NEXT;
											DONVI_REG_A  <= DONVI_NEXT_A;
											CHUC_REG_A   <= CHUC_NEXT_A;
	END IF;
END PROCESS;
PROCESS(DONVI_REG,CHUC_REG,DONVI_REG_A,CHUC_REG_A,OE, ENA_UD,ENA_DB,ena_ss)
BEGIN
	DONVI_NEXT <= DONVI_REG;
	CHUC_NEXT  <= CHUC_REG;
	DONVI_NEXT_A <= DONVI_REG_A;
	CHUC_NEXT_A <= CHUC_REG_A;
	IF OE = '1' AND ENA_DB = '1' AND ENA_SS = '1' THEN 
			IF ENA_UD = '1' THEN 
					IF DONVI_REG_A = X"8" AND CHUC_REG_A = X"3" THEN DONVI_NEXT_A <= X"8";
																					 CHUC_NEXT_A  <= X"0";
					ELSIF DONVI_REG_A /= X"9" THEN DONVI_NEXT_A <= DONVI_REG_A + 1;
					ELSE							  
					   DONVI_NEXT_A <= X"0";
						IF CHUC_REG_A /= X"9" THEN CHUC_NEXT_A <= CHUC_REG_A + 1;
						ELSE							   CHUC_NEXT_A <= X"0";
						END IF;
					END IF;
			ELSE
					IF DONVI_REG_A = X"8" AND CHUC_REG_A = X"0" THEN DONVI_NEXT_A <= X"8";
																					 CHUC_NEXT_A  <= X"3";
					ELSIF DONVI_REG_A /= X"0" THEN DONVI_NEXT_A <= DONVI_REG_A - 1;
					ELSE							  
					   DONVI_NEXT_A <= X"9";
						IF CHUC_REG_A /= X"0" THEN CHUC_NEXT_A <= CHUC_REG_A - 1;
						ELSE							   CHUC_NEXT_A <= X"9";
						END IF;
					END IF;			
			END IF;
	ELSE 
	-- KHONG CHO PHEP THI HIEN THI 00 NHUNG KHI CHO PHEP THI DEM TU A
		DONVI_NEXT_A <= X"8";
		CHUC_NEXT_A  <= X"0";
		DONVI_NEXT <= X"0";
		CHUC_NEXT  <= X"0";
	END IF;
END PROCESS;
end Behavioral;

