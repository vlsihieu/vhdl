LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY BTVN_SO62 IS
	PORT (  CKHT  : IN STD_LOGIC;
	        SW0   : IN STD_LOGIC;
			  BTN   : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;
--			  LCD_P : out  STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR (7 downto 0)
		   );
END BTVN_SO62 ;

ARCHITECTURE THAN OF BTVN_SO62 IS
--------------------------
SIGNAL ENA_DB  : STD_LOGIC;
--------------------------
SIGNAL RST      : STD_LOGIC;
SIGNAL BTN_MODE : STD_LOGIC;
SIGNAL BTN_CDLH : STD_LOGIC;
--------------------------
SIGNAL dv0  : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dv1 , ch1   : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dv2 , ch2   : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dv3_to , ch3_to   : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dv4 , ch4   : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dv5 , ch5   : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dv6 , ch6   : STD_LOGIC_VECTOR(3 DOWNTO 0);
-------------------------
SIGNAL LCD_H1 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 :	STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 :	STD_LOGIC_VECTOR(159 DOWNTO 0);

SIGNAL LCD_MA_DONVI 	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
SIGNAL LCD_MA_CHUC	:	STD_LOGIC_VECTOR(47 DOWNTO 0);
-------------------------
SIGNAL OE     : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SEL_3B : STD_LOGIC_VECTOR(2 DOWNTO 0);
----------------------------------
--signal dem0 : std_logic;
BEGIN

	RST       <= not   BTN(0);
	BTN_MODE  <= not    BTN(1);
--  LCD_P <= '1';
	


-- XU LY XUNG
IC0 : ENTITY WORK.CHIA_10ENA
		PORT MAP(CKHT=>CKHT,
		         ENA1HZ  => ENA_DB
				   );
					
-- XU LY NUT NHAN BTN_MODE  
IC1 : ENTITY WORK.CD_LAM_HEP_BTN
   PORT MAP( CKHT => CKHT,
				 BTN  => BTN_MODE,-- NHAN NUT TU BEN NGOAI
				 BTN_CDLH => BTN_CDLH
			   );
IC1_1 : ENTITY WORK.DEM_3BIT
        PORT MAP (ENA_DB => BTN_CDLH,
		            CKHT => CKHT,
						RST  => RST,
						Q  => SEL_3B -- 0->6 : 3 BIT
					 );
IC1_2 : ENTITY WORK.GIAIMA_OE
        PORT MAP ( SEL_3B  => SEL_3B,
		             RST     => RST,
		             OE      => OE 
						); 		
-------------------------------------
IC3 : ENTITY WORK.DEM_2SO
	PORT MAP( CKHT => CKHT,
				 RST  => RST,
		       btn_cdlh => btn_cdlh,
				 dem => Sel_3b,
				 ENA_DB => ENA_DB,
				 ENA_SS => SW0,
				 OE   => OE,
				 dv0 => dv0,
				 ch1 => ch1,
				 dv1 => dv1,
				 ch2 => ch2,
				 dv2 => dv2,
				 ch3_to =>ch3_to,
				 dv3_to =>dv3_to,
				 ch4  => ch4,
				 dv4  => dv4,
				 ch5  => ch5,
				 dv5  => dv5,
				 ch6  => ch6,
				 dv6  => dv6
				);
--IC38 : ENTITY WORK.DEM_1SO
--	PORT MAP( CKHT => CKHT,
--				 RST  => RST,
--				 ENA_DB => ENA_DB,
--				 ENA_SS => SW0,
--				 oe     => oe(0),
--				 dl_rst => oe(7),
--				 donvi    => dv0
--				);
--IC381 : ENTITY WORK.DEM_10_19
--	PORT MAP( CKHT => CKHT,
--				 RST  => RST,
--				 ENA_DB => ENA_DB,
--				 ENA_SS => SW0,
--				 oe     =>oe(1),
--				 donvi    => dv1,
--				 dl_rst  => oe(7),
--				 chuc    => ch1
--				);
--IC382 : ENTITY WORK.DEM_20_29
--	PORT MAP( CKHT => CKHT,
--				 RST  => RST,
--				 ENA_DB => ENA_DB,
--				 ENA_SS => SW0,
--				 oe     => oe(2),
--				 donvi    => dv2,
--				 dl_rst  => oe(7),
--				 chuc    => ch2
--				);
--IC383 : ENTITY WORK.DEM_30_69
--	PORT MAP( CKHT => CKHT,
--				 RST  => RST,
--				 ENA_DB => ENA_DB,
--				 ENA_SS => SW0,
--				 oe     => oe(3),
--				 donvi    => dv3_to,
--				 dl_rst  => oe(7),
--				 chuc    => ch3_to
--				);
--IC384 : ENTITY WORK.DEM_70_79
--	PORT MAP( CKHT => CKHT,
--				 RST  => RST,
--				 ENA_DB => ENA_DB,
--				 ENA_SS => SW0,
--				 oe     => oe(4),
--				 donvi    => dv4,
--				 dl_rst  => oe(7),
--				 chuc    => ch4
--				);
--IC385 : ENTITY WORK.DEM_80_89
--	PORT MAP( CKHT => CKHT,
--				 RST  => RST,
--				 ENA_DB => ENA_DB,
--				 ENA_SS => SW0,
--				 oe     => oe(5),
--				 donvi    => dv5,
--				 dl_rst  => oe(7),
--				 chuc    => ch5
--				);
--IC386 : ENTITY WORK.DEM_90_99
--	PORT MAP( CKHT => CKHT,
--				 RST  => RST,
--				 ENA_DB => ENA_DB,
--				 ENA_SS => SW0,
--				 oe     => oe(6),
--				 donvi    => dv6,
--				 dl_rst  => oe(7),
--				 chuc    => ch6
--				);
---------------------------------------------		 
IC18 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> dv3_to,
						LCD_MA_TO	   => LCD_MA_DONVI
						);
IC19 : ENTITY WORK.LCD_GIAI_MA_SO_TO
		PORT MAP(	SO_GMA		=> ch3_to,
						LCD_MA_TO   	=> LCD_MA_CHUC
						);	
IC29 : ENTITY WORK.LCD_20X4_GAN_DULIEU_1SO_TO
		PORT MAP(	LCD_MA_DONVI	=> LCD_MA_DONVI,
		            LCD_MA_CHUC	   => LCD_MA_CHUC,
						H1_19			=> dv0,
						
						H1_16			=> ch1,
						H1_17			=> dv1,
						
						H1_14			=> ch2,
						H1_15			=> dv2,
						
						H2_14			=> ch4,
						H2_15			=> dv4,	

						H2_16			=> ch5,
						H2_17			=> dv5,

						H2_18			=> ch6,
						H2_19			=> dv6,
						
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4);
						
IC30 : ENTITY WORK.LCD_KHOITAO_HIENTHI_SO_TO
		PORT MAP(	LCD_DB		=> LCD_DB,
						LCD_RS		=> LCD_RS,
						LCD_E			=> LCD_E,
						LCD_RST		=> RST,
						LCD_CK		=> CKHT,
						LCD_H1		=> LCD_H1,
						LCD_H2		=> LCD_H2,
						LCD_H3		=> LCD_H3,
						LCD_H4		=> LCD_H4);
-------------------------------------------
						


END THAN;