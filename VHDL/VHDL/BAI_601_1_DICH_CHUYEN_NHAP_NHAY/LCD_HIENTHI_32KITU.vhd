library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LCD_HIENTHI_80KYTU is
    Port ( CKHT : in  STD_LOGIC;
           BTN : in  STD_LOGIC_VECTOR(2 DOWNTO 0);
           LCD_E : out  STD_LOGIC;
           LCD_RS : out  STD_LOGIC;
           LCD_RW : out  STD_LOGIC;
--			  LCD_P: OUT STD_LOGIC;
           LCD_DB : out  STD_LOGIC_VECTOR(7 DOWNTO 0));
end LCD_HIENTHI_80KYTU;

architecture Behavioral of LCD_HIENTHI_80KYTU is
SIGNAL LCD_H1: STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H2 , H2: STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H3 , H3: STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL LCD_H4 , H4: STD_LOGIC_VECTOR(159 DOWNTO 0);
SIGNAL RST,ENA_SS,ena_db: STD_LOGIC;
signal btn_ss : std_logic;
signal ena_dc,btn_dc :std_logic;
begin
--DIEU KHIEN LCD
	LCD_RW <= '0'; --LENH NAY THIEU THI SE BI LOI PHAN GAN CHAN
	RST <= not BTN(0);
	btn_ss <= not btn(1);
	btn_dc <= not btn(2);
--	LCD_P <= '1';
ic0 : entity work.chia_10ena
    port map (ckht => ckht,
              ena2hz => ena_db
              );				  
IC1: ENTITY WORK.DEM_1BIT_BTN
    PORT MAP(   CKHT => CKHT,
                RST => RST,
                BTN => btn_ss,
                Q => ENA_SS);
					 
IC2: ENTITY WORK.CD_LAM_HEP_BTN
    PORT MAP(   CKHT => CKHT,
                BTN => btn_dc,
                BTN_CDLH => ena_dc
					 );
					 
IC3: ENTITY WORK.LCD_DICH_DU_LIEU_AU---DICH DU LIEU DA GAN IN VAO KHOI TAO HIEN THI
	PORT MAP(  CKHT   => CKHT,
				  RST    => RST,
				  ENA_SS => ENA_SS,
				  ena_db  => ena_db,
				  LCD_H2 => LCD_H2,
				  H2 => H2
				  );
IC4: ENTITY WORK.LCD_DICH_DU_LIEU_BTN---DICH DU LIEU DA GAN IN VAO KHOI TAO HIEN THI
	PORT MAP(  CKHT   => CKHT,
				  RST    => RST,
				  ena_dc => ena_dc,
				  ENA_SS => ENA_SS,
				  LCD_H3 => LCD_H3,
				  H3 => H3
				  );				  
IC5: ENTITY WORK.LCD_GAN_DULIEU_HIENTHI---GAN DU LIEU DE HIEN THI IN VAO DICH
	PORT MAP(  LCD_H1 => LCD_H1,
				  LCD_H2 => LCD_H2,
				  LCD_H3 => LCD_H3,
				  LCD_H4 => LCD_H4);
				  
IC6: ENTITY WORK.LCD_KHOITAO_HIENTHI---HIEN THI DATA RA LCD
	PORT MAP(  LCD_DB => LCD_DB,
				  LCD_RS => LCD_RS,
				  LCD_E => LCD_E,
				  LCD_RST => RST,
				  LCD_CK => CKHT,
				  LCD_H1 => LCD_H1, --HANG1 KHONG DICH
				  LCD_H2 => H2, -- HANG2,3 THI DICH TRAI , PHAI
				  LCD_H3 => H3,
				  LCD_H4 => H4); -- HANG4 THI CHOP TAT
end Behavioral;

