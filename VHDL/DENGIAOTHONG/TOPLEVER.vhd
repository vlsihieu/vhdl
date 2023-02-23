
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TOPLEVER is
    Port ( CLK : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (25 downto 0));
end TOPLEVER;
architecture Behavioral of TOPLEVER is
signal ENA1HZ,ENA1KHZ:STD_LOGIC;
signal D1,X1,V1,D2,X2,V2:STD_LOGIC;
signal SO7BIT1,SO7BIT2:STD_LOGIC_VECTOR (6 downto 0);
signal DONVI1,CHUC1,DONVI2,CHUC2 :STD_LOGIC_VECTOR (3 downto 0);
signal SODEM1,SODEM2 :STD_LOGIC_VECTOR (3 downto 0);
signal sel1:STD_LOGIC;
signal LEDOUT :  STD_LOGIC_VECTOR (5 downto 0);
component CHIAENA is
    Port ( CLK : in  std_logic;
           ENA1HZ : out  std_logic;
           ENA1KHZ : out  std_logic);
end component;

component DEM7BIT is
    Port ( CLK : in  STD_LOGIC;
	        ENA : in  STD_LOGIC;
			  S: in  STD_LOGIC_VECTOR (2 downto 0);
           SODEM : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component DAHOP2_1 is
    Port ( I0 : in  STD_LOGIC_VECTOR (3 downto 0);
           I1 : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component GIAI7DOAN is 
    Port ( SO_GMA : 		in  STD_LOGIC_VECTOR (3 downto 0);
          SSEG :		 	out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component GIAI_ANODE is
    Port ( SEL_A : in  STD_LOGIC;
           O_A : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component HEX_BCD7BIT is
    Port ( DONVI : out  STD_LOGIC_VECTOR (3 downto 0);
           CHUC : out  STD_LOGIC_VECTOR (3 downto 0);
           SOHEX7BIT : in  STD_LOGIC_VECTOR (6 downto 0));
end component;

component DIEUKHIENLED is
    Port ( ENA : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           LEDOUT : out  STD_LOGIC_VECTOR (5 downto 0));
end component;

component DEM1BIT is
    Port ( ENA : in  STD_LOGIC;
	        CLK : in STD_LOGIC;
			  Q : out std_logic);
end component;
begin
    chia:CHIAENA port map (CLK => CLK,ENA1HZ => ENA1HZ,ENA1KHZ => ENA1KHZ);
	 dem1:DEM7BIT port map (CLK => CLK,ENA => ENA1HZ,S(2) => D1, S(1) =>X1, S(0) => V1,SODEM => SO7BIT1);
	 hex2bcd1:HEX_BCD7BIT port map (SOHEX7BIT => SO7BIT1,DONVI => DONVI1,CHUC => CHUC1);
	 dahop1:DAHOP2_1 port map(I0 =>DONVI1, I1=> CHUC1, S => sel1, O => SODEM1); 
    giaima71:GIAI7DOAN port map(SO_GMA => SODEM2,SSEG => POUT(23 downto 16));
	 giaianode:GIAI_ANODE port map(SEL_A => sel1,O_A => POUT(15 downto 14));
	 dem2:DEM7BIT port map (CLK => CLK,ENA => ENA1HZ,S(2) => D2, S(1) =>X2, S(0) => V2,SODEM => SO7BIT2);
	 hex2bcd2:HEX_BCD7BIT port map (SOHEX7BIT => SO7BIT2,DONVI => DONVI2,CHUC => CHUC2);
	 dahop2:DAHOP2_1 port map(I0 =>DONVI2, I1=> CHUC2, S => sel1, O => SODEM2); 
	 giaima72:GIAI7DOAN port map(SO_GMA => SODEM2,SSEG => POUT(13 downto 6));
	 dk:DIEUKHIENLED port map(ENA => ENA1HZ,CLK => CLK, LEDOUT => LEDOUT);
    sel1bit:DEM1BIT port map(ENA => ENA1KHZ,CLK => CLK,Q => sel1);
	 POUT(5 downto 0) <= LEDOUT;
	 D1 <= LEDOUT(5);
	 X1 <= LEDOUT(4);
	 V1 <= LEDOUT(3);
	 D2 <= LEDOUT(2);
	 X2 <= LEDOUT(1);
	 V2 <= LEDOUT(0);
end Behavioral;
