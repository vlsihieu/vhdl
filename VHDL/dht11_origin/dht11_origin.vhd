
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity dht11_lcd is
    Port ( 
       ckht : in std_logic;
		 btn0 : in std_logic;
		 swp  : in std_logic;
		 
		 dht11 : in std_logic;
		 led0  : out std_logic;
		 lcd_e : out std_logic;
		 lcd_rs : out std_logic;
		 lcd_p :  out std_logic;
		 lcd_db : out std_logic_vector( 7 downto 0)
			  );
end dht11_lcd ;

architecture Behavioral of dht11_lcd is

signal lcd_h0: std_logic_vector(159 downto 0);
signal lcd_h1: std_logic_vector(159 downto 0);
signal lcd_h2: std_logic_vector(159 downto 0);
signal lcd_h3: std_logic_vector(159 downto 0);

signal rst: std_logic;
-- trạng thái check sum
signal tt_cs: std_logic;
-- dht11 present
signal dht_pr: std_logic;

signal ndo_bh: std_logic_vector(7 downto 0);
signal ndo_bl: std_logic_vector(7 downto 0);
signal dam_bh: std_logic_vector(7 downto 0);
signal dam_bl: std_logic_vector(7 downto 0);

signal ch_sm1: std_logic_vector(7 downto 0);
signal ch_sm2: std_logic_vector(7 downto 0);
signal da_nd5 : std_logic_vector(39 downto 0);

signal nd_dv: std_logic_vector(3 downto 0);
signal nd_ch: std_logic_vector(3 downto 0);
signal nd_tr: std_logic_vector(3 downto 0);

signal da_dv: std_logic_vector(3 downto 0);
signal da_ch: std_logic_vector(3 downto 0);
signal da_tr: std_logic_vector(3 downto 0);
begin

  lcd_p <= swp;
  rst   <= btn0;
  -- tắt có dht11, sáng không có
  led0  <= dht_pr;
  dam_bh <= da_nd5(39 downto 32);
  dam_bl <= da_nd5(31 downto 24);
  ndo_bh <= da_nd5(23 downto 16);
  ndo_bl <= da_nd5(15 downto 8);
  ch_sm1 <= da_nd5(7 downto 0);

  ch_sm2 <= ndo_bh + ndo_bl + dam_bh + dam_bl;
  -- cs ok
  -- cs error
  tt_cs <= '1' when ch_sm1 = ch_sm2 else
           '0';
--khối tạo xung 28800Hz cấp cho khối RxD
component dht11_humi_temp is 
	port(
		clk: in std_logic; -- 50Mhz
		clk_out: out std_logic
		); -- 28800Hz
end component;

	
dht11_humi_temp : entity work.dht11_humi_temp
     port map (ckht =>ckht,
	            rst  => rst,
					dht11 => dht11,
					dht_pr => dht_pr,
					da_nd5 => da_nd5
					);-- kq : 5 byte
hextobcd_8bit : entity work.hextobcd_8bit
     port map (
	            sohex8bit => ndo_bh,
	            donvi => nd_dv,
					chuc  => nd_ch,
					tram  => nd_tr
					);
hextobcd_8bit : entity work.hextobcd_8bit
     port map (
	            sohex8bit => dam_bh,
	            donvi => da_dv,
					chuc  => da_ch,
					tram  => da_tr
					);
lcd_gan_dulieu_6so : entity work.lcd_gan_dulieu_6so
     port map (
	           h0_17 => nd_tr,
				  h0_18 => nd_ch,
				  h0_19 => nd_dv,
	           h1_17 => da_tr,
				  h1_18 => da_ch,
				  h1_19 => da_dv,
				  tt_cs => tt_cs,
				  lcd_h0 => lcd_h0,
				  lcd_h1 => lcd_h1,
				  lcd_h2 => lcd_h2,
				  lcd_h3 => lcd_h3
	           );
lcd_khoitao_hienthi : entity work.lcd_khoitao_hienthi
   port map
	(
	   rst => rst,
		ckht => ckht,
		lcd_db => lcd_db,
		lcd_rs => lcd_rs,
		lcd_e => lcd_e,
		lcd_h0 => lcd_h0,
		lcd_h1 => lcd_h1,
		lcd_h2 => lcd_h2,
		lcd_h3 => lcd_h3
	 );


end Behavioral;

