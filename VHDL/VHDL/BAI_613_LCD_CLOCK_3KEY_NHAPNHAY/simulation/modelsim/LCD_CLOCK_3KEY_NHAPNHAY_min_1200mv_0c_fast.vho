-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "05/05/2018 10:28:52"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LCD_CLOCK_3KEY_NHAPNHAY IS
    PORT (
	CKHT : IN std_logic;
	BTN_N : IN std_logic_vector(3 DOWNTO 0);
	LCD_E : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_ON : OUT std_logic;
	LCD_BLON : OUT std_logic;
	LCD_DB : OUT std_logic_vector(7 DOWNTO 0)
	);
END LCD_CLOCK_3KEY_NHAPNHAY;

-- Design Ports Information
-- LCD_E	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DB[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DB[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DB[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DB[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DB[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DB[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DB[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DB[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CKHT	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_N[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_N[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_N[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_N[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCD_CLOCK_3KEY_NHAPNHAY IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CKHT : std_logic;
SIGNAL ww_BTN_N : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_LCD_DB : std_logic_vector(7 DOWNTO 0);
SIGNAL \CKHT~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[13]~49_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[16]~55_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[18]~60\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[19]~61_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~4_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add3~4_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add4~6_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add4~9\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add5~4_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add5~6_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add4~11_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~2_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~20_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~24_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~32_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]~30_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]~34_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]~38_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]~46_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]~50_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]~52_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~0_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~6_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~14_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~16_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~20_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~34_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~36_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~38_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~44_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~46_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[0]~20_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[5]~30_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[7]~34_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[9]~38_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[15]~50_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[16]~52_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[0]~20_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[5]~30_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[7]~34_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[9]~38_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[15]~50_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[16]~52_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux11~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux11~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux19~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector39~4_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux11~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux11~3_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux11~4_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux11~5_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector39~5_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector39~6_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux11~6_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux11~7_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux11~8_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux11~9_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux11~10_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector39~7_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector39~8_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector39~9_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~3_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~8_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~9_combout\ : std_logic;
SIGNAL \HEXTOBCD_GIO|DONVI[1]~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~8_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~12_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~13_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux17~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~14_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector36~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector36~3_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector36~4_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux15~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector35~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector34~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~10_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~13_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~14_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|PTR[3]~3_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Add1~1_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal12~2_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|PHUT_REG[3]~2_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Equal5~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|PHUT_NEXT[2]~3_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|PHUT_NEXT[2]~4_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Equal2~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Equal8~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIO_NEXT[3]~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add4~10_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~2_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~5_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal0~2_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal10~1_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal2~5_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D5HZ_NEXT[12]~5_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D5HZ_NEXT[10]~6_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Equal0~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector2~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Equal0~2_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal0~6_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_NEXT[17]~9_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_NEXT[23]~10_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector2~2_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_REG[0]~0_combout\ : std_logic;
SIGNAL \LCD_E~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LCD_BLON~output_o\ : std_logic;
SIGNAL \LCD_DB[0]~output_o\ : std_logic;
SIGNAL \LCD_DB[1]~output_o\ : std_logic;
SIGNAL \LCD_DB[2]~output_o\ : std_logic;
SIGNAL \LCD_DB[3]~output_o\ : std_logic;
SIGNAL \LCD_DB[4]~output_o\ : std_logic;
SIGNAL \LCD_DB[5]~output_o\ : std_logic;
SIGNAL \LCD_DB[6]~output_o\ : std_logic;
SIGNAL \LCD_DB[7]~output_o\ : std_logic;
SIGNAL \CKHT~input_o\ : std_logic;
SIGNAL \CKHT~inputclkctrl_outclk\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[0]~23\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[1]~24_combout\ : std_logic;
SIGNAL \BTN_N[0]~input_o\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[2]~27\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[3]~29\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[4]~30_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[4]~31\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[5]~33\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[6]~34_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[6]~35\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[7]~37_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[7]~38\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[8]~39_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[8]~40\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[9]~42\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[10]~43_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[10]~44\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[11]~45_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[11]~46\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[12]~47_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[12]~48\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[13]~50\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[14]~51_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[14]~52\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[15]~54\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[16]~56\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[17]~57_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[3]~28_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[5]~32_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[5]~feeder_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Equal2~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[0]~22_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[17]~58\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[18]~59_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Equal2~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Equal2~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Equal4~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Equal4~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector25~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector30~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector28~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~12_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~3_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~4_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~5_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[15]~53_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Equal0~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Equal0~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector24~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[9]~41_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~9_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~18_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~8_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~11_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector22~3_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector24~3_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector24~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector24~4_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector24~5_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~7_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~19_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~15_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~16_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~17_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|PTR[3]~4_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|PTR[3]~5_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector29~4_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Add1~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector27~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Equal5~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector22~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector22~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|PTR[3]~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector22~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[15]~36_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[1]~25\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|SLX[2]~26_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Equal2~3_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Equal2~4_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Equal2~5_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector31~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Equal3~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_E~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector31~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector31~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector31~3_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_E~q\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector0~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_RS~q\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector35~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector23~6_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector39~3_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector39~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector38~4_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector38~5_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector39~10_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector38~7_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector38~10_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector38~8_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~1\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~3_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add1~1\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add1~2_combout\ : std_logic;
SIGNAL \BTN_N[3]~input_o\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector3~0_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]~21\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]~22_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~0_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~1_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~0_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~1_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~54_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]~23\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]~24_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]~25\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]~26_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]~27\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]~28_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]~29\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]~31\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]~32_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]~33\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]~35\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]~36_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]~37\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]~39\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]~40_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]~41\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]~42_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]~43\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]~44_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]~45\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]~47\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~48_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~49\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]~51\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]~53\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]~56_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]~57\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[18]~58_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[18]~59\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[19]~60_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~0_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~4_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]~20_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~1_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~3_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~0_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~1_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~0_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~3_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~4_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~5_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_TICK~0_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|LAM_HEP_XUNG|QFF~feeder_combout\ : std_logic;
SIGNAL \CD_LAM_HEP_BTN_MOD|LAM_HEP_XUNG|QFF~q\ : std_logic;
SIGNAL \XULY_MOD|GIATRI_MOD_REG[0]~0_combout\ : std_logic;
SIGNAL \XULY_MOD|GIATRI_MOD_REG[1]~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[0]~21\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[1]~22_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector3~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector3~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector3~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DB_REG.WAI1~q\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector3~3_combout\ : std_logic;
SIGNAL \BTN_N[1]~input_o\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[13]~54_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[1]~23\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[2]~24_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[2]~25\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[3]~26_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[3]~27\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[4]~28_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[4]~29\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[5]~31\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[6]~32_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[6]~33\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[7]~35\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[8]~36_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[8]~37\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[9]~39\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[10]~40_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[10]~41\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[11]~42_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[11]~43\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[12]~44_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[12]~45\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[13]~47\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[14]~48_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[14]~49\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[15]~51\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[16]~53\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[17]~56_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[17]~57\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[18]~58_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[18]~59\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[19]~60_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Equal0~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Equal0~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG[13]~46_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Equal0~4_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Equal0~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Equal0~5_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Equal0~6_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector2~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector0~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector2~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector2~4_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DB_REG.ONE~q\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DB_REG.WAI0~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DB_REG.WAI0~q\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector0~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector0~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|Selector0~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_UP|DB_REG.ZERO~q\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~36_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal2~4_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~0_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D5HZ_REG[0]~0_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~1\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~3\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~5\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~6_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~7\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~8_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~9\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~10_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~11\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~12_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~13\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~15\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~16_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~14_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D5HZ_NEXT[7]~7_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal2~6_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~4_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal2~2_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~34_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal2~0_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal2~1_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal2~3_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal2~7_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~17\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~18_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D5HZ_NEXT[9]~1_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~19\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~21\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~23\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~25\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~26_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~27\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~29\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~30_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D5HZ_NEXT[15]~4_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~31\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~33\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~35\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~37\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~38_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D5HZ_NEXT[19]~0_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~39\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~41\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~42_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~43\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~44_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~45\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~46_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D5HZ_NEXT[23]~2_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~40_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D5HZ_NEXT[20]~3_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal12~0_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~22_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add2~28_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal12~1_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal12~3_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|process_3~0_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~1\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~2_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~3\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~5\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~7\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~8_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~9\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~10_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~11\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~12_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~13\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~15\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~17\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~18_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~19\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~21\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~22_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_NEXT[19]~3_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~23\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~24_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_NEXT[12]~0_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~25\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~26_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_NEXT[13]~1_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~27\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~28_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_NEXT[14]~2_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~29\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~30_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_NEXT[15]~8_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~31\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~32_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~33\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~35\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~37\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~39\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~40_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_NEXT[20]~4_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~41\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~42_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_NEXT[21]~5_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal0~3_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal0~1_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~4_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_REG[0]~feeder_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal0~0_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal0~4_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal0~5_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_NEXT[22]~6_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~43\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~45\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~47\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~48_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~49\ : std_logic;
SIGNAL \CHIA_10ENA|Add0~50_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_NEXT[25]~11_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal0~7_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal0~8_combout\ : std_logic;
SIGNAL \CHIA_10ENA|D1HZ_NEXT[7]~7_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal10~0_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal10~2_combout\ : std_logic;
SIGNAL \CHIA_10ENA|Equal10~combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~13_combout\ : std_logic;
SIGNAL \BTN_N[2]~input_o\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector3~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DB_REG.WAI1~q\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[0]~21\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[1]~22_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector3~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[19]~54_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[1]~23\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[2]~24_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[2]~25\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[3]~26_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[3]~27\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[4]~28_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[4]~29\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[5]~31\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[6]~32_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[6]~33\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[7]~35\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[8]~36_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[8]~37\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[9]~39\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[10]~40_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[10]~41\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[11]~42_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[11]~43\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[12]~44_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[12]~45\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[13]~47\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[14]~48_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[14]~49\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[15]~51\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[16]~53\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[17]~56_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[17]~57\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[18]~58_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[18]~59\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[19]~60_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Equal0~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Equal0~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Equal0~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG[13]~46_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Equal0~4_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Equal0~5_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Equal0~6_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector3~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector3~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector2~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector2~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector2~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector0~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector2~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector2~4_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DB_REG.ONE~q\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DB_REG.WAI0~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DB_REG.WAI0~q\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector0~1_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector0~2_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|Selector0~3_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DB_REG.ZERO~q\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIO_REG[4]~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIAY_REG[0]~2_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~4\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~5_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add1~3\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add1~5\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add1~6_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~6\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~7_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIAY_NEXT[3]~1_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add1~7\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add1~8_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~8\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~9_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIAY_NEXT[4]~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add1~9\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add1~10_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~10\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~11_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIAY_NEXT[5]~2_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIAY_REG[0]~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIAY_REG[0]~3_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add1~4_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add1~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add0~2_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIAY_NEXT[2]~3_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIAY_NEXT[2]~4_combout\ : std_logic;
SIGNAL \HEXTOBCD_GIAY|BCD_HEX~0_combout\ : std_logic;
SIGNAL \HEXTOBCD_GIAY|BCD_HEX~2_combout\ : std_logic;
SIGNAL \HEXTOBCD_GIAY|BCD_HEX~1_combout\ : std_logic;
SIGNAL \LCD_GAN_DULIEU_HIENTHI_NN|LCD_HANG_1[121]~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~1_combout\ : std_logic;
SIGNAL \XULY_NHAPNHAY|A~0_combout\ : std_logic;
SIGNAL \XULY_NHAPNHAY|A~q\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~2_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|process_2~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add3~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~13_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|PHUT_REG[3]~3_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~1\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~3\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~5\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~6_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add3~1\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add3~3\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add3~5\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add3~6_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|PHUT_NEXT[3]~1_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~7\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~8_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add3~7\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add3~8_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|PHUT_NEXT[4]~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add3~9\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add3~10_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~9\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~10_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|PHUT_NEXT[5]~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~10_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~11_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~12_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~13_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~2_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add3~2_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add2~12_combout\ : std_logic;
SIGNAL \HEXTOBCD_PHUT|BCD_HEX~0_combout\ : std_logic;
SIGNAL \HEXTOBCD_PHUT|BCD_HEX~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~4_combout\ : std_logic;
SIGNAL \LCD_GAN_DULIEU_HIENTHI_NN|process_0~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|PHUT_REG[3]~1_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|process_3~1_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add4~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add5~0_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add4~2_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIO_REG[4]~2_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add5~1\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add5~2_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add4~1\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add4~3_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add4~5_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add4~4\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add4~7\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add4~8_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIO_NEXT[3]~1_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIO_REG[4]~3_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIO_REG[4]~4_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add5~3\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add5~5\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add5~7\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|Add5~8_combout\ : std_logic;
SIGNAL \DEM_GIOPHUTGIAY|GIO_NEXT[4]~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux11~11_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~5_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~6_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~7_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux10~14_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector38~6_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector38~9_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~9_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~3_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~4_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~5_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~6_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~7_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~10_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~11_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector37~15_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux16~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux9~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector36~8_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector36~9_combout\ : std_logic;
SIGNAL \HEXTOBCD_PHUT|BCD_HEX~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector36~5_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector36~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector36~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector36~6_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector36~7_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector36~10_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector39~11_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector35~6_combout\ : std_logic;
SIGNAL \LCD_GAN_DULIEU_HIENTHI_NN|process_0~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector35~3_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector35~4_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector35~5_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector35~7_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector35~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector35~8_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector35~9_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector34~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector34~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux14~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Mux6~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector33~0_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector33~1_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector38~11_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector33~2_combout\ : std_logic;
SIGNAL \LCD_KHOITAO_HIENTHI|Selector32~0_combout\ : std_logic;
SIGNAL \DEBOUNCE_BTN_DW|DELAY_REG\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \CHIA_10ENA|D5HZ_REG\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \CHIA_10ENA|D1HZ_REG\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \DEBOUNCE_BTN_UP|DELAY_REG\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \XULY_MOD|GIATRI_MOD_REG\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DEM_GIOPHUTGIAY|PHUT_REG\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DEM_GIOPHUTGIAY|GIO_REG\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DEM_GIOPHUTGIAY|GIAY_REG\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \LCD_KHOITAO_HIENTHI|SLX\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \LCD_KHOITAO_HIENTHI|PTR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD_KHOITAO_HIENTHI|LCD_DB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_CKHT~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_CKHT~input_o\ : std_logic;

BEGIN

ww_CKHT <= CKHT;
ww_BTN_N <= BTN_N;
LCD_E <= ww_LCD_E;
LCD_RS <= ww_LCD_RS;
LCD_RW <= ww_LCD_RW;
LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
LCD_DB <= ww_LCD_DB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CKHT~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CKHT~input_o\);
\ALT_INV_CKHT~inputclkctrl_outclk\ <= NOT \CKHT~inputclkctrl_outclk\;
\ALT_INV_CKHT~input_o\ <= NOT \CKHT~input_o\;

-- Location: FF_X29_Y42_N13
\LCD_KHOITAO_HIENTHI|SLX[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[16]~55_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(16));

-- Location: FF_X29_Y42_N7
\LCD_KHOITAO_HIENTHI|SLX[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[13]~49_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(13));

-- Location: FF_X29_Y42_N19
\LCD_KHOITAO_HIENTHI|SLX[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[19]~61_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(19));

-- Location: LCCOMB_X29_Y42_N6
\LCD_KHOITAO_HIENTHI|SLX[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[13]~49_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(13) & (!\LCD_KHOITAO_HIENTHI|SLX[12]~48\)) # (!\LCD_KHOITAO_HIENTHI|SLX\(13) & ((\LCD_KHOITAO_HIENTHI|SLX[12]~48\) # (GND)))
-- \LCD_KHOITAO_HIENTHI|SLX[13]~50\ = CARRY((!\LCD_KHOITAO_HIENTHI|SLX[12]~48\) # (!\LCD_KHOITAO_HIENTHI|SLX\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(13),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[12]~48\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[13]~49_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[13]~50\);

-- Location: LCCOMB_X29_Y42_N12
\LCD_KHOITAO_HIENTHI|SLX[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[16]~55_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(16) & (\LCD_KHOITAO_HIENTHI|SLX[15]~54\ $ (GND))) # (!\LCD_KHOITAO_HIENTHI|SLX\(16) & (!\LCD_KHOITAO_HIENTHI|SLX[15]~54\ & VCC))
-- \LCD_KHOITAO_HIENTHI|SLX[16]~56\ = CARRY((\LCD_KHOITAO_HIENTHI|SLX\(16) & !\LCD_KHOITAO_HIENTHI|SLX[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(16),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[15]~54\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[16]~55_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[16]~56\);

-- Location: LCCOMB_X29_Y42_N16
\LCD_KHOITAO_HIENTHI|SLX[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[18]~59_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(18) & (\LCD_KHOITAO_HIENTHI|SLX[17]~58\ $ (GND))) # (!\LCD_KHOITAO_HIENTHI|SLX\(18) & (!\LCD_KHOITAO_HIENTHI|SLX[17]~58\ & VCC))
-- \LCD_KHOITAO_HIENTHI|SLX[18]~60\ = CARRY((\LCD_KHOITAO_HIENTHI|SLX\(18) & !\LCD_KHOITAO_HIENTHI|SLX[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(18),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[17]~58\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[18]~59_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[18]~60\);

-- Location: LCCOMB_X29_Y42_N18
\LCD_KHOITAO_HIENTHI|SLX[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[19]~61_combout\ = \LCD_KHOITAO_HIENTHI|SLX[18]~60\ $ (\LCD_KHOITAO_HIENTHI|SLX\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD_KHOITAO_HIENTHI|SLX\(19),
	cin => \LCD_KHOITAO_HIENTHI|SLX[18]~60\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[19]~61_combout\);

-- Location: LCCOMB_X30_Y37_N12
\DEM_GIOPHUTGIAY|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add2~4_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(2) & (\DEM_GIOPHUTGIAY|Add2~3\ $ (GND))) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(2) & (!\DEM_GIOPHUTGIAY|Add2~3\ & VCC))
-- \DEM_GIOPHUTGIAY|Add2~5\ = CARRY((\DEM_GIOPHUTGIAY|PHUT_REG\(2) & !\DEM_GIOPHUTGIAY|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG\(2),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add2~3\,
	combout => \DEM_GIOPHUTGIAY|Add2~4_combout\,
	cout => \DEM_GIOPHUTGIAY|Add2~5\);

-- Location: LCCOMB_X30_Y37_N24
\DEM_GIOPHUTGIAY|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add3~4_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(2) & ((GND) # (!\DEM_GIOPHUTGIAY|Add3~3\))) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(2) & (\DEM_GIOPHUTGIAY|Add3~3\ $ (GND)))
-- \DEM_GIOPHUTGIAY|Add3~5\ = CARRY((\DEM_GIOPHUTGIAY|PHUT_REG\(2)) # (!\DEM_GIOPHUTGIAY|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG\(2),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add3~3\,
	combout => \DEM_GIOPHUTGIAY|Add3~4_combout\,
	cout => \DEM_GIOPHUTGIAY|Add3~5\);

-- Location: LCCOMB_X31_Y39_N18
\DEM_GIOPHUTGIAY|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add4~6_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(2) & (\DEM_GIOPHUTGIAY|Add4~4\ $ (GND))) # (!\DEM_GIOPHUTGIAY|GIO_REG\(2) & (!\DEM_GIOPHUTGIAY|Add4~4\ & VCC))
-- \DEM_GIOPHUTGIAY|Add4~7\ = CARRY((\DEM_GIOPHUTGIAY|GIO_REG\(2) & !\DEM_GIOPHUTGIAY|Add4~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_REG\(2),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add4~4\,
	combout => \DEM_GIOPHUTGIAY|Add4~6_combout\,
	cout => \DEM_GIOPHUTGIAY|Add4~7\);

-- Location: LCCOMB_X31_Y39_N20
\DEM_GIOPHUTGIAY|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add4~8_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(3) & (!\DEM_GIOPHUTGIAY|Add4~7\)) # (!\DEM_GIOPHUTGIAY|GIO_REG\(3) & ((\DEM_GIOPHUTGIAY|Add4~7\) # (GND)))
-- \DEM_GIOPHUTGIAY|Add4~9\ = CARRY((!\DEM_GIOPHUTGIAY|Add4~7\) # (!\DEM_GIOPHUTGIAY|GIO_REG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(3),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add4~7\,
	combout => \DEM_GIOPHUTGIAY|Add4~8_combout\,
	cout => \DEM_GIOPHUTGIAY|Add4~9\);

-- Location: LCCOMB_X30_Y39_N26
\DEM_GIOPHUTGIAY|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add5~4_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(2) & ((GND) # (!\DEM_GIOPHUTGIAY|Add5~3\))) # (!\DEM_GIOPHUTGIAY|GIO_REG\(2) & (\DEM_GIOPHUTGIAY|Add5~3\ $ (GND)))
-- \DEM_GIOPHUTGIAY|Add5~5\ = CARRY((\DEM_GIOPHUTGIAY|GIO_REG\(2)) # (!\DEM_GIOPHUTGIAY|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_REG\(2),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add5~3\,
	combout => \DEM_GIOPHUTGIAY|Add5~4_combout\,
	cout => \DEM_GIOPHUTGIAY|Add5~5\);

-- Location: LCCOMB_X30_Y39_N28
\DEM_GIOPHUTGIAY|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add5~6_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(3) & (\DEM_GIOPHUTGIAY|Add5~5\ & VCC)) # (!\DEM_GIOPHUTGIAY|GIO_REG\(3) & (!\DEM_GIOPHUTGIAY|Add5~5\))
-- \DEM_GIOPHUTGIAY|Add5~7\ = CARRY((!\DEM_GIOPHUTGIAY|GIO_REG\(3) & !\DEM_GIOPHUTGIAY|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_REG\(3),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add5~5\,
	combout => \DEM_GIOPHUTGIAY|Add5~6_combout\,
	cout => \DEM_GIOPHUTGIAY|Add5~7\);

-- Location: LCCOMB_X31_Y39_N22
\DEM_GIOPHUTGIAY|Add4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add4~11_combout\ = \DEM_GIOPHUTGIAY|Add4~9\ $ (!\DEM_GIOPHUTGIAY|GIO_REG\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DEM_GIOPHUTGIAY|GIO_REG\(4),
	cin => \DEM_GIOPHUTGIAY|Add4~9\,
	combout => \DEM_GIOPHUTGIAY|Add4~11_combout\);

-- Location: FF_X33_Y37_N13
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]~52_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(16));

-- Location: FF_X33_Y38_N23
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]~30_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(5));

-- Location: FF_X33_Y38_N27
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]~34_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(7));

-- Location: FF_X33_Y38_N31
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]~38_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(9));

-- Location: FF_X33_Y37_N7
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]~46_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(13));

-- Location: FF_X33_Y37_N11
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]~50_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(15));

-- Location: LCCOMB_X29_Y36_N10
\CHIA_10ENA|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~2_combout\ = (\CHIA_10ENA|D5HZ_REG\(1) & (!\CHIA_10ENA|Add2~1\)) # (!\CHIA_10ENA|D5HZ_REG\(1) & ((\CHIA_10ENA|Add2~1\) # (GND)))
-- \CHIA_10ENA|Add2~3\ = CARRY((!\CHIA_10ENA|Add2~1\) # (!\CHIA_10ENA|D5HZ_REG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(1),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~1\,
	combout => \CHIA_10ENA|Add2~2_combout\,
	cout => \CHIA_10ENA|Add2~3\);

-- Location: LCCOMB_X29_Y36_N28
\CHIA_10ENA|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~20_combout\ = (\CHIA_10ENA|D5HZ_REG\(10) & (\CHIA_10ENA|Add2~19\ $ (GND))) # (!\CHIA_10ENA|D5HZ_REG\(10) & (!\CHIA_10ENA|Add2~19\ & VCC))
-- \CHIA_10ENA|Add2~21\ = CARRY((\CHIA_10ENA|D5HZ_REG\(10) & !\CHIA_10ENA|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(10),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~19\,
	combout => \CHIA_10ENA|Add2~20_combout\,
	cout => \CHIA_10ENA|Add2~21\);

-- Location: LCCOMB_X29_Y35_N0
\CHIA_10ENA|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~24_combout\ = (\CHIA_10ENA|D5HZ_REG\(12) & (\CHIA_10ENA|Add2~23\ $ (GND))) # (!\CHIA_10ENA|D5HZ_REG\(12) & (!\CHIA_10ENA|Add2~23\ & VCC))
-- \CHIA_10ENA|Add2~25\ = CARRY((\CHIA_10ENA|D5HZ_REG\(12) & !\CHIA_10ENA|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(12),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~23\,
	combout => \CHIA_10ENA|Add2~24_combout\,
	cout => \CHIA_10ENA|Add2~25\);

-- Location: LCCOMB_X29_Y35_N8
\CHIA_10ENA|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~32_combout\ = (\CHIA_10ENA|D5HZ_REG\(16) & (\CHIA_10ENA|Add2~31\ $ (GND))) # (!\CHIA_10ENA|D5HZ_REG\(16) & (!\CHIA_10ENA|Add2~31\ & VCC))
-- \CHIA_10ENA|Add2~33\ = CARRY((\CHIA_10ENA|D5HZ_REG\(16) & !\CHIA_10ENA|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(16),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~31\,
	combout => \CHIA_10ENA|Add2~32_combout\,
	cout => \CHIA_10ENA|Add2~33\);

-- Location: FF_X27_Y37_N13
\DEBOUNCE_BTN_UP|DELAY_REG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[16]~52_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(16));

-- Location: FF_X27_Y38_N13
\DEBOUNCE_BTN_UP|DELAY_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[0]~20_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(0));

-- Location: FF_X27_Y38_N23
\DEBOUNCE_BTN_UP|DELAY_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[5]~30_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(5));

-- Location: FF_X27_Y38_N27
\DEBOUNCE_BTN_UP|DELAY_REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[7]~34_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(7));

-- Location: FF_X27_Y38_N31
\DEBOUNCE_BTN_UP|DELAY_REG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[9]~38_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(9));

-- Location: FF_X27_Y37_N11
\DEBOUNCE_BTN_UP|DELAY_REG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[15]~50_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(15));

-- Location: FF_X31_Y37_N13
\DEBOUNCE_BTN_DW|DELAY_REG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[16]~52_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(16));

-- Location: FF_X31_Y38_N13
\DEBOUNCE_BTN_DW|DELAY_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[0]~20_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(0));

-- Location: FF_X31_Y38_N23
\DEBOUNCE_BTN_DW|DELAY_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[5]~30_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(5));

-- Location: FF_X31_Y38_N27
\DEBOUNCE_BTN_DW|DELAY_REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[7]~34_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(7));

-- Location: FF_X31_Y38_N31
\DEBOUNCE_BTN_DW|DELAY_REG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[9]~38_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(9));

-- Location: FF_X31_Y37_N11
\DEBOUNCE_BTN_DW|DELAY_REG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[15]~50_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(15));

-- Location: LCCOMB_X33_Y38_N22
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]~30_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(5) & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]~29\ & VCC)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(5) & 
-- (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]~29\))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]~31\ = CARRY((!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(5) & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(5),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]~29\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]~30_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]~31\);

-- Location: LCCOMB_X33_Y38_N26
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]~34_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(7) & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]~33\ & VCC)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(7) & 
-- (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]~33\))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]~35\ = CARRY((!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(7) & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(7),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]~33\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]~34_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]~35\);

-- Location: LCCOMB_X33_Y38_N30
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]~38_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(9) & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]~37\ & VCC)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(9) & 
-- (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]~37\))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]~39\ = CARRY((!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(9) & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(9),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]~37\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]~38_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]~39\);

-- Location: LCCOMB_X33_Y37_N6
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]~46_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(13) & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]~45\ & VCC)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(13) & 
-- (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]~45\))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]~47\ = CARRY((!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(13) & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(13),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]~45\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]~46_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]~47\);

-- Location: LCCOMB_X33_Y37_N10
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]~50_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(15) & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~49\ & VCC)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(15) & 
-- (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~49\))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]~51\ = CARRY((!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(15) & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(15),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~49\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]~50_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]~51\);

-- Location: LCCOMB_X33_Y37_N12
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]~52_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(16) & ((GND) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]~51\))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(16) & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]~51\ $ (GND)))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]~53\ = CARRY((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(16)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(16),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[15]~51\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]~52_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]~53\);

-- Location: LCCOMB_X3_Y36_N6
\CHIA_10ENA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~0_combout\ = \CHIA_10ENA|D1HZ_REG\(0) $ (GND)
-- \CHIA_10ENA|Add0~1\ = CARRY(!\CHIA_10ENA|D1HZ_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(0),
	datad => VCC,
	combout => \CHIA_10ENA|Add0~0_combout\,
	cout => \CHIA_10ENA|Add0~1\);

-- Location: LCCOMB_X3_Y36_N12
\CHIA_10ENA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~6_combout\ = (\CHIA_10ENA|D1HZ_REG\(3) & (!\CHIA_10ENA|Add0~5\)) # (!\CHIA_10ENA|D1HZ_REG\(3) & ((\CHIA_10ENA|Add0~5\) # (GND)))
-- \CHIA_10ENA|Add0~7\ = CARRY((!\CHIA_10ENA|Add0~5\) # (!\CHIA_10ENA|D1HZ_REG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(3),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~5\,
	combout => \CHIA_10ENA|Add0~6_combout\,
	cout => \CHIA_10ENA|Add0~7\);

-- Location: LCCOMB_X3_Y36_N20
\CHIA_10ENA|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~14_combout\ = (\CHIA_10ENA|D1HZ_REG\(7) & (!\CHIA_10ENA|Add0~13\)) # (!\CHIA_10ENA|D1HZ_REG\(7) & ((\CHIA_10ENA|Add0~13\) # (GND)))
-- \CHIA_10ENA|Add0~15\ = CARRY((!\CHIA_10ENA|Add0~13\) # (!\CHIA_10ENA|D1HZ_REG\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(7),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~13\,
	combout => \CHIA_10ENA|Add0~14_combout\,
	cout => \CHIA_10ENA|Add0~15\);

-- Location: LCCOMB_X3_Y36_N22
\CHIA_10ENA|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~16_combout\ = (\CHIA_10ENA|D1HZ_REG\(8) & (\CHIA_10ENA|Add0~15\ $ (GND))) # (!\CHIA_10ENA|D1HZ_REG\(8) & (!\CHIA_10ENA|Add0~15\ & VCC))
-- \CHIA_10ENA|Add0~17\ = CARRY((\CHIA_10ENA|D1HZ_REG\(8) & !\CHIA_10ENA|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(8),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~15\,
	combout => \CHIA_10ENA|Add0~16_combout\,
	cout => \CHIA_10ENA|Add0~17\);

-- Location: LCCOMB_X3_Y36_N26
\CHIA_10ENA|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~20_combout\ = (\CHIA_10ENA|D1HZ_REG\(10) & (\CHIA_10ENA|Add0~19\ $ (GND))) # (!\CHIA_10ENA|D1HZ_REG\(10) & (!\CHIA_10ENA|Add0~19\ & VCC))
-- \CHIA_10ENA|Add0~21\ = CARRY((\CHIA_10ENA|D1HZ_REG\(10) & !\CHIA_10ENA|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(10),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~19\,
	combout => \CHIA_10ENA|Add0~20_combout\,
	cout => \CHIA_10ENA|Add0~21\);

-- Location: LCCOMB_X3_Y35_N8
\CHIA_10ENA|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~34_combout\ = (\CHIA_10ENA|D1HZ_REG\(17) & (!\CHIA_10ENA|Add0~33\)) # (!\CHIA_10ENA|D1HZ_REG\(17) & ((\CHIA_10ENA|Add0~33\) # (GND)))
-- \CHIA_10ENA|Add0~35\ = CARRY((!\CHIA_10ENA|Add0~33\) # (!\CHIA_10ENA|D1HZ_REG\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(17),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~33\,
	combout => \CHIA_10ENA|Add0~34_combout\,
	cout => \CHIA_10ENA|Add0~35\);

-- Location: LCCOMB_X3_Y35_N10
\CHIA_10ENA|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~36_combout\ = (\CHIA_10ENA|D1HZ_REG\(18) & (\CHIA_10ENA|Add0~35\ $ (GND))) # (!\CHIA_10ENA|D1HZ_REG\(18) & (!\CHIA_10ENA|Add0~35\ & VCC))
-- \CHIA_10ENA|Add0~37\ = CARRY((\CHIA_10ENA|D1HZ_REG\(18) & !\CHIA_10ENA|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(18),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~35\,
	combout => \CHIA_10ENA|Add0~36_combout\,
	cout => \CHIA_10ENA|Add0~37\);

-- Location: LCCOMB_X3_Y35_N12
\CHIA_10ENA|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~38_combout\ = (\CHIA_10ENA|D1HZ_REG\(19) & (!\CHIA_10ENA|Add0~37\)) # (!\CHIA_10ENA|D1HZ_REG\(19) & ((\CHIA_10ENA|Add0~37\) # (GND)))
-- \CHIA_10ENA|Add0~39\ = CARRY((!\CHIA_10ENA|Add0~37\) # (!\CHIA_10ENA|D1HZ_REG\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(19),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~37\,
	combout => \CHIA_10ENA|Add0~38_combout\,
	cout => \CHIA_10ENA|Add0~39\);

-- Location: LCCOMB_X3_Y35_N18
\CHIA_10ENA|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~44_combout\ = (\CHIA_10ENA|D1HZ_REG\(22) & (\CHIA_10ENA|Add0~43\ $ (GND))) # (!\CHIA_10ENA|D1HZ_REG\(22) & (!\CHIA_10ENA|Add0~43\ & VCC))
-- \CHIA_10ENA|Add0~45\ = CARRY((\CHIA_10ENA|D1HZ_REG\(22) & !\CHIA_10ENA|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(22),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~43\,
	combout => \CHIA_10ENA|Add0~44_combout\,
	cout => \CHIA_10ENA|Add0~45\);

-- Location: LCCOMB_X3_Y35_N20
\CHIA_10ENA|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~46_combout\ = (\CHIA_10ENA|D1HZ_REG\(23) & (!\CHIA_10ENA|Add0~45\)) # (!\CHIA_10ENA|D1HZ_REG\(23) & ((\CHIA_10ENA|Add0~45\) # (GND)))
-- \CHIA_10ENA|Add0~47\ = CARRY((!\CHIA_10ENA|Add0~45\) # (!\CHIA_10ENA|D1HZ_REG\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(23),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~45\,
	combout => \CHIA_10ENA|Add0~46_combout\,
	cout => \CHIA_10ENA|Add0~47\);

-- Location: LCCOMB_X27_Y38_N12
\DEBOUNCE_BTN_UP|DELAY_REG[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[0]~20_combout\ = \DEBOUNCE_BTN_UP|DELAY_REG\(0) $ (VCC)
-- \DEBOUNCE_BTN_UP|DELAY_REG[0]~21\ = CARRY(\DEBOUNCE_BTN_UP|DELAY_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DELAY_REG\(0),
	datad => VCC,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[0]~20_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[0]~21\);

-- Location: LCCOMB_X27_Y38_N22
\DEBOUNCE_BTN_UP|DELAY_REG[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[5]~30_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(5) & (\DEBOUNCE_BTN_UP|DELAY_REG[4]~29\ & VCC)) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(5) & (!\DEBOUNCE_BTN_UP|DELAY_REG[4]~29\))
-- \DEBOUNCE_BTN_UP|DELAY_REG[5]~31\ = CARRY((!\DEBOUNCE_BTN_UP|DELAY_REG\(5) & !\DEBOUNCE_BTN_UP|DELAY_REG[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DELAY_REG\(5),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[4]~29\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[5]~30_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[5]~31\);

-- Location: LCCOMB_X27_Y38_N26
\DEBOUNCE_BTN_UP|DELAY_REG[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[7]~34_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(7) & (\DEBOUNCE_BTN_UP|DELAY_REG[6]~33\ & VCC)) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(7) & (!\DEBOUNCE_BTN_UP|DELAY_REG[6]~33\))
-- \DEBOUNCE_BTN_UP|DELAY_REG[7]~35\ = CARRY((!\DEBOUNCE_BTN_UP|DELAY_REG\(7) & !\DEBOUNCE_BTN_UP|DELAY_REG[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DELAY_REG\(7),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[6]~33\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[7]~34_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[7]~35\);

-- Location: LCCOMB_X27_Y38_N30
\DEBOUNCE_BTN_UP|DELAY_REG[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[9]~38_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(9) & (\DEBOUNCE_BTN_UP|DELAY_REG[8]~37\ & VCC)) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(9) & (!\DEBOUNCE_BTN_UP|DELAY_REG[8]~37\))
-- \DEBOUNCE_BTN_UP|DELAY_REG[9]~39\ = CARRY((!\DEBOUNCE_BTN_UP|DELAY_REG\(9) & !\DEBOUNCE_BTN_UP|DELAY_REG[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DELAY_REG\(9),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[8]~37\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[9]~38_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[9]~39\);

-- Location: LCCOMB_X27_Y37_N10
\DEBOUNCE_BTN_UP|DELAY_REG[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[15]~50_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(15) & (\DEBOUNCE_BTN_UP|DELAY_REG[14]~49\ & VCC)) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(15) & (!\DEBOUNCE_BTN_UP|DELAY_REG[14]~49\))
-- \DEBOUNCE_BTN_UP|DELAY_REG[15]~51\ = CARRY((!\DEBOUNCE_BTN_UP|DELAY_REG\(15) & !\DEBOUNCE_BTN_UP|DELAY_REG[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DELAY_REG\(15),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[14]~49\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[15]~50_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[15]~51\);

-- Location: LCCOMB_X27_Y37_N12
\DEBOUNCE_BTN_UP|DELAY_REG[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[16]~52_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(16) & ((GND) # (!\DEBOUNCE_BTN_UP|DELAY_REG[15]~51\))) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(16) & (\DEBOUNCE_BTN_UP|DELAY_REG[15]~51\ $ (GND)))
-- \DEBOUNCE_BTN_UP|DELAY_REG[16]~53\ = CARRY((\DEBOUNCE_BTN_UP|DELAY_REG\(16)) # (!\DEBOUNCE_BTN_UP|DELAY_REG[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DELAY_REG\(16),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[15]~51\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[16]~52_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[16]~53\);

-- Location: LCCOMB_X31_Y38_N12
\DEBOUNCE_BTN_DW|DELAY_REG[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[0]~20_combout\ = \DEBOUNCE_BTN_DW|DELAY_REG\(0) $ (VCC)
-- \DEBOUNCE_BTN_DW|DELAY_REG[0]~21\ = CARRY(\DEBOUNCE_BTN_DW|DELAY_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DELAY_REG\(0),
	datad => VCC,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[0]~20_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[0]~21\);

-- Location: LCCOMB_X31_Y38_N22
\DEBOUNCE_BTN_DW|DELAY_REG[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[5]~30_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(5) & (\DEBOUNCE_BTN_DW|DELAY_REG[4]~29\ & VCC)) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(5) & (!\DEBOUNCE_BTN_DW|DELAY_REG[4]~29\))
-- \DEBOUNCE_BTN_DW|DELAY_REG[5]~31\ = CARRY((!\DEBOUNCE_BTN_DW|DELAY_REG\(5) & !\DEBOUNCE_BTN_DW|DELAY_REG[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DELAY_REG\(5),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[4]~29\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[5]~30_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[5]~31\);

-- Location: LCCOMB_X31_Y38_N26
\DEBOUNCE_BTN_DW|DELAY_REG[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[7]~34_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(7) & (\DEBOUNCE_BTN_DW|DELAY_REG[6]~33\ & VCC)) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(7) & (!\DEBOUNCE_BTN_DW|DELAY_REG[6]~33\))
-- \DEBOUNCE_BTN_DW|DELAY_REG[7]~35\ = CARRY((!\DEBOUNCE_BTN_DW|DELAY_REG\(7) & !\DEBOUNCE_BTN_DW|DELAY_REG[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DELAY_REG\(7),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[6]~33\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[7]~34_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[7]~35\);

-- Location: LCCOMB_X31_Y38_N30
\DEBOUNCE_BTN_DW|DELAY_REG[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[9]~38_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(9) & (\DEBOUNCE_BTN_DW|DELAY_REG[8]~37\ & VCC)) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(9) & (!\DEBOUNCE_BTN_DW|DELAY_REG[8]~37\))
-- \DEBOUNCE_BTN_DW|DELAY_REG[9]~39\ = CARRY((!\DEBOUNCE_BTN_DW|DELAY_REG\(9) & !\DEBOUNCE_BTN_DW|DELAY_REG[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DELAY_REG\(9),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[8]~37\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[9]~38_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[9]~39\);

-- Location: LCCOMB_X31_Y37_N10
\DEBOUNCE_BTN_DW|DELAY_REG[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[15]~50_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(15) & (\DEBOUNCE_BTN_DW|DELAY_REG[14]~49\ & VCC)) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(15) & (!\DEBOUNCE_BTN_DW|DELAY_REG[14]~49\))
-- \DEBOUNCE_BTN_DW|DELAY_REG[15]~51\ = CARRY((!\DEBOUNCE_BTN_DW|DELAY_REG\(15) & !\DEBOUNCE_BTN_DW|DELAY_REG[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DELAY_REG\(15),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[14]~49\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[15]~50_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[15]~51\);

-- Location: LCCOMB_X31_Y37_N12
\DEBOUNCE_BTN_DW|DELAY_REG[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[16]~52_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(16) & ((GND) # (!\DEBOUNCE_BTN_DW|DELAY_REG[15]~51\))) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(16) & (\DEBOUNCE_BTN_DW|DELAY_REG[15]~51\ $ (GND)))
-- \DEBOUNCE_BTN_DW|DELAY_REG[16]~53\ = CARRY((\DEBOUNCE_BTN_DW|DELAY_REG\(16)) # (!\DEBOUNCE_BTN_DW|DELAY_REG[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DELAY_REG\(16),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[15]~51\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[16]~52_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[16]~53\);

-- Location: LCCOMB_X29_Y40_N8
\LCD_KHOITAO_HIENTHI|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux11~0_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(2) & ((\LCD_KHOITAO_HIENTHI|PTR\(0)) # (!\XULY_MOD|GIATRI_MOD_REG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datad => \XULY_MOD|GIATRI_MOD_REG\(0),
	combout => \LCD_KHOITAO_HIENTHI|Mux11~0_combout\);

-- Location: LCCOMB_X29_Y40_N30
\LCD_KHOITAO_HIENTHI|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux11~1_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(3) & (\LCD_KHOITAO_HIENTHI|PTR\(0))) # (!\LCD_KHOITAO_HIENTHI|PTR\(3) & ((\LCD_KHOITAO_HIENTHI|PTR\(1) & ((!\LCD_KHOITAO_HIENTHI|Mux11~0_combout\))) # (!\LCD_KHOITAO_HIENTHI|PTR\(1) & 
-- (!\LCD_KHOITAO_HIENTHI|PTR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datac => \LCD_KHOITAO_HIENTHI|Mux11~0_combout\,
	datad => \LCD_KHOITAO_HIENTHI|PTR\(1),
	combout => \LCD_KHOITAO_HIENTHI|Mux11~1_combout\);

-- Location: LCCOMB_X28_Y39_N16
\LCD_KHOITAO_HIENTHI|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux19~0_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(3) & ((\LCD_KHOITAO_HIENTHI|PTR\(0) & ((!\LCD_KHOITAO_HIENTHI|PTR\(2)))) # (!\LCD_KHOITAO_HIENTHI|PTR\(0) & (!\LCD_KHOITAO_HIENTHI|PTR\(1) & \LCD_KHOITAO_HIENTHI|PTR\(2))))) # 
-- (!\LCD_KHOITAO_HIENTHI|PTR\(3) & (\LCD_KHOITAO_HIENTHI|PTR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(2),
	combout => \LCD_KHOITAO_HIENTHI|Mux19~0_combout\);

-- Location: LCCOMB_X28_Y39_N30
\LCD_KHOITAO_HIENTHI|Selector39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector39~4_combout\ = (\LCD_KHOITAO_HIENTHI|Mux11~1_combout\) # ((\LCD_KHOITAO_HIENTHI|Mux19~0_combout\ & \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|Mux19~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datad => \LCD_KHOITAO_HIENTHI|Mux11~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector39~4_combout\);

-- Location: FF_X29_Y37_N27
\DEM_GIOPHUTGIAY|PHUT_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|PHUT_NEXT[2]~4_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|PHUT_REG[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|PHUT_REG\(2));

-- Location: LCCOMB_X29_Y37_N0
\LCD_KHOITAO_HIENTHI|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux11~2_combout\ = \HEXTOBCD_PHUT|BCD_HEX~1_combout\ $ (((\HEXTOBCD_PHUT|BCD_HEX~2_combout\ & ((\DEM_GIOPHUTGIAY|PHUT_REG\(1)) # (!\HEXTOBCD_PHUT|BCD_HEX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEXTOBCD_PHUT|BCD_HEX~2_combout\,
	datab => \HEXTOBCD_PHUT|BCD_HEX~1_combout\,
	datac => \DEM_GIOPHUTGIAY|PHUT_REG\(1),
	datad => \HEXTOBCD_PHUT|BCD_HEX~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux11~2_combout\);

-- Location: LCCOMB_X29_Y39_N16
\LCD_KHOITAO_HIENTHI|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux11~3_combout\ = (\LCD_KHOITAO_HIENTHI|Mux10~0_combout\ & (!\LCD_KHOITAO_HIENTHI|PTR\(2) & \LCD_KHOITAO_HIENTHI|Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Mux10~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datad => \LCD_KHOITAO_HIENTHI|Mux11~2_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux11~3_combout\);

-- Location: LCCOMB_X28_Y39_N24
\LCD_KHOITAO_HIENTHI|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux11~4_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(0) & (!\LCD_KHOITAO_HIENTHI|PTR\(1) & !\LCD_KHOITAO_HIENTHI|PTR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(0),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(2),
	combout => \LCD_KHOITAO_HIENTHI|Mux11~4_combout\);

-- Location: LCCOMB_X28_Y39_N26
\LCD_KHOITAO_HIENTHI|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux11~5_combout\ = (\LCD_KHOITAO_HIENTHI|Mux11~4_combout\ & (((\XULY_NHAPNHAY|A~q\) # (!\XULY_MOD|GIATRI_MOD_REG\(1))) # (!\XULY_MOD|GIATRI_MOD_REG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Mux11~4_combout\,
	datab => \XULY_MOD|GIATRI_MOD_REG\(0),
	datac => \XULY_MOD|GIATRI_MOD_REG\(1),
	datad => \XULY_NHAPNHAY|A~q\,
	combout => \LCD_KHOITAO_HIENTHI|Mux11~5_combout\);

-- Location: LCCOMB_X28_Y39_N12
\LCD_KHOITAO_HIENTHI|Selector39~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector39~5_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\ & ((\LCD_KHOITAO_HIENTHI|Mux19~0_combout\) # ((\LCD_KHOITAO_HIENTHI|Mux10~2_combout\ & \DEM_GIOPHUTGIAY|GIAY_REG\(0))))) # 
-- (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\ & (((\LCD_KHOITAO_HIENTHI|Mux10~2_combout\ & \DEM_GIOPHUTGIAY|GIAY_REG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datab => \LCD_KHOITAO_HIENTHI|Mux19~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Mux10~2_combout\,
	datad => \DEM_GIOPHUTGIAY|GIAY_REG\(0),
	combout => \LCD_KHOITAO_HIENTHI|Selector39~5_combout\);

-- Location: LCCOMB_X28_Y39_N14
\LCD_KHOITAO_HIENTHI|Selector39~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector39~6_combout\ = (\LCD_KHOITAO_HIENTHI|Selector39~5_combout\) # (((\LCD_KHOITAO_HIENTHI|Mux11~5_combout\) # (\LCD_KHOITAO_HIENTHI|Mux11~3_combout\)) # (!\LCD_KHOITAO_HIENTHI|PTR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector39~5_combout\,
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|Mux11~5_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Mux11~3_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector39~6_combout\);

-- Location: LCCOMB_X30_Y38_N28
\LCD_KHOITAO_HIENTHI|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux11~6_combout\ = \HEXTOBCD_GIAY|BCD_HEX~1_combout\ $ (((\HEXTOBCD_GIAY|BCD_HEX~2_combout\ & ((\DEM_GIOPHUTGIAY|GIAY_REG\(1)) # (!\HEXTOBCD_GIAY|BCD_HEX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(1),
	datab => \HEXTOBCD_GIAY|BCD_HEX~1_combout\,
	datac => \HEXTOBCD_GIAY|BCD_HEX~2_combout\,
	datad => \HEXTOBCD_GIAY|BCD_HEX~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux11~6_combout\);

-- Location: FF_X31_Y39_N7
\DEM_GIOPHUTGIAY|GIO_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|Add4~10_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|GIO_REG[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|GIO_REG\(2));

-- Location: LCCOMB_X31_Y39_N10
\LCD_KHOITAO_HIENTHI|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux11~7_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(2) & (\DEM_GIOPHUTGIAY|GIO_REG\(3) & ((\DEM_GIOPHUTGIAY|GIO_REG\(1)) # (!\DEM_GIOPHUTGIAY|GIO_REG\(4))))) # (!\DEM_GIOPHUTGIAY|GIO_REG\(2) & ((\DEM_GIOPHUTGIAY|GIO_REG\(4) & 
-- (!\DEM_GIOPHUTGIAY|GIO_REG\(3))) # (!\DEM_GIOPHUTGIAY|GIO_REG\(4) & (\DEM_GIOPHUTGIAY|GIO_REG\(3) & \DEM_GIOPHUTGIAY|GIO_REG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_REG\(2),
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(4),
	datac => \DEM_GIOPHUTGIAY|GIO_REG\(3),
	datad => \DEM_GIOPHUTGIAY|GIO_REG\(1),
	combout => \LCD_KHOITAO_HIENTHI|Mux11~7_combout\);

-- Location: LCCOMB_X28_Y39_N20
\LCD_KHOITAO_HIENTHI|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux11~8_combout\ = (\XULY_MOD|GIATRI_MOD_REG\(1) & (!\XULY_NHAPNHAY|A~q\ & (\LCD_KHOITAO_HIENTHI|PTR\(2) $ (\XULY_MOD|GIATRI_MOD_REG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \XULY_MOD|GIATRI_MOD_REG\(0),
	datac => \XULY_MOD|GIATRI_MOD_REG\(1),
	datad => \XULY_NHAPNHAY|A~q\,
	combout => \LCD_KHOITAO_HIENTHI|Mux11~8_combout\);

-- Location: LCCOMB_X28_Y39_N10
\LCD_KHOITAO_HIENTHI|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux11~9_combout\ = (!\LCD_KHOITAO_HIENTHI|Mux11~8_combout\ & ((\LCD_KHOITAO_HIENTHI|PTR\(2) & ((\DEM_GIOPHUTGIAY|PHUT_REG\(0)))) # (!\LCD_KHOITAO_HIENTHI|PTR\(2) & (\LCD_KHOITAO_HIENTHI|Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \LCD_KHOITAO_HIENTHI|Mux11~7_combout\,
	datac => \DEM_GIOPHUTGIAY|PHUT_REG\(0),
	datad => \LCD_KHOITAO_HIENTHI|Mux11~8_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux11~9_combout\);

-- Location: LCCOMB_X28_Y39_N28
\LCD_KHOITAO_HIENTHI|Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux11~10_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(1) & (\LCD_KHOITAO_HIENTHI|Mux11~6_combout\ & (\LCD_KHOITAO_HIENTHI|Mux10~2_combout\))) # (!\LCD_KHOITAO_HIENTHI|PTR\(1) & ((\LCD_KHOITAO_HIENTHI|Mux11~9_combout\) # 
-- ((\LCD_KHOITAO_HIENTHI|Mux11~6_combout\ & \LCD_KHOITAO_HIENTHI|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datab => \LCD_KHOITAO_HIENTHI|Mux11~6_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Mux10~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Mux11~9_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux11~10_combout\);

-- Location: LCCOMB_X28_Y39_N18
\LCD_KHOITAO_HIENTHI|Selector39~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector39~7_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(3) & \LCD_KHOITAO_HIENTHI|Mux11~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datad => \LCD_KHOITAO_HIENTHI|Mux11~10_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector39~7_combout\);

-- Location: LCCOMB_X28_Y39_N8
\LCD_KHOITAO_HIENTHI|Selector39~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector39~8_combout\ = (\LCD_KHOITAO_HIENTHI|Selector39~2_combout\ & ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\ & \LCD_KHOITAO_HIENTHI|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datab => \LCD_KHOITAO_HIENTHI|Mux19~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datad => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector39~8_combout\);

-- Location: LCCOMB_X28_Y39_N6
\LCD_KHOITAO_HIENTHI|Selector39~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector39~9_combout\ = (\LCD_KHOITAO_HIENTHI|Selector39~8_combout\ & ((\LCD_KHOITAO_HIENTHI|Selector39~4_combout\ & (\LCD_KHOITAO_HIENTHI|Selector39~6_combout\)) # (!\LCD_KHOITAO_HIENTHI|Selector39~4_combout\ & 
-- ((\LCD_KHOITAO_HIENTHI|Selector39~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector39~4_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector39~6_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector39~8_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector39~7_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector39~9_combout\);

-- Location: LCCOMB_X30_Y38_N30
\LCD_KHOITAO_HIENTHI|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~3_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(3) & (\DEM_GIOPHUTGIAY|GIAY_REG\(4) & ((\DEM_GIOPHUTGIAY|GIAY_REG\(2)) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(5))))) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(3) & ((\DEM_GIOPHUTGIAY|GIAY_REG\(4) & 
-- (\DEM_GIOPHUTGIAY|GIAY_REG\(2) & !\DEM_GIOPHUTGIAY|GIAY_REG\(5))) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(4) & ((\DEM_GIOPHUTGIAY|GIAY_REG\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(3),
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(2),
	datac => \DEM_GIOPHUTGIAY|GIAY_REG\(4),
	datad => \DEM_GIOPHUTGIAY|GIAY_REG\(5),
	combout => \LCD_KHOITAO_HIENTHI|Mux10~3_combout\);

-- Location: LCCOMB_X30_Y40_N20
\LCD_KHOITAO_HIENTHI|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~8_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(2) & ((\LCD_KHOITAO_HIENTHI|PTR\(0)) # (!\XULY_MOD|GIATRI_MOD_REG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \XULY_MOD|GIATRI_MOD_REG\(1),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(0),
	combout => \LCD_KHOITAO_HIENTHI|Mux10~8_combout\);

-- Location: LCCOMB_X30_Y40_N30
\LCD_KHOITAO_HIENTHI|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~9_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(3) & (\LCD_KHOITAO_HIENTHI|PTR\(0))) # (!\LCD_KHOITAO_HIENTHI|PTR\(3) & ((\LCD_KHOITAO_HIENTHI|PTR\(1) & ((!\LCD_KHOITAO_HIENTHI|Mux10~8_combout\))) # (!\LCD_KHOITAO_HIENTHI|PTR\(1) & 
-- ((\LCD_KHOITAO_HIENTHI|Mux10~8_combout\) # (!\LCD_KHOITAO_HIENTHI|PTR\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datad => \LCD_KHOITAO_HIENTHI|Mux10~8_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux10~9_combout\);

-- Location: LCCOMB_X31_Y39_N12
\HEXTOBCD_GIO|DONVI[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEXTOBCD_GIO|DONVI[1]~0_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(3) & ((\DEM_GIOPHUTGIAY|GIO_REG\(2) & ((\DEM_GIOPHUTGIAY|GIO_REG\(4)) # (\DEM_GIOPHUTGIAY|GIO_REG\(1)))) # (!\DEM_GIOPHUTGIAY|GIO_REG\(2) & ((!\DEM_GIOPHUTGIAY|GIO_REG\(1)) # 
-- (!\DEM_GIOPHUTGIAY|GIO_REG\(4)))))) # (!\DEM_GIOPHUTGIAY|GIO_REG\(3) & (\DEM_GIOPHUTGIAY|GIO_REG\(1) $ (((\DEM_GIOPHUTGIAY|GIO_REG\(2)) # (!\DEM_GIOPHUTGIAY|GIO_REG\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_REG\(2),
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(4),
	datac => \DEM_GIOPHUTGIAY|GIO_REG\(3),
	datad => \DEM_GIOPHUTGIAY|GIO_REG\(1),
	combout => \HEXTOBCD_GIO|DONVI[1]~0_combout\);

-- Location: LCCOMB_X30_Y40_N14
\LCD_KHOITAO_HIENTHI|Selector37~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~8_combout\ = (\HEXTOBCD_PHUT|BCD_HEX~0_combout\ & (((\HEXTOBCD_PHUT|BCD_HEX~1_combout\ & !\DEM_GIOPHUTGIAY|PHUT_REG\(1))))) # (!\HEXTOBCD_PHUT|BCD_HEX~0_combout\ & ((\DEM_GIOPHUTGIAY|PHUT_REG\(1)) # 
-- ((!\HEXTOBCD_PHUT|BCD_HEX~2_combout\ & !\HEXTOBCD_PHUT|BCD_HEX~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEXTOBCD_PHUT|BCD_HEX~0_combout\,
	datab => \HEXTOBCD_PHUT|BCD_HEX~2_combout\,
	datac => \HEXTOBCD_PHUT|BCD_HEX~1_combout\,
	datad => \DEM_GIOPHUTGIAY|PHUT_REG\(1),
	combout => \LCD_KHOITAO_HIENTHI|Selector37~8_combout\);

-- Location: LCCOMB_X27_Y40_N2
\LCD_KHOITAO_HIENTHI|Selector37~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~12_combout\ = (!\LCD_KHOITAO_HIENTHI|PTR\(2) & (!\LCD_KHOITAO_HIENTHI|PTR\(3) & (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & \LCD_KHOITAO_HIENTHI|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datad => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector37~12_combout\);

-- Location: LCCOMB_X27_Y40_N0
\LCD_KHOITAO_HIENTHI|Selector37~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~13_combout\ = (\LCD_KHOITAO_HIENTHI|Mux9~0_combout\ & (\LCD_KHOITAO_HIENTHI|Selector35~0_combout\ & ((\LCD_KHOITAO_HIENTHI|Selector37~12_combout\) # (\LCD_KHOITAO_HIENTHI|Selector23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Mux9~0_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector37~12_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector35~0_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector23~6_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector37~13_combout\);

-- Location: LCCOMB_X30_Y40_N12
\LCD_KHOITAO_HIENTHI|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux17~0_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(2) & (!\LCD_KHOITAO_HIENTHI|PTR\(3) & (!\LCD_KHOITAO_HIENTHI|PTR\(1) & !\LCD_KHOITAO_HIENTHI|PTR\(0)))) # (!\LCD_KHOITAO_HIENTHI|PTR\(2) & (\LCD_KHOITAO_HIENTHI|PTR\(0) $ 
-- (((\LCD_KHOITAO_HIENTHI|PTR\(3)) # (\LCD_KHOITAO_HIENTHI|PTR\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(0),
	combout => \LCD_KHOITAO_HIENTHI|Mux17~0_combout\);

-- Location: LCCOMB_X27_Y40_N6
\LCD_KHOITAO_HIENTHI|Selector37~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~14_combout\ = (\LCD_KHOITAO_HIENTHI|Selector37~13_combout\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\ & (\LCD_KHOITAO_HIENTHI|Mux17~0_combout\ & \LCD_KHOITAO_HIENTHI|Selector39~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datab => \LCD_KHOITAO_HIENTHI|Mux17~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector37~13_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector37~14_combout\);

-- Location: LCCOMB_X31_Y39_N30
\LCD_KHOITAO_HIENTHI|Selector36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector36~2_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(3) & (!\DEM_GIOPHUTGIAY|GIO_REG\(1) & (\DEM_GIOPHUTGIAY|GIO_REG\(2) $ (!\DEM_GIOPHUTGIAY|GIO_REG\(4))))) # (!\DEM_GIOPHUTGIAY|GIO_REG\(3) & (!\DEM_GIOPHUTGIAY|GIO_REG\(2) & 
-- (\DEM_GIOPHUTGIAY|GIO_REG\(4) & \DEM_GIOPHUTGIAY|GIO_REG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_REG\(2),
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(4),
	datac => \DEM_GIOPHUTGIAY|GIO_REG\(3),
	datad => \DEM_GIOPHUTGIAY|GIO_REG\(1),
	combout => \LCD_KHOITAO_HIENTHI|Selector36~2_combout\);

-- Location: LCCOMB_X30_Y40_N28
\LCD_KHOITAO_HIENTHI|Selector36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector36~3_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(0) & (!\LCD_KHOITAO_HIENTHI|PTR\(1))) # (!\LCD_KHOITAO_HIENTHI|PTR\(0) & (!\LCD_KHOITAO_HIENTHI|PTR\(3) & (\LCD_KHOITAO_HIENTHI|PTR\(1) $ (\LCD_KHOITAO_HIENTHI|PTR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(3),
	combout => \LCD_KHOITAO_HIENTHI|Selector36~3_combout\);

-- Location: LCCOMB_X30_Y40_N26
\LCD_KHOITAO_HIENTHI|Selector36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector36~4_combout\ = (\LCD_KHOITAO_HIENTHI|Selector36~3_combout\ & (((\LCD_KHOITAO_HIENTHI|Selector36~2_combout\ & \LCD_KHOITAO_HIENTHI|Mux11~11_combout\)) # (!\LCD_KHOITAO_HIENTHI|PTR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector36~2_combout\,
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|Mux11~11_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector36~3_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector36~4_combout\);

-- Location: LCCOMB_X27_Y39_N28
\LCD_KHOITAO_HIENTHI|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux15~0_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(3) & (((!\LCD_KHOITAO_HIENTHI|PTR\(1)) # (!\LCD_KHOITAO_HIENTHI|PTR\(2))) # (!\LCD_KHOITAO_HIENTHI|PTR\(0)))) # (!\LCD_KHOITAO_HIENTHI|PTR\(3) & (\LCD_KHOITAO_HIENTHI|PTR\(0) & 
-- (\LCD_KHOITAO_HIENTHI|PTR\(2) $ (!\LCD_KHOITAO_HIENTHI|PTR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(1),
	combout => \LCD_KHOITAO_HIENTHI|Mux15~0_combout\);

-- Location: LCCOMB_X27_Y39_N26
\LCD_KHOITAO_HIENTHI|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector35~2_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\ & \LCD_KHOITAO_HIENTHI|Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datad => \LCD_KHOITAO_HIENTHI|Mux15~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector35~2_combout\);

-- Location: LCCOMB_X27_Y39_N24
\LCD_KHOITAO_HIENTHI|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector34~0_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & ((\LCD_KHOITAO_HIENTHI|Mux6~0_combout\) # ((!\LCD_KHOITAO_HIENTHI|Mux14~0_combout\ & \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\)))) # 
-- (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & (!\LCD_KHOITAO_HIENTHI|Mux14~0_combout\ & (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datab => \LCD_KHOITAO_HIENTHI|Mux14~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datad => \LCD_KHOITAO_HIENTHI|Mux6~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector34~0_combout\);

-- Location: LCCOMB_X29_Y42_N30
\LCD_KHOITAO_HIENTHI|Selector23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~10_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(19) & \LCD_KHOITAO_HIENTHI|SLX\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(19),
	datad => \LCD_KHOITAO_HIENTHI|SLX\(18),
	combout => \LCD_KHOITAO_HIENTHI|Selector23~10_combout\);

-- Location: LCCOMB_X26_Y40_N26
\LCD_KHOITAO_HIENTHI|Selector23~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~13_combout\ = (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & \LCD_KHOITAO_HIENTHI|Selector23~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datad => \LCD_KHOITAO_HIENTHI|Selector23~12_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector23~13_combout\);

-- Location: LCCOMB_X26_Y40_N10
\LCD_KHOITAO_HIENTHI|Selector23~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~14_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & (\LCD_KHOITAO_HIENTHI|Equal5~0_combout\ & (!\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & !\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datab => \LCD_KHOITAO_HIENTHI|Equal5~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	datad => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	combout => \LCD_KHOITAO_HIENTHI|Selector23~14_combout\);

-- Location: LCCOMB_X27_Y40_N10
\LCD_KHOITAO_HIENTHI|PTR[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|PTR[3]~3_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & ((\LCD_KHOITAO_HIENTHI|Selector23~7_combout\) # ((\LCD_KHOITAO_HIENTHI|Equal5~0_combout\)))) # (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & 
-- (((\LCD_KHOITAO_HIENTHI|Selector23~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector23~7_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector23~12_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Equal5~0_combout\,
	datad => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	combout => \LCD_KHOITAO_HIENTHI|PTR[3]~3_combout\);

-- Location: LCCOMB_X29_Y40_N6
\LCD_KHOITAO_HIENTHI|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Add1~1_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(0) & \LCD_KHOITAO_HIENTHI|PTR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(1),
	combout => \LCD_KHOITAO_HIENTHI|Add1~1_combout\);

-- Location: FF_X29_Y35_N9
\CHIA_10ENA|D5HZ_REG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(16));

-- Location: FF_X29_Y36_N11
\CHIA_10ENA|D5HZ_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(1));

-- Location: FF_X28_Y36_N3
\CHIA_10ENA|D5HZ_REG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|D5HZ_NEXT[12]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(12));

-- Location: FF_X29_Y36_N7
\CHIA_10ENA|D5HZ_REG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|D5HZ_NEXT[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(10));

-- Location: LCCOMB_X29_Y36_N2
\CHIA_10ENA|Equal12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal12~2_combout\ = (!\CHIA_10ENA|D5HZ_REG\(10) & (\CHIA_10ENA|D5HZ_REG\(6) & (!\CHIA_10ENA|D5HZ_REG\(7) & \CHIA_10ENA|D5HZ_REG\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(10),
	datab => \CHIA_10ENA|D5HZ_REG\(6),
	datac => \CHIA_10ENA|D5HZ_REG\(7),
	datad => \CHIA_10ENA|D5HZ_REG\(8),
	combout => \CHIA_10ENA|Equal12~2_combout\);

-- Location: LCCOMB_X29_Y37_N10
\DEM_GIOPHUTGIAY|PHUT_REG[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|PHUT_REG[3]~2_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG[3]~1_combout\ & (\DEM_GIOPHUTGIAY|PHUT_REG\(1) & (\DEM_GIOPHUTGIAY|PHUT_REG\(0) & \DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG[3]~1_combout\,
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(1),
	datac => \DEM_GIOPHUTGIAY|PHUT_REG\(0),
	datad => \DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\,
	combout => \DEM_GIOPHUTGIAY|PHUT_REG[3]~2_combout\);

-- Location: LCCOMB_X29_Y37_N16
\DEM_GIOPHUTGIAY|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Equal5~0_combout\ = (!\DEM_GIOPHUTGIAY|PHUT_REG\(4) & (!\DEM_GIOPHUTGIAY|PHUT_REG\(5) & (!\DEM_GIOPHUTGIAY|PHUT_REG\(2) & !\DEM_GIOPHUTGIAY|PHUT_REG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG\(4),
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(5),
	datac => \DEM_GIOPHUTGIAY|PHUT_REG\(2),
	datad => \DEM_GIOPHUTGIAY|PHUT_REG\(3),
	combout => \DEM_GIOPHUTGIAY|Equal5~0_combout\);

-- Location: LCCOMB_X29_Y37_N2
\DEM_GIOPHUTGIAY|PHUT_NEXT[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|PHUT_NEXT[2]~3_combout\ = (\DEM_GIOPHUTGIAY|Add3~4_combout\ & ((\DEM_GIOPHUTGIAY|PHUT_REG\(0)) # ((\DEM_GIOPHUTGIAY|PHUT_REG\(1)) # (!\DEM_GIOPHUTGIAY|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG\(0),
	datab => \DEM_GIOPHUTGIAY|Equal5~0_combout\,
	datac => \DEM_GIOPHUTGIAY|PHUT_REG\(1),
	datad => \DEM_GIOPHUTGIAY|Add3~4_combout\,
	combout => \DEM_GIOPHUTGIAY|PHUT_NEXT[2]~3_combout\);

-- Location: LCCOMB_X29_Y37_N26
\DEM_GIOPHUTGIAY|PHUT_NEXT[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|PHUT_NEXT[2]~4_combout\ = (!\DEM_GIOPHUTGIAY|PHUT_REG[3]~2_combout\ & ((\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ & (\DEM_GIOPHUTGIAY|Add2~4_combout\)) # (!\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ & 
-- ((\DEM_GIOPHUTGIAY|PHUT_NEXT[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG[3]~2_combout\,
	datab => \DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\,
	datac => \DEM_GIOPHUTGIAY|Add2~4_combout\,
	datad => \DEM_GIOPHUTGIAY|PHUT_NEXT[2]~3_combout\,
	combout => \DEM_GIOPHUTGIAY|PHUT_NEXT[2]~4_combout\);

-- Location: LCCOMB_X29_Y38_N30
\DEM_GIOPHUTGIAY|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Equal2~0_combout\ = (!\DEM_GIOPHUTGIAY|GIAY_REG\(4) & (!\DEM_GIOPHUTGIAY|GIAY_REG\(3) & (!\DEM_GIOPHUTGIAY|GIAY_REG\(5) & !\DEM_GIOPHUTGIAY|GIAY_REG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(4),
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(3),
	datac => \DEM_GIOPHUTGIAY|GIAY_REG\(5),
	datad => \DEM_GIOPHUTGIAY|GIAY_REG\(2),
	combout => \DEM_GIOPHUTGIAY|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y39_N20
\DEM_GIOPHUTGIAY|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Equal8~0_combout\ = (!\DEM_GIOPHUTGIAY|GIO_REG\(2) & (!\DEM_GIOPHUTGIAY|GIO_REG\(4) & (!\DEM_GIOPHUTGIAY|GIO_REG\(3) & !\DEM_GIOPHUTGIAY|GIO_REG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_REG\(2),
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(4),
	datac => \DEM_GIOPHUTGIAY|GIO_REG\(3),
	datad => \DEM_GIOPHUTGIAY|GIO_REG\(1),
	combout => \DEM_GIOPHUTGIAY|Equal8~0_combout\);

-- Location: LCCOMB_X30_Y39_N14
\DEM_GIOPHUTGIAY|GIO_NEXT[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIO_NEXT[3]~0_combout\ = (\DEM_GIOPHUTGIAY|Add5~6_combout\ & ((\DEM_GIOPHUTGIAY|GIO_REG\(0)) # (!\DEM_GIOPHUTGIAY|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|Equal8~0_combout\,
	datac => \DEM_GIOPHUTGIAY|GIO_REG\(0),
	datad => \DEM_GIOPHUTGIAY|Add5~6_combout\,
	combout => \DEM_GIOPHUTGIAY|GIO_NEXT[3]~0_combout\);

-- Location: LCCOMB_X31_Y39_N6
\DEM_GIOPHUTGIAY|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add4~10_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ & ((\DEM_GIOPHUTGIAY|Add4~6_combout\))) # (!\DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ & (\DEM_GIOPHUTGIAY|Add5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\,
	datac => \DEM_GIOPHUTGIAY|Add5~4_combout\,
	datad => \DEM_GIOPHUTGIAY|Add4~6_combout\,
	combout => \DEM_GIOPHUTGIAY|Add4~10_combout\);

-- Location: LCCOMB_X33_Y38_N10
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~2_combout\ = (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(7) & (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(6) & (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(5) & 
-- !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(7),
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(6),
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(5),
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(4),
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y37_N28
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~5_combout\ = (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(15) & (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(14) & (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(12) & 
-- !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(15),
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(14),
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(12),
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(13),
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~5_combout\);

-- Location: FF_X3_Y36_N13
\CHIA_10ENA|D1HZ_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(3));

-- Location: FF_X3_Y36_N23
\CHIA_10ENA|D1HZ_REG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(8));

-- Location: FF_X3_Y36_N27
\CHIA_10ENA|D1HZ_REG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(10));

-- Location: LCCOMB_X4_Y36_N6
\CHIA_10ENA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal0~2_combout\ = (!\CHIA_10ENA|D1HZ_REG\(10) & (\CHIA_10ENA|D1HZ_REG\(13) & (\CHIA_10ENA|D1HZ_REG\(14) & \CHIA_10ENA|D1HZ_REG\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(10),
	datab => \CHIA_10ENA|D1HZ_REG\(13),
	datac => \CHIA_10ENA|D1HZ_REG\(14),
	datad => \CHIA_10ENA|D1HZ_REG\(12),
	combout => \CHIA_10ENA|Equal0~2_combout\);

-- Location: FF_X4_Y36_N31
\CHIA_10ENA|D1HZ_REG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	asdata => \CHIA_10ENA|Add0~36_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(18));

-- Location: FF_X4_Y36_N25
\CHIA_10ENA|D1HZ_REG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|D1HZ_NEXT[17]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(17));

-- Location: FF_X4_Y36_N13
\CHIA_10ENA|D1HZ_REG[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|D1HZ_NEXT[23]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(23));

-- Location: LCCOMB_X4_Y36_N30
\CHIA_10ENA|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal10~1_combout\ = (\CHIA_10ENA|D1HZ_REG\(16) & (!\CHIA_10ENA|D1HZ_REG\(17) & (\CHIA_10ENA|D1HZ_REG\(18) & !\CHIA_10ENA|D1HZ_REG\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(16),
	datab => \CHIA_10ENA|D1HZ_REG\(17),
	datac => \CHIA_10ENA|D1HZ_REG\(18),
	datad => \CHIA_10ENA|D1HZ_REG\(23),
	combout => \CHIA_10ENA|Equal10~1_combout\);

-- Location: LCCOMB_X28_Y36_N12
\CHIA_10ENA|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal2~5_combout\ = (!\CHIA_10ENA|D5HZ_REG\(11) & (\CHIA_10ENA|D5HZ_REG\(12) & (!\CHIA_10ENA|D5HZ_REG\(14) & \CHIA_10ENA|D5HZ_REG\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(11),
	datab => \CHIA_10ENA|D5HZ_REG\(12),
	datac => \CHIA_10ENA|D5HZ_REG\(14),
	datad => \CHIA_10ENA|D5HZ_REG\(15),
	combout => \CHIA_10ENA|Equal2~5_combout\);

-- Location: LCCOMB_X28_Y36_N2
\CHIA_10ENA|D5HZ_NEXT[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D5HZ_NEXT[12]~5_combout\ = (\CHIA_10ENA|Add2~24_combout\ & !\CHIA_10ENA|Equal2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIA_10ENA|Add2~24_combout\,
	datad => \CHIA_10ENA|Equal2~7_combout\,
	combout => \CHIA_10ENA|D5HZ_NEXT[12]~5_combout\);

-- Location: LCCOMB_X29_Y36_N6
\CHIA_10ENA|D5HZ_NEXT[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D5HZ_NEXT[10]~6_combout\ = (\CHIA_10ENA|Add2~20_combout\ & !\CHIA_10ENA|Equal2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|Add2~20_combout\,
	datad => \CHIA_10ENA|Equal2~7_combout\,
	combout => \CHIA_10ENA|D5HZ_NEXT[10]~6_combout\);

-- Location: LCCOMB_X27_Y38_N6
\DEBOUNCE_BTN_UP|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Equal0~2_combout\ = (!\DEBOUNCE_BTN_UP|DELAY_REG\(7) & (!\DEBOUNCE_BTN_UP|DELAY_REG\(6) & (!\DEBOUNCE_BTN_UP|DELAY_REG\(5) & !\DEBOUNCE_BTN_UP|DELAY_REG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DELAY_REG\(7),
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(6),
	datac => \DEBOUNCE_BTN_UP|DELAY_REG\(5),
	datad => \DEBOUNCE_BTN_UP|DELAY_REG\(4),
	combout => \DEBOUNCE_BTN_UP|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y38_N22
\DEBOUNCE_BTN_UP|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector2~0_combout\ = (\DEBOUNCE_BTN_UP|DB_REG.ONE~q\ & ((\BTN_N[1]~input_o\))) # (!\DEBOUNCE_BTN_UP|DB_REG.ONE~q\ & (!\DEBOUNCE_BTN_UP|DB_REG.ZERO~q\ & !\BTN_N[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DB_REG.ONE~q\,
	datac => \DEBOUNCE_BTN_UP|DB_REG.ZERO~q\,
	datad => \BTN_N[1]~input_o\,
	combout => \DEBOUNCE_BTN_UP|Selector2~0_combout\);

-- Location: LCCOMB_X31_Y38_N6
\DEBOUNCE_BTN_DW|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Equal0~2_combout\ = (!\DEBOUNCE_BTN_DW|DELAY_REG\(7) & (!\DEBOUNCE_BTN_DW|DELAY_REG\(6) & (!\DEBOUNCE_BTN_DW|DELAY_REG\(5) & !\DEBOUNCE_BTN_DW|DELAY_REG\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DELAY_REG\(7),
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(6),
	datac => \DEBOUNCE_BTN_DW|DELAY_REG\(5),
	datad => \DEBOUNCE_BTN_DW|DELAY_REG\(4),
	combout => \DEBOUNCE_BTN_DW|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y36_N4
\CHIA_10ENA|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal0~6_combout\ = (!\CHIA_10ENA|D1HZ_REG\(16) & (\CHIA_10ENA|D1HZ_REG\(17) & (\CHIA_10ENA|D1HZ_REG\(23) & !\CHIA_10ENA|D1HZ_REG\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(16),
	datab => \CHIA_10ENA|D1HZ_REG\(17),
	datac => \CHIA_10ENA|D1HZ_REG\(23),
	datad => \CHIA_10ENA|D1HZ_REG\(18),
	combout => \CHIA_10ENA|Equal0~6_combout\);

-- Location: LCCOMB_X4_Y36_N24
\CHIA_10ENA|D1HZ_NEXT[17]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_NEXT[17]~9_combout\ = (\CHIA_10ENA|Add0~34_combout\ & !\CHIA_10ENA|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIA_10ENA|Add0~34_combout\,
	datad => \CHIA_10ENA|Equal0~8_combout\,
	combout => \CHIA_10ENA|D1HZ_NEXT[17]~9_combout\);

-- Location: LCCOMB_X4_Y36_N12
\CHIA_10ENA|D1HZ_NEXT[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_NEXT[23]~10_combout\ = (\CHIA_10ENA|Add0~46_combout\ & !\CHIA_10ENA|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIA_10ENA|Add0~46_combout\,
	datad => \CHIA_10ENA|Equal0~8_combout\,
	combout => \CHIA_10ENA|D1HZ_NEXT[23]~10_combout\);

-- Location: LCCOMB_X28_Y38_N12
\DEBOUNCE_BTN_UP|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector2~2_combout\ = (\BTN_N[1]~input_o\) # ((\DEBOUNCE_BTN_UP|Equal0~0_combout\ & \DEBOUNCE_BTN_UP|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[1]~input_o\,
	datac => \DEBOUNCE_BTN_UP|Equal0~0_combout\,
	datad => \DEBOUNCE_BTN_UP|Equal0~5_combout\,
	combout => \DEBOUNCE_BTN_UP|Selector2~2_combout\);

-- Location: LCCOMB_X2_Y36_N24
\CHIA_10ENA|D1HZ_REG[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_REG[0]~0_combout\ = !\CHIA_10ENA|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|Add0~0_combout\,
	combout => \CHIA_10ENA|D1HZ_REG[0]~0_combout\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_KHOITAO_HIENTHI|LCD_E~q\,
	devoe => ww_devoe,
	o => \LCD_E~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_KHOITAO_HIENTHI|LCD_RS~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\LCD_BLON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_BLON~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\LCD_DB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_KHOITAO_HIENTHI|LCD_DB\(0),
	devoe => ww_devoe,
	o => \LCD_DB[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_KHOITAO_HIENTHI|LCD_DB\(1),
	devoe => ww_devoe,
	o => \LCD_DB[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_KHOITAO_HIENTHI|LCD_DB\(2),
	devoe => ww_devoe,
	o => \LCD_DB[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_KHOITAO_HIENTHI|LCD_DB\(3),
	devoe => ww_devoe,
	o => \LCD_DB[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_KHOITAO_HIENTHI|LCD_DB\(4),
	devoe => ww_devoe,
	o => \LCD_DB[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_KHOITAO_HIENTHI|LCD_DB\(5),
	devoe => ww_devoe,
	o => \LCD_DB[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_KHOITAO_HIENTHI|LCD_DB\(6),
	devoe => ww_devoe,
	o => \LCD_DB[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LCD_DB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_KHOITAO_HIENTHI|LCD_DB\(7),
	devoe => ww_devoe,
	o => \LCD_DB[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CKHT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CKHT,
	o => \CKHT~input_o\);

-- Location: CLKCTRL_G4
\CKHT~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CKHT~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CKHT~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y43_N12
\LCD_KHOITAO_HIENTHI|SLX[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[0]~22_combout\ = \LCD_KHOITAO_HIENTHI|SLX\(0) $ (VCC)
-- \LCD_KHOITAO_HIENTHI|SLX[0]~23\ = CARRY(\LCD_KHOITAO_HIENTHI|SLX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(0),
	datad => VCC,
	combout => \LCD_KHOITAO_HIENTHI|SLX[0]~22_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[0]~23\);

-- Location: LCCOMB_X29_Y43_N14
\LCD_KHOITAO_HIENTHI|SLX[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[1]~24_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(1) & (!\LCD_KHOITAO_HIENTHI|SLX[0]~23\)) # (!\LCD_KHOITAO_HIENTHI|SLX\(1) & ((\LCD_KHOITAO_HIENTHI|SLX[0]~23\) # (GND)))
-- \LCD_KHOITAO_HIENTHI|SLX[1]~25\ = CARRY((!\LCD_KHOITAO_HIENTHI|SLX[0]~23\) # (!\LCD_KHOITAO_HIENTHI|SLX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(1),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[0]~23\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[1]~24_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[1]~25\);

-- Location: IOIBUF_X115_Y40_N8
\BTN_N[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_N(0),
	o => \BTN_N[0]~input_o\);

-- Location: LCCOMB_X29_Y43_N16
\LCD_KHOITAO_HIENTHI|SLX[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[2]~26_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(2) & (\LCD_KHOITAO_HIENTHI|SLX[1]~25\ $ (GND))) # (!\LCD_KHOITAO_HIENTHI|SLX\(2) & (!\LCD_KHOITAO_HIENTHI|SLX[1]~25\ & VCC))
-- \LCD_KHOITAO_HIENTHI|SLX[2]~27\ = CARRY((\LCD_KHOITAO_HIENTHI|SLX\(2) & !\LCD_KHOITAO_HIENTHI|SLX[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(2),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[1]~25\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[2]~26_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[2]~27\);

-- Location: LCCOMB_X29_Y43_N18
\LCD_KHOITAO_HIENTHI|SLX[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[3]~28_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(3) & (!\LCD_KHOITAO_HIENTHI|SLX[2]~27\)) # (!\LCD_KHOITAO_HIENTHI|SLX\(3) & ((\LCD_KHOITAO_HIENTHI|SLX[2]~27\) # (GND)))
-- \LCD_KHOITAO_HIENTHI|SLX[3]~29\ = CARRY((!\LCD_KHOITAO_HIENTHI|SLX[2]~27\) # (!\LCD_KHOITAO_HIENTHI|SLX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(3),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[2]~27\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[3]~28_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[3]~29\);

-- Location: LCCOMB_X29_Y43_N20
\LCD_KHOITAO_HIENTHI|SLX[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[4]~30_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(4) & (\LCD_KHOITAO_HIENTHI|SLX[3]~29\ $ (GND))) # (!\LCD_KHOITAO_HIENTHI|SLX\(4) & (!\LCD_KHOITAO_HIENTHI|SLX[3]~29\ & VCC))
-- \LCD_KHOITAO_HIENTHI|SLX[4]~31\ = CARRY((\LCD_KHOITAO_HIENTHI|SLX\(4) & !\LCD_KHOITAO_HIENTHI|SLX[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(4),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[3]~29\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[4]~30_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[4]~31\);

-- Location: FF_X29_Y43_N21
\LCD_KHOITAO_HIENTHI|SLX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[4]~30_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(4));

-- Location: LCCOMB_X29_Y43_N22
\LCD_KHOITAO_HIENTHI|SLX[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[5]~32_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(5) & (!\LCD_KHOITAO_HIENTHI|SLX[4]~31\)) # (!\LCD_KHOITAO_HIENTHI|SLX\(5) & ((\LCD_KHOITAO_HIENTHI|SLX[4]~31\) # (GND)))
-- \LCD_KHOITAO_HIENTHI|SLX[5]~33\ = CARRY((!\LCD_KHOITAO_HIENTHI|SLX[4]~31\) # (!\LCD_KHOITAO_HIENTHI|SLX\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(5),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[4]~31\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[5]~32_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[5]~33\);

-- Location: LCCOMB_X29_Y43_N24
\LCD_KHOITAO_HIENTHI|SLX[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[6]~34_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(6) & (\LCD_KHOITAO_HIENTHI|SLX[5]~33\ $ (GND))) # (!\LCD_KHOITAO_HIENTHI|SLX\(6) & (!\LCD_KHOITAO_HIENTHI|SLX[5]~33\ & VCC))
-- \LCD_KHOITAO_HIENTHI|SLX[6]~35\ = CARRY((\LCD_KHOITAO_HIENTHI|SLX\(6) & !\LCD_KHOITAO_HIENTHI|SLX[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(6),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[5]~33\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[6]~34_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[6]~35\);

-- Location: FF_X29_Y43_N25
\LCD_KHOITAO_HIENTHI|SLX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[6]~34_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(6));

-- Location: LCCOMB_X29_Y43_N26
\LCD_KHOITAO_HIENTHI|SLX[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[7]~37_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(7) & (!\LCD_KHOITAO_HIENTHI|SLX[6]~35\)) # (!\LCD_KHOITAO_HIENTHI|SLX\(7) & ((\LCD_KHOITAO_HIENTHI|SLX[6]~35\) # (GND)))
-- \LCD_KHOITAO_HIENTHI|SLX[7]~38\ = CARRY((!\LCD_KHOITAO_HIENTHI|SLX[6]~35\) # (!\LCD_KHOITAO_HIENTHI|SLX\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(7),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[6]~35\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[7]~37_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[7]~38\);

-- Location: FF_X29_Y43_N27
\LCD_KHOITAO_HIENTHI|SLX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[7]~37_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(7));

-- Location: LCCOMB_X29_Y43_N28
\LCD_KHOITAO_HIENTHI|SLX[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[8]~39_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(8) & (\LCD_KHOITAO_HIENTHI|SLX[7]~38\ $ (GND))) # (!\LCD_KHOITAO_HIENTHI|SLX\(8) & (!\LCD_KHOITAO_HIENTHI|SLX[7]~38\ & VCC))
-- \LCD_KHOITAO_HIENTHI|SLX[8]~40\ = CARRY((\LCD_KHOITAO_HIENTHI|SLX\(8) & !\LCD_KHOITAO_HIENTHI|SLX[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(8),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[7]~38\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[8]~39_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[8]~40\);

-- Location: FF_X29_Y43_N29
\LCD_KHOITAO_HIENTHI|SLX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[8]~39_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(8));

-- Location: LCCOMB_X29_Y43_N30
\LCD_KHOITAO_HIENTHI|SLX[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[9]~41_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(9) & (!\LCD_KHOITAO_HIENTHI|SLX[8]~40\)) # (!\LCD_KHOITAO_HIENTHI|SLX\(9) & ((\LCD_KHOITAO_HIENTHI|SLX[8]~40\) # (GND)))
-- \LCD_KHOITAO_HIENTHI|SLX[9]~42\ = CARRY((!\LCD_KHOITAO_HIENTHI|SLX[8]~40\) # (!\LCD_KHOITAO_HIENTHI|SLX\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(9),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[8]~40\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[9]~41_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[9]~42\);

-- Location: LCCOMB_X29_Y42_N0
\LCD_KHOITAO_HIENTHI|SLX[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[10]~43_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(10) & (\LCD_KHOITAO_HIENTHI|SLX[9]~42\ $ (GND))) # (!\LCD_KHOITAO_HIENTHI|SLX\(10) & (!\LCD_KHOITAO_HIENTHI|SLX[9]~42\ & VCC))
-- \LCD_KHOITAO_HIENTHI|SLX[10]~44\ = CARRY((\LCD_KHOITAO_HIENTHI|SLX\(10) & !\LCD_KHOITAO_HIENTHI|SLX[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(10),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[9]~42\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[10]~43_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[10]~44\);

-- Location: FF_X29_Y42_N1
\LCD_KHOITAO_HIENTHI|SLX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[10]~43_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(10));

-- Location: LCCOMB_X29_Y42_N2
\LCD_KHOITAO_HIENTHI|SLX[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[11]~45_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(11) & (!\LCD_KHOITAO_HIENTHI|SLX[10]~44\)) # (!\LCD_KHOITAO_HIENTHI|SLX\(11) & ((\LCD_KHOITAO_HIENTHI|SLX[10]~44\) # (GND)))
-- \LCD_KHOITAO_HIENTHI|SLX[11]~46\ = CARRY((!\LCD_KHOITAO_HIENTHI|SLX[10]~44\) # (!\LCD_KHOITAO_HIENTHI|SLX\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(11),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[10]~44\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[11]~45_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[11]~46\);

-- Location: FF_X29_Y42_N3
\LCD_KHOITAO_HIENTHI|SLX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[11]~45_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(11));

-- Location: LCCOMB_X29_Y42_N4
\LCD_KHOITAO_HIENTHI|SLX[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[12]~47_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(12) & (\LCD_KHOITAO_HIENTHI|SLX[11]~46\ $ (GND))) # (!\LCD_KHOITAO_HIENTHI|SLX\(12) & (!\LCD_KHOITAO_HIENTHI|SLX[11]~46\ & VCC))
-- \LCD_KHOITAO_HIENTHI|SLX[12]~48\ = CARRY((\LCD_KHOITAO_HIENTHI|SLX\(12) & !\LCD_KHOITAO_HIENTHI|SLX[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(12),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[11]~46\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[12]~47_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[12]~48\);

-- Location: FF_X29_Y42_N5
\LCD_KHOITAO_HIENTHI|SLX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[12]~47_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(12));

-- Location: LCCOMB_X29_Y42_N8
\LCD_KHOITAO_HIENTHI|SLX[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[14]~51_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(14) & (\LCD_KHOITAO_HIENTHI|SLX[13]~50\ $ (GND))) # (!\LCD_KHOITAO_HIENTHI|SLX\(14) & (!\LCD_KHOITAO_HIENTHI|SLX[13]~50\ & VCC))
-- \LCD_KHOITAO_HIENTHI|SLX[14]~52\ = CARRY((\LCD_KHOITAO_HIENTHI|SLX\(14) & !\LCD_KHOITAO_HIENTHI|SLX[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(14),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[13]~50\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[14]~51_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[14]~52\);

-- Location: FF_X29_Y42_N9
\LCD_KHOITAO_HIENTHI|SLX[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[14]~51_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(14));

-- Location: LCCOMB_X29_Y42_N10
\LCD_KHOITAO_HIENTHI|SLX[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[15]~53_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(15) & (!\LCD_KHOITAO_HIENTHI|SLX[14]~52\)) # (!\LCD_KHOITAO_HIENTHI|SLX\(15) & ((\LCD_KHOITAO_HIENTHI|SLX[14]~52\) # (GND)))
-- \LCD_KHOITAO_HIENTHI|SLX[15]~54\ = CARRY((!\LCD_KHOITAO_HIENTHI|SLX[14]~52\) # (!\LCD_KHOITAO_HIENTHI|SLX\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(15),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[14]~52\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[15]~53_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[15]~54\);

-- Location: LCCOMB_X29_Y42_N14
\LCD_KHOITAO_HIENTHI|SLX[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[17]~57_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(17) & (!\LCD_KHOITAO_HIENTHI|SLX[16]~56\)) # (!\LCD_KHOITAO_HIENTHI|SLX\(17) & ((\LCD_KHOITAO_HIENTHI|SLX[16]~56\) # (GND)))
-- \LCD_KHOITAO_HIENTHI|SLX[17]~58\ = CARRY((!\LCD_KHOITAO_HIENTHI|SLX[16]~56\) # (!\LCD_KHOITAO_HIENTHI|SLX\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(17),
	datad => VCC,
	cin => \LCD_KHOITAO_HIENTHI|SLX[16]~56\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[17]~57_combout\,
	cout => \LCD_KHOITAO_HIENTHI|SLX[17]~58\);

-- Location: FF_X29_Y42_N15
\LCD_KHOITAO_HIENTHI|SLX[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[17]~57_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(17));

-- Location: FF_X28_Y42_N5
\LCD_KHOITAO_HIENTHI|SLX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	asdata => \LCD_KHOITAO_HIENTHI|SLX[3]~28_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(3));

-- Location: LCCOMB_X29_Y42_N24
\LCD_KHOITAO_HIENTHI|SLX[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[5]~feeder_combout\ = \LCD_KHOITAO_HIENTHI|SLX[5]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD_KHOITAO_HIENTHI|SLX[5]~32_combout\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[5]~feeder_combout\);

-- Location: FF_X29_Y42_N25
\LCD_KHOITAO_HIENTHI|SLX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[5]~feeder_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(5));

-- Location: LCCOMB_X29_Y42_N22
\LCD_KHOITAO_HIENTHI|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Equal2~1_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(15) & (!\LCD_KHOITAO_HIENTHI|SLX\(17) & (\LCD_KHOITAO_HIENTHI|SLX\(3) & !\LCD_KHOITAO_HIENTHI|SLX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(15),
	datab => \LCD_KHOITAO_HIENTHI|SLX\(17),
	datac => \LCD_KHOITAO_HIENTHI|SLX\(3),
	datad => \LCD_KHOITAO_HIENTHI|SLX\(5),
	combout => \LCD_KHOITAO_HIENTHI|Equal2~1_combout\);

-- Location: FF_X29_Y43_N13
\LCD_KHOITAO_HIENTHI|SLX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[0]~22_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(0));

-- Location: LCCOMB_X28_Y42_N8
\LCD_KHOITAO_HIENTHI|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~2_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(13) & (!\LCD_KHOITAO_HIENTHI|SLX\(10) & (!\LCD_KHOITAO_HIENTHI|SLX\(11) & !\LCD_KHOITAO_HIENTHI|SLX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(13),
	datab => \LCD_KHOITAO_HIENTHI|SLX\(10),
	datac => \LCD_KHOITAO_HIENTHI|SLX\(11),
	datad => \LCD_KHOITAO_HIENTHI|SLX\(0),
	combout => \LCD_KHOITAO_HIENTHI|Selector23~2_combout\);

-- Location: FF_X29_Y42_N17
\LCD_KHOITAO_HIENTHI|SLX[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[18]~59_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(18));

-- Location: LCCOMB_X28_Y42_N18
\LCD_KHOITAO_HIENTHI|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Equal2~0_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(16) & (!\LCD_KHOITAO_HIENTHI|SLX\(18) & (!\LCD_KHOITAO_HIENTHI|SLX\(14) & !\LCD_KHOITAO_HIENTHI|SLX\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(16),
	datab => \LCD_KHOITAO_HIENTHI|SLX\(18),
	datac => \LCD_KHOITAO_HIENTHI|SLX\(14),
	datad => \LCD_KHOITAO_HIENTHI|SLX\(6),
	combout => \LCD_KHOITAO_HIENTHI|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y42_N30
\LCD_KHOITAO_HIENTHI|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Equal2~2_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(19) & (\LCD_KHOITAO_HIENTHI|Equal2~1_combout\ & (\LCD_KHOITAO_HIENTHI|Selector23~2_combout\ & \LCD_KHOITAO_HIENTHI|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(19),
	datab => \LCD_KHOITAO_HIENTHI|Equal2~1_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector23~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Equal2~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Equal2~2_combout\);

-- Location: LCCOMB_X29_Y42_N20
\LCD_KHOITAO_HIENTHI|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Equal4~0_combout\ = ((!\LCD_KHOITAO_HIENTHI|SLX\(8)) # (!\LCD_KHOITAO_HIENTHI|SLX\(12))) # (!\LCD_KHOITAO_HIENTHI|SLX\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(9),
	datab => \LCD_KHOITAO_HIENTHI|SLX\(12),
	datac => \LCD_KHOITAO_HIENTHI|SLX\(8),
	combout => \LCD_KHOITAO_HIENTHI|Equal4~0_combout\);

-- Location: LCCOMB_X28_Y42_N14
\LCD_KHOITAO_HIENTHI|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Equal4~1_combout\ = (((\LCD_KHOITAO_HIENTHI|Equal4~0_combout\) # (!\LCD_KHOITAO_HIENTHI|Equal2~2_combout\)) # (!\LCD_KHOITAO_HIENTHI|SLX\(7))) # (!\LCD_KHOITAO_HIENTHI|Selector23~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector23~3_combout\,
	datab => \LCD_KHOITAO_HIENTHI|SLX\(7),
	datac => \LCD_KHOITAO_HIENTHI|Equal2~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Equal4~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\);

-- Location: LCCOMB_X26_Y40_N12
\LCD_KHOITAO_HIENTHI|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector25~0_combout\ = (\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & (((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\)))) # (!\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\) # 
-- ((!\LCD_KHOITAO_HIENTHI|Equal5~0_combout\ & \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\,
	datab => \LCD_KHOITAO_HIENTHI|Equal5~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datad => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector25~0_combout\);

-- Location: FF_X26_Y40_N13
\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector25~0_combout\,
	clrn => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\);

-- Location: LCCOMB_X28_Y40_N0
\LCD_KHOITAO_HIENTHI|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector30~0_combout\ = (!\LCD_KHOITAO_HIENTHI|PTR\(0) & ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\) # (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datac => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datad => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	combout => \LCD_KHOITAO_HIENTHI|Selector30~0_combout\);

-- Location: LCCOMB_X28_Y40_N30
\LCD_KHOITAO_HIENTHI|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector28~0_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & (!\LCD_KHOITAO_HIENTHI|Selector23~7_combout\ & (\LCD_KHOITAO_HIENTHI|Add1~1_combout\ $ (\LCD_KHOITAO_HIENTHI|PTR\(2))))) # 
-- (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & (\LCD_KHOITAO_HIENTHI|Add1~1_combout\ $ ((\LCD_KHOITAO_HIENTHI|PTR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Add1~1_combout\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datac => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datad => \LCD_KHOITAO_HIENTHI|Selector23~7_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector28~0_combout\);

-- Location: FF_X28_Y40_N31
\LCD_KHOITAO_HIENTHI|PTR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector28~0_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \LCD_KHOITAO_HIENTHI|PTR[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|PTR\(2));

-- Location: LCCOMB_X27_Y40_N16
\LCD_KHOITAO_HIENTHI|Selector23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~12_combout\ = (!\LCD_KHOITAO_HIENTHI|PTR\(1) & (!\LCD_KHOITAO_HIENTHI|PTR\(3) & (\LCD_KHOITAO_HIENTHI|PTR\(0) & \LCD_KHOITAO_HIENTHI|PTR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(2),
	combout => \LCD_KHOITAO_HIENTHI|Selector23~12_combout\);

-- Location: LCCOMB_X29_Y43_N2
\LCD_KHOITAO_HIENTHI|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~3_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(2) & (!\LCD_KHOITAO_HIENTHI|SLX\(1) & !\LCD_KHOITAO_HIENTHI|SLX\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|SLX\(2),
	datac => \LCD_KHOITAO_HIENTHI|SLX\(1),
	datad => \LCD_KHOITAO_HIENTHI|SLX\(4),
	combout => \LCD_KHOITAO_HIENTHI|Selector23~3_combout\);

-- Location: LCCOMB_X28_Y42_N28
\LCD_KHOITAO_HIENTHI|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~4_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(12) & (\LCD_KHOITAO_HIENTHI|SLX\(17) & !\LCD_KHOITAO_HIENTHI|SLX\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(12),
	datac => \LCD_KHOITAO_HIENTHI|SLX\(17),
	datad => \LCD_KHOITAO_HIENTHI|SLX\(8),
	combout => \LCD_KHOITAO_HIENTHI|Selector23~4_combout\);

-- Location: LCCOMB_X28_Y42_N22
\LCD_KHOITAO_HIENTHI|Selector23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~5_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(3) & (\LCD_KHOITAO_HIENTHI|Selector23~2_combout\ & (\LCD_KHOITAO_HIENTHI|Selector23~3_combout\ & \LCD_KHOITAO_HIENTHI|Selector23~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(3),
	datab => \LCD_KHOITAO_HIENTHI|Selector23~2_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector23~3_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector23~4_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector23~5_combout\);

-- Location: FF_X29_Y42_N11
\LCD_KHOITAO_HIENTHI|SLX[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[15]~53_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(15));

-- Location: LCCOMB_X29_Y42_N26
\LCD_KHOITAO_HIENTHI|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Equal0~0_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(9) & (\LCD_KHOITAO_HIENTHI|SLX\(5) & (\LCD_KHOITAO_HIENTHI|SLX\(7) & \LCD_KHOITAO_HIENTHI|SLX\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(9),
	datab => \LCD_KHOITAO_HIENTHI|SLX\(5),
	datac => \LCD_KHOITAO_HIENTHI|SLX\(7),
	datad => \LCD_KHOITAO_HIENTHI|SLX\(15),
	combout => \LCD_KHOITAO_HIENTHI|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y42_N20
\LCD_KHOITAO_HIENTHI|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Equal0~1_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(19) & (\LCD_KHOITAO_HIENTHI|Equal2~0_combout\ & (\LCD_KHOITAO_HIENTHI|Selector23~5_combout\ & \LCD_KHOITAO_HIENTHI|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(19),
	datab => \LCD_KHOITAO_HIENTHI|Equal2~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector23~5_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Equal0~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y42_N4
\LCD_KHOITAO_HIENTHI|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector24~1_combout\ = (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & \LCD_KHOITAO_HIENTHI|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datad => \LCD_KHOITAO_HIENTHI|Equal0~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector24~1_combout\);

-- Location: FF_X29_Y43_N31
\LCD_KHOITAO_HIENTHI|SLX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[9]~41_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(9));

-- Location: LCCOMB_X28_Y42_N16
\LCD_KHOITAO_HIENTHI|Selector23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~9_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(16) & (\LCD_KHOITAO_HIENTHI|SLX\(14) & (!\LCD_KHOITAO_HIENTHI|SLX\(7) & \LCD_KHOITAO_HIENTHI|SLX\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(16),
	datab => \LCD_KHOITAO_HIENTHI|SLX\(14),
	datac => \LCD_KHOITAO_HIENTHI|SLX\(7),
	datad => \LCD_KHOITAO_HIENTHI|SLX\(9),
	combout => \LCD_KHOITAO_HIENTHI|Selector23~9_combout\);

-- Location: LCCOMB_X26_Y40_N24
\LCD_KHOITAO_HIENTHI|Selector23~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~18_combout\ = (\LCD_KHOITAO_HIENTHI|Equal5~0_combout\ & (!\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|Equal5~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	datad => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	combout => \LCD_KHOITAO_HIENTHI|Selector23~18_combout\);

-- Location: LCCOMB_X26_Y40_N22
\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~0_combout\ = (\LCD_KHOITAO_HIENTHI|Selector23~16_combout\ & ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\))) # (!\LCD_KHOITAO_HIENTHI|Selector23~16_combout\ & (\LCD_KHOITAO_HIENTHI|Selector23~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|Selector23~18_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\,
	datad => \LCD_KHOITAO_HIENTHI|Selector23~16_combout\,
	combout => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~0_combout\);

-- Location: FF_X26_Y40_N23
\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~0_combout\,
	clrn => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\);

-- Location: LCCOMB_X29_Y42_N28
\LCD_KHOITAO_HIENTHI|Selector23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~8_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(15) & (!\LCD_KHOITAO_HIENTHI|SLX\(5) & (\LCD_KHOITAO_HIENTHI|SLX\(6) & \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(15),
	datab => \LCD_KHOITAO_HIENTHI|SLX\(5),
	datac => \LCD_KHOITAO_HIENTHI|SLX\(6),
	datad => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\,
	combout => \LCD_KHOITAO_HIENTHI|Selector23~8_combout\);

-- Location: LCCOMB_X28_Y42_N10
\LCD_KHOITAO_HIENTHI|Selector23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~11_combout\ = (\LCD_KHOITAO_HIENTHI|Selector23~10_combout\ & (\LCD_KHOITAO_HIENTHI|Selector23~9_combout\ & (\LCD_KHOITAO_HIENTHI|Selector23~5_combout\ & \LCD_KHOITAO_HIENTHI|Selector23~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector23~10_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector23~9_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector23~5_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector23~8_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector23~11_combout\);

-- Location: LCCOMB_X27_Y40_N12
\LCD_KHOITAO_HIENTHI|Selector22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector22~3_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\ & (((\LCD_KHOITAO_HIENTHI|Selector23~11_combout\)))) # (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\ & (\LCD_KHOITAO_HIENTHI|Selector24~1_combout\ & 
-- ((\LCD_KHOITAO_HIENTHI|Selector23~12_combout\) # (\LCD_KHOITAO_HIENTHI|Selector23~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\,
	datab => \LCD_KHOITAO_HIENTHI|Selector23~12_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector24~1_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector23~11_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector22~3_combout\);

-- Location: LCCOMB_X27_Y40_N14
\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~0_combout\ = (\LCD_KHOITAO_HIENTHI|Selector22~2_combout\ & ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\) # (\LCD_KHOITAO_HIENTHI|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|Selector22~2_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\,
	datad => \LCD_KHOITAO_HIENTHI|Selector22~3_combout\,
	combout => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~0_combout\);

-- Location: FF_X27_Y40_N15
\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~0_combout\,
	clrn => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\);

-- Location: LCCOMB_X26_Y40_N4
\LCD_KHOITAO_HIENTHI|Selector24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector24~3_combout\ = ((!\LCD_KHOITAO_HIENTHI|Selector23~11_combout\ & ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\) # (!\LCD_KHOITAO_HIENTHI|Equal5~0_combout\)))) # (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\,
	datab => \LCD_KHOITAO_HIENTHI|Equal5~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datad => \LCD_KHOITAO_HIENTHI|Selector23~11_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector24~3_combout\);

-- Location: LCCOMB_X26_Y40_N18
\LCD_KHOITAO_HIENTHI|Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector24~2_combout\ = (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\ & ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & (\LCD_KHOITAO_HIENTHI|Equal4~1_combout\)) # (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & 
-- ((!\LCD_KHOITAO_HIENTHI|Equal0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\,
	datac => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Equal0~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector24~2_combout\);

-- Location: LCCOMB_X26_Y40_N8
\LCD_KHOITAO_HIENTHI|Selector24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector24~4_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & ((\LCD_KHOITAO_HIENTHI|Selector24~2_combout\) # ((!\LCD_KHOITAO_HIENTHI|Selector23~13_combout\ & \LCD_KHOITAO_HIENTHI|Selector24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector23~13_combout\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datac => \LCD_KHOITAO_HIENTHI|Selector24~3_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector24~2_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector24~4_combout\);

-- Location: LCCOMB_X26_Y40_N30
\LCD_KHOITAO_HIENTHI|Selector24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector24~5_combout\ = (\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & (((\LCD_KHOITAO_HIENTHI|Selector24~4_combout\)))) # (!\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\ & 
-- ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\) # (\LCD_KHOITAO_HIENTHI|Selector24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\,
	datac => \LCD_KHOITAO_HIENTHI|Selector24~4_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector24~5_combout\);

-- Location: FF_X26_Y40_N31
\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector24~5_combout\,
	clrn => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\);

-- Location: LCCOMB_X26_Y40_N16
\LCD_KHOITAO_HIENTHI|Selector23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~7_combout\ = (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & !\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datad => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	combout => \LCD_KHOITAO_HIENTHI|Selector23~7_combout\);

-- Location: LCCOMB_X26_Y40_N14
\LCD_KHOITAO_HIENTHI|Selector23~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~19_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & (((\LCD_KHOITAO_HIENTHI|Selector23~11_combout\)))) # (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & (\LCD_KHOITAO_HIENTHI|Selector23~12_combout\ & 
-- (\LCD_KHOITAO_HIENTHI|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datab => \LCD_KHOITAO_HIENTHI|Selector23~12_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Equal0~1_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector23~11_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector23~19_combout\);

-- Location: LCCOMB_X26_Y40_N28
\LCD_KHOITAO_HIENTHI|Selector23~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~15_combout\ = (\LCD_KHOITAO_HIENTHI|Selector23~7_combout\ & (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\))) # (!\LCD_KHOITAO_HIENTHI|Selector23~7_combout\ & 
-- (((\LCD_KHOITAO_HIENTHI|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datab => \LCD_KHOITAO_HIENTHI|Selector23~7_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\,
	datad => \LCD_KHOITAO_HIENTHI|Equal5~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector23~15_combout\);

-- Location: LCCOMB_X26_Y40_N2
\LCD_KHOITAO_HIENTHI|Selector23~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~16_combout\ = (\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & (((!\LCD_KHOITAO_HIENTHI|Selector23~19_combout\)) # (!\LCD_KHOITAO_HIENTHI|Selector23~7_combout\))) # (!\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & 
-- (!\LCD_KHOITAO_HIENTHI|Selector23~15_combout\ & ((!\LCD_KHOITAO_HIENTHI|Selector23~19_combout\) # (!\LCD_KHOITAO_HIENTHI|Selector23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector23~7_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector23~19_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector23~15_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector23~16_combout\);

-- Location: LCCOMB_X26_Y40_N6
\LCD_KHOITAO_HIENTHI|Selector23~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~17_combout\ = (\LCD_KHOITAO_HIENTHI|Selector23~16_combout\ & ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\))) # (!\LCD_KHOITAO_HIENTHI|Selector23~16_combout\ & (\LCD_KHOITAO_HIENTHI|Selector23~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector23~14_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\,
	datad => \LCD_KHOITAO_HIENTHI|Selector23~16_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector23~17_combout\);

-- Location: FF_X26_Y40_N7
\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector23~17_combout\,
	clrn => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\);

-- Location: LCCOMB_X28_Y40_N10
\LCD_KHOITAO_HIENTHI|PTR[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|PTR[3]~4_combout\ = (\LCD_KHOITAO_HIENTHI|PTR[3]~3_combout\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & ((\LCD_KHOITAO_HIENTHI|Equal4~1_combout\))) # (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & 
-- (!\LCD_KHOITAO_HIENTHI|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR[3]~3_combout\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datac => \LCD_KHOITAO_HIENTHI|Equal0~1_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|PTR[3]~4_combout\);

-- Location: LCCOMB_X28_Y40_N26
\LCD_KHOITAO_HIENTHI|PTR[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|PTR[3]~5_combout\ = ((!\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\) # (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\)))) # (!\LCD_KHOITAO_HIENTHI|PTR[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\,
	datab => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\,
	datad => \LCD_KHOITAO_HIENTHI|PTR[3]~4_combout\,
	combout => \LCD_KHOITAO_HIENTHI|PTR[3]~5_combout\);

-- Location: FF_X28_Y40_N1
\LCD_KHOITAO_HIENTHI|PTR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector30~0_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \LCD_KHOITAO_HIENTHI|PTR[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|PTR\(0));

-- Location: LCCOMB_X29_Y40_N10
\LCD_KHOITAO_HIENTHI|Selector29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector29~4_combout\ = (\LCD_KHOITAO_HIENTHI|Selector23~7_combout\ & (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & (\LCD_KHOITAO_HIENTHI|PTR\(0) $ (\LCD_KHOITAO_HIENTHI|PTR\(1))))) # (!\LCD_KHOITAO_HIENTHI|Selector23~7_combout\ & 
-- ((\LCD_KHOITAO_HIENTHI|PTR\(0) $ (\LCD_KHOITAO_HIENTHI|PTR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector23~7_combout\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datac => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(1),
	combout => \LCD_KHOITAO_HIENTHI|Selector29~4_combout\);

-- Location: FF_X28_Y40_N3
\LCD_KHOITAO_HIENTHI|PTR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	asdata => \LCD_KHOITAO_HIENTHI|Selector29~4_combout\,
	clrn => \BTN_N[0]~input_o\,
	sload => VCC,
	ena => \LCD_KHOITAO_HIENTHI|PTR[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|PTR\(1));

-- Location: LCCOMB_X29_Y40_N4
\LCD_KHOITAO_HIENTHI|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Add1~0_combout\ = \LCD_KHOITAO_HIENTHI|PTR\(3) $ (((\LCD_KHOITAO_HIENTHI|PTR\(2) & (\LCD_KHOITAO_HIENTHI|PTR\(0) & \LCD_KHOITAO_HIENTHI|PTR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(1),
	combout => \LCD_KHOITAO_HIENTHI|Add1~0_combout\);

-- Location: LCCOMB_X28_Y40_N16
\LCD_KHOITAO_HIENTHI|Selector27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector27~2_combout\ = (\LCD_KHOITAO_HIENTHI|Add1~0_combout\ & ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\) # (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datad => \LCD_KHOITAO_HIENTHI|Add1~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector27~2_combout\);

-- Location: FF_X28_Y40_N17
\LCD_KHOITAO_HIENTHI|PTR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector27~2_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \LCD_KHOITAO_HIENTHI|PTR[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|PTR\(3));

-- Location: LCCOMB_X27_Y40_N22
\LCD_KHOITAO_HIENTHI|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Equal5~0_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(1) & (\LCD_KHOITAO_HIENTHI|PTR\(3) & (\LCD_KHOITAO_HIENTHI|PTR\(0) & \LCD_KHOITAO_HIENTHI|PTR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(2),
	combout => \LCD_KHOITAO_HIENTHI|Equal5~0_combout\);

-- Location: LCCOMB_X27_Y40_N26
\LCD_KHOITAO_HIENTHI|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector22~0_combout\ = (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\ & !\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\,
	combout => \LCD_KHOITAO_HIENTHI|Selector22~0_combout\);

-- Location: LCCOMB_X27_Y40_N30
\LCD_KHOITAO_HIENTHI|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector22~1_combout\ = (\LCD_KHOITAO_HIENTHI|Selector22~0_combout\ & ((\LCD_KHOITAO_HIENTHI|Equal4~1_combout\) # ((!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\ & !\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datac => \LCD_KHOITAO_HIENTHI|Selector22~0_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector22~1_combout\);

-- Location: LCCOMB_X27_Y40_N20
\LCD_KHOITAO_HIENTHI|PTR[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|PTR[3]~2_combout\ = (\LCD_KHOITAO_HIENTHI|Equal4~1_combout\) # ((!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\ & !\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\,
	datad => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|PTR[3]~2_combout\);

-- Location: LCCOMB_X27_Y40_N18
\LCD_KHOITAO_HIENTHI|Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector22~2_combout\ = (\LCD_KHOITAO_HIENTHI|Selector22~1_combout\) # ((\LCD_KHOITAO_HIENTHI|PTR[3]~2_combout\ & ((\LCD_KHOITAO_HIENTHI|Selector23~7_combout\) # (!\LCD_KHOITAO_HIENTHI|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector23~7_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Equal5~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector22~1_combout\,
	datad => \LCD_KHOITAO_HIENTHI|PTR[3]~2_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector22~2_combout\);

-- Location: LCCOMB_X27_Y40_N24
\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~0_combout\ = (\LCD_KHOITAO_HIENTHI|Selector22~3_combout\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\) # (!\LCD_KHOITAO_HIENTHI|Selector22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector22~3_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datad => \LCD_KHOITAO_HIENTHI|Selector22~2_combout\,
	combout => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~0_combout\);

-- Location: FF_X27_Y40_N25
\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~0_combout\,
	clrn => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\);

-- Location: LCCOMB_X28_Y42_N0
\LCD_KHOITAO_HIENTHI|SLX[15]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[15]~36_combout\ = (!\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & !\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	datad => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[15]~36_combout\);

-- Location: LCCOMB_X28_Y42_N2
\LCD_KHOITAO_HIENTHI|SLX[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & ((\LCD_KHOITAO_HIENTHI|Selector23~11_combout\) # ((\LCD_KHOITAO_HIENTHI|SLX[15]~36_combout\)))) # (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & 
-- (((\LCD_KHOITAO_HIENTHI|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector23~11_combout\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datac => \LCD_KHOITAO_HIENTHI|Equal0~1_combout\,
	datad => \LCD_KHOITAO_HIENTHI|SLX[15]~36_combout\,
	combout => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\);

-- Location: FF_X29_Y43_N15
\LCD_KHOITAO_HIENTHI|SLX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[1]~24_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(1));

-- Location: FF_X29_Y43_N17
\LCD_KHOITAO_HIENTHI|SLX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|SLX[2]~26_combout\,
	clrn => \BTN_N[0]~input_o\,
	sclr => \LCD_KHOITAO_HIENTHI|SLX[15]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|SLX\(2));

-- Location: LCCOMB_X29_Y43_N4
\LCD_KHOITAO_HIENTHI|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Equal2~3_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(7) & (!\LCD_KHOITAO_HIENTHI|SLX\(8) & (\LCD_KHOITAO_HIENTHI|SLX\(1) & !\LCD_KHOITAO_HIENTHI|SLX\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(7),
	datab => \LCD_KHOITAO_HIENTHI|SLX\(8),
	datac => \LCD_KHOITAO_HIENTHI|SLX\(1),
	datad => \LCD_KHOITAO_HIENTHI|SLX\(12),
	combout => \LCD_KHOITAO_HIENTHI|Equal2~3_combout\);

-- Location: LCCOMB_X28_Y42_N12
\LCD_KHOITAO_HIENTHI|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Equal2~4_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(9) & (\LCD_KHOITAO_HIENTHI|Equal2~2_combout\ & \LCD_KHOITAO_HIENTHI|Equal2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(9),
	datac => \LCD_KHOITAO_HIENTHI|Equal2~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Equal2~3_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Equal2~4_combout\);

-- Location: LCCOMB_X27_Y42_N4
\LCD_KHOITAO_HIENTHI|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Equal2~5_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(4) & (\LCD_KHOITAO_HIENTHI|SLX\(2) & \LCD_KHOITAO_HIENTHI|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(4),
	datab => \LCD_KHOITAO_HIENTHI|SLX\(2),
	datac => \LCD_KHOITAO_HIENTHI|Equal2~4_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Equal2~5_combout\);

-- Location: LCCOMB_X26_Y40_N20
\LCD_KHOITAO_HIENTHI|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector31~0_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\) # (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\,
	datad => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	combout => \LCD_KHOITAO_HIENTHI|Selector31~0_combout\);

-- Location: LCCOMB_X27_Y42_N18
\LCD_KHOITAO_HIENTHI|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Equal3~0_combout\ = (!\LCD_KHOITAO_HIENTHI|SLX\(4) & (!\LCD_KHOITAO_HIENTHI|SLX\(2) & \LCD_KHOITAO_HIENTHI|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(4),
	datab => \LCD_KHOITAO_HIENTHI|SLX\(2),
	datac => \LCD_KHOITAO_HIENTHI|Equal2~4_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Equal3~0_combout\);

-- Location: LCCOMB_X27_Y42_N26
\LCD_KHOITAO_HIENTHI|LCD_E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|LCD_E~0_combout\ = (\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & (!\LCD_KHOITAO_HIENTHI|Equal2~5_combout\ & ((\LCD_KHOITAO_HIENTHI|LCD_E~q\) # (\LCD_KHOITAO_HIENTHI|Equal3~0_combout\)))) # (!\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & 
-- (\LCD_KHOITAO_HIENTHI|LCD_E~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_E~q\,
	datab => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Equal2~5_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Equal3~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|LCD_E~0_combout\);

-- Location: LCCOMB_X27_Y42_N24
\LCD_KHOITAO_HIENTHI|Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector31~1_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\) # ((!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & ((\LCD_KHOITAO_HIENTHI|Equal0~1_combout\) # (!\LCD_KHOITAO_HIENTHI|Equal2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\,
	datac => \LCD_KHOITAO_HIENTHI|Equal2~5_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Equal0~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector31~1_combout\);

-- Location: LCCOMB_X27_Y42_N22
\LCD_KHOITAO_HIENTHI|Selector31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector31~2_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_E~q\ & ((\LCD_KHOITAO_HIENTHI|Selector31~1_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector31~0_combout\ & \LCD_KHOITAO_HIENTHI|LCD_E~0_combout\)))) # (!\LCD_KHOITAO_HIENTHI|LCD_E~q\ & 
-- (\LCD_KHOITAO_HIENTHI|Selector31~0_combout\ & (\LCD_KHOITAO_HIENTHI|LCD_E~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_E~q\,
	datab => \LCD_KHOITAO_HIENTHI|Selector31~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_E~0_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector31~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector31~2_combout\);

-- Location: LCCOMB_X27_Y42_N12
\LCD_KHOITAO_HIENTHI|Selector31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector31~3_combout\ = (\LCD_KHOITAO_HIENTHI|Selector31~2_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector23~6_combout\ & (!\LCD_KHOITAO_HIENTHI|Equal2~5_combout\ & \LCD_KHOITAO_HIENTHI|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector23~6_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Equal2~5_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector31~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Equal3~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector31~3_combout\);

-- Location: FF_X27_Y42_N13
\LCD_KHOITAO_HIENTHI|LCD_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector31~3_combout\,
	ena => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_E~q\);

-- Location: LCCOMB_X26_Y40_N0
\LCD_KHOITAO_HIENTHI|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector0~0_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\ & \LCD_KHOITAO_HIENTHI|LCD_RS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_RS~q\,
	datad => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	combout => \LCD_KHOITAO_HIENTHI|Selector0~0_combout\);

-- Location: FF_X26_Y40_N1
\LCD_KHOITAO_HIENTHI|LCD_RS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector0~0_combout\,
	ena => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_RS~q\);

-- Location: LCCOMB_X28_Y42_N26
\LCD_KHOITAO_HIENTHI|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector35~0_combout\ = (\LCD_KHOITAO_HIENTHI|SLX\(2) $ (\LCD_KHOITAO_HIENTHI|SLX\(4))) # (!\LCD_KHOITAO_HIENTHI|Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(2),
	datac => \LCD_KHOITAO_HIENTHI|SLX\(4),
	datad => \LCD_KHOITAO_HIENTHI|Equal2~4_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector35~0_combout\);

-- Location: LCCOMB_X28_Y42_N6
\LCD_KHOITAO_HIENTHI|Selector23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector23~6_combout\ = (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & !\LCD_KHOITAO_HIENTHI|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datad => \LCD_KHOITAO_HIENTHI|Equal0~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector23~6_combout\);

-- Location: LCCOMB_X28_Y39_N2
\LCD_KHOITAO_HIENTHI|Selector39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector39~3_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(1) & (\LCD_KHOITAO_HIENTHI|Selector35~0_combout\ & (\LCD_KHOITAO_HIENTHI|PTR\(0) & \LCD_KHOITAO_HIENTHI|Selector23~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datab => \LCD_KHOITAO_HIENTHI|Selector35~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datad => \LCD_KHOITAO_HIENTHI|Selector23~6_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector39~3_combout\);

-- Location: LCCOMB_X28_Y42_N24
\LCD_KHOITAO_HIENTHI|Selector39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector39~2_combout\ = (\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & ((\LCD_KHOITAO_HIENTHI|SLX\(4) $ (\LCD_KHOITAO_HIENTHI|SLX\(2))) # (!\LCD_KHOITAO_HIENTHI|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|SLX\(4),
	datab => \LCD_KHOITAO_HIENTHI|SLX\(2),
	datac => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Equal2~4_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\);

-- Location: LCCOMB_X28_Y40_N20
\LCD_KHOITAO_HIENTHI|Selector38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector38~4_combout\ = (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\ & ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\) # ((!\LCD_KHOITAO_HIENTHI|Equal0~1_combout\ & \LCD_KHOITAO_HIENTHI|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_STOP~q\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datac => \LCD_KHOITAO_HIENTHI|Equal0~1_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector35~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector38~4_combout\);

-- Location: LCCOMB_X28_Y40_N14
\LCD_KHOITAO_HIENTHI|Selector38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector38~5_combout\ = ((!\LCD_KHOITAO_HIENTHI|Selector39~2_combout\ & ((!\LCD_KHOITAO_HIENTHI|Selector23~7_combout\) # (!\LCD_KHOITAO_HIENTHI|Selector22~0_combout\)))) # (!\LCD_KHOITAO_HIENTHI|Selector38~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector22~0_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector23~7_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector38~4_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector38~5_combout\);

-- Location: LCCOMB_X28_Y39_N0
\LCD_KHOITAO_HIENTHI|Selector39~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector39~10_combout\ = (\LCD_KHOITAO_HIENTHI|Selector39~9_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector39~3_combout\) # ((\LCD_KHOITAO_HIENTHI|LCD_DB\(0) & \LCD_KHOITAO_HIENTHI|Selector38~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector39~9_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector39~3_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_DB\(0),
	datad => \LCD_KHOITAO_HIENTHI|Selector38~5_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector39~10_combout\);

-- Location: FF_X28_Y39_N1
\LCD_KHOITAO_HIENTHI|LCD_DB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector39~10_combout\,
	ena => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_DB\(0));

-- Location: LCCOMB_X30_Y40_N0
\LCD_KHOITAO_HIENTHI|Selector38~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector38~7_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(3) & (\LCD_KHOITAO_HIENTHI|PTR\(2))) # (!\LCD_KHOITAO_HIENTHI|PTR\(3) & ((!\LCD_KHOITAO_HIENTHI|PTR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(0),
	combout => \LCD_KHOITAO_HIENTHI|Selector38~7_combout\);

-- Location: LCCOMB_X29_Y40_N16
\LCD_KHOITAO_HIENTHI|Selector38~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector38~10_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(2) & (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\ & (!\LCD_KHOITAO_HIENTHI|Equal0~1_combout\ & \LCD_KHOITAO_HIENTHI|Selector35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_INIT~q\,
	datac => \LCD_KHOITAO_HIENTHI|Equal0~1_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector35~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector38~10_combout\);

-- Location: LCCOMB_X29_Y40_N20
\LCD_KHOITAO_HIENTHI|Selector38~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector38~8_combout\ = (\LCD_KHOITAO_HIENTHI|Selector38~10_combout\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\ & (\LCD_KHOITAO_HIENTHI|Selector38~7_combout\ & \LCD_KHOITAO_HIENTHI|Selector39~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datab => \LCD_KHOITAO_HIENTHI|Selector38~7_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector38~10_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector38~8_combout\);

-- Location: LCCOMB_X29_Y38_N2
\DEM_GIOPHUTGIAY|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add0~0_combout\ = \DEM_GIOPHUTGIAY|GIAY_REG\(0) $ (VCC)
-- \DEM_GIOPHUTGIAY|Add0~1\ = CARRY(\DEM_GIOPHUTGIAY|GIAY_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(0),
	datad => VCC,
	combout => \DEM_GIOPHUTGIAY|Add0~0_combout\,
	cout => \DEM_GIOPHUTGIAY|Add0~1\);

-- Location: LCCOMB_X29_Y38_N4
\DEM_GIOPHUTGIAY|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add0~3_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(1) & (!\DEM_GIOPHUTGIAY|Add0~1\)) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(1) & ((\DEM_GIOPHUTGIAY|Add0~1\) # (GND)))
-- \DEM_GIOPHUTGIAY|Add0~4\ = CARRY((!\DEM_GIOPHUTGIAY|Add0~1\) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(1),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add0~1\,
	combout => \DEM_GIOPHUTGIAY|Add0~3_combout\,
	cout => \DEM_GIOPHUTGIAY|Add0~4\);

-- Location: LCCOMB_X29_Y38_N18
\DEM_GIOPHUTGIAY|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add1~0_combout\ = \DEM_GIOPHUTGIAY|GIAY_REG\(0) $ (VCC)
-- \DEM_GIOPHUTGIAY|Add1~1\ = CARRY(\DEM_GIOPHUTGIAY|GIAY_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(0),
	datad => VCC,
	combout => \DEM_GIOPHUTGIAY|Add1~0_combout\,
	cout => \DEM_GIOPHUTGIAY|Add1~1\);

-- Location: LCCOMB_X29_Y38_N20
\DEM_GIOPHUTGIAY|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add1~2_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(1) & (\DEM_GIOPHUTGIAY|Add1~1\ & VCC)) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(1) & (!\DEM_GIOPHUTGIAY|Add1~1\))
-- \DEM_GIOPHUTGIAY|Add1~3\ = CARRY((!\DEM_GIOPHUTGIAY|GIAY_REG\(1) & !\DEM_GIOPHUTGIAY|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(1),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add1~1\,
	combout => \DEM_GIOPHUTGIAY|Add1~2_combout\,
	cout => \DEM_GIOPHUTGIAY|Add1~3\);

-- Location: IOIBUF_X115_Y35_N22
\BTN_N[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_N(3),
	o => \BTN_N[3]~input_o\);

-- Location: LCCOMB_X33_Y39_N30
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector3~0_combout\ = (\BTN_N[3]~input_o\ & (((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\ & \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~1_combout\)))) # (!\BTN_N[3]~input_o\ & 
-- (((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\ & \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~1_combout\)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[3]~input_o\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\,
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~1_combout\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector3~0_combout\);

-- Location: FF_X33_Y39_N31
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\);

-- Location: LCCOMB_X33_Y38_N12
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]~20_combout\ = \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(0) $ (VCC)
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]~21\ = CARRY(\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(0),
	datad => VCC,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]~20_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]~21\);

-- Location: LCCOMB_X33_Y38_N14
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]~22_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(1) & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]~21\ & VCC)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(1) & 
-- (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]~21\))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]~23\ = CARRY((!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(1) & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(1),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]~21\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]~22_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]~23\);

-- Location: LCCOMB_X33_Y39_N8
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\ = (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\ & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\,
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\);

-- Location: LCCOMB_X33_Y39_N18
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~0_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\ & (\BTN_N[3]~input_o\)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\ & (!\BTN_N[3]~input_o\ & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\,
	datac => \BTN_N[3]~input_o\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~0_combout\);

-- Location: LCCOMB_X33_Y39_N20
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~1_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~0_combout\) # ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\ & ((\BTN_N[3]~input_o\) # (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[3]~input_o\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~0_combout\,
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~1_combout\);

-- Location: LCCOMB_X33_Y39_N22
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2_combout\ = ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\ & ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\) # (!\BTN_N[3]~input_o\)))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[3]~input_o\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\,
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~1_combout\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2_combout\);

-- Location: LCCOMB_X33_Y39_N6
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~0_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2_combout\ & (((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~3_combout\)))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2_combout\ & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\ & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\,
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2_combout\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~3_combout\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~0_combout\);

-- Location: LCCOMB_X33_Y39_N12
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~1_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2_combout\ & ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~0_combout\ & ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\))) # 
-- (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~0_combout\ & (!\BTN_N[3]~input_o\)))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2_combout\ & (!\BTN_N[3]~input_o\ & ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2_combout\,
	datab => \BTN_N[3]~input_o\,
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~0_combout\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~1_combout\);

-- Location: FF_X33_Y39_N13
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\);

-- Location: LCCOMB_X33_Y39_N14
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~54_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\ & (((!\BTN_N[3]~input_o\)))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\ & ((\BTN_N[3]~input_o\ & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\)) # (!\BTN_N[3]~input_o\ & ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\,
	datac => \BTN_N[3]~input_o\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~54_combout\);

-- Location: LCCOMB_X33_Y39_N4
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\ = (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~54_combout\ & ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\) # (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\ $ (!\BTN_N[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~54_combout\,
	datac => \BTN_N[3]~input_o\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\);

-- Location: FF_X33_Y38_N15
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]~22_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(1));

-- Location: LCCOMB_X33_Y38_N16
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]~24_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(2) & ((GND) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]~23\))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(2) & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]~23\ $ (GND)))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]~25\ = CARRY((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(2)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(2),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[1]~23\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]~24_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]~25\);

-- Location: FF_X33_Y38_N17
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]~24_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(2));

-- Location: LCCOMB_X33_Y38_N18
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]~26_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(3) & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]~25\ & VCC)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(3) & 
-- (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]~25\))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]~27\ = CARRY((!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(3) & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(3),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[2]~25\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]~26_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]~27\);

-- Location: FF_X33_Y38_N19
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]~26_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(3));

-- Location: LCCOMB_X33_Y38_N20
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]~28_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(4) & ((GND) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]~27\))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(4) & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]~27\ $ (GND)))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]~29\ = CARRY((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(4)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(4),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[3]~27\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]~28_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]~29\);

-- Location: FF_X33_Y38_N21
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[4]~28_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(4));

-- Location: LCCOMB_X33_Y38_N24
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]~32_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(6) & ((GND) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]~31\))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(6) & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]~31\ $ (GND)))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]~33\ = CARRY((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(6)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(6),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[5]~31\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]~32_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]~33\);

-- Location: FF_X33_Y38_N25
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[6]~32_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(6));

-- Location: LCCOMB_X33_Y38_N28
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]~36_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(8) & ((GND) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]~35\))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(8) & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]~35\ $ (GND)))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]~37\ = CARRY((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(8)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(8),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[7]~35\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]~36_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]~37\);

-- Location: FF_X33_Y38_N29
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[8]~36_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(8));

-- Location: LCCOMB_X33_Y37_N0
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]~40_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(10) & ((GND) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]~39\))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(10) & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]~39\ $ (GND)))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]~41\ = CARRY((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(10)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(10),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[9]~39\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]~40_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]~41\);

-- Location: FF_X33_Y37_N1
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]~40_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(10));

-- Location: LCCOMB_X33_Y37_N2
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]~42_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(11) & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]~41\ & VCC)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(11) & 
-- (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]~41\))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]~43\ = CARRY((!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(11) & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(11),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[10]~41\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]~42_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]~43\);

-- Location: FF_X33_Y37_N3
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]~42_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(11));

-- Location: LCCOMB_X33_Y37_N4
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]~44_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(12) & ((GND) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]~43\))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(12) & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]~43\ $ (GND)))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]~45\ = CARRY((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(12)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(12),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[11]~43\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]~44_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]~45\);

-- Location: FF_X33_Y37_N5
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[12]~44_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(12));

-- Location: LCCOMB_X33_Y37_N8
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~48_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(14) & ((GND) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]~47\))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(14) & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]~47\ $ (GND)))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~49\ = CARRY((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(14)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(14),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[13]~47\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~48_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~49\);

-- Location: FF_X33_Y37_N9
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~48_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(14));

-- Location: LCCOMB_X33_Y37_N14
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]~56_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(17) & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]~53\ & VCC)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(17) & 
-- (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]~53\))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]~57\ = CARRY((!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(17) & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(17),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[16]~53\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]~56_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]~57\);

-- Location: FF_X33_Y37_N15
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]~56_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(17));

-- Location: LCCOMB_X33_Y37_N16
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[18]~58_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(18) & ((GND) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]~57\))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(18) & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]~57\ $ (GND)))
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[18]~59\ = CARRY((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(18)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(18),
	datad => VCC,
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[17]~57\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[18]~58_combout\,
	cout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[18]~59\);

-- Location: FF_X33_Y37_N17
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[18]~58_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(18));

-- Location: LCCOMB_X33_Y37_N18
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[19]~60_combout\ = \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[18]~59\ $ (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(19),
	cin => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[18]~59\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[19]~60_combout\);

-- Location: FF_X33_Y37_N19
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[19]~60_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(19));

-- Location: LCCOMB_X33_Y37_N24
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~0_combout\ = (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(16) & (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(19) & (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(17) & 
-- !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(16),
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(19),
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(17),
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(18),
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y37_N22
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~4_combout\ = (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(9) & (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(10) & (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(8) & 
-- !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(9),
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(10),
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(8),
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(11),
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~4_combout\);

-- Location: FF_X33_Y38_N13
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[0]~20_combout\,
	asdata => VCC,
	sload => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~2_combout\,
	ena => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(0));

-- Location: LCCOMB_X33_Y38_N4
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~1_combout\ = (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(1) & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(1),
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(0),
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y38_N0
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~3_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~2_combout\ & (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(2) & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~1_combout\ & 
-- !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~2_combout\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(2),
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~1_combout\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DELAY_REG\(3),
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y39_N26
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~5_combout\ & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~0_combout\ & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~4_combout\ & 
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~5_combout\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~0_combout\,
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~4_combout\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~3_combout\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\);

-- Location: LCCOMB_X33_Y39_N24
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~0_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\ & (((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\)) # (!\BTN_N[3]~input_o\))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\ & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\ & ((\BTN_N[3]~input_o\) # (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[3]~input_o\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\,
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~0_combout\);

-- Location: LCCOMB_X33_Y39_N2
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~1_combout\ = (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~0_combout\ & ((\BTN_N[3]~input_o\ & (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\)) # (!\BTN_N[3]~input_o\ & 
-- ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\,
	datac => \BTN_N[3]~input_o\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~0_combout\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~1_combout\);

-- Location: LCCOMB_X33_Y39_N16
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~0_combout\ = (\BTN_N[3]~input_o\ & ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\) # ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~1_combout\ & \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\)))) # 
-- (!\BTN_N[3]~input_o\ & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~1_combout\ & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[3]~input_o\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector1~1_combout\,
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ONE~q\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~0_combout\);

-- Location: FF_X33_Y39_N17
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\);

-- Location: LCCOMB_X33_Y39_N28
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~3_combout\ = (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~1_combout\ & (((\BTN_N[3]~input_o\ & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\)) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[3]~input_o\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI0~q\,
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Equal0~6_combout\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~1_combout\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~3_combout\);

-- Location: LCCOMB_X33_Y39_N10
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~4_combout\ = (\BTN_N[3]~input_o\ & ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2_combout\ & ((!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~3_combout\))) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2_combout\ & 
-- (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\,
	datab => \BTN_N[3]~input_o\,
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~2_combout\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~3_combout\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~4_combout\);

-- Location: LCCOMB_X33_Y39_N0
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~5_combout\ = (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~4_combout\ & ((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\) # (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~3_combout\,
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~4_combout\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~5_combout\);

-- Location: FF_X33_Y39_N1
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|Selector0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\);

-- Location: LCCOMB_X29_Y39_N2
\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_TICK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_TICK~0_combout\ = (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\ & !\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\,
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\,
	combout => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_TICK~0_combout\);

-- Location: LCCOMB_X30_Y39_N6
\CD_LAM_HEP_BTN_MOD|LAM_HEP_XUNG|QFF~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CD_LAM_HEP_BTN_MOD|LAM_HEP_XUNG|QFF~feeder_combout\ = \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_TICK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_TICK~0_combout\,
	combout => \CD_LAM_HEP_BTN_MOD|LAM_HEP_XUNG|QFF~feeder_combout\);

-- Location: FF_X30_Y39_N7
\CD_LAM_HEP_BTN_MOD|LAM_HEP_XUNG|QFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CD_LAM_HEP_BTN_MOD|LAM_HEP_XUNG|QFF~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD_LAM_HEP_BTN_MOD|LAM_HEP_XUNG|QFF~q\);

-- Location: LCCOMB_X29_Y39_N4
\XULY_MOD|GIATRI_MOD_REG[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \XULY_MOD|GIATRI_MOD_REG[0]~0_combout\ = \XULY_MOD|GIATRI_MOD_REG\(0) $ (((\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\ & (!\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\ & !\CD_LAM_HEP_BTN_MOD|LAM_HEP_XUNG|QFF~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.ZERO~q\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_REG.WAI1~q\,
	datac => \XULY_MOD|GIATRI_MOD_REG\(0),
	datad => \CD_LAM_HEP_BTN_MOD|LAM_HEP_XUNG|QFF~q\,
	combout => \XULY_MOD|GIATRI_MOD_REG[0]~0_combout\);

-- Location: FF_X29_Y39_N5
\XULY_MOD|GIATRI_MOD_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \XULY_MOD|GIATRI_MOD_REG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XULY_MOD|GIATRI_MOD_REG\(0));

-- Location: LCCOMB_X29_Y39_N12
\XULY_MOD|GIATRI_MOD_REG[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \XULY_MOD|GIATRI_MOD_REG[1]~1_combout\ = \XULY_MOD|GIATRI_MOD_REG\(1) $ (((!\CD_LAM_HEP_BTN_MOD|LAM_HEP_XUNG|QFF~q\ & (\CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_TICK~0_combout\ & \XULY_MOD|GIATRI_MOD_REG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD_LAM_HEP_BTN_MOD|LAM_HEP_XUNG|QFF~q\,
	datab => \CD_LAM_HEP_BTN_MOD|DEBOUNCE_BTN|DB_TICK~0_combout\,
	datac => \XULY_MOD|GIATRI_MOD_REG\(1),
	datad => \XULY_MOD|GIATRI_MOD_REG\(0),
	combout => \XULY_MOD|GIATRI_MOD_REG[1]~1_combout\);

-- Location: FF_X29_Y39_N13
\XULY_MOD|GIATRI_MOD_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \XULY_MOD|GIATRI_MOD_REG[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XULY_MOD|GIATRI_MOD_REG\(1));

-- Location: LCCOMB_X27_Y38_N14
\DEBOUNCE_BTN_UP|DELAY_REG[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[1]~22_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(1) & (\DEBOUNCE_BTN_UP|DELAY_REG[0]~21\ & VCC)) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(1) & (!\DEBOUNCE_BTN_UP|DELAY_REG[0]~21\))
-- \DEBOUNCE_BTN_UP|DELAY_REG[1]~23\ = CARRY((!\DEBOUNCE_BTN_UP|DELAY_REG\(1) & !\DEBOUNCE_BTN_UP|DELAY_REG[0]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(1),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[0]~21\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[1]~22_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[1]~23\);

-- Location: LCCOMB_X28_Y38_N28
\DEBOUNCE_BTN_UP|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector3~0_combout\ = (\DEBOUNCE_BTN_UP|DB_REG.WAI0~q\ & (((\DEBOUNCE_BTN_UP|Equal0~6_combout\)) # (!\BTN_N[1]~input_o\))) # (!\DEBOUNCE_BTN_UP|DB_REG.WAI0~q\ & (\DEBOUNCE_BTN_UP|DB_REG.WAI1~q\ & ((\BTN_N[1]~input_o\) # 
-- (\DEBOUNCE_BTN_UP|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[1]~input_o\,
	datab => \DEBOUNCE_BTN_UP|DB_REG.WAI1~q\,
	datac => \DEBOUNCE_BTN_UP|Equal0~6_combout\,
	datad => \DEBOUNCE_BTN_UP|DB_REG.WAI0~q\,
	combout => \DEBOUNCE_BTN_UP|Selector3~0_combout\);

-- Location: LCCOMB_X28_Y38_N10
\DEBOUNCE_BTN_UP|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector3~1_combout\ = (!\DEBOUNCE_BTN_UP|Selector3~0_combout\ & ((\BTN_N[1]~input_o\ & ((!\DEBOUNCE_BTN_UP|DB_REG.ONE~q\))) # (!\BTN_N[1]~input_o\ & (\DEBOUNCE_BTN_UP|DB_REG.ZERO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[1]~input_o\,
	datab => \DEBOUNCE_BTN_UP|Selector3~0_combout\,
	datac => \DEBOUNCE_BTN_UP|DB_REG.ZERO~q\,
	datad => \DEBOUNCE_BTN_UP|DB_REG.ONE~q\,
	combout => \DEBOUNCE_BTN_UP|Selector3~1_combout\);

-- Location: LCCOMB_X28_Y38_N18
\DEBOUNCE_BTN_UP|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector3~2_combout\ = (\BTN_N[1]~input_o\ & (((\DEBOUNCE_BTN_UP|DB_REG.WAI1~q\ & \DEBOUNCE_BTN_UP|Selector3~1_combout\)))) # (!\BTN_N[1]~input_o\ & (((\DEBOUNCE_BTN_UP|DB_REG.WAI1~q\ & \DEBOUNCE_BTN_UP|Selector3~1_combout\)) # 
-- (!\DEBOUNCE_BTN_UP|DB_REG.ZERO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[1]~input_o\,
	datab => \DEBOUNCE_BTN_UP|DB_REG.ZERO~q\,
	datac => \DEBOUNCE_BTN_UP|DB_REG.WAI1~q\,
	datad => \DEBOUNCE_BTN_UP|Selector3~1_combout\,
	combout => \DEBOUNCE_BTN_UP|Selector3~2_combout\);

-- Location: FF_X28_Y38_N19
\DEBOUNCE_BTN_UP|DB_REG.WAI1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DB_REG.WAI1~q\);

-- Location: LCCOMB_X27_Y38_N8
\DEBOUNCE_BTN_UP|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector3~3_combout\ = (!\DEBOUNCE_BTN_UP|DB_REG.WAI1~q\ & !\DEBOUNCE_BTN_UP|DB_REG.WAI0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DB_REG.WAI1~q\,
	datad => \DEBOUNCE_BTN_UP|DB_REG.WAI0~q\,
	combout => \DEBOUNCE_BTN_UP|Selector3~3_combout\);

-- Location: IOIBUF_X115_Y53_N15
\BTN_N[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_N(1),
	o => \BTN_N[1]~input_o\);

-- Location: LCCOMB_X28_Y38_N4
\DEBOUNCE_BTN_UP|DELAY_REG[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[13]~54_combout\ = (\DEBOUNCE_BTN_UP|DB_REG.WAI0~q\ & (((!\BTN_N[1]~input_o\)))) # (!\DEBOUNCE_BTN_UP|DB_REG.WAI0~q\ & ((\BTN_N[1]~input_o\ & (\DEBOUNCE_BTN_UP|DB_REG.WAI1~q\)) # (!\BTN_N[1]~input_o\ & 
-- ((\DEBOUNCE_BTN_UP|DB_REG.ONE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DB_REG.WAI1~q\,
	datab => \DEBOUNCE_BTN_UP|DB_REG.ONE~q\,
	datac => \DEBOUNCE_BTN_UP|DB_REG.WAI0~q\,
	datad => \BTN_N[1]~input_o\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[13]~54_combout\);

-- Location: LCCOMB_X28_Y38_N30
\DEBOUNCE_BTN_UP|DELAY_REG[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\ = (!\DEBOUNCE_BTN_UP|DELAY_REG[13]~54_combout\ & ((\DEBOUNCE_BTN_UP|DB_REG.ZERO~q\) # (\BTN_N[1]~input_o\ $ (!\DEBOUNCE_BTN_UP|DB_REG.ONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[1]~input_o\,
	datab => \DEBOUNCE_BTN_UP|DELAY_REG[13]~54_combout\,
	datac => \DEBOUNCE_BTN_UP|DB_REG.ZERO~q\,
	datad => \DEBOUNCE_BTN_UP|DB_REG.ONE~q\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\);

-- Location: FF_X27_Y38_N15
\DEBOUNCE_BTN_UP|DELAY_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[1]~22_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(1));

-- Location: LCCOMB_X27_Y38_N16
\DEBOUNCE_BTN_UP|DELAY_REG[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[2]~24_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(2) & ((GND) # (!\DEBOUNCE_BTN_UP|DELAY_REG[1]~23\))) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(2) & (\DEBOUNCE_BTN_UP|DELAY_REG[1]~23\ $ (GND)))
-- \DEBOUNCE_BTN_UP|DELAY_REG[2]~25\ = CARRY((\DEBOUNCE_BTN_UP|DELAY_REG\(2)) # (!\DEBOUNCE_BTN_UP|DELAY_REG[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(2),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[1]~23\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[2]~24_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[2]~25\);

-- Location: FF_X27_Y38_N17
\DEBOUNCE_BTN_UP|DELAY_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[2]~24_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(2));

-- Location: LCCOMB_X27_Y38_N18
\DEBOUNCE_BTN_UP|DELAY_REG[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[3]~26_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(3) & (\DEBOUNCE_BTN_UP|DELAY_REG[2]~25\ & VCC)) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(3) & (!\DEBOUNCE_BTN_UP|DELAY_REG[2]~25\))
-- \DEBOUNCE_BTN_UP|DELAY_REG[3]~27\ = CARRY((!\DEBOUNCE_BTN_UP|DELAY_REG\(3) & !\DEBOUNCE_BTN_UP|DELAY_REG[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(3),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[2]~25\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[3]~26_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[3]~27\);

-- Location: FF_X27_Y38_N19
\DEBOUNCE_BTN_UP|DELAY_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[3]~26_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(3));

-- Location: LCCOMB_X27_Y38_N20
\DEBOUNCE_BTN_UP|DELAY_REG[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[4]~28_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(4) & ((GND) # (!\DEBOUNCE_BTN_UP|DELAY_REG[3]~27\))) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(4) & (\DEBOUNCE_BTN_UP|DELAY_REG[3]~27\ $ (GND)))
-- \DEBOUNCE_BTN_UP|DELAY_REG[4]~29\ = CARRY((\DEBOUNCE_BTN_UP|DELAY_REG\(4)) # (!\DEBOUNCE_BTN_UP|DELAY_REG[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(4),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[3]~27\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[4]~28_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[4]~29\);

-- Location: FF_X27_Y38_N21
\DEBOUNCE_BTN_UP|DELAY_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[4]~28_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(4));

-- Location: LCCOMB_X27_Y38_N24
\DEBOUNCE_BTN_UP|DELAY_REG[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[6]~32_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(6) & ((GND) # (!\DEBOUNCE_BTN_UP|DELAY_REG[5]~31\))) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(6) & (\DEBOUNCE_BTN_UP|DELAY_REG[5]~31\ $ (GND)))
-- \DEBOUNCE_BTN_UP|DELAY_REG[6]~33\ = CARRY((\DEBOUNCE_BTN_UP|DELAY_REG\(6)) # (!\DEBOUNCE_BTN_UP|DELAY_REG[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(6),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[5]~31\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[6]~32_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[6]~33\);

-- Location: FF_X27_Y38_N25
\DEBOUNCE_BTN_UP|DELAY_REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[6]~32_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(6));

-- Location: LCCOMB_X27_Y38_N28
\DEBOUNCE_BTN_UP|DELAY_REG[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[8]~36_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(8) & ((GND) # (!\DEBOUNCE_BTN_UP|DELAY_REG[7]~35\))) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(8) & (\DEBOUNCE_BTN_UP|DELAY_REG[7]~35\ $ (GND)))
-- \DEBOUNCE_BTN_UP|DELAY_REG[8]~37\ = CARRY((\DEBOUNCE_BTN_UP|DELAY_REG\(8)) # (!\DEBOUNCE_BTN_UP|DELAY_REG[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(8),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[7]~35\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[8]~36_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[8]~37\);

-- Location: FF_X27_Y38_N29
\DEBOUNCE_BTN_UP|DELAY_REG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[8]~36_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(8));

-- Location: LCCOMB_X27_Y37_N0
\DEBOUNCE_BTN_UP|DELAY_REG[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[10]~40_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(10) & ((GND) # (!\DEBOUNCE_BTN_UP|DELAY_REG[9]~39\))) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(10) & (\DEBOUNCE_BTN_UP|DELAY_REG[9]~39\ $ (GND)))
-- \DEBOUNCE_BTN_UP|DELAY_REG[10]~41\ = CARRY((\DEBOUNCE_BTN_UP|DELAY_REG\(10)) # (!\DEBOUNCE_BTN_UP|DELAY_REG[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(10),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[9]~39\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[10]~40_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[10]~41\);

-- Location: FF_X27_Y37_N1
\DEBOUNCE_BTN_UP|DELAY_REG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[10]~40_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(10));

-- Location: LCCOMB_X27_Y37_N2
\DEBOUNCE_BTN_UP|DELAY_REG[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[11]~42_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(11) & (\DEBOUNCE_BTN_UP|DELAY_REG[10]~41\ & VCC)) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(11) & (!\DEBOUNCE_BTN_UP|DELAY_REG[10]~41\))
-- \DEBOUNCE_BTN_UP|DELAY_REG[11]~43\ = CARRY((!\DEBOUNCE_BTN_UP|DELAY_REG\(11) & !\DEBOUNCE_BTN_UP|DELAY_REG[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(11),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[10]~41\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[11]~42_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[11]~43\);

-- Location: FF_X27_Y37_N3
\DEBOUNCE_BTN_UP|DELAY_REG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[11]~42_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(11));

-- Location: LCCOMB_X27_Y37_N4
\DEBOUNCE_BTN_UP|DELAY_REG[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[12]~44_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(12) & ((GND) # (!\DEBOUNCE_BTN_UP|DELAY_REG[11]~43\))) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(12) & (\DEBOUNCE_BTN_UP|DELAY_REG[11]~43\ $ (GND)))
-- \DEBOUNCE_BTN_UP|DELAY_REG[12]~45\ = CARRY((\DEBOUNCE_BTN_UP|DELAY_REG\(12)) # (!\DEBOUNCE_BTN_UP|DELAY_REG[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(12),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[11]~43\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[12]~44_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[12]~45\);

-- Location: FF_X27_Y37_N5
\DEBOUNCE_BTN_UP|DELAY_REG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[12]~44_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(12));

-- Location: LCCOMB_X27_Y37_N6
\DEBOUNCE_BTN_UP|DELAY_REG[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[13]~46_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(13) & (\DEBOUNCE_BTN_UP|DELAY_REG[12]~45\ & VCC)) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(13) & (!\DEBOUNCE_BTN_UP|DELAY_REG[12]~45\))
-- \DEBOUNCE_BTN_UP|DELAY_REG[13]~47\ = CARRY((!\DEBOUNCE_BTN_UP|DELAY_REG\(13) & !\DEBOUNCE_BTN_UP|DELAY_REG[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DELAY_REG\(13),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[12]~45\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[13]~46_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[13]~47\);

-- Location: LCCOMB_X27_Y37_N8
\DEBOUNCE_BTN_UP|DELAY_REG[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[14]~48_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(14) & ((GND) # (!\DEBOUNCE_BTN_UP|DELAY_REG[13]~47\))) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(14) & (\DEBOUNCE_BTN_UP|DELAY_REG[13]~47\ $ (GND)))
-- \DEBOUNCE_BTN_UP|DELAY_REG[14]~49\ = CARRY((\DEBOUNCE_BTN_UP|DELAY_REG\(14)) # (!\DEBOUNCE_BTN_UP|DELAY_REG[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(14),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[13]~47\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[14]~48_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[14]~49\);

-- Location: FF_X27_Y37_N9
\DEBOUNCE_BTN_UP|DELAY_REG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[14]~48_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(14));

-- Location: LCCOMB_X27_Y37_N14
\DEBOUNCE_BTN_UP|DELAY_REG[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[17]~56_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(17) & (\DEBOUNCE_BTN_UP|DELAY_REG[16]~53\ & VCC)) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(17) & (!\DEBOUNCE_BTN_UP|DELAY_REG[16]~53\))
-- \DEBOUNCE_BTN_UP|DELAY_REG[17]~57\ = CARRY((!\DEBOUNCE_BTN_UP|DELAY_REG\(17) & !\DEBOUNCE_BTN_UP|DELAY_REG[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(17),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[16]~53\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[17]~56_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[17]~57\);

-- Location: FF_X27_Y37_N15
\DEBOUNCE_BTN_UP|DELAY_REG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[17]~56_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(17));

-- Location: LCCOMB_X27_Y37_N16
\DEBOUNCE_BTN_UP|DELAY_REG[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[18]~58_combout\ = (\DEBOUNCE_BTN_UP|DELAY_REG\(18) & ((GND) # (!\DEBOUNCE_BTN_UP|DELAY_REG[17]~57\))) # (!\DEBOUNCE_BTN_UP|DELAY_REG\(18) & (\DEBOUNCE_BTN_UP|DELAY_REG[17]~57\ $ (GND)))
-- \DEBOUNCE_BTN_UP|DELAY_REG[18]~59\ = CARRY((\DEBOUNCE_BTN_UP|DELAY_REG\(18)) # (!\DEBOUNCE_BTN_UP|DELAY_REG[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(18),
	datad => VCC,
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[17]~57\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[18]~58_combout\,
	cout => \DEBOUNCE_BTN_UP|DELAY_REG[18]~59\);

-- Location: FF_X27_Y37_N17
\DEBOUNCE_BTN_UP|DELAY_REG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[18]~58_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(18));

-- Location: LCCOMB_X27_Y37_N18
\DEBOUNCE_BTN_UP|DELAY_REG[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DELAY_REG[19]~60_combout\ = \DEBOUNCE_BTN_UP|DELAY_REG[18]~59\ $ (!\DEBOUNCE_BTN_UP|DELAY_REG\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DEBOUNCE_BTN_UP|DELAY_REG\(19),
	cin => \DEBOUNCE_BTN_UP|DELAY_REG[18]~59\,
	combout => \DEBOUNCE_BTN_UP|DELAY_REG[19]~60_combout\);

-- Location: FF_X27_Y37_N19
\DEBOUNCE_BTN_UP|DELAY_REG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[19]~60_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(19));

-- Location: LCCOMB_X27_Y37_N28
\DEBOUNCE_BTN_UP|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Equal0~0_combout\ = (!\DEBOUNCE_BTN_UP|DELAY_REG\(16) & (!\DEBOUNCE_BTN_UP|DELAY_REG\(19) & (!\DEBOUNCE_BTN_UP|DELAY_REG\(17) & !\DEBOUNCE_BTN_UP|DELAY_REG\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DELAY_REG\(16),
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(19),
	datac => \DEBOUNCE_BTN_UP|DELAY_REG\(17),
	datad => \DEBOUNCE_BTN_UP|DELAY_REG\(18),
	combout => \DEBOUNCE_BTN_UP|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y38_N4
\DEBOUNCE_BTN_UP|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Equal0~1_combout\ = (!\DEBOUNCE_BTN_UP|DELAY_REG\(0) & (!\DEBOUNCE_BTN_UP|DELAY_REG\(2) & (!\DEBOUNCE_BTN_UP|DELAY_REG\(1) & !\DEBOUNCE_BTN_UP|DELAY_REG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DELAY_REG\(0),
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(2),
	datac => \DEBOUNCE_BTN_UP|DELAY_REG\(1),
	datad => \DEBOUNCE_BTN_UP|DELAY_REG\(3),
	combout => \DEBOUNCE_BTN_UP|Equal0~1_combout\);

-- Location: FF_X27_Y37_N7
\DEBOUNCE_BTN_UP|DELAY_REG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DELAY_REG[13]~46_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_UP|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_UP|DELAY_REG[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DELAY_REG\(13));

-- Location: LCCOMB_X27_Y37_N26
\DEBOUNCE_BTN_UP|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Equal0~4_combout\ = (!\DEBOUNCE_BTN_UP|DELAY_REG\(15) & (!\DEBOUNCE_BTN_UP|DELAY_REG\(12) & (!\DEBOUNCE_BTN_UP|DELAY_REG\(14) & !\DEBOUNCE_BTN_UP|DELAY_REG\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DELAY_REG\(15),
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(12),
	datac => \DEBOUNCE_BTN_UP|DELAY_REG\(14),
	datad => \DEBOUNCE_BTN_UP|DELAY_REG\(13),
	combout => \DEBOUNCE_BTN_UP|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y38_N0
\DEBOUNCE_BTN_UP|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Equal0~3_combout\ = (!\DEBOUNCE_BTN_UP|DELAY_REG\(9) & (!\DEBOUNCE_BTN_UP|DELAY_REG\(8) & (!\DEBOUNCE_BTN_UP|DELAY_REG\(11) & !\DEBOUNCE_BTN_UP|DELAY_REG\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|DELAY_REG\(9),
	datab => \DEBOUNCE_BTN_UP|DELAY_REG\(8),
	datac => \DEBOUNCE_BTN_UP|DELAY_REG\(11),
	datad => \DEBOUNCE_BTN_UP|DELAY_REG\(10),
	combout => \DEBOUNCE_BTN_UP|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y38_N2
\DEBOUNCE_BTN_UP|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Equal0~5_combout\ = (\DEBOUNCE_BTN_UP|Equal0~2_combout\ & (\DEBOUNCE_BTN_UP|Equal0~1_combout\ & (\DEBOUNCE_BTN_UP|Equal0~4_combout\ & \DEBOUNCE_BTN_UP|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|Equal0~2_combout\,
	datab => \DEBOUNCE_BTN_UP|Equal0~1_combout\,
	datac => \DEBOUNCE_BTN_UP|Equal0~4_combout\,
	datad => \DEBOUNCE_BTN_UP|Equal0~3_combout\,
	combout => \DEBOUNCE_BTN_UP|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y38_N14
\DEBOUNCE_BTN_UP|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Equal0~6_combout\ = (\DEBOUNCE_BTN_UP|Equal0~0_combout\ & \DEBOUNCE_BTN_UP|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_BTN_UP|Equal0~0_combout\,
	datad => \DEBOUNCE_BTN_UP|Equal0~5_combout\,
	combout => \DEBOUNCE_BTN_UP|Equal0~6_combout\);

-- Location: LCCOMB_X28_Y38_N20
\DEBOUNCE_BTN_UP|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector2~1_combout\ = (\DEBOUNCE_BTN_UP|Selector2~0_combout\) # ((\DEBOUNCE_BTN_UP|DB_REG.WAI1~q\ & ((\DEBOUNCE_BTN_UP|Equal0~6_combout\) # (\BTN_N[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|Selector2~0_combout\,
	datab => \DEBOUNCE_BTN_UP|DB_REG.WAI1~q\,
	datac => \DEBOUNCE_BTN_UP|Equal0~6_combout\,
	datad => \BTN_N[1]~input_o\,
	combout => \DEBOUNCE_BTN_UP|Selector2~1_combout\);

-- Location: LCCOMB_X28_Y38_N26
\DEBOUNCE_BTN_UP|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector0~0_combout\ = ((\DEBOUNCE_BTN_UP|DB_REG.WAI0~q\ & ((\DEBOUNCE_BTN_UP|Equal0~6_combout\) # (!\BTN_N[1]~input_o\)))) # (!\DEBOUNCE_BTN_UP|Selector2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[1]~input_o\,
	datab => \DEBOUNCE_BTN_UP|DB_REG.WAI0~q\,
	datac => \DEBOUNCE_BTN_UP|Equal0~6_combout\,
	datad => \DEBOUNCE_BTN_UP|Selector2~1_combout\,
	combout => \DEBOUNCE_BTN_UP|Selector0~0_combout\);

-- Location: LCCOMB_X28_Y38_N6
\DEBOUNCE_BTN_UP|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector2~3_combout\ = (\DEBOUNCE_BTN_UP|Selector0~0_combout\ & (((!\DEBOUNCE_BTN_UP|Selector0~1_combout\)))) # (!\DEBOUNCE_BTN_UP|Selector0~0_combout\ & (\DEBOUNCE_BTN_UP|Selector2~2_combout\ & (\DEBOUNCE_BTN_UP|DB_REG.WAI1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_UP|Selector2~2_combout\,
	datab => \DEBOUNCE_BTN_UP|DB_REG.WAI1~q\,
	datac => \DEBOUNCE_BTN_UP|Selector0~0_combout\,
	datad => \DEBOUNCE_BTN_UP|Selector0~1_combout\,
	combout => \DEBOUNCE_BTN_UP|Selector2~3_combout\);

-- Location: LCCOMB_X28_Y38_N0
\DEBOUNCE_BTN_UP|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector2~4_combout\ = (\DEBOUNCE_BTN_UP|Selector2~3_combout\ & (!\BTN_N[1]~input_o\)) # (!\DEBOUNCE_BTN_UP|Selector2~3_combout\ & (((\DEBOUNCE_BTN_UP|Selector0~0_combout\ & \DEBOUNCE_BTN_UP|DB_REG.ONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[1]~input_o\,
	datab => \DEBOUNCE_BTN_UP|Selector0~0_combout\,
	datac => \DEBOUNCE_BTN_UP|DB_REG.ONE~q\,
	datad => \DEBOUNCE_BTN_UP|Selector2~3_combout\,
	combout => \DEBOUNCE_BTN_UP|Selector2~4_combout\);

-- Location: FF_X28_Y38_N1
\DEBOUNCE_BTN_UP|DB_REG.ONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|Selector2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DB_REG.ONE~q\);

-- Location: LCCOMB_X28_Y38_N24
\DEBOUNCE_BTN_UP|DB_REG.WAI0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|DB_REG.WAI0~0_combout\ = (\BTN_N[1]~input_o\ & ((\DEBOUNCE_BTN_UP|DB_REG.ONE~q\) # ((\DEBOUNCE_BTN_UP|DB_REG.WAI0~q\ & \DEBOUNCE_BTN_UP|Selector3~1_combout\)))) # (!\BTN_N[1]~input_o\ & (((\DEBOUNCE_BTN_UP|DB_REG.WAI0~q\ & 
-- \DEBOUNCE_BTN_UP|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[1]~input_o\,
	datab => \DEBOUNCE_BTN_UP|DB_REG.ONE~q\,
	datac => \DEBOUNCE_BTN_UP|DB_REG.WAI0~q\,
	datad => \DEBOUNCE_BTN_UP|Selector3~1_combout\,
	combout => \DEBOUNCE_BTN_UP|DB_REG.WAI0~0_combout\);

-- Location: FF_X28_Y38_N25
\DEBOUNCE_BTN_UP|DB_REG.WAI0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|DB_REG.WAI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DB_REG.WAI0~q\);

-- Location: LCCOMB_X28_Y38_N16
\DEBOUNCE_BTN_UP|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector0~1_combout\ = (!\DEBOUNCE_BTN_UP|Selector2~1_combout\ & (((\BTN_N[1]~input_o\ & !\DEBOUNCE_BTN_UP|Equal0~6_combout\)) # (!\DEBOUNCE_BTN_UP|DB_REG.WAI0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[1]~input_o\,
	datab => \DEBOUNCE_BTN_UP|DB_REG.WAI0~q\,
	datac => \DEBOUNCE_BTN_UP|Equal0~6_combout\,
	datad => \DEBOUNCE_BTN_UP|Selector2~1_combout\,
	combout => \DEBOUNCE_BTN_UP|Selector0~1_combout\);

-- Location: LCCOMB_X28_Y38_N2
\DEBOUNCE_BTN_UP|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector0~2_combout\ = (\BTN_N[1]~input_o\ & ((\DEBOUNCE_BTN_UP|Selector0~0_combout\ & ((!\DEBOUNCE_BTN_UP|Selector0~1_combout\))) # (!\DEBOUNCE_BTN_UP|Selector0~0_combout\ & (\DEBOUNCE_BTN_UP|DB_REG.WAI1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[1]~input_o\,
	datab => \DEBOUNCE_BTN_UP|DB_REG.WAI1~q\,
	datac => \DEBOUNCE_BTN_UP|Selector0~0_combout\,
	datad => \DEBOUNCE_BTN_UP|Selector0~1_combout\,
	combout => \DEBOUNCE_BTN_UP|Selector0~2_combout\);

-- Location: LCCOMB_X28_Y38_N8
\DEBOUNCE_BTN_UP|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_UP|Selector0~3_combout\ = (!\DEBOUNCE_BTN_UP|Selector0~2_combout\ & ((\DEBOUNCE_BTN_UP|DB_REG.ZERO~q\) # (!\DEBOUNCE_BTN_UP|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|Selector0~1_combout\,
	datac => \DEBOUNCE_BTN_UP|DB_REG.ZERO~q\,
	datad => \DEBOUNCE_BTN_UP|Selector0~2_combout\,
	combout => \DEBOUNCE_BTN_UP|Selector0~3_combout\);

-- Location: FF_X28_Y38_N9
\DEBOUNCE_BTN_UP|DB_REG.ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_UP|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_UP|DB_REG.ZERO~q\);

-- Location: LCCOMB_X29_Y35_N12
\CHIA_10ENA|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~36_combout\ = (\CHIA_10ENA|D5HZ_REG\(18) & (\CHIA_10ENA|Add2~35\ $ (GND))) # (!\CHIA_10ENA|D5HZ_REG\(18) & (!\CHIA_10ENA|Add2~35\ & VCC))
-- \CHIA_10ENA|Add2~37\ = CARRY((\CHIA_10ENA|D5HZ_REG\(18) & !\CHIA_10ENA|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(18),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~35\,
	combout => \CHIA_10ENA|Add2~36_combout\,
	cout => \CHIA_10ENA|Add2~37\);

-- Location: FF_X29_Y35_N13
\CHIA_10ENA|D5HZ_REG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(18));

-- Location: LCCOMB_X29_Y35_N26
\CHIA_10ENA|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal2~4_combout\ = (\CHIA_10ENA|D5HZ_REG\(20) & (\CHIA_10ENA|D5HZ_REG\(23) & (!\CHIA_10ENA|D5HZ_REG\(22) & !\CHIA_10ENA|D5HZ_REG\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(20),
	datab => \CHIA_10ENA|D5HZ_REG\(23),
	datac => \CHIA_10ENA|D5HZ_REG\(22),
	datad => \CHIA_10ENA|D5HZ_REG\(18),
	combout => \CHIA_10ENA|Equal2~4_combout\);

-- Location: LCCOMB_X29_Y36_N8
\CHIA_10ENA|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~0_combout\ = \CHIA_10ENA|D5HZ_REG\(0) $ (GND)
-- \CHIA_10ENA|Add2~1\ = CARRY(!\CHIA_10ENA|D5HZ_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D5HZ_REG\(0),
	datad => VCC,
	combout => \CHIA_10ENA|Add2~0_combout\,
	cout => \CHIA_10ENA|Add2~1\);

-- Location: LCCOMB_X28_Y36_N6
\CHIA_10ENA|D5HZ_REG[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D5HZ_REG[0]~0_combout\ = !\CHIA_10ENA|Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CHIA_10ENA|Add2~0_combout\,
	combout => \CHIA_10ENA|D5HZ_REG[0]~0_combout\);

-- Location: FF_X29_Y36_N5
\CHIA_10ENA|D5HZ_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	asdata => \CHIA_10ENA|D5HZ_REG[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(0));

-- Location: LCCOMB_X29_Y36_N12
\CHIA_10ENA|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~4_combout\ = (\CHIA_10ENA|D5HZ_REG\(2) & (\CHIA_10ENA|Add2~3\ $ (GND))) # (!\CHIA_10ENA|D5HZ_REG\(2) & (!\CHIA_10ENA|Add2~3\ & VCC))
-- \CHIA_10ENA|Add2~5\ = CARRY((\CHIA_10ENA|D5HZ_REG\(2) & !\CHIA_10ENA|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(2),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~3\,
	combout => \CHIA_10ENA|Add2~4_combout\,
	cout => \CHIA_10ENA|Add2~5\);

-- Location: LCCOMB_X29_Y36_N14
\CHIA_10ENA|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~6_combout\ = (\CHIA_10ENA|D5HZ_REG\(3) & (!\CHIA_10ENA|Add2~5\)) # (!\CHIA_10ENA|D5HZ_REG\(3) & ((\CHIA_10ENA|Add2~5\) # (GND)))
-- \CHIA_10ENA|Add2~7\ = CARRY((!\CHIA_10ENA|Add2~5\) # (!\CHIA_10ENA|D5HZ_REG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D5HZ_REG\(3),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~5\,
	combout => \CHIA_10ENA|Add2~6_combout\,
	cout => \CHIA_10ENA|Add2~7\);

-- Location: FF_X29_Y36_N15
\CHIA_10ENA|D5HZ_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(3));

-- Location: LCCOMB_X29_Y36_N16
\CHIA_10ENA|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~8_combout\ = (\CHIA_10ENA|D5HZ_REG\(4) & (\CHIA_10ENA|Add2~7\ $ (GND))) # (!\CHIA_10ENA|D5HZ_REG\(4) & (!\CHIA_10ENA|Add2~7\ & VCC))
-- \CHIA_10ENA|Add2~9\ = CARRY((\CHIA_10ENA|D5HZ_REG\(4) & !\CHIA_10ENA|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D5HZ_REG\(4),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~7\,
	combout => \CHIA_10ENA|Add2~8_combout\,
	cout => \CHIA_10ENA|Add2~9\);

-- Location: FF_X29_Y36_N17
\CHIA_10ENA|D5HZ_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(4));

-- Location: LCCOMB_X29_Y36_N18
\CHIA_10ENA|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~10_combout\ = (\CHIA_10ENA|D5HZ_REG\(5) & (!\CHIA_10ENA|Add2~9\)) # (!\CHIA_10ENA|D5HZ_REG\(5) & ((\CHIA_10ENA|Add2~9\) # (GND)))
-- \CHIA_10ENA|Add2~11\ = CARRY((!\CHIA_10ENA|Add2~9\) # (!\CHIA_10ENA|D5HZ_REG\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D5HZ_REG\(5),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~9\,
	combout => \CHIA_10ENA|Add2~10_combout\,
	cout => \CHIA_10ENA|Add2~11\);

-- Location: FF_X29_Y36_N19
\CHIA_10ENA|D5HZ_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(5));

-- Location: LCCOMB_X29_Y36_N20
\CHIA_10ENA|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~12_combout\ = (\CHIA_10ENA|D5HZ_REG\(6) & (\CHIA_10ENA|Add2~11\ $ (GND))) # (!\CHIA_10ENA|D5HZ_REG\(6) & (!\CHIA_10ENA|Add2~11\ & VCC))
-- \CHIA_10ENA|Add2~13\ = CARRY((\CHIA_10ENA|D5HZ_REG\(6) & !\CHIA_10ENA|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D5HZ_REG\(6),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~11\,
	combout => \CHIA_10ENA|Add2~12_combout\,
	cout => \CHIA_10ENA|Add2~13\);

-- Location: FF_X29_Y36_N21
\CHIA_10ENA|D5HZ_REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(6));

-- Location: LCCOMB_X29_Y36_N22
\CHIA_10ENA|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~14_combout\ = (\CHIA_10ENA|D5HZ_REG\(7) & (!\CHIA_10ENA|Add2~13\)) # (!\CHIA_10ENA|D5HZ_REG\(7) & ((\CHIA_10ENA|Add2~13\) # (GND)))
-- \CHIA_10ENA|Add2~15\ = CARRY((!\CHIA_10ENA|Add2~13\) # (!\CHIA_10ENA|D5HZ_REG\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(7),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~13\,
	combout => \CHIA_10ENA|Add2~14_combout\,
	cout => \CHIA_10ENA|Add2~15\);

-- Location: LCCOMB_X29_Y36_N24
\CHIA_10ENA|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~16_combout\ = (\CHIA_10ENA|D5HZ_REG\(8) & (\CHIA_10ENA|Add2~15\ $ (GND))) # (!\CHIA_10ENA|D5HZ_REG\(8) & (!\CHIA_10ENA|Add2~15\ & VCC))
-- \CHIA_10ENA|Add2~17\ = CARRY((\CHIA_10ENA|D5HZ_REG\(8) & !\CHIA_10ENA|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D5HZ_REG\(8),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~15\,
	combout => \CHIA_10ENA|Add2~16_combout\,
	cout => \CHIA_10ENA|Add2~17\);

-- Location: FF_X29_Y36_N25
\CHIA_10ENA|D5HZ_REG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(8));

-- Location: LCCOMB_X29_Y36_N0
\CHIA_10ENA|D5HZ_NEXT[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D5HZ_NEXT[7]~7_combout\ = (\CHIA_10ENA|Add2~14_combout\ & !\CHIA_10ENA|Equal2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIA_10ENA|Add2~14_combout\,
	datad => \CHIA_10ENA|Equal2~7_combout\,
	combout => \CHIA_10ENA|D5HZ_NEXT[7]~7_combout\);

-- Location: FF_X29_Y36_N1
\CHIA_10ENA|D5HZ_REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|D5HZ_NEXT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(7));

-- Location: LCCOMB_X28_Y36_N30
\CHIA_10ENA|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal2~6_combout\ = (\CHIA_10ENA|D5HZ_REG\(10) & (!\CHIA_10ENA|D5HZ_REG\(8) & (\CHIA_10ENA|D5HZ_REG\(7) & !\CHIA_10ENA|D5HZ_REG\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(10),
	datab => \CHIA_10ENA|D5HZ_REG\(8),
	datac => \CHIA_10ENA|D5HZ_REG\(7),
	datad => \CHIA_10ENA|D5HZ_REG\(6),
	combout => \CHIA_10ENA|Equal2~6_combout\);

-- Location: FF_X29_Y36_N13
\CHIA_10ENA|D5HZ_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(2));

-- Location: LCCOMB_X29_Y36_N4
\CHIA_10ENA|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal2~2_combout\ = (!\CHIA_10ENA|D5HZ_REG\(1) & (!\CHIA_10ENA|D5HZ_REG\(3) & (\CHIA_10ENA|D5HZ_REG\(0) & !\CHIA_10ENA|D5HZ_REG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(1),
	datab => \CHIA_10ENA|D5HZ_REG\(3),
	datac => \CHIA_10ENA|D5HZ_REG\(0),
	datad => \CHIA_10ENA|D5HZ_REG\(2),
	combout => \CHIA_10ENA|Equal2~2_combout\);

-- Location: LCCOMB_X29_Y35_N10
\CHIA_10ENA|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~34_combout\ = (\CHIA_10ENA|D5HZ_REG\(17) & (!\CHIA_10ENA|Add2~33\)) # (!\CHIA_10ENA|D5HZ_REG\(17) & ((\CHIA_10ENA|Add2~33\) # (GND)))
-- \CHIA_10ENA|Add2~35\ = CARRY((!\CHIA_10ENA|Add2~33\) # (!\CHIA_10ENA|D5HZ_REG\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(17),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~33\,
	combout => \CHIA_10ENA|Add2~34_combout\,
	cout => \CHIA_10ENA|Add2~35\);

-- Location: FF_X29_Y35_N11
\CHIA_10ENA|D5HZ_REG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(17));

-- Location: LCCOMB_X30_Y36_N22
\CHIA_10ENA|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal2~0_combout\ = (!\CHIA_10ENA|D5HZ_REG\(16) & (!\CHIA_10ENA|D5HZ_REG\(17) & (\CHIA_10ENA|D5HZ_REG\(19) & !\CHIA_10ENA|D5HZ_REG\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(16),
	datab => \CHIA_10ENA|D5HZ_REG\(17),
	datac => \CHIA_10ENA|D5HZ_REG\(19),
	datad => \CHIA_10ENA|D5HZ_REG\(21),
	combout => \CHIA_10ENA|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y36_N12
\CHIA_10ENA|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal2~1_combout\ = (!\CHIA_10ENA|D5HZ_REG\(4) & (!\CHIA_10ENA|D5HZ_REG\(5) & (!\CHIA_10ENA|D5HZ_REG\(13) & \CHIA_10ENA|D5HZ_REG\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(4),
	datab => \CHIA_10ENA|D5HZ_REG\(5),
	datac => \CHIA_10ENA|D5HZ_REG\(13),
	datad => \CHIA_10ENA|D5HZ_REG\(9),
	combout => \CHIA_10ENA|Equal2~1_combout\);

-- Location: LCCOMB_X30_Y36_N18
\CHIA_10ENA|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal2~3_combout\ = (\CHIA_10ENA|Equal2~2_combout\ & (\CHIA_10ENA|Equal2~0_combout\ & \CHIA_10ENA|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|Equal2~2_combout\,
	datac => \CHIA_10ENA|Equal2~0_combout\,
	datad => \CHIA_10ENA|Equal2~1_combout\,
	combout => \CHIA_10ENA|Equal2~3_combout\);

-- Location: LCCOMB_X28_Y36_N20
\CHIA_10ENA|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal2~7_combout\ = (\CHIA_10ENA|Equal2~5_combout\ & (\CHIA_10ENA|Equal2~4_combout\ & (\CHIA_10ENA|Equal2~6_combout\ & \CHIA_10ENA|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|Equal2~5_combout\,
	datab => \CHIA_10ENA|Equal2~4_combout\,
	datac => \CHIA_10ENA|Equal2~6_combout\,
	datad => \CHIA_10ENA|Equal2~3_combout\,
	combout => \CHIA_10ENA|Equal2~7_combout\);

-- Location: LCCOMB_X29_Y36_N26
\CHIA_10ENA|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~18_combout\ = (\CHIA_10ENA|D5HZ_REG\(9) & (!\CHIA_10ENA|Add2~17\)) # (!\CHIA_10ENA|D5HZ_REG\(9) & ((\CHIA_10ENA|Add2~17\) # (GND)))
-- \CHIA_10ENA|Add2~19\ = CARRY((!\CHIA_10ENA|Add2~17\) # (!\CHIA_10ENA|D5HZ_REG\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D5HZ_REG\(9),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~17\,
	combout => \CHIA_10ENA|Add2~18_combout\,
	cout => \CHIA_10ENA|Add2~19\);

-- Location: LCCOMB_X28_Y36_N22
\CHIA_10ENA|D5HZ_NEXT[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D5HZ_NEXT[9]~1_combout\ = (!\CHIA_10ENA|Equal2~7_combout\ & \CHIA_10ENA|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|Equal2~7_combout\,
	datad => \CHIA_10ENA|Add2~18_combout\,
	combout => \CHIA_10ENA|D5HZ_NEXT[9]~1_combout\);

-- Location: FF_X28_Y36_N23
\CHIA_10ENA|D5HZ_REG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|D5HZ_NEXT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(9));

-- Location: LCCOMB_X29_Y36_N30
\CHIA_10ENA|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~22_combout\ = (\CHIA_10ENA|D5HZ_REG\(11) & (!\CHIA_10ENA|Add2~21\)) # (!\CHIA_10ENA|D5HZ_REG\(11) & ((\CHIA_10ENA|Add2~21\) # (GND)))
-- \CHIA_10ENA|Add2~23\ = CARRY((!\CHIA_10ENA|Add2~21\) # (!\CHIA_10ENA|D5HZ_REG\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(11),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~21\,
	combout => \CHIA_10ENA|Add2~22_combout\,
	cout => \CHIA_10ENA|Add2~23\);

-- Location: LCCOMB_X29_Y35_N2
\CHIA_10ENA|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~26_combout\ = (\CHIA_10ENA|D5HZ_REG\(13) & (!\CHIA_10ENA|Add2~25\)) # (!\CHIA_10ENA|D5HZ_REG\(13) & ((\CHIA_10ENA|Add2~25\) # (GND)))
-- \CHIA_10ENA|Add2~27\ = CARRY((!\CHIA_10ENA|Add2~25\) # (!\CHIA_10ENA|D5HZ_REG\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D5HZ_REG\(13),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~25\,
	combout => \CHIA_10ENA|Add2~26_combout\,
	cout => \CHIA_10ENA|Add2~27\);

-- Location: FF_X29_Y35_N3
\CHIA_10ENA|D5HZ_REG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(13));

-- Location: LCCOMB_X29_Y35_N4
\CHIA_10ENA|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~28_combout\ = (\CHIA_10ENA|D5HZ_REG\(14) & (\CHIA_10ENA|Add2~27\ $ (GND))) # (!\CHIA_10ENA|D5HZ_REG\(14) & (!\CHIA_10ENA|Add2~27\ & VCC))
-- \CHIA_10ENA|Add2~29\ = CARRY((\CHIA_10ENA|D5HZ_REG\(14) & !\CHIA_10ENA|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(14),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~27\,
	combout => \CHIA_10ENA|Add2~28_combout\,
	cout => \CHIA_10ENA|Add2~29\);

-- Location: LCCOMB_X29_Y35_N6
\CHIA_10ENA|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~30_combout\ = (\CHIA_10ENA|D5HZ_REG\(15) & (!\CHIA_10ENA|Add2~29\)) # (!\CHIA_10ENA|D5HZ_REG\(15) & ((\CHIA_10ENA|Add2~29\) # (GND)))
-- \CHIA_10ENA|Add2~31\ = CARRY((!\CHIA_10ENA|Add2~29\) # (!\CHIA_10ENA|D5HZ_REG\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D5HZ_REG\(15),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~29\,
	combout => \CHIA_10ENA|Add2~30_combout\,
	cout => \CHIA_10ENA|Add2~31\);

-- Location: LCCOMB_X28_Y36_N24
\CHIA_10ENA|D5HZ_NEXT[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D5HZ_NEXT[15]~4_combout\ = (\CHIA_10ENA|Add2~30_combout\ & !\CHIA_10ENA|Equal2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIA_10ENA|Add2~30_combout\,
	datad => \CHIA_10ENA|Equal2~7_combout\,
	combout => \CHIA_10ENA|D5HZ_NEXT[15]~4_combout\);

-- Location: FF_X28_Y36_N25
\CHIA_10ENA|D5HZ_REG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|D5HZ_NEXT[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(15));

-- Location: LCCOMB_X29_Y35_N14
\CHIA_10ENA|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~38_combout\ = (\CHIA_10ENA|D5HZ_REG\(19) & (!\CHIA_10ENA|Add2~37\)) # (!\CHIA_10ENA|D5HZ_REG\(19) & ((\CHIA_10ENA|Add2~37\) # (GND)))
-- \CHIA_10ENA|Add2~39\ = CARRY((!\CHIA_10ENA|Add2~37\) # (!\CHIA_10ENA|D5HZ_REG\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D5HZ_REG\(19),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~37\,
	combout => \CHIA_10ENA|Add2~38_combout\,
	cout => \CHIA_10ENA|Add2~39\);

-- Location: LCCOMB_X28_Y36_N16
\CHIA_10ENA|D5HZ_NEXT[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D5HZ_NEXT[19]~0_combout\ = (\CHIA_10ENA|Add2~38_combout\ & !\CHIA_10ENA|Equal2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIA_10ENA|Add2~38_combout\,
	datad => \CHIA_10ENA|Equal2~7_combout\,
	combout => \CHIA_10ENA|D5HZ_NEXT[19]~0_combout\);

-- Location: FF_X28_Y36_N17
\CHIA_10ENA|D5HZ_REG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|D5HZ_NEXT[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(19));

-- Location: LCCOMB_X29_Y35_N16
\CHIA_10ENA|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~40_combout\ = (\CHIA_10ENA|D5HZ_REG\(20) & (\CHIA_10ENA|Add2~39\ $ (GND))) # (!\CHIA_10ENA|D5HZ_REG\(20) & (!\CHIA_10ENA|Add2~39\ & VCC))
-- \CHIA_10ENA|Add2~41\ = CARRY((\CHIA_10ENA|D5HZ_REG\(20) & !\CHIA_10ENA|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(20),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~39\,
	combout => \CHIA_10ENA|Add2~40_combout\,
	cout => \CHIA_10ENA|Add2~41\);

-- Location: LCCOMB_X29_Y35_N18
\CHIA_10ENA|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~42_combout\ = (\CHIA_10ENA|D5HZ_REG\(21) & (!\CHIA_10ENA|Add2~41\)) # (!\CHIA_10ENA|D5HZ_REG\(21) & ((\CHIA_10ENA|Add2~41\) # (GND)))
-- \CHIA_10ENA|Add2~43\ = CARRY((!\CHIA_10ENA|Add2~41\) # (!\CHIA_10ENA|D5HZ_REG\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D5HZ_REG\(21),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~41\,
	combout => \CHIA_10ENA|Add2~42_combout\,
	cout => \CHIA_10ENA|Add2~43\);

-- Location: FF_X29_Y35_N19
\CHIA_10ENA|D5HZ_REG[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(21));

-- Location: LCCOMB_X29_Y35_N20
\CHIA_10ENA|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~44_combout\ = (\CHIA_10ENA|D5HZ_REG\(22) & (\CHIA_10ENA|Add2~43\ $ (GND))) # (!\CHIA_10ENA|D5HZ_REG\(22) & (!\CHIA_10ENA|Add2~43\ & VCC))
-- \CHIA_10ENA|Add2~45\ = CARRY((\CHIA_10ENA|D5HZ_REG\(22) & !\CHIA_10ENA|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D5HZ_REG\(22),
	datad => VCC,
	cin => \CHIA_10ENA|Add2~43\,
	combout => \CHIA_10ENA|Add2~44_combout\,
	cout => \CHIA_10ENA|Add2~45\);

-- Location: FF_X29_Y35_N21
\CHIA_10ENA|D5HZ_REG[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(22));

-- Location: LCCOMB_X29_Y35_N22
\CHIA_10ENA|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add2~46_combout\ = \CHIA_10ENA|Add2~45\ $ (\CHIA_10ENA|D5HZ_REG\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CHIA_10ENA|D5HZ_REG\(23),
	cin => \CHIA_10ENA|Add2~45\,
	combout => \CHIA_10ENA|Add2~46_combout\);

-- Location: LCCOMB_X29_Y35_N28
\CHIA_10ENA|D5HZ_NEXT[23]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D5HZ_NEXT[23]~2_combout\ = (\CHIA_10ENA|Add2~46_combout\ & !\CHIA_10ENA|Equal2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIA_10ENA|Add2~46_combout\,
	datad => \CHIA_10ENA|Equal2~7_combout\,
	combout => \CHIA_10ENA|D5HZ_NEXT[23]~2_combout\);

-- Location: FF_X29_Y35_N29
\CHIA_10ENA|D5HZ_REG[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|D5HZ_NEXT[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(23));

-- Location: LCCOMB_X29_Y35_N30
\CHIA_10ENA|D5HZ_NEXT[20]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D5HZ_NEXT[20]~3_combout\ = (!\CHIA_10ENA|Equal2~7_combout\ & \CHIA_10ENA|Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|Equal2~7_combout\,
	datad => \CHIA_10ENA|Add2~40_combout\,
	combout => \CHIA_10ENA|D5HZ_NEXT[20]~3_combout\);

-- Location: FF_X29_Y35_N31
\CHIA_10ENA|D5HZ_REG[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|D5HZ_NEXT[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(20));

-- Location: LCCOMB_X29_Y35_N24
\CHIA_10ENA|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal12~0_combout\ = (\CHIA_10ENA|D5HZ_REG\(18) & (!\CHIA_10ENA|D5HZ_REG\(23) & (!\CHIA_10ENA|D5HZ_REG\(20) & \CHIA_10ENA|D5HZ_REG\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(18),
	datab => \CHIA_10ENA|D5HZ_REG\(23),
	datac => \CHIA_10ENA|D5HZ_REG\(20),
	datad => \CHIA_10ENA|D5HZ_REG\(22),
	combout => \CHIA_10ENA|Equal12~0_combout\);

-- Location: FF_X29_Y36_N31
\CHIA_10ENA|D5HZ_REG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(11));

-- Location: FF_X29_Y35_N5
\CHIA_10ENA|D5HZ_REG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|Add2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D5HZ_REG\(14));

-- Location: LCCOMB_X30_Y36_N8
\CHIA_10ENA|Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal12~1_combout\ = (!\CHIA_10ENA|D5HZ_REG\(12) & (\CHIA_10ENA|D5HZ_REG\(11) & (\CHIA_10ENA|D5HZ_REG\(14) & !\CHIA_10ENA|D5HZ_REG\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D5HZ_REG\(12),
	datab => \CHIA_10ENA|D5HZ_REG\(11),
	datac => \CHIA_10ENA|D5HZ_REG\(14),
	datad => \CHIA_10ENA|D5HZ_REG\(15),
	combout => \CHIA_10ENA|Equal12~1_combout\);

-- Location: LCCOMB_X30_Y36_N6
\CHIA_10ENA|Equal12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal12~3_combout\ = (\CHIA_10ENA|Equal12~2_combout\ & (\CHIA_10ENA|Equal12~0_combout\ & (\CHIA_10ENA|Equal12~1_combout\ & \CHIA_10ENA|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|Equal12~2_combout\,
	datab => \CHIA_10ENA|Equal12~0_combout\,
	datac => \CHIA_10ENA|Equal12~1_combout\,
	datad => \CHIA_10ENA|Equal2~3_combout\,
	combout => \CHIA_10ENA|Equal12~3_combout\);

-- Location: LCCOMB_X30_Y36_N4
\DEM_GIOPHUTGIAY|process_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|process_3~0_combout\ = (\DEBOUNCE_BTN_UP|DB_REG.ZERO~q\ & (!\DEBOUNCE_BTN_UP|DB_REG.WAI1~q\ & \CHIA_10ENA|Equal12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_UP|DB_REG.ZERO~q\,
	datac => \DEBOUNCE_BTN_UP|DB_REG.WAI1~q\,
	datad => \CHIA_10ENA|Equal12~3_combout\,
	combout => \DEM_GIOPHUTGIAY|process_3~0_combout\);

-- Location: LCCOMB_X3_Y36_N8
\CHIA_10ENA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~2_combout\ = (\CHIA_10ENA|D1HZ_REG\(1) & (!\CHIA_10ENA|Add0~1\)) # (!\CHIA_10ENA|D1HZ_REG\(1) & ((\CHIA_10ENA|Add0~1\) # (GND)))
-- \CHIA_10ENA|Add0~3\ = CARRY((!\CHIA_10ENA|Add0~1\) # (!\CHIA_10ENA|D1HZ_REG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(1),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~1\,
	combout => \CHIA_10ENA|Add0~2_combout\,
	cout => \CHIA_10ENA|Add0~3\);

-- Location: FF_X3_Y36_N3
\CHIA_10ENA|D1HZ_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	asdata => \CHIA_10ENA|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(1));

-- Location: LCCOMB_X3_Y36_N10
\CHIA_10ENA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~4_combout\ = (\CHIA_10ENA|D1HZ_REG\(2) & (\CHIA_10ENA|Add0~3\ $ (GND))) # (!\CHIA_10ENA|D1HZ_REG\(2) & (!\CHIA_10ENA|Add0~3\ & VCC))
-- \CHIA_10ENA|Add0~5\ = CARRY((\CHIA_10ENA|D1HZ_REG\(2) & !\CHIA_10ENA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(2),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~3\,
	combout => \CHIA_10ENA|Add0~4_combout\,
	cout => \CHIA_10ENA|Add0~5\);

-- Location: LCCOMB_X3_Y36_N14
\CHIA_10ENA|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~8_combout\ = (\CHIA_10ENA|D1HZ_REG\(4) & (\CHIA_10ENA|Add0~7\ $ (GND))) # (!\CHIA_10ENA|D1HZ_REG\(4) & (!\CHIA_10ENA|Add0~7\ & VCC))
-- \CHIA_10ENA|Add0~9\ = CARRY((\CHIA_10ENA|D1HZ_REG\(4) & !\CHIA_10ENA|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(4),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~7\,
	combout => \CHIA_10ENA|Add0~8_combout\,
	cout => \CHIA_10ENA|Add0~9\);

-- Location: FF_X3_Y36_N15
\CHIA_10ENA|D1HZ_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(4));

-- Location: LCCOMB_X3_Y36_N16
\CHIA_10ENA|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~10_combout\ = (\CHIA_10ENA|D1HZ_REG\(5) & (!\CHIA_10ENA|Add0~9\)) # (!\CHIA_10ENA|D1HZ_REG\(5) & ((\CHIA_10ENA|Add0~9\) # (GND)))
-- \CHIA_10ENA|Add0~11\ = CARRY((!\CHIA_10ENA|Add0~9\) # (!\CHIA_10ENA|D1HZ_REG\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(5),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~9\,
	combout => \CHIA_10ENA|Add0~10_combout\,
	cout => \CHIA_10ENA|Add0~11\);

-- Location: FF_X3_Y36_N17
\CHIA_10ENA|D1HZ_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(5));

-- Location: LCCOMB_X3_Y36_N18
\CHIA_10ENA|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~12_combout\ = (\CHIA_10ENA|D1HZ_REG\(6) & (\CHIA_10ENA|Add0~11\ $ (GND))) # (!\CHIA_10ENA|D1HZ_REG\(6) & (!\CHIA_10ENA|Add0~11\ & VCC))
-- \CHIA_10ENA|Add0~13\ = CARRY((\CHIA_10ENA|D1HZ_REG\(6) & !\CHIA_10ENA|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(6),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~11\,
	combout => \CHIA_10ENA|Add0~12_combout\,
	cout => \CHIA_10ENA|Add0~13\);

-- Location: FF_X3_Y36_N19
\CHIA_10ENA|D1HZ_REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(6));

-- Location: LCCOMB_X3_Y36_N24
\CHIA_10ENA|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~18_combout\ = (\CHIA_10ENA|D1HZ_REG\(9) & (!\CHIA_10ENA|Add0~17\)) # (!\CHIA_10ENA|D1HZ_REG\(9) & ((\CHIA_10ENA|Add0~17\) # (GND)))
-- \CHIA_10ENA|Add0~19\ = CARRY((!\CHIA_10ENA|Add0~17\) # (!\CHIA_10ENA|D1HZ_REG\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(9),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~17\,
	combout => \CHIA_10ENA|Add0~18_combout\,
	cout => \CHIA_10ENA|Add0~19\);

-- Location: FF_X3_Y36_N25
\CHIA_10ENA|D1HZ_REG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(9));

-- Location: LCCOMB_X3_Y36_N28
\CHIA_10ENA|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~22_combout\ = (\CHIA_10ENA|D1HZ_REG\(11) & (!\CHIA_10ENA|Add0~21\)) # (!\CHIA_10ENA|D1HZ_REG\(11) & ((\CHIA_10ENA|Add0~21\) # (GND)))
-- \CHIA_10ENA|Add0~23\ = CARRY((!\CHIA_10ENA|Add0~21\) # (!\CHIA_10ENA|D1HZ_REG\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(11),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~21\,
	combout => \CHIA_10ENA|Add0~22_combout\,
	cout => \CHIA_10ENA|Add0~23\);

-- Location: FF_X3_Y36_N29
\CHIA_10ENA|D1HZ_REG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(11));

-- Location: LCCOMB_X4_Y36_N2
\CHIA_10ENA|D1HZ_NEXT[19]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_NEXT[19]~3_combout\ = (\CHIA_10ENA|Add0~38_combout\ & !\CHIA_10ENA|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|Add0~38_combout\,
	datad => \CHIA_10ENA|Equal0~8_combout\,
	combout => \CHIA_10ENA|D1HZ_NEXT[19]~3_combout\);

-- Location: FF_X4_Y36_N3
\CHIA_10ENA|D1HZ_REG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|D1HZ_NEXT[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(19));

-- Location: LCCOMB_X3_Y36_N30
\CHIA_10ENA|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~24_combout\ = (\CHIA_10ENA|D1HZ_REG\(12) & (\CHIA_10ENA|Add0~23\ $ (GND))) # (!\CHIA_10ENA|D1HZ_REG\(12) & (!\CHIA_10ENA|Add0~23\ & VCC))
-- \CHIA_10ENA|Add0~25\ = CARRY((\CHIA_10ENA|D1HZ_REG\(12) & !\CHIA_10ENA|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(12),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~23\,
	combout => \CHIA_10ENA|Add0~24_combout\,
	cout => \CHIA_10ENA|Add0~25\);

-- Location: LCCOMB_X4_Y36_N10
\CHIA_10ENA|D1HZ_NEXT[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_NEXT[12]~0_combout\ = (\CHIA_10ENA|Add0~24_combout\ & !\CHIA_10ENA|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIA_10ENA|Add0~24_combout\,
	datad => \CHIA_10ENA|Equal0~8_combout\,
	combout => \CHIA_10ENA|D1HZ_NEXT[12]~0_combout\);

-- Location: FF_X4_Y36_N11
\CHIA_10ENA|D1HZ_REG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|D1HZ_NEXT[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(12));

-- Location: LCCOMB_X3_Y35_N0
\CHIA_10ENA|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~26_combout\ = (\CHIA_10ENA|D1HZ_REG\(13) & (!\CHIA_10ENA|Add0~25\)) # (!\CHIA_10ENA|D1HZ_REG\(13) & ((\CHIA_10ENA|Add0~25\) # (GND)))
-- \CHIA_10ENA|Add0~27\ = CARRY((!\CHIA_10ENA|Add0~25\) # (!\CHIA_10ENA|D1HZ_REG\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(13),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~25\,
	combout => \CHIA_10ENA|Add0~26_combout\,
	cout => \CHIA_10ENA|Add0~27\);

-- Location: LCCOMB_X4_Y36_N20
\CHIA_10ENA|D1HZ_NEXT[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_NEXT[13]~1_combout\ = (\CHIA_10ENA|Add0~26_combout\ & !\CHIA_10ENA|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIA_10ENA|Add0~26_combout\,
	datad => \CHIA_10ENA|Equal0~8_combout\,
	combout => \CHIA_10ENA|D1HZ_NEXT[13]~1_combout\);

-- Location: FF_X4_Y36_N21
\CHIA_10ENA|D1HZ_REG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|D1HZ_NEXT[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(13));

-- Location: LCCOMB_X3_Y35_N2
\CHIA_10ENA|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~28_combout\ = (\CHIA_10ENA|D1HZ_REG\(14) & (\CHIA_10ENA|Add0~27\ $ (GND))) # (!\CHIA_10ENA|D1HZ_REG\(14) & (!\CHIA_10ENA|Add0~27\ & VCC))
-- \CHIA_10ENA|Add0~29\ = CARRY((\CHIA_10ENA|D1HZ_REG\(14) & !\CHIA_10ENA|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(14),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~27\,
	combout => \CHIA_10ENA|Add0~28_combout\,
	cout => \CHIA_10ENA|Add0~29\);

-- Location: LCCOMB_X4_Y36_N4
\CHIA_10ENA|D1HZ_NEXT[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_NEXT[14]~2_combout\ = (\CHIA_10ENA|Add0~28_combout\ & !\CHIA_10ENA|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|Add0~28_combout\,
	datad => \CHIA_10ENA|Equal0~8_combout\,
	combout => \CHIA_10ENA|D1HZ_NEXT[14]~2_combout\);

-- Location: FF_X4_Y36_N5
\CHIA_10ENA|D1HZ_REG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|D1HZ_NEXT[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(14));

-- Location: LCCOMB_X3_Y35_N4
\CHIA_10ENA|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~30_combout\ = (\CHIA_10ENA|D1HZ_REG\(15) & (!\CHIA_10ENA|Add0~29\)) # (!\CHIA_10ENA|D1HZ_REG\(15) & ((\CHIA_10ENA|Add0~29\) # (GND)))
-- \CHIA_10ENA|Add0~31\ = CARRY((!\CHIA_10ENA|Add0~29\) # (!\CHIA_10ENA|D1HZ_REG\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(15),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~29\,
	combout => \CHIA_10ENA|Add0~30_combout\,
	cout => \CHIA_10ENA|Add0~31\);

-- Location: LCCOMB_X4_Y36_N26
\CHIA_10ENA|D1HZ_NEXT[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_NEXT[15]~8_combout\ = (\CHIA_10ENA|Add0~30_combout\ & !\CHIA_10ENA|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|Add0~30_combout\,
	datad => \CHIA_10ENA|Equal0~8_combout\,
	combout => \CHIA_10ENA|D1HZ_NEXT[15]~8_combout\);

-- Location: FF_X4_Y36_N27
\CHIA_10ENA|D1HZ_REG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|D1HZ_NEXT[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(15));

-- Location: LCCOMB_X3_Y35_N6
\CHIA_10ENA|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~32_combout\ = (\CHIA_10ENA|D1HZ_REG\(16) & (\CHIA_10ENA|Add0~31\ $ (GND))) # (!\CHIA_10ENA|D1HZ_REG\(16) & (!\CHIA_10ENA|Add0~31\ & VCC))
-- \CHIA_10ENA|Add0~33\ = CARRY((\CHIA_10ENA|D1HZ_REG\(16) & !\CHIA_10ENA|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(16),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~31\,
	combout => \CHIA_10ENA|Add0~32_combout\,
	cout => \CHIA_10ENA|Add0~33\);

-- Location: FF_X5_Y36_N31
\CHIA_10ENA|D1HZ_REG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	asdata => \CHIA_10ENA|Add0~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(16));

-- Location: LCCOMB_X3_Y35_N14
\CHIA_10ENA|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~40_combout\ = (\CHIA_10ENA|D1HZ_REG\(20) & (\CHIA_10ENA|Add0~39\ $ (GND))) # (!\CHIA_10ENA|D1HZ_REG\(20) & (!\CHIA_10ENA|Add0~39\ & VCC))
-- \CHIA_10ENA|Add0~41\ = CARRY((\CHIA_10ENA|D1HZ_REG\(20) & !\CHIA_10ENA|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(20),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~39\,
	combout => \CHIA_10ENA|Add0~40_combout\,
	cout => \CHIA_10ENA|Add0~41\);

-- Location: LCCOMB_X3_Y35_N30
\CHIA_10ENA|D1HZ_NEXT[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_NEXT[20]~4_combout\ = (\CHIA_10ENA|Add0~40_combout\ & !\CHIA_10ENA|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIA_10ENA|Add0~40_combout\,
	datad => \CHIA_10ENA|Equal0~8_combout\,
	combout => \CHIA_10ENA|D1HZ_NEXT[20]~4_combout\);

-- Location: FF_X4_Y36_N15
\CHIA_10ENA|D1HZ_REG[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	asdata => \CHIA_10ENA|D1HZ_NEXT[20]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(20));

-- Location: LCCOMB_X3_Y35_N16
\CHIA_10ENA|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~42_combout\ = (\CHIA_10ENA|D1HZ_REG\(21) & (!\CHIA_10ENA|Add0~41\)) # (!\CHIA_10ENA|D1HZ_REG\(21) & ((\CHIA_10ENA|Add0~41\) # (GND)))
-- \CHIA_10ENA|Add0~43\ = CARRY((!\CHIA_10ENA|Add0~41\) # (!\CHIA_10ENA|D1HZ_REG\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(21),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~41\,
	combout => \CHIA_10ENA|Add0~42_combout\,
	cout => \CHIA_10ENA|Add0~43\);

-- Location: LCCOMB_X4_Y36_N16
\CHIA_10ENA|D1HZ_NEXT[21]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_NEXT[21]~5_combout\ = (!\CHIA_10ENA|Equal0~8_combout\ & \CHIA_10ENA|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|Equal0~8_combout\,
	datac => \CHIA_10ENA|Add0~42_combout\,
	combout => \CHIA_10ENA|D1HZ_NEXT[21]~5_combout\);

-- Location: FF_X4_Y36_N17
\CHIA_10ENA|D1HZ_REG[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|D1HZ_NEXT[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(21));

-- Location: LCCOMB_X4_Y36_N14
\CHIA_10ENA|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal0~3_combout\ = (\CHIA_10ENA|D1HZ_REG\(22) & (\CHIA_10ENA|D1HZ_REG\(19) & (\CHIA_10ENA|D1HZ_REG\(20) & \CHIA_10ENA|D1HZ_REG\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(22),
	datab => \CHIA_10ENA|D1HZ_REG\(19),
	datac => \CHIA_10ENA|D1HZ_REG\(20),
	datad => \CHIA_10ENA|D1HZ_REG\(21),
	combout => \CHIA_10ENA|Equal0~3_combout\);

-- Location: LCCOMB_X3_Y36_N4
\CHIA_10ENA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal0~1_combout\ = (!\CHIA_10ENA|D1HZ_REG\(8) & (!\CHIA_10ENA|D1HZ_REG\(5) & (!\CHIA_10ENA|D1HZ_REG\(4) & !\CHIA_10ENA|D1HZ_REG\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(8),
	datab => \CHIA_10ENA|D1HZ_REG\(5),
	datac => \CHIA_10ENA|D1HZ_REG\(4),
	datad => \CHIA_10ENA|D1HZ_REG\(9),
	combout => \CHIA_10ENA|Equal0~1_combout\);

-- Location: FF_X3_Y36_N11
\CHIA_10ENA|D1HZ_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(2));

-- Location: LCCOMB_X3_Y36_N0
\CHIA_10ENA|D1HZ_REG[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_REG[0]~feeder_combout\ = \CHIA_10ENA|D1HZ_REG[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG[0]~0_combout\,
	combout => \CHIA_10ENA|D1HZ_REG[0]~feeder_combout\);

-- Location: FF_X3_Y36_N1
\CHIA_10ENA|D1HZ_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \CHIA_10ENA|D1HZ_REG[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(0));

-- Location: LCCOMB_X3_Y36_N2
\CHIA_10ENA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal0~0_combout\ = (!\CHIA_10ENA|D1HZ_REG\(3) & (!\CHIA_10ENA|D1HZ_REG\(2) & (!\CHIA_10ENA|D1HZ_REG\(1) & \CHIA_10ENA|D1HZ_REG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(3),
	datab => \CHIA_10ENA|D1HZ_REG\(2),
	datac => \CHIA_10ENA|D1HZ_REG\(1),
	datad => \CHIA_10ENA|D1HZ_REG\(0),
	combout => \CHIA_10ENA|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y36_N0
\CHIA_10ENA|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal0~4_combout\ = (\CHIA_10ENA|Equal0~2_combout\ & (\CHIA_10ENA|Equal0~3_combout\ & (\CHIA_10ENA|Equal0~1_combout\ & \CHIA_10ENA|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|Equal0~2_combout\,
	datab => \CHIA_10ENA|Equal0~3_combout\,
	datac => \CHIA_10ENA|Equal0~1_combout\,
	datad => \CHIA_10ENA|Equal0~0_combout\,
	combout => \CHIA_10ENA|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y36_N0
\CHIA_10ENA|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal0~5_combout\ = (\CHIA_10ENA|D1HZ_REG\(7) & (!\CHIA_10ENA|D1HZ_REG\(6) & (\CHIA_10ENA|D1HZ_REG\(15) & !\CHIA_10ENA|D1HZ_REG\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(7),
	datab => \CHIA_10ENA|D1HZ_REG\(6),
	datac => \CHIA_10ENA|D1HZ_REG\(15),
	datad => \CHIA_10ENA|D1HZ_REG\(11),
	combout => \CHIA_10ENA|Equal0~5_combout\);

-- Location: LCCOMB_X4_Y36_N22
\CHIA_10ENA|D1HZ_NEXT[22]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_NEXT[22]~6_combout\ = (\CHIA_10ENA|Add0~44_combout\ & !\CHIA_10ENA|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|Add0~44_combout\,
	datad => \CHIA_10ENA|Equal0~8_combout\,
	combout => \CHIA_10ENA|D1HZ_NEXT[22]~6_combout\);

-- Location: FF_X4_Y36_N23
\CHIA_10ENA|D1HZ_REG[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|D1HZ_NEXT[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(22));

-- Location: LCCOMB_X3_Y35_N22
\CHIA_10ENA|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~48_combout\ = (\CHIA_10ENA|D1HZ_REG\(24) & (\CHIA_10ENA|Add0~47\ $ (GND))) # (!\CHIA_10ENA|D1HZ_REG\(24) & (!\CHIA_10ENA|Add0~47\ & VCC))
-- \CHIA_10ENA|Add0~49\ = CARRY((\CHIA_10ENA|D1HZ_REG\(24) & !\CHIA_10ENA|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|D1HZ_REG\(24),
	datad => VCC,
	cin => \CHIA_10ENA|Add0~47\,
	combout => \CHIA_10ENA|Add0~48_combout\,
	cout => \CHIA_10ENA|Add0~49\);

-- Location: FF_X3_Y35_N23
\CHIA_10ENA|D1HZ_REG[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(24));

-- Location: LCCOMB_X3_Y35_N24
\CHIA_10ENA|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Add0~50_combout\ = \CHIA_10ENA|Add0~49\ $ (\CHIA_10ENA|D1HZ_REG\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CHIA_10ENA|D1HZ_REG\(25),
	cin => \CHIA_10ENA|Add0~49\,
	combout => \CHIA_10ENA|Add0~50_combout\);

-- Location: LCCOMB_X3_Y35_N28
\CHIA_10ENA|D1HZ_NEXT[25]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_NEXT[25]~11_combout\ = (!\CHIA_10ENA|Equal0~8_combout\ & \CHIA_10ENA|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHIA_10ENA|Equal0~8_combout\,
	datad => \CHIA_10ENA|Add0~50_combout\,
	combout => \CHIA_10ENA|D1HZ_NEXT[25]~11_combout\);

-- Location: FF_X3_Y35_N29
\CHIA_10ENA|D1HZ_REG[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|D1HZ_NEXT[25]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(25));

-- Location: LCCOMB_X4_Y35_N0
\CHIA_10ENA|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal0~7_combout\ = (!\CHIA_10ENA|D1HZ_REG\(24) & \CHIA_10ENA|D1HZ_REG\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIA_10ENA|D1HZ_REG\(24),
	datad => \CHIA_10ENA|D1HZ_REG\(25),
	combout => \CHIA_10ENA|Equal0~7_combout\);

-- Location: LCCOMB_X4_Y36_N18
\CHIA_10ENA|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal0~8_combout\ = (\CHIA_10ENA|Equal0~6_combout\ & (\CHIA_10ENA|Equal0~4_combout\ & (\CHIA_10ENA|Equal0~5_combout\ & \CHIA_10ENA|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|Equal0~6_combout\,
	datab => \CHIA_10ENA|Equal0~4_combout\,
	datac => \CHIA_10ENA|Equal0~5_combout\,
	datad => \CHIA_10ENA|Equal0~7_combout\,
	combout => \CHIA_10ENA|Equal0~8_combout\);

-- Location: LCCOMB_X5_Y36_N12
\CHIA_10ENA|D1HZ_NEXT[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|D1HZ_NEXT[7]~7_combout\ = (\CHIA_10ENA|Add0~14_combout\ & !\CHIA_10ENA|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|Add0~14_combout\,
	datad => \CHIA_10ENA|Equal0~8_combout\,
	combout => \CHIA_10ENA|D1HZ_NEXT[7]~7_combout\);

-- Location: FF_X5_Y36_N13
\CHIA_10ENA|D1HZ_REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~input_o\,
	d => \CHIA_10ENA|D1HZ_NEXT[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIA_10ENA|D1HZ_REG\(7));

-- Location: LCCOMB_X4_Y36_N8
\CHIA_10ENA|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal10~0_combout\ = (!\CHIA_10ENA|D1HZ_REG\(15) & (\CHIA_10ENA|D1HZ_REG\(11) & (!\CHIA_10ENA|D1HZ_REG\(7) & \CHIA_10ENA|D1HZ_REG\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|D1HZ_REG\(15),
	datab => \CHIA_10ENA|D1HZ_REG\(11),
	datac => \CHIA_10ENA|D1HZ_REG\(7),
	datad => \CHIA_10ENA|D1HZ_REG\(6),
	combout => \CHIA_10ENA|Equal10~0_combout\);

-- Location: LCCOMB_X3_Y35_N26
\CHIA_10ENA|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal10~2_combout\ = (\CHIA_10ENA|D1HZ_REG\(24) & !\CHIA_10ENA|D1HZ_REG\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIA_10ENA|D1HZ_REG\(24),
	datad => \CHIA_10ENA|D1HZ_REG\(25),
	combout => \CHIA_10ENA|Equal10~2_combout\);

-- Location: LCCOMB_X4_Y36_N28
\CHIA_10ENA|Equal10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CHIA_10ENA|Equal10~combout\ = LCELL((\CHIA_10ENA|Equal10~1_combout\ & (\CHIA_10ENA|Equal10~0_combout\ & (\CHIA_10ENA|Equal10~2_combout\ & \CHIA_10ENA|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIA_10ENA|Equal10~1_combout\,
	datab => \CHIA_10ENA|Equal10~0_combout\,
	datac => \CHIA_10ENA|Equal10~2_combout\,
	datad => \CHIA_10ENA|Equal0~4_combout\,
	combout => \CHIA_10ENA|Equal10~combout\);

-- Location: LCCOMB_X30_Y36_N24
\DEM_GIOPHUTGIAY|GIAY_REG[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ = (\CHIA_10ENA|Equal10~combout\) # ((\XULY_MOD|GIATRI_MOD_REG\(0) & (!\XULY_MOD|GIATRI_MOD_REG\(1) & \DEM_GIOPHUTGIAY|process_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XULY_MOD|GIATRI_MOD_REG\(0),
	datab => \XULY_MOD|GIATRI_MOD_REG\(1),
	datac => \DEM_GIOPHUTGIAY|process_3~0_combout\,
	datad => \CHIA_10ENA|Equal10~combout\,
	combout => \DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\);

-- Location: LCCOMB_X30_Y36_N20
\DEM_GIOPHUTGIAY|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add0~13_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ & (\DEM_GIOPHUTGIAY|Add0~3_combout\)) # (!\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ & ((\DEM_GIOPHUTGIAY|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|Add0~3_combout\,
	datac => \DEM_GIOPHUTGIAY|Add1~2_combout\,
	datad => \DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\,
	combout => \DEM_GIOPHUTGIAY|Add0~13_combout\);

-- Location: IOIBUF_X115_Y42_N15
\BTN_N[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_N(2),
	o => \BTN_N[2]~input_o\);

-- Location: LCCOMB_X32_Y38_N14
\DEBOUNCE_BTN_DW|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector3~2_combout\ = (\BTN_N[2]~input_o\ & (((\DEBOUNCE_BTN_DW|DB_REG.WAI1~q\ & \DEBOUNCE_BTN_DW|Selector3~1_combout\)))) # (!\BTN_N[2]~input_o\ & (((\DEBOUNCE_BTN_DW|DB_REG.WAI1~q\ & \DEBOUNCE_BTN_DW|Selector3~1_combout\)) # 
-- (!\DEBOUNCE_BTN_DW|DB_REG.ZERO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[2]~input_o\,
	datab => \DEBOUNCE_BTN_DW|DB_REG.ZERO~q\,
	datac => \DEBOUNCE_BTN_DW|DB_REG.WAI1~q\,
	datad => \DEBOUNCE_BTN_DW|Selector3~1_combout\,
	combout => \DEBOUNCE_BTN_DW|Selector3~2_combout\);

-- Location: FF_X32_Y38_N15
\DEBOUNCE_BTN_DW|DB_REG.WAI1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DB_REG.WAI1~q\);

-- Location: LCCOMB_X31_Y38_N14
\DEBOUNCE_BTN_DW|DELAY_REG[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[1]~22_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(1) & (\DEBOUNCE_BTN_DW|DELAY_REG[0]~21\ & VCC)) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(1) & (!\DEBOUNCE_BTN_DW|DELAY_REG[0]~21\))
-- \DEBOUNCE_BTN_DW|DELAY_REG[1]~23\ = CARRY((!\DEBOUNCE_BTN_DW|DELAY_REG\(1) & !\DEBOUNCE_BTN_DW|DELAY_REG[0]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(1),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[0]~21\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[1]~22_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[1]~23\);

-- Location: LCCOMB_X31_Y38_N0
\DEBOUNCE_BTN_DW|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector3~3_combout\ = (!\DEBOUNCE_BTN_DW|DB_REG.WAI1~q\ & !\DEBOUNCE_BTN_DW|DB_REG.WAI0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_BTN_DW|DB_REG.WAI1~q\,
	datad => \DEBOUNCE_BTN_DW|DB_REG.WAI0~q\,
	combout => \DEBOUNCE_BTN_DW|Selector3~3_combout\);

-- Location: LCCOMB_X32_Y38_N28
\DEBOUNCE_BTN_DW|DELAY_REG[19]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[19]~54_combout\ = (\BTN_N[2]~input_o\ & (((\DEBOUNCE_BTN_DW|DB_REG.WAI1~q\ & !\DEBOUNCE_BTN_DW|DB_REG.WAI0~q\)))) # (!\BTN_N[2]~input_o\ & ((\DEBOUNCE_BTN_DW|DB_REG.ONE~q\) # ((\DEBOUNCE_BTN_DW|DB_REG.WAI0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DB_REG.ONE~q\,
	datab => \DEBOUNCE_BTN_DW|DB_REG.WAI1~q\,
	datac => \BTN_N[2]~input_o\,
	datad => \DEBOUNCE_BTN_DW|DB_REG.WAI0~q\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[19]~54_combout\);

-- Location: LCCOMB_X32_Y38_N30
\DEBOUNCE_BTN_DW|DELAY_REG[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\ = (!\DEBOUNCE_BTN_DW|DELAY_REG[19]~54_combout\ & ((\DEBOUNCE_BTN_DW|DB_REG.ZERO~q\) # (\DEBOUNCE_BTN_DW|DB_REG.ONE~q\ $ (!\BTN_N[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DB_REG.ONE~q\,
	datab => \DEBOUNCE_BTN_DW|DELAY_REG[19]~54_combout\,
	datac => \BTN_N[2]~input_o\,
	datad => \DEBOUNCE_BTN_DW|DB_REG.ZERO~q\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\);

-- Location: FF_X31_Y38_N15
\DEBOUNCE_BTN_DW|DELAY_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[1]~22_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(1));

-- Location: LCCOMB_X31_Y38_N16
\DEBOUNCE_BTN_DW|DELAY_REG[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[2]~24_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(2) & ((GND) # (!\DEBOUNCE_BTN_DW|DELAY_REG[1]~23\))) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(2) & (\DEBOUNCE_BTN_DW|DELAY_REG[1]~23\ $ (GND)))
-- \DEBOUNCE_BTN_DW|DELAY_REG[2]~25\ = CARRY((\DEBOUNCE_BTN_DW|DELAY_REG\(2)) # (!\DEBOUNCE_BTN_DW|DELAY_REG[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(2),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[1]~23\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[2]~24_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[2]~25\);

-- Location: FF_X31_Y38_N17
\DEBOUNCE_BTN_DW|DELAY_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[2]~24_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(2));

-- Location: LCCOMB_X31_Y38_N18
\DEBOUNCE_BTN_DW|DELAY_REG[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[3]~26_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(3) & (\DEBOUNCE_BTN_DW|DELAY_REG[2]~25\ & VCC)) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(3) & (!\DEBOUNCE_BTN_DW|DELAY_REG[2]~25\))
-- \DEBOUNCE_BTN_DW|DELAY_REG[3]~27\ = CARRY((!\DEBOUNCE_BTN_DW|DELAY_REG\(3) & !\DEBOUNCE_BTN_DW|DELAY_REG[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(3),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[2]~25\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[3]~26_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[3]~27\);

-- Location: FF_X31_Y38_N19
\DEBOUNCE_BTN_DW|DELAY_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[3]~26_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(3));

-- Location: LCCOMB_X31_Y38_N20
\DEBOUNCE_BTN_DW|DELAY_REG[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[4]~28_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(4) & ((GND) # (!\DEBOUNCE_BTN_DW|DELAY_REG[3]~27\))) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(4) & (\DEBOUNCE_BTN_DW|DELAY_REG[3]~27\ $ (GND)))
-- \DEBOUNCE_BTN_DW|DELAY_REG[4]~29\ = CARRY((\DEBOUNCE_BTN_DW|DELAY_REG\(4)) # (!\DEBOUNCE_BTN_DW|DELAY_REG[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(4),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[3]~27\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[4]~28_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[4]~29\);

-- Location: FF_X31_Y38_N21
\DEBOUNCE_BTN_DW|DELAY_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[4]~28_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(4));

-- Location: LCCOMB_X31_Y38_N24
\DEBOUNCE_BTN_DW|DELAY_REG[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[6]~32_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(6) & ((GND) # (!\DEBOUNCE_BTN_DW|DELAY_REG[5]~31\))) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(6) & (\DEBOUNCE_BTN_DW|DELAY_REG[5]~31\ $ (GND)))
-- \DEBOUNCE_BTN_DW|DELAY_REG[6]~33\ = CARRY((\DEBOUNCE_BTN_DW|DELAY_REG\(6)) # (!\DEBOUNCE_BTN_DW|DELAY_REG[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(6),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[5]~31\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[6]~32_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[6]~33\);

-- Location: FF_X31_Y38_N25
\DEBOUNCE_BTN_DW|DELAY_REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[6]~32_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(6));

-- Location: LCCOMB_X31_Y38_N28
\DEBOUNCE_BTN_DW|DELAY_REG[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[8]~36_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(8) & ((GND) # (!\DEBOUNCE_BTN_DW|DELAY_REG[7]~35\))) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(8) & (\DEBOUNCE_BTN_DW|DELAY_REG[7]~35\ $ (GND)))
-- \DEBOUNCE_BTN_DW|DELAY_REG[8]~37\ = CARRY((\DEBOUNCE_BTN_DW|DELAY_REG\(8)) # (!\DEBOUNCE_BTN_DW|DELAY_REG[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(8),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[7]~35\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[8]~36_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[8]~37\);

-- Location: FF_X31_Y38_N29
\DEBOUNCE_BTN_DW|DELAY_REG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[8]~36_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(8));

-- Location: LCCOMB_X31_Y37_N0
\DEBOUNCE_BTN_DW|DELAY_REG[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[10]~40_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(10) & ((GND) # (!\DEBOUNCE_BTN_DW|DELAY_REG[9]~39\))) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(10) & (\DEBOUNCE_BTN_DW|DELAY_REG[9]~39\ $ (GND)))
-- \DEBOUNCE_BTN_DW|DELAY_REG[10]~41\ = CARRY((\DEBOUNCE_BTN_DW|DELAY_REG\(10)) # (!\DEBOUNCE_BTN_DW|DELAY_REG[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(10),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[9]~39\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[10]~40_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[10]~41\);

-- Location: FF_X31_Y37_N1
\DEBOUNCE_BTN_DW|DELAY_REG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[10]~40_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(10));

-- Location: LCCOMB_X31_Y37_N2
\DEBOUNCE_BTN_DW|DELAY_REG[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[11]~42_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(11) & (\DEBOUNCE_BTN_DW|DELAY_REG[10]~41\ & VCC)) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(11) & (!\DEBOUNCE_BTN_DW|DELAY_REG[10]~41\))
-- \DEBOUNCE_BTN_DW|DELAY_REG[11]~43\ = CARRY((!\DEBOUNCE_BTN_DW|DELAY_REG\(11) & !\DEBOUNCE_BTN_DW|DELAY_REG[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(11),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[10]~41\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[11]~42_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[11]~43\);

-- Location: FF_X31_Y37_N3
\DEBOUNCE_BTN_DW|DELAY_REG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[11]~42_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(11));

-- Location: LCCOMB_X31_Y37_N4
\DEBOUNCE_BTN_DW|DELAY_REG[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[12]~44_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(12) & ((GND) # (!\DEBOUNCE_BTN_DW|DELAY_REG[11]~43\))) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(12) & (\DEBOUNCE_BTN_DW|DELAY_REG[11]~43\ $ (GND)))
-- \DEBOUNCE_BTN_DW|DELAY_REG[12]~45\ = CARRY((\DEBOUNCE_BTN_DW|DELAY_REG\(12)) # (!\DEBOUNCE_BTN_DW|DELAY_REG[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(12),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[11]~43\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[12]~44_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[12]~45\);

-- Location: FF_X31_Y37_N5
\DEBOUNCE_BTN_DW|DELAY_REG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[12]~44_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(12));

-- Location: LCCOMB_X31_Y37_N6
\DEBOUNCE_BTN_DW|DELAY_REG[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[13]~46_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(13) & (\DEBOUNCE_BTN_DW|DELAY_REG[12]~45\ & VCC)) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(13) & (!\DEBOUNCE_BTN_DW|DELAY_REG[12]~45\))
-- \DEBOUNCE_BTN_DW|DELAY_REG[13]~47\ = CARRY((!\DEBOUNCE_BTN_DW|DELAY_REG\(13) & !\DEBOUNCE_BTN_DW|DELAY_REG[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DELAY_REG\(13),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[12]~45\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[13]~46_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[13]~47\);

-- Location: LCCOMB_X31_Y37_N8
\DEBOUNCE_BTN_DW|DELAY_REG[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[14]~48_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(14) & ((GND) # (!\DEBOUNCE_BTN_DW|DELAY_REG[13]~47\))) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(14) & (\DEBOUNCE_BTN_DW|DELAY_REG[13]~47\ $ (GND)))
-- \DEBOUNCE_BTN_DW|DELAY_REG[14]~49\ = CARRY((\DEBOUNCE_BTN_DW|DELAY_REG\(14)) # (!\DEBOUNCE_BTN_DW|DELAY_REG[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(14),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[13]~47\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[14]~48_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[14]~49\);

-- Location: FF_X31_Y37_N9
\DEBOUNCE_BTN_DW|DELAY_REG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[14]~48_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(14));

-- Location: LCCOMB_X31_Y37_N14
\DEBOUNCE_BTN_DW|DELAY_REG[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[17]~56_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(17) & (\DEBOUNCE_BTN_DW|DELAY_REG[16]~53\ & VCC)) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(17) & (!\DEBOUNCE_BTN_DW|DELAY_REG[16]~53\))
-- \DEBOUNCE_BTN_DW|DELAY_REG[17]~57\ = CARRY((!\DEBOUNCE_BTN_DW|DELAY_REG\(17) & !\DEBOUNCE_BTN_DW|DELAY_REG[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(17),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[16]~53\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[17]~56_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[17]~57\);

-- Location: FF_X31_Y37_N15
\DEBOUNCE_BTN_DW|DELAY_REG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[17]~56_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(17));

-- Location: LCCOMB_X31_Y37_N16
\DEBOUNCE_BTN_DW|DELAY_REG[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[18]~58_combout\ = (\DEBOUNCE_BTN_DW|DELAY_REG\(18) & ((GND) # (!\DEBOUNCE_BTN_DW|DELAY_REG[17]~57\))) # (!\DEBOUNCE_BTN_DW|DELAY_REG\(18) & (\DEBOUNCE_BTN_DW|DELAY_REG[17]~57\ $ (GND)))
-- \DEBOUNCE_BTN_DW|DELAY_REG[18]~59\ = CARRY((\DEBOUNCE_BTN_DW|DELAY_REG\(18)) # (!\DEBOUNCE_BTN_DW|DELAY_REG[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(18),
	datad => VCC,
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[17]~57\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[18]~58_combout\,
	cout => \DEBOUNCE_BTN_DW|DELAY_REG[18]~59\);

-- Location: FF_X31_Y37_N17
\DEBOUNCE_BTN_DW|DELAY_REG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[18]~58_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(18));

-- Location: LCCOMB_X31_Y37_N18
\DEBOUNCE_BTN_DW|DELAY_REG[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DELAY_REG[19]~60_combout\ = \DEBOUNCE_BTN_DW|DELAY_REG[18]~59\ $ (!\DEBOUNCE_BTN_DW|DELAY_REG\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DEBOUNCE_BTN_DW|DELAY_REG\(19),
	cin => \DEBOUNCE_BTN_DW|DELAY_REG[18]~59\,
	combout => \DEBOUNCE_BTN_DW|DELAY_REG[19]~60_combout\);

-- Location: FF_X31_Y37_N19
\DEBOUNCE_BTN_DW|DELAY_REG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[19]~60_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(19));

-- Location: LCCOMB_X31_Y37_N20
\DEBOUNCE_BTN_DW|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Equal0~0_combout\ = (!\DEBOUNCE_BTN_DW|DELAY_REG\(16) & (!\DEBOUNCE_BTN_DW|DELAY_REG\(18) & (!\DEBOUNCE_BTN_DW|DELAY_REG\(17) & !\DEBOUNCE_BTN_DW|DELAY_REG\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DELAY_REG\(16),
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(18),
	datac => \DEBOUNCE_BTN_DW|DELAY_REG\(17),
	datad => \DEBOUNCE_BTN_DW|DELAY_REG\(19),
	combout => \DEBOUNCE_BTN_DW|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y38_N4
\DEBOUNCE_BTN_DW|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Equal0~1_combout\ = (!\DEBOUNCE_BTN_DW|DELAY_REG\(0) & (!\DEBOUNCE_BTN_DW|DELAY_REG\(3) & (!\DEBOUNCE_BTN_DW|DELAY_REG\(1) & !\DEBOUNCE_BTN_DW|DELAY_REG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DELAY_REG\(0),
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(3),
	datac => \DEBOUNCE_BTN_DW|DELAY_REG\(1),
	datad => \DEBOUNCE_BTN_DW|DELAY_REG\(2),
	combout => \DEBOUNCE_BTN_DW|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y38_N8
\DEBOUNCE_BTN_DW|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Equal0~3_combout\ = (!\DEBOUNCE_BTN_DW|DELAY_REG\(9) & (!\DEBOUNCE_BTN_DW|DELAY_REG\(8) & (!\DEBOUNCE_BTN_DW|DELAY_REG\(10) & !\DEBOUNCE_BTN_DW|DELAY_REG\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DELAY_REG\(9),
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(8),
	datac => \DEBOUNCE_BTN_DW|DELAY_REG\(10),
	datad => \DEBOUNCE_BTN_DW|DELAY_REG\(11),
	combout => \DEBOUNCE_BTN_DW|Equal0~3_combout\);

-- Location: FF_X31_Y37_N7
\DEBOUNCE_BTN_DW|DELAY_REG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DELAY_REG[13]~46_combout\,
	asdata => VCC,
	sload => \DEBOUNCE_BTN_DW|Selector3~3_combout\,
	ena => \DEBOUNCE_BTN_DW|DELAY_REG[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DELAY_REG\(13));

-- Location: LCCOMB_X31_Y37_N30
\DEBOUNCE_BTN_DW|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Equal0~4_combout\ = (!\DEBOUNCE_BTN_DW|DELAY_REG\(15) & (!\DEBOUNCE_BTN_DW|DELAY_REG\(14) & (!\DEBOUNCE_BTN_DW|DELAY_REG\(12) & !\DEBOUNCE_BTN_DW|DELAY_REG\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DELAY_REG\(15),
	datab => \DEBOUNCE_BTN_DW|DELAY_REG\(14),
	datac => \DEBOUNCE_BTN_DW|DELAY_REG\(12),
	datad => \DEBOUNCE_BTN_DW|DELAY_REG\(13),
	combout => \DEBOUNCE_BTN_DW|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y38_N2
\DEBOUNCE_BTN_DW|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Equal0~5_combout\ = (\DEBOUNCE_BTN_DW|Equal0~2_combout\ & (\DEBOUNCE_BTN_DW|Equal0~1_combout\ & (\DEBOUNCE_BTN_DW|Equal0~3_combout\ & \DEBOUNCE_BTN_DW|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|Equal0~2_combout\,
	datab => \DEBOUNCE_BTN_DW|Equal0~1_combout\,
	datac => \DEBOUNCE_BTN_DW|Equal0~3_combout\,
	datad => \DEBOUNCE_BTN_DW|Equal0~4_combout\,
	combout => \DEBOUNCE_BTN_DW|Equal0~5_combout\);

-- Location: LCCOMB_X32_Y38_N26
\DEBOUNCE_BTN_DW|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Equal0~6_combout\ = (\DEBOUNCE_BTN_DW|Equal0~0_combout\ & \DEBOUNCE_BTN_DW|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DEBOUNCE_BTN_DW|Equal0~0_combout\,
	datad => \DEBOUNCE_BTN_DW|Equal0~5_combout\,
	combout => \DEBOUNCE_BTN_DW|Equal0~6_combout\);

-- Location: LCCOMB_X32_Y38_N24
\DEBOUNCE_BTN_DW|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector3~0_combout\ = (\DEBOUNCE_BTN_DW|DB_REG.WAI0~q\ & (((\DEBOUNCE_BTN_DW|Equal0~6_combout\)) # (!\BTN_N[2]~input_o\))) # (!\DEBOUNCE_BTN_DW|DB_REG.WAI0~q\ & (\DEBOUNCE_BTN_DW|DB_REG.WAI1~q\ & ((\BTN_N[2]~input_o\) # 
-- (\DEBOUNCE_BTN_DW|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[2]~input_o\,
	datab => \DEBOUNCE_BTN_DW|DB_REG.WAI1~q\,
	datac => \DEBOUNCE_BTN_DW|Equal0~6_combout\,
	datad => \DEBOUNCE_BTN_DW|DB_REG.WAI0~q\,
	combout => \DEBOUNCE_BTN_DW|Selector3~0_combout\);

-- Location: LCCOMB_X32_Y38_N18
\DEBOUNCE_BTN_DW|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector3~1_combout\ = (!\DEBOUNCE_BTN_DW|Selector3~0_combout\ & ((\BTN_N[2]~input_o\ & (!\DEBOUNCE_BTN_DW|DB_REG.ONE~q\)) # (!\BTN_N[2]~input_o\ & ((\DEBOUNCE_BTN_DW|DB_REG.ZERO~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DB_REG.ONE~q\,
	datab => \DEBOUNCE_BTN_DW|DB_REG.ZERO~q\,
	datac => \BTN_N[2]~input_o\,
	datad => \DEBOUNCE_BTN_DW|Selector3~0_combout\,
	combout => \DEBOUNCE_BTN_DW|Selector3~1_combout\);

-- Location: LCCOMB_X32_Y38_N8
\DEBOUNCE_BTN_DW|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector2~2_combout\ = (\BTN_N[2]~input_o\) # ((\DEBOUNCE_BTN_DW|Equal0~0_combout\ & \DEBOUNCE_BTN_DW|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[2]~input_o\,
	datac => \DEBOUNCE_BTN_DW|Equal0~0_combout\,
	datad => \DEBOUNCE_BTN_DW|Equal0~5_combout\,
	combout => \DEBOUNCE_BTN_DW|Selector2~2_combout\);

-- Location: LCCOMB_X32_Y38_N10
\DEBOUNCE_BTN_DW|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector2~0_combout\ = (\DEBOUNCE_BTN_DW|DB_REG.ONE~q\ & (\BTN_N[2]~input_o\)) # (!\DEBOUNCE_BTN_DW|DB_REG.ONE~q\ & (!\BTN_N[2]~input_o\ & !\DEBOUNCE_BTN_DW|DB_REG.ZERO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DB_REG.ONE~q\,
	datab => \BTN_N[2]~input_o\,
	datad => \DEBOUNCE_BTN_DW|DB_REG.ZERO~q\,
	combout => \DEBOUNCE_BTN_DW|Selector2~0_combout\);

-- Location: LCCOMB_X32_Y38_N0
\DEBOUNCE_BTN_DW|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector2~1_combout\ = (\DEBOUNCE_BTN_DW|Selector2~0_combout\) # ((\DEBOUNCE_BTN_DW|DB_REG.WAI1~q\ & ((\BTN_N[2]~input_o\) # (\DEBOUNCE_BTN_DW|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[2]~input_o\,
	datab => \DEBOUNCE_BTN_DW|DB_REG.WAI1~q\,
	datac => \DEBOUNCE_BTN_DW|Equal0~6_combout\,
	datad => \DEBOUNCE_BTN_DW|Selector2~0_combout\,
	combout => \DEBOUNCE_BTN_DW|Selector2~1_combout\);

-- Location: LCCOMB_X32_Y38_N22
\DEBOUNCE_BTN_DW|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector0~0_combout\ = ((\DEBOUNCE_BTN_DW|DB_REG.WAI0~q\ & ((\DEBOUNCE_BTN_DW|Equal0~6_combout\) # (!\BTN_N[2]~input_o\)))) # (!\DEBOUNCE_BTN_DW|Selector2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[2]~input_o\,
	datab => \DEBOUNCE_BTN_DW|DB_REG.WAI0~q\,
	datac => \DEBOUNCE_BTN_DW|Equal0~6_combout\,
	datad => \DEBOUNCE_BTN_DW|Selector2~1_combout\,
	combout => \DEBOUNCE_BTN_DW|Selector0~0_combout\);

-- Location: LCCOMB_X32_Y38_N6
\DEBOUNCE_BTN_DW|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector2~3_combout\ = (\DEBOUNCE_BTN_DW|Selector0~0_combout\ & (((!\DEBOUNCE_BTN_DW|Selector0~1_combout\)))) # (!\DEBOUNCE_BTN_DW|Selector0~0_combout\ & (\DEBOUNCE_BTN_DW|DB_REG.WAI1~q\ & (\DEBOUNCE_BTN_DW|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|DB_REG.WAI1~q\,
	datab => \DEBOUNCE_BTN_DW|Selector2~2_combout\,
	datac => \DEBOUNCE_BTN_DW|Selector0~0_combout\,
	datad => \DEBOUNCE_BTN_DW|Selector0~1_combout\,
	combout => \DEBOUNCE_BTN_DW|Selector2~3_combout\);

-- Location: LCCOMB_X32_Y38_N12
\DEBOUNCE_BTN_DW|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector2~4_combout\ = (\DEBOUNCE_BTN_DW|Selector2~3_combout\ & (((!\BTN_N[2]~input_o\)))) # (!\DEBOUNCE_BTN_DW|Selector2~3_combout\ & (\DEBOUNCE_BTN_DW|Selector0~0_combout\ & ((\DEBOUNCE_BTN_DW|DB_REG.ONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEBOUNCE_BTN_DW|Selector0~0_combout\,
	datab => \BTN_N[2]~input_o\,
	datac => \DEBOUNCE_BTN_DW|DB_REG.ONE~q\,
	datad => \DEBOUNCE_BTN_DW|Selector2~3_combout\,
	combout => \DEBOUNCE_BTN_DW|Selector2~4_combout\);

-- Location: FF_X32_Y38_N13
\DEBOUNCE_BTN_DW|DB_REG.ONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|Selector2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DB_REG.ONE~q\);

-- Location: LCCOMB_X32_Y38_N16
\DEBOUNCE_BTN_DW|DB_REG.WAI0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|DB_REG.WAI0~0_combout\ = (\BTN_N[2]~input_o\ & ((\DEBOUNCE_BTN_DW|DB_REG.ONE~q\) # ((\DEBOUNCE_BTN_DW|Selector3~1_combout\ & \DEBOUNCE_BTN_DW|DB_REG.WAI0~q\)))) # (!\BTN_N[2]~input_o\ & (\DEBOUNCE_BTN_DW|Selector3~1_combout\ & 
-- (\DEBOUNCE_BTN_DW|DB_REG.WAI0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[2]~input_o\,
	datab => \DEBOUNCE_BTN_DW|Selector3~1_combout\,
	datac => \DEBOUNCE_BTN_DW|DB_REG.WAI0~q\,
	datad => \DEBOUNCE_BTN_DW|DB_REG.ONE~q\,
	combout => \DEBOUNCE_BTN_DW|DB_REG.WAI0~0_combout\);

-- Location: FF_X32_Y38_N17
\DEBOUNCE_BTN_DW|DB_REG.WAI0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|DB_REG.WAI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DB_REG.WAI0~q\);

-- Location: LCCOMB_X32_Y38_N20
\DEBOUNCE_BTN_DW|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector0~1_combout\ = (!\DEBOUNCE_BTN_DW|Selector2~1_combout\ & (((\BTN_N[2]~input_o\ & !\DEBOUNCE_BTN_DW|Equal0~6_combout\)) # (!\DEBOUNCE_BTN_DW|DB_REG.WAI0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[2]~input_o\,
	datab => \DEBOUNCE_BTN_DW|DB_REG.WAI0~q\,
	datac => \DEBOUNCE_BTN_DW|Equal0~6_combout\,
	datad => \DEBOUNCE_BTN_DW|Selector2~1_combout\,
	combout => \DEBOUNCE_BTN_DW|Selector0~1_combout\);

-- Location: LCCOMB_X32_Y38_N2
\DEBOUNCE_BTN_DW|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector0~2_combout\ = (\BTN_N[2]~input_o\ & ((\DEBOUNCE_BTN_DW|Selector0~0_combout\ & ((!\DEBOUNCE_BTN_DW|Selector0~1_combout\))) # (!\DEBOUNCE_BTN_DW|Selector0~0_combout\ & (\DEBOUNCE_BTN_DW|DB_REG.WAI1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_N[2]~input_o\,
	datab => \DEBOUNCE_BTN_DW|DB_REG.WAI1~q\,
	datac => \DEBOUNCE_BTN_DW|Selector0~0_combout\,
	datad => \DEBOUNCE_BTN_DW|Selector0~1_combout\,
	combout => \DEBOUNCE_BTN_DW|Selector0~2_combout\);

-- Location: LCCOMB_X32_Y38_N4
\DEBOUNCE_BTN_DW|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEBOUNCE_BTN_DW|Selector0~3_combout\ = (!\DEBOUNCE_BTN_DW|Selector0~2_combout\ & ((\DEBOUNCE_BTN_DW|DB_REG.ZERO~q\) # (!\DEBOUNCE_BTN_DW|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|Selector0~1_combout\,
	datac => \DEBOUNCE_BTN_DW|DB_REG.ZERO~q\,
	datad => \DEBOUNCE_BTN_DW|Selector0~2_combout\,
	combout => \DEBOUNCE_BTN_DW|Selector0~3_combout\);

-- Location: FF_X32_Y38_N5
\DEBOUNCE_BTN_DW|DB_REG.ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEBOUNCE_BTN_DW|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEBOUNCE_BTN_DW|DB_REG.ZERO~q\);

-- Location: LCCOMB_X30_Y36_N16
\DEM_GIOPHUTGIAY|GIO_REG[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIO_REG[4]~0_combout\ = (\DEBOUNCE_BTN_DW|DB_REG.ZERO~q\ & (!\DEBOUNCE_BTN_DW|DB_REG.WAI1~q\ & \CHIA_10ENA|Equal12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEBOUNCE_BTN_DW|DB_REG.ZERO~q\,
	datac => \DEBOUNCE_BTN_DW|DB_REG.WAI1~q\,
	datad => \CHIA_10ENA|Equal12~3_combout\,
	combout => \DEM_GIOPHUTGIAY|GIO_REG[4]~0_combout\);

-- Location: LCCOMB_X30_Y36_N26
\DEM_GIOPHUTGIAY|GIAY_REG[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIAY_REG[0]~2_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\) # ((\XULY_MOD|GIATRI_MOD_REG\(0) & (\DEM_GIOPHUTGIAY|GIO_REG[4]~0_combout\ & !\XULY_MOD|GIATRI_MOD_REG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XULY_MOD|GIATRI_MOD_REG\(0),
	datab => \DEM_GIOPHUTGIAY|GIO_REG[4]~0_combout\,
	datac => \XULY_MOD|GIATRI_MOD_REG\(1),
	datad => \DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\,
	combout => \DEM_GIOPHUTGIAY|GIAY_REG[0]~2_combout\);

-- Location: FF_X30_Y36_N21
\DEM_GIOPHUTGIAY|GIAY_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|Add0~13_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|GIAY_REG[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|GIAY_REG\(1));

-- Location: LCCOMB_X29_Y38_N6
\DEM_GIOPHUTGIAY|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add0~5_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(2) & (\DEM_GIOPHUTGIAY|Add0~4\ $ (GND))) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(2) & (!\DEM_GIOPHUTGIAY|Add0~4\ & VCC))
-- \DEM_GIOPHUTGIAY|Add0~6\ = CARRY((\DEM_GIOPHUTGIAY|GIAY_REG\(2) & !\DEM_GIOPHUTGIAY|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(2),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add0~4\,
	combout => \DEM_GIOPHUTGIAY|Add0~5_combout\,
	cout => \DEM_GIOPHUTGIAY|Add0~6\);

-- Location: LCCOMB_X29_Y38_N22
\DEM_GIOPHUTGIAY|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add1~4_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(2) & ((GND) # (!\DEM_GIOPHUTGIAY|Add1~3\))) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(2) & (\DEM_GIOPHUTGIAY|Add1~3\ $ (GND)))
-- \DEM_GIOPHUTGIAY|Add1~5\ = CARRY((\DEM_GIOPHUTGIAY|GIAY_REG\(2)) # (!\DEM_GIOPHUTGIAY|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(2),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add1~3\,
	combout => \DEM_GIOPHUTGIAY|Add1~4_combout\,
	cout => \DEM_GIOPHUTGIAY|Add1~5\);

-- Location: LCCOMB_X29_Y38_N24
\DEM_GIOPHUTGIAY|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add1~6_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(3) & (\DEM_GIOPHUTGIAY|Add1~5\ & VCC)) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(3) & (!\DEM_GIOPHUTGIAY|Add1~5\))
-- \DEM_GIOPHUTGIAY|Add1~7\ = CARRY((!\DEM_GIOPHUTGIAY|GIAY_REG\(3) & !\DEM_GIOPHUTGIAY|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(3),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add1~5\,
	combout => \DEM_GIOPHUTGIAY|Add1~6_combout\,
	cout => \DEM_GIOPHUTGIAY|Add1~7\);

-- Location: LCCOMB_X29_Y38_N8
\DEM_GIOPHUTGIAY|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add0~7_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(3) & (!\DEM_GIOPHUTGIAY|Add0~6\)) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(3) & ((\DEM_GIOPHUTGIAY|Add0~6\) # (GND)))
-- \DEM_GIOPHUTGIAY|Add0~8\ = CARRY((!\DEM_GIOPHUTGIAY|Add0~6\) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(3),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add0~6\,
	combout => \DEM_GIOPHUTGIAY|Add0~7_combout\,
	cout => \DEM_GIOPHUTGIAY|Add0~8\);

-- Location: LCCOMB_X30_Y38_N12
\DEM_GIOPHUTGIAY|GIAY_NEXT[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIAY_NEXT[3]~1_combout\ = (!\DEM_GIOPHUTGIAY|GIAY_REG[0]~3_combout\ & ((\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ & ((\DEM_GIOPHUTGIAY|Add0~7_combout\))) # (!\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ & (\DEM_GIOPHUTGIAY|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\,
	datab => \DEM_GIOPHUTGIAY|Add1~6_combout\,
	datac => \DEM_GIOPHUTGIAY|GIAY_REG[0]~3_combout\,
	datad => \DEM_GIOPHUTGIAY|Add0~7_combout\,
	combout => \DEM_GIOPHUTGIAY|GIAY_NEXT[3]~1_combout\);

-- Location: FF_X30_Y38_N13
\DEM_GIOPHUTGIAY|GIAY_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|GIAY_NEXT[3]~1_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|GIAY_REG[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|GIAY_REG\(3));

-- Location: LCCOMB_X29_Y38_N26
\DEM_GIOPHUTGIAY|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add1~8_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(4) & ((GND) # (!\DEM_GIOPHUTGIAY|Add1~7\))) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(4) & (\DEM_GIOPHUTGIAY|Add1~7\ $ (GND)))
-- \DEM_GIOPHUTGIAY|Add1~9\ = CARRY((\DEM_GIOPHUTGIAY|GIAY_REG\(4)) # (!\DEM_GIOPHUTGIAY|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(4),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add1~7\,
	combout => \DEM_GIOPHUTGIAY|Add1~8_combout\,
	cout => \DEM_GIOPHUTGIAY|Add1~9\);

-- Location: LCCOMB_X29_Y38_N10
\DEM_GIOPHUTGIAY|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add0~9_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(4) & (\DEM_GIOPHUTGIAY|Add0~8\ $ (GND))) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(4) & (!\DEM_GIOPHUTGIAY|Add0~8\ & VCC))
-- \DEM_GIOPHUTGIAY|Add0~10\ = CARRY((\DEM_GIOPHUTGIAY|GIAY_REG\(4) & !\DEM_GIOPHUTGIAY|Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(4),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add0~8\,
	combout => \DEM_GIOPHUTGIAY|Add0~9_combout\,
	cout => \DEM_GIOPHUTGIAY|Add0~10\);

-- Location: LCCOMB_X30_Y38_N26
\DEM_GIOPHUTGIAY|GIAY_NEXT[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIAY_NEXT[4]~0_combout\ = (!\DEM_GIOPHUTGIAY|GIAY_REG[0]~3_combout\ & ((\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ & ((\DEM_GIOPHUTGIAY|Add0~9_combout\))) # (!\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ & (\DEM_GIOPHUTGIAY|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\,
	datab => \DEM_GIOPHUTGIAY|GIAY_REG[0]~3_combout\,
	datac => \DEM_GIOPHUTGIAY|Add1~8_combout\,
	datad => \DEM_GIOPHUTGIAY|Add0~9_combout\,
	combout => \DEM_GIOPHUTGIAY|GIAY_NEXT[4]~0_combout\);

-- Location: FF_X30_Y38_N27
\DEM_GIOPHUTGIAY|GIAY_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|GIAY_NEXT[4]~0_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|GIAY_REG[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|GIAY_REG\(4));

-- Location: LCCOMB_X29_Y38_N28
\DEM_GIOPHUTGIAY|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add1~10_combout\ = \DEM_GIOPHUTGIAY|GIAY_REG\(5) $ (!\DEM_GIOPHUTGIAY|Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(5),
	cin => \DEM_GIOPHUTGIAY|Add1~9\,
	combout => \DEM_GIOPHUTGIAY|Add1~10_combout\);

-- Location: LCCOMB_X29_Y38_N12
\DEM_GIOPHUTGIAY|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add0~11_combout\ = \DEM_GIOPHUTGIAY|GIAY_REG\(5) $ (\DEM_GIOPHUTGIAY|Add0~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(5),
	cin => \DEM_GIOPHUTGIAY|Add0~10\,
	combout => \DEM_GIOPHUTGIAY|Add0~11_combout\);

-- Location: LCCOMB_X30_Y38_N2
\DEM_GIOPHUTGIAY|GIAY_NEXT[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIAY_NEXT[5]~2_combout\ = (!\DEM_GIOPHUTGIAY|GIAY_REG[0]~3_combout\ & ((\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ & ((\DEM_GIOPHUTGIAY|Add0~11_combout\))) # (!\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ & (\DEM_GIOPHUTGIAY|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\,
	datab => \DEM_GIOPHUTGIAY|Add1~10_combout\,
	datac => \DEM_GIOPHUTGIAY|GIAY_REG[0]~3_combout\,
	datad => \DEM_GIOPHUTGIAY|Add0~11_combout\,
	combout => \DEM_GIOPHUTGIAY|GIAY_NEXT[5]~2_combout\);

-- Location: FF_X30_Y38_N3
\DEM_GIOPHUTGIAY|GIAY_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|GIAY_NEXT[5]~2_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|GIAY_REG[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|GIAY_REG\(5));

-- Location: LCCOMB_X30_Y38_N6
\DEM_GIOPHUTGIAY|GIAY_REG[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIAY_REG[0]~0_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(3) & (!\DEM_GIOPHUTGIAY|GIAY_REG\(2) & (\DEM_GIOPHUTGIAY|GIAY_REG\(4) & \DEM_GIOPHUTGIAY|GIAY_REG\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(3),
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(2),
	datac => \DEM_GIOPHUTGIAY|GIAY_REG\(4),
	datad => \DEM_GIOPHUTGIAY|GIAY_REG\(5),
	combout => \DEM_GIOPHUTGIAY|GIAY_REG[0]~0_combout\);

-- Location: LCCOMB_X30_Y38_N8
\DEM_GIOPHUTGIAY|GIAY_REG[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIAY_REG[0]~3_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(0) & (\DEM_GIOPHUTGIAY|GIAY_REG[0]~0_combout\ & (\DEM_GIOPHUTGIAY|GIAY_REG\(1) & \DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(0),
	datab => \DEM_GIOPHUTGIAY|GIAY_REG[0]~0_combout\,
	datac => \DEM_GIOPHUTGIAY|GIAY_REG\(1),
	datad => \DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\,
	combout => \DEM_GIOPHUTGIAY|GIAY_REG[0]~3_combout\);

-- Location: LCCOMB_X30_Y38_N20
\DEM_GIOPHUTGIAY|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add0~2_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ & ((\DEM_GIOPHUTGIAY|Add0~0_combout\))) # (!\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ & (\DEM_GIOPHUTGIAY|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\,
	datac => \DEM_GIOPHUTGIAY|Add1~0_combout\,
	datad => \DEM_GIOPHUTGIAY|Add0~0_combout\,
	combout => \DEM_GIOPHUTGIAY|Add0~2_combout\);

-- Location: FF_X30_Y38_N21
\DEM_GIOPHUTGIAY|GIAY_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|Add0~2_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|GIAY_REG[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|GIAY_REG\(0));

-- Location: LCCOMB_X29_Y38_N16
\DEM_GIOPHUTGIAY|GIAY_NEXT[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIAY_NEXT[2]~3_combout\ = (\DEM_GIOPHUTGIAY|Add1~4_combout\ & (((\DEM_GIOPHUTGIAY|GIAY_REG\(1)) # (\DEM_GIOPHUTGIAY|GIAY_REG\(0))) # (!\DEM_GIOPHUTGIAY|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|Equal2~0_combout\,
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(1),
	datac => \DEM_GIOPHUTGIAY|Add1~4_combout\,
	datad => \DEM_GIOPHUTGIAY|GIAY_REG\(0),
	combout => \DEM_GIOPHUTGIAY|GIAY_NEXT[2]~3_combout\);

-- Location: LCCOMB_X30_Y38_N4
\DEM_GIOPHUTGIAY|GIAY_NEXT[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIAY_NEXT[2]~4_combout\ = (!\DEM_GIOPHUTGIAY|GIAY_REG[0]~3_combout\ & ((\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ & (\DEM_GIOPHUTGIAY|Add0~5_combout\)) # (!\DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\ & 
-- ((\DEM_GIOPHUTGIAY|GIAY_NEXT[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG[0]~1_combout\,
	datab => \DEM_GIOPHUTGIAY|Add0~5_combout\,
	datac => \DEM_GIOPHUTGIAY|GIAY_REG[0]~3_combout\,
	datad => \DEM_GIOPHUTGIAY|GIAY_NEXT[2]~3_combout\,
	combout => \DEM_GIOPHUTGIAY|GIAY_NEXT[2]~4_combout\);

-- Location: FF_X30_Y38_N5
\DEM_GIOPHUTGIAY|GIAY_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|GIAY_NEXT[2]~4_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|GIAY_REG[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|GIAY_REG\(2));

-- Location: LCCOMB_X30_Y38_N18
\HEXTOBCD_GIAY|BCD_HEX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEXTOBCD_GIAY|BCD_HEX~0_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(2) & (\DEM_GIOPHUTGIAY|GIAY_REG\(4) $ (((!\DEM_GIOPHUTGIAY|GIAY_REG\(3) & \DEM_GIOPHUTGIAY|GIAY_REG\(5)))))) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(2) & ((\DEM_GIOPHUTGIAY|GIAY_REG\(3) & 
-- ((\DEM_GIOPHUTGIAY|GIAY_REG\(5)) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(4)))) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(3) & ((\DEM_GIOPHUTGIAY|GIAY_REG\(4)) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(3),
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(2),
	datac => \DEM_GIOPHUTGIAY|GIAY_REG\(4),
	datad => \DEM_GIOPHUTGIAY|GIAY_REG\(5),
	combout => \HEXTOBCD_GIAY|BCD_HEX~0_combout\);

-- Location: LCCOMB_X30_Y38_N22
\HEXTOBCD_GIAY|BCD_HEX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEXTOBCD_GIAY|BCD_HEX~2_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(3) & (!\DEM_GIOPHUTGIAY|GIAY_REG\(5) & ((\DEM_GIOPHUTGIAY|GIAY_REG\(2)) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(4))))) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(3) & (\DEM_GIOPHUTGIAY|GIAY_REG\(5) & 
-- ((\DEM_GIOPHUTGIAY|GIAY_REG\(4)) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(3),
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(2),
	datac => \DEM_GIOPHUTGIAY|GIAY_REG\(4),
	datad => \DEM_GIOPHUTGIAY|GIAY_REG\(5),
	combout => \HEXTOBCD_GIAY|BCD_HEX~2_combout\);

-- Location: LCCOMB_X30_Y38_N16
\HEXTOBCD_GIAY|BCD_HEX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEXTOBCD_GIAY|BCD_HEX~1_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(2) & (!\DEM_GIOPHUTGIAY|GIAY_REG\(3) & (!\DEM_GIOPHUTGIAY|GIAY_REG\(4) & \DEM_GIOPHUTGIAY|GIAY_REG\(5)))) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(2) & (\DEM_GIOPHUTGIAY|GIAY_REG\(4) & 
-- (\DEM_GIOPHUTGIAY|GIAY_REG\(3) $ (!\DEM_GIOPHUTGIAY|GIAY_REG\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(3),
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(2),
	datac => \DEM_GIOPHUTGIAY|GIAY_REG\(4),
	datad => \DEM_GIOPHUTGIAY|GIAY_REG\(5),
	combout => \HEXTOBCD_GIAY|BCD_HEX~1_combout\);

-- Location: LCCOMB_X30_Y38_N0
\LCD_GAN_DULIEU_HIENTHI_NN|LCD_HANG_1[121]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_GAN_DULIEU_HIENTHI_NN|LCD_HANG_1[121]~0_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(1) & (((\HEXTOBCD_GIAY|BCD_HEX~2_combout\) # (\HEXTOBCD_GIAY|BCD_HEX~1_combout\)))) # (!\DEM_GIOPHUTGIAY|GIAY_REG\(1) & (!\HEXTOBCD_GIAY|BCD_HEX~1_combout\ & 
-- ((\HEXTOBCD_GIAY|BCD_HEX~0_combout\) # (!\HEXTOBCD_GIAY|BCD_HEX~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(1),
	datab => \HEXTOBCD_GIAY|BCD_HEX~0_combout\,
	datac => \HEXTOBCD_GIAY|BCD_HEX~2_combout\,
	datad => \HEXTOBCD_GIAY|BCD_HEX~1_combout\,
	combout => \LCD_GAN_DULIEU_HIENTHI_NN|LCD_HANG_1[121]~0_combout\);

-- Location: LCCOMB_X28_Y39_N4
\LCD_KHOITAO_HIENTHI|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~1_combout\ = (\XULY_MOD|GIATRI_MOD_REG\(1)) # (!\XULY_MOD|GIATRI_MOD_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \XULY_MOD|GIATRI_MOD_REG\(1),
	datad => \XULY_MOD|GIATRI_MOD_REG\(0),
	combout => \LCD_KHOITAO_HIENTHI|Mux10~1_combout\);

-- Location: LCCOMB_X29_Y39_N18
\XULY_NHAPNHAY|A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \XULY_NHAPNHAY|A~0_combout\ = !\XULY_NHAPNHAY|A~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \XULY_NHAPNHAY|A~q\,
	combout => \XULY_NHAPNHAY|A~0_combout\);

-- Location: FF_X29_Y39_N19
\XULY_NHAPNHAY|A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIA_10ENA|Equal10~combout\,
	d => \XULY_NHAPNHAY|A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \XULY_NHAPNHAY|A~q\);

-- Location: LCCOMB_X28_Y39_N22
\LCD_KHOITAO_HIENTHI|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~2_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(2) & (\LCD_KHOITAO_HIENTHI|PTR\(1) & ((\LCD_KHOITAO_HIENTHI|Mux10~1_combout\) # (\XULY_NHAPNHAY|A~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \LCD_KHOITAO_HIENTHI|Mux10~1_combout\,
	datac => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datad => \XULY_NHAPNHAY|A~q\,
	combout => \LCD_KHOITAO_HIENTHI|Mux10~2_combout\);

-- Location: LCCOMB_X30_Y36_N0
\DEM_GIOPHUTGIAY|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|process_2~0_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(0) & (\DEM_GIOPHUTGIAY|GIAY_REG\(1) & (\DEM_GIOPHUTGIAY|GIAY_REG[0]~0_combout\ & \CHIA_10ENA|Equal10~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(0),
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(1),
	datac => \DEM_GIOPHUTGIAY|GIAY_REG[0]~0_combout\,
	datad => \CHIA_10ENA|Equal10~combout\,
	combout => \DEM_GIOPHUTGIAY|process_2~0_combout\);

-- Location: LCCOMB_X30_Y36_N10
\DEM_GIOPHUTGIAY|PHUT_REG[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ = (\DEM_GIOPHUTGIAY|process_2~0_combout\) # ((!\XULY_MOD|GIATRI_MOD_REG\(0) & (\XULY_MOD|GIATRI_MOD_REG\(1) & \DEM_GIOPHUTGIAY|process_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XULY_MOD|GIATRI_MOD_REG\(0),
	datab => \XULY_MOD|GIATRI_MOD_REG\(1),
	datac => \DEM_GIOPHUTGIAY|process_2~0_combout\,
	datad => \DEM_GIOPHUTGIAY|process_3~0_combout\,
	combout => \DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\);

-- Location: LCCOMB_X30_Y37_N8
\DEM_GIOPHUTGIAY|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add2~0_combout\ = \DEM_GIOPHUTGIAY|PHUT_REG\(0) $ (VCC)
-- \DEM_GIOPHUTGIAY|Add2~1\ = CARRY(\DEM_GIOPHUTGIAY|PHUT_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(0),
	datad => VCC,
	combout => \DEM_GIOPHUTGIAY|Add2~0_combout\,
	cout => \DEM_GIOPHUTGIAY|Add2~1\);

-- Location: LCCOMB_X30_Y37_N20
\DEM_GIOPHUTGIAY|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add3~0_combout\ = \DEM_GIOPHUTGIAY|PHUT_REG\(0) $ (VCC)
-- \DEM_GIOPHUTGIAY|Add3~1\ = CARRY(\DEM_GIOPHUTGIAY|PHUT_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(0),
	datad => VCC,
	combout => \DEM_GIOPHUTGIAY|Add3~0_combout\,
	cout => \DEM_GIOPHUTGIAY|Add3~1\);

-- Location: LCCOMB_X30_Y36_N30
\DEM_GIOPHUTGIAY|Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add2~13_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ & (\DEM_GIOPHUTGIAY|Add2~0_combout\)) # (!\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ & ((\DEM_GIOPHUTGIAY|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|Add2~0_combout\,
	datac => \DEM_GIOPHUTGIAY|Add3~0_combout\,
	datad => \DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\,
	combout => \DEM_GIOPHUTGIAY|Add2~13_combout\);

-- Location: LCCOMB_X30_Y36_N2
\DEM_GIOPHUTGIAY|PHUT_REG[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|PHUT_REG[3]~3_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\) # ((!\XULY_MOD|GIATRI_MOD_REG\(0) & (\DEM_GIOPHUTGIAY|GIO_REG[4]~0_combout\ & \XULY_MOD|GIATRI_MOD_REG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XULY_MOD|GIATRI_MOD_REG\(0),
	datab => \DEM_GIOPHUTGIAY|GIO_REG[4]~0_combout\,
	datac => \XULY_MOD|GIATRI_MOD_REG\(1),
	datad => \DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\,
	combout => \DEM_GIOPHUTGIAY|PHUT_REG[3]~3_combout\);

-- Location: FF_X30_Y36_N31
\DEM_GIOPHUTGIAY|PHUT_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|Add2~13_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|PHUT_REG[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|PHUT_REG\(0));

-- Location: LCCOMB_X30_Y37_N10
\DEM_GIOPHUTGIAY|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add2~2_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(1) & (!\DEM_GIOPHUTGIAY|Add2~1\)) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(1) & ((\DEM_GIOPHUTGIAY|Add2~1\) # (GND)))
-- \DEM_GIOPHUTGIAY|Add2~3\ = CARRY((!\DEM_GIOPHUTGIAY|Add2~1\) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG\(1),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add2~1\,
	combout => \DEM_GIOPHUTGIAY|Add2~2_combout\,
	cout => \DEM_GIOPHUTGIAY|Add2~3\);

-- Location: LCCOMB_X30_Y37_N14
\DEM_GIOPHUTGIAY|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add2~6_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(3) & (!\DEM_GIOPHUTGIAY|Add2~5\)) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(3) & ((\DEM_GIOPHUTGIAY|Add2~5\) # (GND)))
-- \DEM_GIOPHUTGIAY|Add2~7\ = CARRY((!\DEM_GIOPHUTGIAY|Add2~5\) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(3),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add2~5\,
	combout => \DEM_GIOPHUTGIAY|Add2~6_combout\,
	cout => \DEM_GIOPHUTGIAY|Add2~7\);

-- Location: LCCOMB_X30_Y37_N22
\DEM_GIOPHUTGIAY|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add3~2_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(1) & (\DEM_GIOPHUTGIAY|Add3~1\ & VCC)) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(1) & (!\DEM_GIOPHUTGIAY|Add3~1\))
-- \DEM_GIOPHUTGIAY|Add3~3\ = CARRY((!\DEM_GIOPHUTGIAY|PHUT_REG\(1) & !\DEM_GIOPHUTGIAY|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG\(1),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add3~1\,
	combout => \DEM_GIOPHUTGIAY|Add3~2_combout\,
	cout => \DEM_GIOPHUTGIAY|Add3~3\);

-- Location: LCCOMB_X30_Y37_N26
\DEM_GIOPHUTGIAY|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add3~6_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(3) & (\DEM_GIOPHUTGIAY|Add3~5\ & VCC)) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(3) & (!\DEM_GIOPHUTGIAY|Add3~5\))
-- \DEM_GIOPHUTGIAY|Add3~7\ = CARRY((!\DEM_GIOPHUTGIAY|PHUT_REG\(3) & !\DEM_GIOPHUTGIAY|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(3),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add3~5\,
	combout => \DEM_GIOPHUTGIAY|Add3~6_combout\,
	cout => \DEM_GIOPHUTGIAY|Add3~7\);

-- Location: LCCOMB_X29_Y37_N18
\DEM_GIOPHUTGIAY|PHUT_NEXT[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|PHUT_NEXT[3]~1_combout\ = (!\DEM_GIOPHUTGIAY|PHUT_REG[3]~2_combout\ & ((\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ & (\DEM_GIOPHUTGIAY|Add2~6_combout\)) # (!\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ & ((\DEM_GIOPHUTGIAY|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG[3]~2_combout\,
	datab => \DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\,
	datac => \DEM_GIOPHUTGIAY|Add2~6_combout\,
	datad => \DEM_GIOPHUTGIAY|Add3~6_combout\,
	combout => \DEM_GIOPHUTGIAY|PHUT_NEXT[3]~1_combout\);

-- Location: FF_X29_Y37_N19
\DEM_GIOPHUTGIAY|PHUT_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|PHUT_NEXT[3]~1_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|PHUT_REG[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|PHUT_REG\(3));

-- Location: LCCOMB_X30_Y37_N16
\DEM_GIOPHUTGIAY|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add2~8_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(4) & (\DEM_GIOPHUTGIAY|Add2~7\ $ (GND))) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(4) & (!\DEM_GIOPHUTGIAY|Add2~7\ & VCC))
-- \DEM_GIOPHUTGIAY|Add2~9\ = CARRY((\DEM_GIOPHUTGIAY|PHUT_REG\(4) & !\DEM_GIOPHUTGIAY|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(4),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add2~7\,
	combout => \DEM_GIOPHUTGIAY|Add2~8_combout\,
	cout => \DEM_GIOPHUTGIAY|Add2~9\);

-- Location: LCCOMB_X30_Y37_N28
\DEM_GIOPHUTGIAY|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add3~8_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(4) & ((GND) # (!\DEM_GIOPHUTGIAY|Add3~7\))) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(4) & (\DEM_GIOPHUTGIAY|Add3~7\ $ (GND)))
-- \DEM_GIOPHUTGIAY|Add3~9\ = CARRY((\DEM_GIOPHUTGIAY|PHUT_REG\(4)) # (!\DEM_GIOPHUTGIAY|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(4),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add3~7\,
	combout => \DEM_GIOPHUTGIAY|Add3~8_combout\,
	cout => \DEM_GIOPHUTGIAY|Add3~9\);

-- Location: LCCOMB_X29_Y37_N4
\DEM_GIOPHUTGIAY|PHUT_NEXT[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|PHUT_NEXT[4]~0_combout\ = (!\DEM_GIOPHUTGIAY|PHUT_REG[3]~2_combout\ & ((\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ & (\DEM_GIOPHUTGIAY|Add2~8_combout\)) # (!\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ & ((\DEM_GIOPHUTGIAY|Add3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG[3]~2_combout\,
	datab => \DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\,
	datac => \DEM_GIOPHUTGIAY|Add2~8_combout\,
	datad => \DEM_GIOPHUTGIAY|Add3~8_combout\,
	combout => \DEM_GIOPHUTGIAY|PHUT_NEXT[4]~0_combout\);

-- Location: FF_X29_Y37_N5
\DEM_GIOPHUTGIAY|PHUT_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|PHUT_NEXT[4]~0_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|PHUT_REG[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|PHUT_REG\(4));

-- Location: LCCOMB_X30_Y37_N30
\DEM_GIOPHUTGIAY|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add3~10_combout\ = \DEM_GIOPHUTGIAY|Add3~9\ $ (!\DEM_GIOPHUTGIAY|PHUT_REG\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DEM_GIOPHUTGIAY|PHUT_REG\(5),
	cin => \DEM_GIOPHUTGIAY|Add3~9\,
	combout => \DEM_GIOPHUTGIAY|Add3~10_combout\);

-- Location: LCCOMB_X30_Y37_N18
\DEM_GIOPHUTGIAY|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add2~10_combout\ = \DEM_GIOPHUTGIAY|Add2~9\ $ (\DEM_GIOPHUTGIAY|PHUT_REG\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DEM_GIOPHUTGIAY|PHUT_REG\(5),
	cin => \DEM_GIOPHUTGIAY|Add2~9\,
	combout => \DEM_GIOPHUTGIAY|Add2~10_combout\);

-- Location: LCCOMB_X29_Y37_N20
\DEM_GIOPHUTGIAY|PHUT_NEXT[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|PHUT_NEXT[5]~2_combout\ = (!\DEM_GIOPHUTGIAY|PHUT_REG[3]~2_combout\ & ((\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ & ((\DEM_GIOPHUTGIAY|Add2~10_combout\))) # (!\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ & (\DEM_GIOPHUTGIAY|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG[3]~2_combout\,
	datab => \DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\,
	datac => \DEM_GIOPHUTGIAY|Add3~10_combout\,
	datad => \DEM_GIOPHUTGIAY|Add2~10_combout\,
	combout => \DEM_GIOPHUTGIAY|PHUT_NEXT[5]~2_combout\);

-- Location: FF_X29_Y37_N21
\DEM_GIOPHUTGIAY|PHUT_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|PHUT_NEXT[5]~2_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|PHUT_REG[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|PHUT_REG\(5));

-- Location: LCCOMB_X29_Y37_N24
\LCD_KHOITAO_HIENTHI|Mux10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~10_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(5) & ((\DEM_GIOPHUTGIAY|PHUT_REG\(4) & (\DEM_GIOPHUTGIAY|PHUT_REG\(2) & \DEM_GIOPHUTGIAY|PHUT_REG\(3))) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(4) & ((!\DEM_GIOPHUTGIAY|PHUT_REG\(3)))))) # 
-- (!\DEM_GIOPHUTGIAY|PHUT_REG\(5) & (\DEM_GIOPHUTGIAY|PHUT_REG\(4) & ((\DEM_GIOPHUTGIAY|PHUT_REG\(2)) # (\DEM_GIOPHUTGIAY|PHUT_REG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG\(2),
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(5),
	datac => \DEM_GIOPHUTGIAY|PHUT_REG\(4),
	datad => \DEM_GIOPHUTGIAY|PHUT_REG\(3),
	combout => \LCD_KHOITAO_HIENTHI|Mux10~10_combout\);

-- Location: LCCOMB_X29_Y39_N6
\LCD_KHOITAO_HIENTHI|Mux10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~11_combout\ = (!\LCD_KHOITAO_HIENTHI|PTR\(1) & (((\XULY_NHAPNHAY|A~q\) # (!\XULY_MOD|GIATRI_MOD_REG\(0))) # (!\XULY_MOD|GIATRI_MOD_REG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XULY_MOD|GIATRI_MOD_REG\(1),
	datab => \XULY_MOD|GIATRI_MOD_REG\(0),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datad => \XULY_NHAPNHAY|A~q\,
	combout => \LCD_KHOITAO_HIENTHI|Mux10~11_combout\);

-- Location: LCCOMB_X29_Y39_N14
\LCD_KHOITAO_HIENTHI|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~0_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(1) & ((\XULY_MOD|GIATRI_MOD_REG\(0)) # ((\XULY_NHAPNHAY|A~q\) # (!\XULY_MOD|GIATRI_MOD_REG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datab => \XULY_MOD|GIATRI_MOD_REG\(0),
	datac => \XULY_MOD|GIATRI_MOD_REG\(1),
	datad => \XULY_NHAPNHAY|A~q\,
	combout => \LCD_KHOITAO_HIENTHI|Mux10~0_combout\);

-- Location: LCCOMB_X30_Y39_N2
\LCD_KHOITAO_HIENTHI|Mux10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~12_combout\ = (\HEXTOBCD_GIO|DONVI[1]~0_combout\ & (\LCD_KHOITAO_HIENTHI|Mux10~10_combout\ & ((\LCD_KHOITAO_HIENTHI|Mux10~0_combout\)))) # (!\HEXTOBCD_GIO|DONVI[1]~0_combout\ & ((\LCD_KHOITAO_HIENTHI|Mux10~11_combout\) # 
-- ((\LCD_KHOITAO_HIENTHI|Mux10~10_combout\ & \LCD_KHOITAO_HIENTHI|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEXTOBCD_GIO|DONVI[1]~0_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Mux10~10_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Mux10~11_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Mux10~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux10~12_combout\);

-- Location: LCCOMB_X30_Y39_N0
\LCD_KHOITAO_HIENTHI|Mux10~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~13_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(2) & (!\LCD_GAN_DULIEU_HIENTHI_NN|LCD_HANG_1[121]~0_combout\ & (\LCD_KHOITAO_HIENTHI|Mux10~2_combout\))) # (!\LCD_KHOITAO_HIENTHI|PTR\(2) & ((\LCD_KHOITAO_HIENTHI|Mux10~12_combout\) # 
-- ((!\LCD_GAN_DULIEU_HIENTHI_NN|LCD_HANG_1[121]~0_combout\ & \LCD_KHOITAO_HIENTHI|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \LCD_GAN_DULIEU_HIENTHI_NN|LCD_HANG_1[121]~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Mux10~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Mux10~12_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux10~13_combout\);

-- Location: LCCOMB_X29_Y37_N14
\DEM_GIOPHUTGIAY|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add2~12_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ & (\DEM_GIOPHUTGIAY|Add2~2_combout\)) # (!\DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\ & ((\DEM_GIOPHUTGIAY|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|PHUT_REG[3]~0_combout\,
	datac => \DEM_GIOPHUTGIAY|Add2~2_combout\,
	datad => \DEM_GIOPHUTGIAY|Add3~2_combout\,
	combout => \DEM_GIOPHUTGIAY|Add2~12_combout\);

-- Location: FF_X29_Y37_N15
\DEM_GIOPHUTGIAY|PHUT_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|Add2~12_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|PHUT_REG[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|PHUT_REG\(1));

-- Location: LCCOMB_X29_Y37_N8
\HEXTOBCD_PHUT|BCD_HEX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEXTOBCD_PHUT|BCD_HEX~0_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(2) & (\DEM_GIOPHUTGIAY|PHUT_REG\(4) $ (((\DEM_GIOPHUTGIAY|PHUT_REG\(5) & !\DEM_GIOPHUTGIAY|PHUT_REG\(3)))))) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(2) & ((\DEM_GIOPHUTGIAY|PHUT_REG\(5) & 
-- ((\DEM_GIOPHUTGIAY|PHUT_REG\(4)) # (\DEM_GIOPHUTGIAY|PHUT_REG\(3)))) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(5) & ((!\DEM_GIOPHUTGIAY|PHUT_REG\(3)) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG\(2),
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(5),
	datac => \DEM_GIOPHUTGIAY|PHUT_REG\(4),
	datad => \DEM_GIOPHUTGIAY|PHUT_REG\(3),
	combout => \HEXTOBCD_PHUT|BCD_HEX~0_combout\);

-- Location: LCCOMB_X29_Y37_N28
\HEXTOBCD_PHUT|BCD_HEX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEXTOBCD_PHUT|BCD_HEX~1_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(2) & (\DEM_GIOPHUTGIAY|PHUT_REG\(5) & (!\DEM_GIOPHUTGIAY|PHUT_REG\(4) & !\DEM_GIOPHUTGIAY|PHUT_REG\(3)))) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(2) & (\DEM_GIOPHUTGIAY|PHUT_REG\(4) & 
-- (\DEM_GIOPHUTGIAY|PHUT_REG\(5) $ (!\DEM_GIOPHUTGIAY|PHUT_REG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG\(2),
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(5),
	datac => \DEM_GIOPHUTGIAY|PHUT_REG\(4),
	datad => \DEM_GIOPHUTGIAY|PHUT_REG\(3),
	combout => \HEXTOBCD_PHUT|BCD_HEX~1_combout\);

-- Location: LCCOMB_X29_Y37_N30
\LCD_KHOITAO_HIENTHI|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~4_combout\ = (\HEXTOBCD_PHUT|BCD_HEX~2_combout\ & (!\DEM_GIOPHUTGIAY|PHUT_REG\(1) & ((\HEXTOBCD_PHUT|BCD_HEX~1_combout\) # (!\HEXTOBCD_PHUT|BCD_HEX~0_combout\)))) # (!\HEXTOBCD_PHUT|BCD_HEX~2_combout\ & 
-- (\DEM_GIOPHUTGIAY|PHUT_REG\(1) $ (((\HEXTOBCD_PHUT|BCD_HEX~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEXTOBCD_PHUT|BCD_HEX~2_combout\,
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(1),
	datac => \HEXTOBCD_PHUT|BCD_HEX~0_combout\,
	datad => \HEXTOBCD_PHUT|BCD_HEX~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux10~4_combout\);

-- Location: LCCOMB_X29_Y39_N26
\LCD_GAN_DULIEU_HIENTHI_NN|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_GAN_DULIEU_HIENTHI_NN|process_0~0_combout\ = (\XULY_MOD|GIATRI_MOD_REG\(1) & (!\XULY_MOD|GIATRI_MOD_REG\(0) & !\XULY_NHAPNHAY|A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XULY_MOD|GIATRI_MOD_REG\(1),
	datac => \XULY_MOD|GIATRI_MOD_REG\(0),
	datad => \XULY_NHAPNHAY|A~q\,
	combout => \LCD_GAN_DULIEU_HIENTHI_NN|process_0~0_combout\);

-- Location: LCCOMB_X29_Y37_N12
\DEM_GIOPHUTGIAY|PHUT_REG[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|PHUT_REG[3]~1_combout\ = (!\DEM_GIOPHUTGIAY|PHUT_REG\(2) & (\DEM_GIOPHUTGIAY|PHUT_REG\(5) & (\DEM_GIOPHUTGIAY|PHUT_REG\(4) & \DEM_GIOPHUTGIAY|PHUT_REG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG\(2),
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(5),
	datac => \DEM_GIOPHUTGIAY|PHUT_REG\(4),
	datad => \DEM_GIOPHUTGIAY|PHUT_REG\(3),
	combout => \DEM_GIOPHUTGIAY|PHUT_REG[3]~1_combout\);

-- Location: LCCOMB_X30_Y36_N28
\DEM_GIOPHUTGIAY|process_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|process_3~1_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(0) & (\DEM_GIOPHUTGIAY|PHUT_REG\(1) & (\DEM_GIOPHUTGIAY|PHUT_REG[3]~1_combout\ & \DEM_GIOPHUTGIAY|process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG\(0),
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(1),
	datac => \DEM_GIOPHUTGIAY|PHUT_REG[3]~1_combout\,
	datad => \DEM_GIOPHUTGIAY|process_2~0_combout\,
	combout => \DEM_GIOPHUTGIAY|process_3~1_combout\);

-- Location: LCCOMB_X30_Y36_N14
\DEM_GIOPHUTGIAY|GIO_REG[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ = (\DEM_GIOPHUTGIAY|process_3~1_combout\) # ((\XULY_MOD|GIATRI_MOD_REG\(0) & (\XULY_MOD|GIATRI_MOD_REG\(1) & \DEM_GIOPHUTGIAY|process_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XULY_MOD|GIATRI_MOD_REG\(0),
	datab => \XULY_MOD|GIATRI_MOD_REG\(1),
	datac => \DEM_GIOPHUTGIAY|process_3~0_combout\,
	datad => \DEM_GIOPHUTGIAY|process_3~1_combout\,
	combout => \DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\);

-- Location: LCCOMB_X31_Y39_N14
\DEM_GIOPHUTGIAY|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add4~0_combout\ = \DEM_GIOPHUTGIAY|GIO_REG\(0) $ (VCC)
-- \DEM_GIOPHUTGIAY|Add4~1\ = CARRY(\DEM_GIOPHUTGIAY|GIO_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(0),
	datad => VCC,
	combout => \DEM_GIOPHUTGIAY|Add4~0_combout\,
	cout => \DEM_GIOPHUTGIAY|Add4~1\);

-- Location: LCCOMB_X30_Y39_N22
\DEM_GIOPHUTGIAY|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add5~0_combout\ = \DEM_GIOPHUTGIAY|GIO_REG\(0) $ (VCC)
-- \DEM_GIOPHUTGIAY|Add5~1\ = CARRY(\DEM_GIOPHUTGIAY|GIO_REG\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(0),
	datad => VCC,
	combout => \DEM_GIOPHUTGIAY|Add5~0_combout\,
	cout => \DEM_GIOPHUTGIAY|Add5~1\);

-- Location: LCCOMB_X31_Y39_N8
\DEM_GIOPHUTGIAY|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add4~2_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ & (\DEM_GIOPHUTGIAY|Add4~0_combout\)) # (!\DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ & ((\DEM_GIOPHUTGIAY|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\,
	datac => \DEM_GIOPHUTGIAY|Add4~0_combout\,
	datad => \DEM_GIOPHUTGIAY|Add5~0_combout\,
	combout => \DEM_GIOPHUTGIAY|Add4~2_combout\);

-- Location: LCCOMB_X31_Y39_N0
\DEM_GIOPHUTGIAY|GIO_REG[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIO_REG[4]~2_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\) # ((\XULY_MOD|GIATRI_MOD_REG\(1) & (\XULY_MOD|GIATRI_MOD_REG\(0) & \DEM_GIOPHUTGIAY|GIO_REG[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XULY_MOD|GIATRI_MOD_REG\(1),
	datab => \XULY_MOD|GIATRI_MOD_REG\(0),
	datac => \DEM_GIOPHUTGIAY|GIO_REG[4]~0_combout\,
	datad => \DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\,
	combout => \DEM_GIOPHUTGIAY|GIO_REG[4]~2_combout\);

-- Location: FF_X31_Y39_N9
\DEM_GIOPHUTGIAY|GIO_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|Add4~2_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|GIO_REG[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|GIO_REG\(0));

-- Location: LCCOMB_X30_Y39_N24
\DEM_GIOPHUTGIAY|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add5~2_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(1) & (\DEM_GIOPHUTGIAY|Add5~1\ & VCC)) # (!\DEM_GIOPHUTGIAY|GIO_REG\(1) & (!\DEM_GIOPHUTGIAY|Add5~1\))
-- \DEM_GIOPHUTGIAY|Add5~3\ = CARRY((!\DEM_GIOPHUTGIAY|GIO_REG\(1) & !\DEM_GIOPHUTGIAY|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_REG\(1),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add5~1\,
	combout => \DEM_GIOPHUTGIAY|Add5~2_combout\,
	cout => \DEM_GIOPHUTGIAY|Add5~3\);

-- Location: LCCOMB_X31_Y39_N16
\DEM_GIOPHUTGIAY|Add4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add4~3_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(1) & (!\DEM_GIOPHUTGIAY|Add4~1\)) # (!\DEM_GIOPHUTGIAY|GIO_REG\(1) & ((\DEM_GIOPHUTGIAY|Add4~1\) # (GND)))
-- \DEM_GIOPHUTGIAY|Add4~4\ = CARRY((!\DEM_GIOPHUTGIAY|Add4~1\) # (!\DEM_GIOPHUTGIAY|GIO_REG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(1),
	datad => VCC,
	cin => \DEM_GIOPHUTGIAY|Add4~1\,
	combout => \DEM_GIOPHUTGIAY|Add4~3_combout\,
	cout => \DEM_GIOPHUTGIAY|Add4~4\);

-- Location: LCCOMB_X31_Y39_N2
\DEM_GIOPHUTGIAY|Add4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add4~5_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ & ((\DEM_GIOPHUTGIAY|Add4~3_combout\))) # (!\DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ & (\DEM_GIOPHUTGIAY|Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\,
	datac => \DEM_GIOPHUTGIAY|Add5~2_combout\,
	datad => \DEM_GIOPHUTGIAY|Add4~3_combout\,
	combout => \DEM_GIOPHUTGIAY|Add4~5_combout\);

-- Location: FF_X31_Y39_N3
\DEM_GIOPHUTGIAY|GIO_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|Add4~5_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|GIO_REG[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|GIO_REG\(1));

-- Location: LCCOMB_X31_Y39_N4
\DEM_GIOPHUTGIAY|GIO_NEXT[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIO_NEXT[3]~1_combout\ = (!\DEM_GIOPHUTGIAY|GIO_REG[4]~4_combout\ & ((\DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ & ((\DEM_GIOPHUTGIAY|Add4~8_combout\))) # (!\DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ & (\DEM_GIOPHUTGIAY|GIO_NEXT[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_NEXT[3]~0_combout\,
	datab => \DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\,
	datac => \DEM_GIOPHUTGIAY|GIO_REG[4]~4_combout\,
	datad => \DEM_GIOPHUTGIAY|Add4~8_combout\,
	combout => \DEM_GIOPHUTGIAY|GIO_NEXT[3]~1_combout\);

-- Location: FF_X31_Y39_N5
\DEM_GIOPHUTGIAY|GIO_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|GIO_NEXT[3]~1_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|GIO_REG[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|GIO_REG\(3));

-- Location: LCCOMB_X30_Y39_N16
\DEM_GIOPHUTGIAY|GIO_REG[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIO_REG[4]~3_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(2) & (\DEM_GIOPHUTGIAY|GIO_REG\(4) & (!\DEM_GIOPHUTGIAY|GIO_REG\(3) & \DEM_GIOPHUTGIAY|GIO_REG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_REG\(2),
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(4),
	datac => \DEM_GIOPHUTGIAY|GIO_REG\(3),
	datad => \DEM_GIOPHUTGIAY|GIO_REG\(1),
	combout => \DEM_GIOPHUTGIAY|GIO_REG[4]~3_combout\);

-- Location: LCCOMB_X31_Y39_N26
\DEM_GIOPHUTGIAY|GIO_REG[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIO_REG[4]~4_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ & (\DEM_GIOPHUTGIAY|GIO_REG\(0) & \DEM_GIOPHUTGIAY|GIO_REG[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\,
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(0),
	datac => \DEM_GIOPHUTGIAY|GIO_REG[4]~3_combout\,
	combout => \DEM_GIOPHUTGIAY|GIO_REG[4]~4_combout\);

-- Location: LCCOMB_X30_Y39_N30
\DEM_GIOPHUTGIAY|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|Add5~8_combout\ = \DEM_GIOPHUTGIAY|Add5~7\ $ (\DEM_GIOPHUTGIAY|GIO_REG\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DEM_GIOPHUTGIAY|GIO_REG\(4),
	cin => \DEM_GIOPHUTGIAY|Add5~7\,
	combout => \DEM_GIOPHUTGIAY|Add5~8_combout\);

-- Location: LCCOMB_X31_Y39_N24
\DEM_GIOPHUTGIAY|GIO_NEXT[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEM_GIOPHUTGIAY|GIO_NEXT[4]~2_combout\ = (!\DEM_GIOPHUTGIAY|GIO_REG[4]~4_combout\ & ((\DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ & (\DEM_GIOPHUTGIAY|Add4~11_combout\)) # (!\DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\ & ((\DEM_GIOPHUTGIAY|Add5~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|Add4~11_combout\,
	datab => \DEM_GIOPHUTGIAY|GIO_REG[4]~1_combout\,
	datac => \DEM_GIOPHUTGIAY|GIO_REG[4]~4_combout\,
	datad => \DEM_GIOPHUTGIAY|Add5~8_combout\,
	combout => \DEM_GIOPHUTGIAY|GIO_NEXT[4]~2_combout\);

-- Location: FF_X31_Y39_N25
\DEM_GIOPHUTGIAY|GIO_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \DEM_GIOPHUTGIAY|GIO_NEXT[4]~2_combout\,
	clrn => \BTN_N[0]~input_o\,
	ena => \DEM_GIOPHUTGIAY|GIO_REG[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DEM_GIOPHUTGIAY|GIO_REG\(4));

-- Location: LCCOMB_X29_Y39_N24
\LCD_KHOITAO_HIENTHI|Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux11~11_combout\ = (!\LCD_KHOITAO_HIENTHI|PTR\(2) & (((\XULY_NHAPNHAY|A~q\) # (!\XULY_MOD|GIATRI_MOD_REG\(0))) # (!\XULY_MOD|GIATRI_MOD_REG\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XULY_MOD|GIATRI_MOD_REG\(1),
	datab => \XULY_MOD|GIATRI_MOD_REG\(0),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datad => \XULY_NHAPNHAY|A~q\,
	combout => \LCD_KHOITAO_HIENTHI|Mux11~11_combout\);

-- Location: LCCOMB_X30_Y39_N12
\LCD_KHOITAO_HIENTHI|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~5_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(4) & (\LCD_KHOITAO_HIENTHI|Mux11~11_combout\ & ((\DEM_GIOPHUTGIAY|GIO_REG\(2)) # (\DEM_GIOPHUTGIAY|GIO_REG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_REG\(2),
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(4),
	datac => \DEM_GIOPHUTGIAY|GIO_REG\(3),
	datad => \LCD_KHOITAO_HIENTHI|Mux11~11_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux10~5_combout\);

-- Location: LCCOMB_X30_Y39_N10
\LCD_KHOITAO_HIENTHI|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~6_combout\ = (\LCD_KHOITAO_HIENTHI|Mux10~5_combout\) # ((\LCD_KHOITAO_HIENTHI|PTR\(2) & (\LCD_KHOITAO_HIENTHI|Mux10~4_combout\ & !\LCD_GAN_DULIEU_HIENTHI_NN|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \LCD_KHOITAO_HIENTHI|Mux10~4_combout\,
	datac => \LCD_GAN_DULIEU_HIENTHI_NN|process_0~0_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Mux10~5_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux10~6_combout\);

-- Location: LCCOMB_X30_Y39_N4
\LCD_KHOITAO_HIENTHI|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~7_combout\ = (\LCD_KHOITAO_HIENTHI|Mux10~3_combout\ & ((\LCD_KHOITAO_HIENTHI|Mux10~2_combout\) # ((!\LCD_KHOITAO_HIENTHI|PTR\(1) & \LCD_KHOITAO_HIENTHI|Mux10~6_combout\)))) # (!\LCD_KHOITAO_HIENTHI|Mux10~3_combout\ & 
-- (!\LCD_KHOITAO_HIENTHI|PTR\(1) & ((\LCD_KHOITAO_HIENTHI|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Mux10~3_combout\,
	datab => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datac => \LCD_KHOITAO_HIENTHI|Mux10~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Mux10~6_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux10~7_combout\);

-- Location: LCCOMB_X29_Y40_N24
\LCD_KHOITAO_HIENTHI|Mux10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux10~14_combout\ = (\LCD_KHOITAO_HIENTHI|Mux10~9_combout\ & (((\LCD_KHOITAO_HIENTHI|Mux10~13_combout\)) # (!\LCD_KHOITAO_HIENTHI|PTR\(3)))) # (!\LCD_KHOITAO_HIENTHI|Mux10~9_combout\ & (\LCD_KHOITAO_HIENTHI|PTR\(3) & 
-- ((\LCD_KHOITAO_HIENTHI|Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Mux10~9_combout\,
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|Mux10~13_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Mux10~7_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Mux10~14_combout\);

-- Location: LCCOMB_X29_Y40_N2
\LCD_KHOITAO_HIENTHI|Selector38~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector38~6_combout\ = (\LCD_KHOITAO_HIENTHI|Selector39~2_combout\ & (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & \LCD_KHOITAO_HIENTHI|Mux10~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datad => \LCD_KHOITAO_HIENTHI|Mux10~14_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector38~6_combout\);

-- Location: LCCOMB_X29_Y40_N12
\LCD_KHOITAO_HIENTHI|Selector38~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector38~9_combout\ = (\LCD_KHOITAO_HIENTHI|Selector38~8_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector38~6_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector38~5_combout\ & \LCD_KHOITAO_HIENTHI|LCD_DB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector38~5_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector38~8_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_DB\(1),
	datad => \LCD_KHOITAO_HIENTHI|Selector38~6_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector38~9_combout\);

-- Location: FF_X29_Y40_N13
\LCD_KHOITAO_HIENTHI|LCD_DB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector38~9_combout\,
	ena => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_DB\(1));

-- Location: LCCOMB_X30_Y40_N4
\LCD_KHOITAO_HIENTHI|Selector37~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~9_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(2) & (!\LCD_KHOITAO_HIENTHI|PTR\(1) & (!\LCD_GAN_DULIEU_HIENTHI_NN|process_0~0_combout\ & !\LCD_KHOITAO_HIENTHI|PTR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datac => \LCD_GAN_DULIEU_HIENTHI_NN|process_0~0_combout\,
	datad => \LCD_KHOITAO_HIENTHI|PTR\(0),
	combout => \LCD_KHOITAO_HIENTHI|Selector37~9_combout\);

-- Location: LCCOMB_X29_Y37_N6
\LCD_KHOITAO_HIENTHI|Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~1_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(5) & ((\DEM_GIOPHUTGIAY|PHUT_REG\(4)) # (\DEM_GIOPHUTGIAY|PHUT_REG\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(5),
	datac => \DEM_GIOPHUTGIAY|PHUT_REG\(4),
	datad => \DEM_GIOPHUTGIAY|PHUT_REG\(3),
	combout => \LCD_KHOITAO_HIENTHI|Selector37~1_combout\);

-- Location: LCCOMB_X31_Y39_N28
\LCD_KHOITAO_HIENTHI|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~0_combout\ = (\DEM_GIOPHUTGIAY|GIO_REG\(2) & (!\DEM_GIOPHUTGIAY|GIO_REG\(4) & ((\DEM_GIOPHUTGIAY|GIO_REG\(1)) # (!\DEM_GIOPHUTGIAY|GIO_REG\(3))))) # (!\DEM_GIOPHUTGIAY|GIO_REG\(2) & (\DEM_GIOPHUTGIAY|GIO_REG\(4) & 
-- ((\DEM_GIOPHUTGIAY|GIO_REG\(3)) # (!\DEM_GIOPHUTGIAY|GIO_REG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIO_REG\(2),
	datab => \DEM_GIOPHUTGIAY|GIO_REG\(4),
	datac => \DEM_GIOPHUTGIAY|GIO_REG\(3),
	datad => \DEM_GIOPHUTGIAY|GIO_REG\(1),
	combout => \LCD_KHOITAO_HIENTHI|Selector37~0_combout\);

-- Location: LCCOMB_X29_Y39_N28
\LCD_KHOITAO_HIENTHI|Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~2_combout\ = (\XULY_MOD|GIATRI_MOD_REG\(1) & (!\XULY_NHAPNHAY|A~q\ & (\XULY_MOD|GIATRI_MOD_REG\(0) $ (\LCD_KHOITAO_HIENTHI|PTR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XULY_MOD|GIATRI_MOD_REG\(1),
	datab => \XULY_MOD|GIATRI_MOD_REG\(0),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datad => \XULY_NHAPNHAY|A~q\,
	combout => \LCD_KHOITAO_HIENTHI|Selector37~2_combout\);

-- Location: LCCOMB_X29_Y39_N22
\LCD_KHOITAO_HIENTHI|Selector37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~3_combout\ = (!\LCD_KHOITAO_HIENTHI|Selector37~2_combout\ & ((\LCD_KHOITAO_HIENTHI|PTR\(1) & (\LCD_KHOITAO_HIENTHI|Selector37~1_combout\)) # (!\LCD_KHOITAO_HIENTHI|PTR\(1) & ((\LCD_KHOITAO_HIENTHI|Selector37~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datab => \LCD_KHOITAO_HIENTHI|Selector37~1_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector37~0_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector37~2_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector37~3_combout\);

-- Location: LCCOMB_X30_Y40_N22
\LCD_KHOITAO_HIENTHI|Selector37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~4_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(0) & (!\LCD_KHOITAO_HIENTHI|PTR\(2) & \LCD_KHOITAO_HIENTHI|Selector37~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datad => \LCD_KHOITAO_HIENTHI|Selector37~3_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector37~4_combout\);

-- Location: LCCOMB_X29_Y38_N0
\LCD_KHOITAO_HIENTHI|Selector37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~5_combout\ = (\DEM_GIOPHUTGIAY|GIAY_REG\(5) & (!\LCD_KHOITAO_HIENTHI|PTR\(0) & ((\DEM_GIOPHUTGIAY|GIAY_REG\(4)) # (\DEM_GIOPHUTGIAY|GIAY_REG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(4),
	datab => \DEM_GIOPHUTGIAY|GIAY_REG\(3),
	datac => \DEM_GIOPHUTGIAY|GIAY_REG\(5),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(0),
	combout => \LCD_KHOITAO_HIENTHI|Selector37~5_combout\);

-- Location: LCCOMB_X30_Y38_N14
\LCD_KHOITAO_HIENTHI|Selector37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~6_combout\ = (\HEXTOBCD_GIAY|BCD_HEX~0_combout\ & (((!\DEM_GIOPHUTGIAY|GIAY_REG\(1) & \HEXTOBCD_GIAY|BCD_HEX~1_combout\)))) # (!\HEXTOBCD_GIAY|BCD_HEX~0_combout\ & ((\DEM_GIOPHUTGIAY|GIAY_REG\(1)) # 
-- ((!\HEXTOBCD_GIAY|BCD_HEX~2_combout\ & !\HEXTOBCD_GIAY|BCD_HEX~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEXTOBCD_GIAY|BCD_HEX~2_combout\,
	datab => \HEXTOBCD_GIAY|BCD_HEX~0_combout\,
	datac => \DEM_GIOPHUTGIAY|GIAY_REG\(1),
	datad => \HEXTOBCD_GIAY|BCD_HEX~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector37~6_combout\);

-- Location: LCCOMB_X30_Y40_N24
\LCD_KHOITAO_HIENTHI|Selector37~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~7_combout\ = (\LCD_KHOITAO_HIENTHI|Mux10~2_combout\ & ((\LCD_KHOITAO_HIENTHI|Selector37~5_combout\) # ((\LCD_KHOITAO_HIENTHI|PTR\(0) & \LCD_KHOITAO_HIENTHI|Selector37~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datab => \LCD_KHOITAO_HIENTHI|Selector37~5_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector37~6_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Mux10~2_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector37~7_combout\);

-- Location: LCCOMB_X30_Y40_N2
\LCD_KHOITAO_HIENTHI|Selector37~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~10_combout\ = (\LCD_KHOITAO_HIENTHI|Selector37~4_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector37~7_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector37~8_combout\ & \LCD_KHOITAO_HIENTHI|Selector37~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector37~8_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector37~9_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector37~4_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector37~7_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector37~10_combout\);

-- Location: LCCOMB_X27_Y40_N28
\LCD_KHOITAO_HIENTHI|Selector37~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~11_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & (\LCD_KHOITAO_HIENTHI|PTR\(3) & (\LCD_KHOITAO_HIENTHI|Selector39~2_combout\ & \LCD_KHOITAO_HIENTHI|Selector37~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector37~10_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector37~11_combout\);

-- Location: LCCOMB_X27_Y40_N8
\LCD_KHOITAO_HIENTHI|Selector37~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector37~15_combout\ = (\LCD_KHOITAO_HIENTHI|Selector37~14_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector37~11_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector38~5_combout\ & \LCD_KHOITAO_HIENTHI|LCD_DB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector37~14_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector38~5_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_DB\(2),
	datad => \LCD_KHOITAO_HIENTHI|Selector37~11_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector37~15_combout\);

-- Location: FF_X27_Y40_N9
\LCD_KHOITAO_HIENTHI|LCD_DB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector37~15_combout\,
	ena => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_DB\(2));

-- Location: LCCOMB_X30_Y40_N8
\LCD_KHOITAO_HIENTHI|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux16~0_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(0) & ((\LCD_KHOITAO_HIENTHI|PTR\(3) $ (\LCD_KHOITAO_HIENTHI|PTR\(1))) # (!\LCD_KHOITAO_HIENTHI|PTR\(2)))) # (!\LCD_KHOITAO_HIENTHI|PTR\(0) & (((\LCD_KHOITAO_HIENTHI|PTR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(0),
	combout => \LCD_KHOITAO_HIENTHI|Mux16~0_combout\);

-- Location: LCCOMB_X29_Y40_N14
\LCD_KHOITAO_HIENTHI|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux9~0_combout\ = \LCD_KHOITAO_HIENTHI|PTR\(0) $ (\LCD_KHOITAO_HIENTHI|PTR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(1),
	combout => \LCD_KHOITAO_HIENTHI|Mux9~0_combout\);

-- Location: LCCOMB_X29_Y40_N22
\LCD_KHOITAO_HIENTHI|Selector36~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector36~8_combout\ = (!\LCD_KHOITAO_HIENTHI|PTR\(2) & (\LCD_KHOITAO_HIENTHI|Mux9~0_combout\ & (\LCD_KHOITAO_HIENTHI|Selector23~6_combout\ & \LCD_KHOITAO_HIENTHI|Selector35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \LCD_KHOITAO_HIENTHI|Mux9~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector23~6_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector35~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector36~8_combout\);

-- Location: LCCOMB_X29_Y40_N0
\LCD_KHOITAO_HIENTHI|Selector36~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector36~9_combout\ = (\LCD_KHOITAO_HIENTHI|Selector36~8_combout\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\ & (!\LCD_KHOITAO_HIENTHI|Mux16~0_combout\ & \LCD_KHOITAO_HIENTHI|Selector39~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datab => \LCD_KHOITAO_HIENTHI|Mux16~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector36~8_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector36~9_combout\);

-- Location: LCCOMB_X29_Y37_N22
\HEXTOBCD_PHUT|BCD_HEX~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEXTOBCD_PHUT|BCD_HEX~2_combout\ = (\DEM_GIOPHUTGIAY|PHUT_REG\(3) & (!\DEM_GIOPHUTGIAY|PHUT_REG\(5) & ((\DEM_GIOPHUTGIAY|PHUT_REG\(2)) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(4))))) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(3) & (\DEM_GIOPHUTGIAY|PHUT_REG\(5) & 
-- ((\DEM_GIOPHUTGIAY|PHUT_REG\(4)) # (!\DEM_GIOPHUTGIAY|PHUT_REG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|PHUT_REG\(2),
	datab => \DEM_GIOPHUTGIAY|PHUT_REG\(3),
	datac => \DEM_GIOPHUTGIAY|PHUT_REG\(4),
	datad => \DEM_GIOPHUTGIAY|PHUT_REG\(5),
	combout => \HEXTOBCD_PHUT|BCD_HEX~2_combout\);

-- Location: LCCOMB_X30_Y40_N16
\LCD_KHOITAO_HIENTHI|Selector36~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector36~5_combout\ = (\HEXTOBCD_PHUT|BCD_HEX~2_combout\ & (\HEXTOBCD_PHUT|BCD_HEX~0_combout\ & ((!\DEM_GIOPHUTGIAY|PHUT_REG\(1))))) # (!\HEXTOBCD_PHUT|BCD_HEX~2_combout\ & (\HEXTOBCD_PHUT|BCD_HEX~1_combout\ & 
-- ((\DEM_GIOPHUTGIAY|PHUT_REG\(1)) # (!\HEXTOBCD_PHUT|BCD_HEX~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEXTOBCD_PHUT|BCD_HEX~0_combout\,
	datab => \HEXTOBCD_PHUT|BCD_HEX~2_combout\,
	datac => \HEXTOBCD_PHUT|BCD_HEX~1_combout\,
	datad => \DEM_GIOPHUTGIAY|PHUT_REG\(1),
	combout => \LCD_KHOITAO_HIENTHI|Selector36~5_combout\);

-- Location: LCCOMB_X30_Y38_N24
\LCD_KHOITAO_HIENTHI|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector36~0_combout\ = (\HEXTOBCD_GIAY|BCD_HEX~2_combout\ & (!\DEM_GIOPHUTGIAY|GIAY_REG\(1) & (\HEXTOBCD_GIAY|BCD_HEX~0_combout\))) # (!\HEXTOBCD_GIAY|BCD_HEX~2_combout\ & (\HEXTOBCD_GIAY|BCD_HEX~1_combout\ & 
-- ((\DEM_GIOPHUTGIAY|GIAY_REG\(1)) # (!\HEXTOBCD_GIAY|BCD_HEX~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DEM_GIOPHUTGIAY|GIAY_REG\(1),
	datab => \HEXTOBCD_GIAY|BCD_HEX~0_combout\,
	datac => \HEXTOBCD_GIAY|BCD_HEX~2_combout\,
	datad => \HEXTOBCD_GIAY|BCD_HEX~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector36~0_combout\);

-- Location: LCCOMB_X30_Y40_N6
\LCD_KHOITAO_HIENTHI|Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector36~1_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(0) & (\LCD_KHOITAO_HIENTHI|PTR\(3) & (\LCD_KHOITAO_HIENTHI|Selector36~0_combout\ & \LCD_KHOITAO_HIENTHI|Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|Selector36~0_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Mux10~2_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector36~1_combout\);

-- Location: LCCOMB_X30_Y40_N18
\LCD_KHOITAO_HIENTHI|Selector36~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector36~6_combout\ = (\LCD_KHOITAO_HIENTHI|Selector36~4_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector36~1_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector36~5_combout\ & \LCD_KHOITAO_HIENTHI|Selector37~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector36~4_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector36~5_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector37~9_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector36~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector36~6_combout\);

-- Location: LCCOMB_X29_Y40_N28
\LCD_KHOITAO_HIENTHI|Selector36~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector36~7_combout\ = (\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & (\LCD_KHOITAO_HIENTHI|Selector35~0_combout\ & (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & \LCD_KHOITAO_HIENTHI|Selector36~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector35~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datad => \LCD_KHOITAO_HIENTHI|Selector36~6_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector36~7_combout\);

-- Location: LCCOMB_X29_Y40_N26
\LCD_KHOITAO_HIENTHI|Selector36~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector36~10_combout\ = (\LCD_KHOITAO_HIENTHI|Selector36~9_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector36~7_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector38~5_combout\ & \LCD_KHOITAO_HIENTHI|LCD_DB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector38~5_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector36~9_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_DB\(3),
	datad => \LCD_KHOITAO_HIENTHI|Selector36~7_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector36~10_combout\);

-- Location: FF_X29_Y40_N27
\LCD_KHOITAO_HIENTHI|LCD_DB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector36~10_combout\,
	ena => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_DB\(3));

-- Location: LCCOMB_X28_Y40_N2
\LCD_KHOITAO_HIENTHI|Selector39~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector39~11_combout\ = (!\LCD_KHOITAO_HIENTHI|Selector39~2_combout\ & ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\) # (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\,
	datab => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\,
	combout => \LCD_KHOITAO_HIENTHI|Selector39~11_combout\);

-- Location: LCCOMB_X29_Y40_N18
\LCD_KHOITAO_HIENTHI|Selector35~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector35~6_combout\ = (!\LCD_KHOITAO_HIENTHI|PTR\(3) & (\LCD_KHOITAO_HIENTHI|PTR\(2) & (\LCD_KHOITAO_HIENTHI|PTR\(0) $ (\LCD_KHOITAO_HIENTHI|PTR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(1),
	combout => \LCD_KHOITAO_HIENTHI|Selector35~6_combout\);

-- Location: LCCOMB_X29_Y39_N8
\LCD_GAN_DULIEU_HIENTHI_NN|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_GAN_DULIEU_HIENTHI_NN|process_0~1_combout\ = (!\XULY_MOD|GIATRI_MOD_REG\(1) & (\XULY_MOD|GIATRI_MOD_REG\(0) & !\XULY_NHAPNHAY|A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XULY_MOD|GIATRI_MOD_REG\(1),
	datac => \XULY_MOD|GIATRI_MOD_REG\(0),
	datad => \XULY_NHAPNHAY|A~q\,
	combout => \LCD_GAN_DULIEU_HIENTHI_NN|process_0~1_combout\);

-- Location: LCCOMB_X29_Y39_N30
\LCD_KHOITAO_HIENTHI|Selector35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector35~3_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(2) & (((!\LCD_GAN_DULIEU_HIENTHI_NN|process_0~1_combout\)))) # (!\LCD_KHOITAO_HIENTHI|PTR\(2) & (\LCD_KHOITAO_HIENTHI|PTR\(0) & ((!\LCD_GAN_DULIEU_HIENTHI_NN|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datac => \LCD_GAN_DULIEU_HIENTHI_NN|process_0~1_combout\,
	datad => \LCD_GAN_DULIEU_HIENTHI_NN|process_0~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector35~3_combout\);

-- Location: LCCOMB_X29_Y39_N20
\LCD_KHOITAO_HIENTHI|Selector35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector35~4_combout\ = (\LCD_KHOITAO_HIENTHI|Mux11~11_combout\) # ((!\LCD_KHOITAO_HIENTHI|PTR\(0) & (\LCD_KHOITAO_HIENTHI|PTR\(2) & !\LCD_GAN_DULIEU_HIENTHI_NN|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datab => \LCD_KHOITAO_HIENTHI|Mux11~11_combout\,
	datac => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datad => \LCD_GAN_DULIEU_HIENTHI_NN|process_0~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector35~4_combout\);

-- Location: LCCOMB_X29_Y39_N10
\LCD_KHOITAO_HIENTHI|Selector35~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector35~5_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(3) & ((\LCD_KHOITAO_HIENTHI|PTR\(1) & (\LCD_KHOITAO_HIENTHI|Selector35~3_combout\)) # (!\LCD_KHOITAO_HIENTHI|PTR\(1) & ((\LCD_KHOITAO_HIENTHI|Selector35~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datac => \LCD_KHOITAO_HIENTHI|Selector35~3_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector35~4_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector35~5_combout\);

-- Location: LCCOMB_X29_Y39_N0
\LCD_KHOITAO_HIENTHI|Selector35~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector35~7_combout\ = (\LCD_KHOITAO_HIENTHI|Selector35~2_combout\) # ((\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & ((\LCD_KHOITAO_HIENTHI|Selector35~6_combout\) # (\LCD_KHOITAO_HIENTHI|Selector35~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector35~2_combout\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datac => \LCD_KHOITAO_HIENTHI|Selector35~6_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector35~5_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector35~7_combout\);

-- Location: LCCOMB_X28_Y40_N28
\LCD_KHOITAO_HIENTHI|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector35~1_combout\ = (!\LCD_KHOITAO_HIENTHI|PTR\(2) & (\LCD_KHOITAO_HIENTHI|PTR\(0) & (!\LCD_KHOITAO_HIENTHI|PTR\(1) & \LCD_KHOITAO_HIENTHI|Selector23~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(0),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datad => \LCD_KHOITAO_HIENTHI|Selector23~6_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector35~1_combout\);

-- Location: LCCOMB_X28_Y40_N6
\LCD_KHOITAO_HIENTHI|Selector35~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector35~8_combout\ = (\LCD_KHOITAO_HIENTHI|Selector35~0_combout\ & ((\LCD_KHOITAO_HIENTHI|Selector35~1_combout\) # ((\LCD_KHOITAO_HIENTHI|Equal4~1_combout\ & \LCD_KHOITAO_HIENTHI|Selector35~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector35~0_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector35~7_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector35~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector35~8_combout\);

-- Location: LCCOMB_X28_Y40_N4
\LCD_KHOITAO_HIENTHI|Selector35~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector35~9_combout\ = (\LCD_KHOITAO_HIENTHI|Selector35~8_combout\) # ((\LCD_KHOITAO_HIENTHI|LCD_DB\(4) & ((\LCD_KHOITAO_HIENTHI|Selector39~11_combout\) # (!\LCD_KHOITAO_HIENTHI|Selector38~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector38~11_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector39~11_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_DB\(4),
	datad => \LCD_KHOITAO_HIENTHI|Selector35~8_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector35~9_combout\);

-- Location: FF_X28_Y40_N5
\LCD_KHOITAO_HIENTHI|LCD_DB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector35~9_combout\,
	ena => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_DB\(4));

-- Location: LCCOMB_X28_Y40_N24
\LCD_KHOITAO_HIENTHI|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector34~1_combout\ = (\LCD_KHOITAO_HIENTHI|Selector35~0_combout\ & ((\LCD_KHOITAO_HIENTHI|Selector35~1_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector34~0_combout\ & \LCD_KHOITAO_HIENTHI|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector34~0_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Equal4~1_combout\,
	datac => \LCD_KHOITAO_HIENTHI|Selector35~0_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector35~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector34~1_combout\);

-- Location: LCCOMB_X28_Y40_N18
\LCD_KHOITAO_HIENTHI|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector34~2_combout\ = (\LCD_KHOITAO_HIENTHI|Selector34~1_combout\) # ((\LCD_KHOITAO_HIENTHI|Selector38~5_combout\ & \LCD_KHOITAO_HIENTHI|LCD_DB\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_KHOITAO_HIENTHI|Selector38~5_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_DB\(5),
	datad => \LCD_KHOITAO_HIENTHI|Selector34~1_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector34~2_combout\);

-- Location: FF_X28_Y40_N19
\LCD_KHOITAO_HIENTHI|LCD_DB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector34~2_combout\,
	ena => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_DB\(5));

-- Location: LCCOMB_X27_Y39_N2
\LCD_KHOITAO_HIENTHI|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux14~0_combout\ = (!\LCD_KHOITAO_HIENTHI|PTR\(3) & ((\LCD_KHOITAO_HIENTHI|PTR\(1) & ((!\LCD_KHOITAO_HIENTHI|PTR\(0)) # (!\LCD_KHOITAO_HIENTHI|PTR\(2)))) # (!\LCD_KHOITAO_HIENTHI|PTR\(1) & ((\LCD_KHOITAO_HIENTHI|PTR\(2)) # 
-- (\LCD_KHOITAO_HIENTHI|PTR\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(0),
	combout => \LCD_KHOITAO_HIENTHI|Mux14~0_combout\);

-- Location: LCCOMB_X27_Y39_N12
\LCD_KHOITAO_HIENTHI|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Mux6~0_combout\ = (\LCD_KHOITAO_HIENTHI|PTR\(3)) # ((\LCD_KHOITAO_HIENTHI|PTR\(2) & ((\LCD_KHOITAO_HIENTHI|PTR\(1)) # (\LCD_KHOITAO_HIENTHI|PTR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|PTR\(3),
	datab => \LCD_KHOITAO_HIENTHI|PTR\(1),
	datac => \LCD_KHOITAO_HIENTHI|PTR\(2),
	datad => \LCD_KHOITAO_HIENTHI|PTR\(0),
	combout => \LCD_KHOITAO_HIENTHI|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y39_N10
\LCD_KHOITAO_HIENTHI|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector33~0_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & (((\LCD_KHOITAO_HIENTHI|Mux14~0_combout\ & \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\)) # (!\LCD_KHOITAO_HIENTHI|Mux6~0_combout\))) # 
-- (!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & (\LCD_KHOITAO_HIENTHI|Mux14~0_combout\ & (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datab => \LCD_KHOITAO_HIENTHI|Mux14~0_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datad => \LCD_KHOITAO_HIENTHI|Mux6~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector33~0_combout\);

-- Location: LCCOMB_X27_Y40_N4
\LCD_KHOITAO_HIENTHI|Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector33~1_combout\ = (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\) # ((\LCD_KHOITAO_HIENTHI|Selector39~2_combout\ & ((\LCD_KHOITAO_HIENTHI|Selector33~0_combout\))) # (!\LCD_KHOITAO_HIENTHI|Selector39~2_combout\ & 
-- (\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L1~q\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_ADDR_L2~q\,
	datad => \LCD_KHOITAO_HIENTHI|Selector33~0_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector33~1_combout\);

-- Location: LCCOMB_X28_Y40_N12
\LCD_KHOITAO_HIENTHI|Selector38~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector38~11_combout\ = (\LCD_KHOITAO_HIENTHI|Selector38~4_combout\ & ((\LCD_KHOITAO_HIENTHI|Selector39~2_combout\) # ((!\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\ & !\LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L1~q\,
	datab => \LCD_KHOITAO_HIENTHI|LCD_STATE.LCD_DATA_L2~q\,
	datac => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\,
	datad => \LCD_KHOITAO_HIENTHI|Selector38~4_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector38~11_combout\);

-- Location: LCCOMB_X28_Y40_N8
\LCD_KHOITAO_HIENTHI|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector33~2_combout\ = (\LCD_KHOITAO_HIENTHI|Selector33~1_combout\ & ((\LCD_KHOITAO_HIENTHI|Selector39~2_combout\) # ((\LCD_KHOITAO_HIENTHI|LCD_DB\(6))))) # (!\LCD_KHOITAO_HIENTHI|Selector33~1_combout\ & 
-- (((\LCD_KHOITAO_HIENTHI|LCD_DB\(6) & !\LCD_KHOITAO_HIENTHI|Selector38~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector33~1_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_DB\(6),
	datad => \LCD_KHOITAO_HIENTHI|Selector38~11_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector33~2_combout\);

-- Location: FF_X28_Y40_N9
\LCD_KHOITAO_HIENTHI|LCD_DB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector33~2_combout\,
	ena => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_DB\(6));

-- Location: LCCOMB_X28_Y40_N22
\LCD_KHOITAO_HIENTHI|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_KHOITAO_HIENTHI|Selector32~0_combout\ = (\LCD_KHOITAO_HIENTHI|Selector22~0_combout\ & (((\LCD_KHOITAO_HIENTHI|LCD_DB\(7) & !\LCD_KHOITAO_HIENTHI|Selector38~11_combout\)))) # (!\LCD_KHOITAO_HIENTHI|Selector22~0_combout\ & 
-- ((\LCD_KHOITAO_HIENTHI|Selector39~2_combout\) # ((\LCD_KHOITAO_HIENTHI|LCD_DB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_KHOITAO_HIENTHI|Selector22~0_combout\,
	datab => \LCD_KHOITAO_HIENTHI|Selector39~2_combout\,
	datac => \LCD_KHOITAO_HIENTHI|LCD_DB\(7),
	datad => \LCD_KHOITAO_HIENTHI|Selector38~11_combout\,
	combout => \LCD_KHOITAO_HIENTHI|Selector32~0_combout\);

-- Location: FF_X28_Y40_N23
\LCD_KHOITAO_HIENTHI|LCD_DB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CKHT~inputclkctrl_outclk\,
	d => \LCD_KHOITAO_HIENTHI|Selector32~0_combout\,
	ena => \BTN_N[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_KHOITAO_HIENTHI|LCD_DB\(7));

ww_LCD_E <= \LCD_E~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LCD_BLON <= \LCD_BLON~output_o\;

ww_LCD_DB(0) <= \LCD_DB[0]~output_o\;

ww_LCD_DB(1) <= \LCD_DB[1]~output_o\;

ww_LCD_DB(2) <= \LCD_DB[2]~output_o\;

ww_LCD_DB(3) <= \LCD_DB[3]~output_o\;

ww_LCD_DB(4) <= \LCD_DB[4]~output_o\;

ww_LCD_DB(5) <= \LCD_DB[5]~output_o\;

ww_LCD_DB(6) <= \LCD_DB[6]~output_o\;

ww_LCD_DB(7) <= \LCD_DB[7]~output_o\;
END structure;


