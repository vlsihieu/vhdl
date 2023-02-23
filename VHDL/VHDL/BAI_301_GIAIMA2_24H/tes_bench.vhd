--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:07:58 09/05/2019
-- Design Name:   
-- Module Name:   C:/Users/TOSHIBA/Documents/TT_Xilinx/TTTKVMS_CHIEU_T5_NHOM_2/BAI_301_GIAIMA2_24H/tes_bench.vhd
-- Project Name:  BAI_301_GIAIMA2_24H
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GIAIMA_SELECT_INS
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tes_bench IS
END tes_bench;
 
ARCHITECTURE behavior OF tes_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GIAIMA_SELECT_INS
    PORT(
         I : IN  std_logic_vector(1 downto 0);
         O : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: GIAIMA_SELECT_INS PORT MAP (
          I => I,
          O => O
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		I <= "00";
		wait for 100 ns;	
		I <= "01";
		wait for 100 ns;	
		I <= "10";
		wait for 100 ns;	
		I <= "11";
		
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
