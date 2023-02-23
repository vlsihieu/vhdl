entity DIEUKHIEN_CHOPHEP is
    Port ( CKHT : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           ENA_DB : in  STD_LOGIC;
           OE : out  STD_LOGIC_VECTOR(1 DOWNTO 0));
end DIEUKHIEN_CHOPHEP;

architecture Behavioral of DIEUKHIEN_CHOPHEP is
SIGNAL DEM_R, DEM_N : INTEGER RANGE 0 TO 15 := 0;
begin
	PROCESS(CKHT, RST)
	BEGIN
		IF 	RST = '0' 					THEN DEM_R <= 0;
		ELSIF FALLING_EDGE(CKHT) 	THEN DEM_R <= DEM_N;
		END IF;
	END PROCESS;
	
	DEM_N <= 0 			WHEN DEM_R = 15 AND ENA_DB = '1' AND DEM = '1' ELSE
				DEM_R +1 WHEN ENA_DB = '1' 					ELSE
				DEM_R ;
				
	PROCESS(DEM_R, RST)
	BEGIN
		OE <= "00"; --  -- SU DUNG LENH GAN CO DIEU KIEN DC HAY KO
		IF 	RST = '0' 	THEN OE <= "00";
		ELSIF DEM_R < 8   THEN OE <= "01";
		ELSIF DEM_R < 16  THEN OE <= "10";
		END IF;
	END PROCESS;


end Behavioral;