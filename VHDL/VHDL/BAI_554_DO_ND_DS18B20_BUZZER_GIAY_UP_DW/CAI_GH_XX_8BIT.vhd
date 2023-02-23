----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:16:13 08/02/2020 
-- Design Name: 
-- Module Name:    CAI_GH_XX_8BIT - Behavioral 
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

entity CAI_GH_XX_8BIT is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_UP : in  STD_LOGIC;
           ENA_DW : in  STD_LOGIC;
           ND_GH : out  STD_LOGIC_VECTOR (7 downto 0)
			 );
end CAI_GH_XX_8BIT;

architecture Behavioral of CAI_GH_XX_8BIT is
SIGNAL Q_REG, Q_NEXT: STD_LOGIC_VECTOR(7 DOWNTO 0);
begin
	PROCESS(CKHT,RST)
	BEGIN
		IF RST = '1' THEN Q_REG <=  "00101000";
		ELSIF FALLING_EDGE(CKHT) THEN Q_REG <= Q_NEXT;
		END IF;
	END PROCESS;
-------------------------------------------
	PROCESS(Q_REG,ENA_IP,ENA_DW)
	BEGIN
	   Q_NEXT <= Q_REG;
		IF (ENA_UP = '1' )THEN
		   IF (Q_REG = "00110010") THEN  Q_NEXT <= Q_REG ; -- 50
			ELSE                          Q_NEXT <= Q_REG + 1;
			END IF;
	   ELSIF (ENA_DW = '1') THEN
		   IF (Q_REG = "00011110") THEN Q_NEXT <= Q_REG ;
			ELSE                         Q_NEXT <= Q_REG - 1;
			END IF;
--		ELSE                            Q_NEXT <= "00101000";
		END IF;
	END PROCESS;
ND_GH <= Q_REG;
end Behavioral;

