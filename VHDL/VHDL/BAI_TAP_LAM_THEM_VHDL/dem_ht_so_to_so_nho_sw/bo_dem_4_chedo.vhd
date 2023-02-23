----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:04:44 08/22/2020 
-- Design Name: 
-- Module Name:    bo_dem_4_chedo - Behavioral 
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

entity bo_dem_4_chedo is
    Port ( ckht : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           ena_db : in  STD_LOGIC;
           gt_mod : in  STD_LOGIC_VECTOR (1 downto 0);
           ena_ss : in  STD_LOGIC;
           donvi0 : out  STD_LOGIC_VECTOR (3 downto 0);
           chuc0 : out  STD_LOGIC_VECTOR (3 downto 0);
           donvi1 : out  STD_LOGIC_VECTOR (3 downto 0);
           chuc1 : out  STD_LOGIC_VECTOR (3 downto 0);
           donvi2 : out  STD_LOGIC_VECTOR (3 downto 0);
           chuc2 : out  STD_LOGIC_VECTOR (3 downto 0);
           donvi3 : out  STD_LOGIC_VECTOR (3 downto 0);
           chuc3 : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end bo_dem_4_chedo;

architecture Behavioral of bo_dem_4_chedo is
SIGNAL dv_r0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
signal dv_n0 : std_logic_vector ( 3 downto 0);
SIGNAL ch_r0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
signal ch_n0 : std_logic_vector ( 3 downto 0);
---------------------------------------------------
SIGNAL dv_r1 : STD_LOGIC_VECTOR(3 DOWNTO 0):=x"5";
signal dv_n1 : std_logic_vector ( 3 downto 0);
SIGNAL ch_r1 : STD_LOGIC_VECTOR(3 DOWNTO 0):=x"1";
signal ch_n1 : std_logic_vector ( 3 downto 0);
-----------------------------------------------
SIGNAL dv_r2 : STD_LOGIC_VECTOR(3 DOWNTO 0):=x"0";
signal dv_n2 : std_logic_vector ( 3 downto 0);
SIGNAL ch_r2 : STD_LOGIC_VECTOR(3 DOWNTO 0):=x"3";
signal ch_n2 : std_logic_vector ( 3 downto 0);
----------------------------------------------
SIGNAL dv_r3 : STD_LOGIC_VECTOR(3 DOWNTO 0):=x"5";
signal dv_n3 : std_logic_vector ( 3 downto 0);
SIGNAL ch_r3 : STD_LOGIC_VECTOR(3 DOWNTO 0):=x"4";
signal ch_n3 : std_logic_vector ( 3 downto 0);
begin
-------------------------------------------------------
PROCESS(CKHT,RST)
BEGIN
	IF RST='1'   THEN dv_r0 <= X"0";
							ch_r0 <= X"0";
							-------------
                     dv_r1 <= X"5";
							ch_r1 <= X"1";	
							-------------
 							ch_r2 <= X"3";
                     dv_r2 <= X"0";
                     -------------	
 							ch_r3 <= X"4";
                     dv_r3 <= X"5";							
	ELSIF FALLING_EDGE(CKHT) THEN 
	        dv_r0 <= dv_n0;
	        ch_r0 <= ch_n0;
	        dv_r1 <= dv_n1;
	        ch_r1 <= ch_n1;
	        dv_r2 <= dv_n2;
	        ch_r2 <= ch_n2;
	        dv_r3 <= dv_n3;
	        ch_r3 <= ch_n3;
											
	END IF;
END PROCESS;
----------------------------------------------------------------
PROCESS(dv_r0,ch_r0,gt_mod,ena_ss,ENA_DB)
BEGIN
      dv_n0 <= dv_r0;
		ch_n0 <= ch_r0;		
		IF gt_mod = "00" THEN	
			IF ena_db = '1' and ena_ss = '1' THEN 
					IF dv_r0 = X"5" AND ch_r0 = X"1" THEN dv_n0 <= X"0";
																	  ch_n0 <= X"0";
					ELSIF dv_r0 /= X"9" THEN dv_n0 <= dv_r0 + 1;
					ELSE							    
					   dv_n0 <= X"0";
						IF ch_r0 /= X"9" THEN ch_n0 <= ch_r0 + 1;
						ELSE					    ch_n0 <= X"0";
						END IF;
					END IF;
			end if;
		end if;
END PROCESS;
------------------------------------------------------------------
PROCESS(dv_r1,ch_r1,gt_mod,ena_ss,ENA_DB)
BEGIN
      dv_n1 <= dv_r1;
		ch_n1 <= ch_r1;		
		IF (gt_mod = "01") THEN	
			IF ena_db = '1' and ena_ss = '1' THEN 
					IF (dv_r1 = X"0" AND ch_r1 = X"3") THEN dv_n1 <= X"5";
																	    ch_n1 <= X"1";
					ELSIF dv_r1 /= X"9" THEN dv_n1 <= dv_r1 + 1;
					ELSE							    
					   dv_n1 <= X"0";
						IF ch_r1 /= X"9" THEN ch_n1 <= ch_r1 + 1;
						ELSE					    ch_n1 <= X"0";
						END IF;
					END IF;
			end if;
		end if;
END PROCESS;
-------------------------------------------------------
PROCESS(dv_r2,ch_r2,gt_mod,ena_ss,ENA_DB)
BEGIN
       dv_n2 <= dv_r2 ;
		 ch_n2 <= ch_r2 ;
       if (gt_mod = "10" ) then			
			IF ena_db = '1' and ena_ss = '1' THEN 
					IF dv_r2 = X"5" AND ch_r2 = X"4" THEN dv_n2 <= x"0";
																	  ch_n2 <= x"3";
					ELSIF dv_r2 /= X"9" THEN dv_n2 <= dv_r2 + 1;
					ELSE							    
					   dv_n2 <= X"0";
						IF ch_r2 /= X"9" THEN ch_n2 <= ch_r2 + 1;
						ELSE					    ch_n2 <= X"0";
						END IF;
					END IF;
			end if;
		 end if;
END PROCESS;
------------------------------------------------------------
PROCESS(dv_r3,ch_r3,gt_mod,ena_ss,ENA_DB)
BEGIN
       dv_n3 <= dv_r3 ;
		 ch_n3 <= ch_r3 ;
       if (gt_mod = "11" ) then			
			IF ena_db = '1' and ena_ss = '1' THEN 
					IF dv_r3 = X"0" AND ch_r3 = X"6" THEN dv_n3 <= x"5";
																	  ch_n3 <= x"4";
					ELSIF dv_r3 /= X"9" THEN dv_n3 <= dv_r3 + 1;
					ELSE							    
					   dv_n3 <= X"0";
						IF ch_r3 /= X"9" THEN ch_n3 <= ch_r3 + 1;
						ELSE					    ch_n3 <= X"0";
						END IF;
					END IF;
			end if;
		 end if;
END PROCESS;
-----------------------------------------------------
--donvi <= dv_r0 when (gt_mod = "00") else
--         dv_r1 when (gt_mod = "01") else
--         dv_r2 when (gt_mod = "10") else
--         dv_r3 when (gt_mod = "11") else
--         "0000";
--chuc  <= ch_r0 when (gt_mod = "00") else
--         ch_r1 when (gt_mod = "01") else
--         ch_r2 when (gt_mod = "10") else
--         ch_r3 when (gt_mod = "11") else
--         "0000";
donvi0 <= dv_r0;
donvi1 <= dv_r1;
donvi2 <= dv_r2;
donvi3 <= dv_r3;

chuc0 <= ch_r0;
chuc1 <= ch_r1;
chuc2 <= ch_r2;
chuc3 <= ch_r3;

end Behavioral;

