--########################		KHOI NAY RAT LINH HOAT		########################
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LCD_GAN_DULIEU_3SO_TO is
    Port ( 	MODE_CDLH ,RST,CKHT,OE: IN STD_LOGIC;
				LCD_HANG_1,LCD_HANG_2 : out  STD_LOGIC_VECTOR (127 downto 0));
end LCD_GAN_DULIEU_3SO_TO;

architecture Behavioral of LCD_GAN_DULIEU_3SO_TO is
--SIGNAL LCD_HANG_1_1,LCD_HANG_1_2,LCD_HANG_2_1,LCD_HANG_2_2 : STD_LOGIC_VECTOR (255 downto 0);
SIGNAL LCD_HANG_1_1_REG: STD_LOGIC_VECTOR (127 DOWNTO 0);SIGNAL LCD_HANG_1_1_NEXT: STD_LOGIC_VECTOR (127 DOWNTO 0);
SIGNAL LCD_HANG_1_1: STD_LOGIC_VECTOR (127 DOWNTO 0);

SIGNAL I_REG,I_NEXT : INTEGER RANGE 0 TO 256 := 0;
begin
------------------------------------------------------------------------------------------------SET_DATA
--===================================================================================
--CONV_STD_LOGIC_VECTOR(CHARACTER'POS('A'),8); ki tu tinh tu 

--LCD_HANG_1_1((COT*8-1) DOWNTO (COT-KT)*8)) <= CONV_STD_LOGIC_VECTOR(STRING'POS("OAH GNOHP NEYUGN"),(KT*8));
																							-- TONG SO KI TU(KT BI DAO NGUOC MOI DUNG)
--LCD_HANG_1_1((COT*8-1)  DOWNTO  (COT-3)*8) 	<= LCD_MA_CHUC_TO(31 DOWNTO 24) & LCD_MA_CHUC_TO(39 DOWNTO 32) & LCD_MA_CHUC_TO(47 DOWNTO 40);
--LCD_HANG_2_1((COT*8-1)  DOWNTO  (COT-3)*8) 	<= LCD_MA_CHUC_TO(7 DOWNTO 0) & LCD_MA_CHUC_TO(15 DOWNTO 8) & LCD_MA_CHUC_TO(23 DOWNTO 16);

--LCD_HANG_1_1((COT*8-1)  DOWNTO  (COT-1)*8) 	<= X"3" & LCD_MA_CHUC_NHO

-- SPACE <=> X"20"
		--NOTE NEU SO NHO TRUNG VI TRI SO LON THI LEN GAN CO DIEU KIEN V?I &  &   &
--===================================================================================
----------------------------------------------------------------------------------------------GAN DU LIEU
--===================================================================================
--PROCESS(LCD_HANG_1_1,LCD_HANG_1_2,LCD_HANG_2_1,LCD_HANG_2_2)
--BEGIN
--	LCD_HANG_1_1(255 DOWNTO 0) <= X"2020202020202020202020202020202020202020202020202020202020202020";
--	LCD_HANG_1_2(255 DOWNTO 0) <= X"2020202020202020202020202020202020202020202020202020202020202020";
--	---------------------------------------------------------------------------------------------------
--	LCD_HANG_2_1(255 DOWNTO 0) <= X"2020202020202020202020202020202020202020202020202020202020202020";
--	LCD_HANG_2_2(255 DOWNTO 0) <= X"2020202020202020202020202020202020202020202020202020202020202020";
--	IF(TRUE)	THEN 	LCD_HANG_1_1((5*8-1)  DOWNTO  (5-1)*8) 	<=X"3" & ND_SO_N_DV;
--						LCD_HANG_1_1((4*8-1)  DOWNTO  (4-1)*8) 	<=X"3" & ND_SO_N_CH;
--	END IF;
--END PROCESS;
--===================================================================================
--OUTPUT_LOGIC		###########		SO BIT CAN L? 128 (127 DOWNTO 0)		###########
		LCD_HANG_1_1(7 DOWNTO 0) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('L'),8);
		LCD_HANG_1_1(15 DOWNTO 8) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('E'),8);
		LCD_HANG_1_1(23 DOWNTO 16) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('T'),8);
		LCD_HANG_1_1(31 DOWNTO 24) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('A'),8);
		LCD_HANG_1_1(39 DOWNTO 32) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('N'),8);
		LCD_HANG_1_1(47 DOWNTO 40) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('H'),8);
		LCD_HANG_1_1(55 DOWNTO 48) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('A'),8);
		LCD_HANG_1_1(63 DOWNTO 56) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('I'),8);
		LCD_HANG_1_1(71 DOWNTO 64) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
		LCD_HANG_1_1(79 DOWNTO 72) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
		LCD_HANG_1_1(87 DOWNTO 80) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
		LCD_HANG_1_1(95 DOWNTO 88) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS(' '),8);
		LCD_HANG_1_1(103 DOWNTO 96) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('H'),8);
		LCD_HANG_1_1(111 DOWNTO 104) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('U'),8);
		LCD_HANG_1_1(119 DOWNTO 112) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('O'),8);
		LCD_HANG_1_1(127 DOWNTO 120) <= CONV_STD_LOGIC_VECTOR(CHARACTER'POS('N'),8);
PROCESS(CKHT,RST)
BEGIN
	IF RST='1' THEN LCD_HANG_1_1_REG <= LCD_HANG_1_1;
	ELSIF FALLING_EDGE(CKHT) THEN LCD_HANG_1_1_REG<= LCD_HANG_1_1_NEXT;
	END IF;
END PROCESS;
LCD_HANG_1_1_NEXT <= LCD_HANG_1_1(119 DOWNTO 0) & LCD_HANG_1_1(127 DOWNTO 120) WHEN MODE_CDLH='1' ELSE 
							LCD_HANG_1_1_REG;
LCD_HANG_1 <= LCD_HANG_1_1_REG;
LCD_HANG_2 <= X"20202020202020202020202020202020";
end Behavioral;