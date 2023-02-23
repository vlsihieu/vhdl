--YEU CAU 1: 2 LED CUOI HIEN THI GIA TRI CAI, DUNG MOT NUT NHAN DE THAY DOI GIA TRI khi nhấn led7d cuối cùng bên trái (024680)
--YEU CAU 2: KHI NHAN BTN2 LAN 1 THI 6 LED7DOAN CON LAI HIEN THI MSSV 6 SO CUOI NHAP NHAY
				   --NHAN BTN2 LAN 2 THI 6 LED7DOAN STD_TSP
					--NHAN BTN2 LAN 3 THI 6 LED7DOAN SANGDON_PST
					--NHAN BTN2 LAN 3 THI 6 LED7DOAN DICH PHAI SANG TRAI
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity BAI_VE_LED_7DOAN is
	PORT(   CKHT: IN STD_LOGIC;
			-- KHAI BAO UT NHAN
			BTN_N: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			--KHAI BAO LED NEU CO
			LED: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			--LED BAY DOAN
			SSEG0, SSEG1, SSEG2, SSEG3, SSEG4, SSEG5, SSEG6, SSEG7: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
end  BAI_VE_LED_7DOAN;

architecture behavioral of BAI_VE_LED_7DOAN is
--BIEN TAN SO
SIGNAL ENA10HZ, ENA5HZ, ENA2HZ: STD_LOGIC;
SIGNAL CK5HZ: STD_LOGIC;
--NUT NHAN
SIGNAL RST, BTN1, BTN2, BTN3: STD_LOGIC;

--BIEN LED BAY DOAN
SIGNAL ENA_GIAIMA_8LED: STD_LOGIC_VECTOR(7 DOWNTO 0);
--BEN MACH DEM BCD
SIGNAL CHUC_GH, DONVI_GH: STD_LOGIC_VECTOR(3 DOWNTO 0);
-- BIEN KHAC
SIGNAL TT: STD_LOGIC;
SIGNAL Q3: STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL TAM,TAM1, Q_STD_PST, Q_SANGDON_TSP, Q_SANGDON_PST: STD_LOGIC_VECTOR(5 DOWNTO 0);
 
 
BEGIN
	-- XU LY NUT NHAN
	RST <= NOT BTN_N(0);
	
	CHIA_10ENA: ENTITY WORK.CHIA_10ENA
	PORT MAP(	CKHT    => CKHT,
				ENA2HZ  => ENA2HZ,
				ENA5HZ  => ENA5HZ, 
				ENA10HZ => ENA10HZ
			);
	-- LẤY XUNG CK ĐỂ NHẤP NHÁY MSSV 
		CHIA_XUNG: ENTITY WORK.CHIA_10XUNG
		PORT MAP(	CKHT => CKHT,
						CK5HZ => CK5HZ
						);
				
	CHONGDOI_LAMHEP_4BTN: ENTITY WORK.CD_4BTN
	PORT MAP ( 	 CKHT  => CKHT,
				 BTN_N => BTN_N,
             BTN1  => BTN1,-- BEN TIN HIEN NUT NHAN DEN MACH DEM, HOAC VAO MACH CAI GIOI HAN
			    BTN2  => BTN2
                 );
	DEM_4BIT_3: ENTITY WORK.DEM_2BIT 
		PORT MAP( CKHT 	=> CKHT,
              RST => RST,
              ENA_DB => BTN2,
              Q  => Q3);
	PROCESS (Q3)
	BEGIN 
		IF Q3 = "01" THEN TAM <= Q_SANGDON_PST;
		ELSIF Q3 = "00" THEN TAM <= TAM1;
		ELSIF Q3 = "10" THEN TAM <= Q_SANGDON_TSP;
		ELSIF Q3 = "11" THEN TAM <= Q_STD_PST;
		END IF;
	END PROCESS;
	
LED_SANGDON_PST: ENTITY WORK.LED_SANGDON_PST
				  PORT MAP (CKHT 	=> CKHT,
								RST 	=> RST,
								ENA_DB	=>  ENA5HZ,
								OE 	=> '1',								
								Q 		=> Q_SANGDON_PST);
								
LED_SANGDON_TSP: ENTITY WORK.LED_SANGDON_TSP
				  PORT MAP (CKHT 	=> CKHT,
								RST 	=> RST,
								ENA_DB	=>  ENA5HZ,
								OE 	=> '1',								
								Q 		=> Q_SANGDON_TSP);
LED_STD_PST: ENTITY WORK.LED_STD_PST
				  PORT MAP (CKHT 	=> CKHT,
								RST 	=> RST,
								ENA_DB	=>  ENA5HZ,
								OE 	=> '1',								
								Q 		=> Q_STD_PST);	
    -- ENA_SS CHO MẠCH ĐẾM    

	DEM_GH_UD_2BTN: ENTITY WORK.DEM_GH_UD_2BTN
	PORT MAP( CKHT => CKHT,
				 UP => BTN1,
				 RST => RST,
				 DONVI_GH => DONVI_GH,
				 CHUC_GH => CHUC_GH);
				 

   --XY LY NHAP NHAY
	TAM1 <= "111111" WHEN CK5HZ = '1' AND Q3 ="00"  ELSE
			  "000000";
		 -- XU LY LED BAY DOAN
   ENA_GIAIMA_8LED <= "11"&TAM;--SO LED CAN HIEN THI
	HIENTHI_1LED: ENTITY WORK.GIAIMA_HIENTHI_8LED_7DOAN
		PORT MAP(	
				LED70 => X"9", --- DEM MA BCD VAO HIEN THI LED 7DOAN
				LED71 => X"3", 
				LED72 => X"2",
				LED73 => X"1",
				LED74 => X"4",
				LED75 => X"1",
				LED76 => DONVI_GH,
				LED77 =>  CHUC_GH,
				ENA_GIAIMA_8LED => ENA_GIAIMA_8LED,
				SSEG0	=> SSEG0,
				SSEG1	=> SSEG1,
				SSEG2	=> SSEG2,
				SSEG3	=> SSEG3,
				SSEG4	=> SSEG4,
				SSEG5	=> SSEG5,
				SSEG6	=> SSEG6,
				SSEG7	=> SSEG7);

 
END Behavioral;