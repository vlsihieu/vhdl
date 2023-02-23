--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: BTVN_SO52_synthesis.vhd
-- /___/   /\     Timestamp: Wed Jul 01 09:16:46 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm BTVN_SO52 -w -dir netgen/synthesis -ofmt vhdl -sim BTVN_SO52.ngc BTVN_SO52_synthesis.vhd 
-- Device	: xc3s500e-4-pq208
-- Input file	: BTVN_SO52.ngc
-- Output file	: C:\Users\Admin\Documents\TT-HDL-N7-S2\VHDL\BAI_TAP_LAM_THEM_VHDL\BTVN_SO52\netgen\synthesis\BTVN_SO52_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: BTVN_SO52
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity BTVN_SO52 is
  port (
    SW0 : in STD_LOGIC := 'X'; 
    CKHT : in STD_LOGIC := 'X'; 
    ANODE : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    SSEG : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    BTN : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end BTVN_SO52;

architecture Structure of BTVN_SO52 is
  signal ANODE_0_OBUF_8 : STD_LOGIC; 
  signal ANODE_1_OBUF_9 : STD_LOGIC; 
  signal ANODE_2_OBUF_10 : STD_LOGIC; 
  signal ANODE_3_OBUF_11 : STD_LOGIC; 
  signal ANODE_4_OBUF_12 : STD_LOGIC; 
  signal ANODE_5_OBUF_13 : STD_LOGIC; 
  signal ANODE_6_OBUF_14 : STD_LOGIC; 
  signal ANODE_7_OBUF_15 : STD_LOGIC; 
  signal BTN_0_IBUF_18 : STD_LOGIC; 
  signal BTN_1_IBUF_19 : STD_LOGIC; 
  signal BTN_CDLH : STD_LOGIC; 
  signal CKHT_BUFGP_26 : STD_LOGIC; 
  signal CKHT_inv : STD_LOGIC; 
  signal ENA1 : STD_LOGIC; 
  signal ENA10 : STD_LOGIC; 
  signal ENA1KHZ : STD_LOGIC; 
  signal ENA5 : STD_LOGIC; 
  signal IC0_D10HZ_NEXT_cmp_eq0000 : STD_LOGIC; 
  signal IC0_D10HZ_NEXT_cmp_eq000010_60 : STD_LOGIC; 
  signal IC0_D10HZ_NEXT_cmp_eq0000111_61 : STD_LOGIC; 
  signal IC0_D10HZ_NEXT_cmp_eq0000119_62 : STD_LOGIC; 
  signal IC0_D10HZ_NEXT_cmp_eq0000142_63 : STD_LOGIC; 
  signal IC0_D10HZ_NEXT_cmp_eq000021_64 : STD_LOGIC; 
  signal IC0_D10HZ_NEXT_cmp_eq000032_65 : STD_LOGIC; 
  signal IC0_D1HZ_NEXT_cmp_eq0000 : STD_LOGIC; 
  signal IC0_D1HZ_NEXT_cmp_eq000010_116 : STD_LOGIC; 
  signal IC0_D1HZ_NEXT_cmp_eq0000112_117 : STD_LOGIC; 
  signal IC0_D1HZ_NEXT_cmp_eq000013_118 : STD_LOGIC; 
  signal IC0_D1HZ_NEXT_cmp_eq0000133_119 : STD_LOGIC; 
  signal IC0_D1HZ_NEXT_cmp_eq000014_120 : STD_LOGIC; 
  signal IC0_D1HZ_NEXT_cmp_eq0000146_121 : STD_LOGIC; 
  signal IC0_D1HZ_NEXT_cmp_eq000024_122 : STD_LOGIC; 
  signal IC0_D1KHZ_NEXT_cmp_eq0000 : STD_LOGIC; 
  signal IC0_D1KHZ_NEXT_cmp_eq0000111_166 : STD_LOGIC; 
  signal IC0_D1KHZ_NEXT_cmp_eq0000123_167 : STD_LOGIC; 
  signal IC0_D1KHZ_NEXT_cmp_eq000021_168 : STD_LOGIC; 
  signal IC0_D2HZ_NEXT_cmp_eq0000 : STD_LOGIC; 
  signal IC0_D2HZ_NEXT_cmp_eq000010_211 : STD_LOGIC; 
  signal IC0_D2HZ_NEXT_cmp_eq0000112_212 : STD_LOGIC; 
  signal IC0_D2HZ_NEXT_cmp_eq0000129_213 : STD_LOGIC; 
  signal IC0_D2HZ_NEXT_cmp_eq000013_214 : STD_LOGIC; 
  signal IC0_D2HZ_NEXT_cmp_eq0000142_215 : STD_LOGIC; 
  signal IC0_D2HZ_NEXT_cmp_eq000017_216 : STD_LOGIC; 
  signal IC0_D2HZ_NEXT_cmp_eq000024_217 : STD_LOGIC; 
  signal IC0_D5HZ_NEXT_cmp_eq0000 : STD_LOGIC; 
  signal IC0_D5HZ_NEXT_cmp_eq000010_268 : STD_LOGIC; 
  signal IC0_D5HZ_NEXT_cmp_eq0000111_269 : STD_LOGIC; 
  signal IC0_D5HZ_NEXT_cmp_eq0000123_270 : STD_LOGIC; 
  signal IC0_D5HZ_NEXT_cmp_eq0000147_271 : STD_LOGIC; 
  signal IC0_D5HZ_NEXT_cmp_eq000021_272 : STD_LOGIC; 
  signal IC0_D5HZ_NEXT_cmp_eq000032_273 : STD_LOGIC; 
  signal IC0_ENA10HZ_cmp_eq000010_298 : STD_LOGIC; 
  signal IC0_ENA10HZ_cmp_eq000021_299 : STD_LOGIC; 
  signal IC0_ENA10HZ_cmp_eq000032_300 : STD_LOGIC; 
  signal IC0_ENA1HZ_cmp_eq000010_301 : STD_LOGIC; 
  signal IC0_ENA1HZ_cmp_eq000013_302 : STD_LOGIC; 
  signal IC0_ENA1HZ_cmp_eq000024_303 : STD_LOGIC; 
  signal IC0_ENA1KHZ_cmp_eq000010_304 : STD_LOGIC; 
  signal IC0_ENA1KHZ_cmp_eq000021_305 : STD_LOGIC; 
  signal IC0_ENA5HZ_cmp_eq000010_306 : STD_LOGIC; 
  signal IC0_ENA5HZ_cmp_eq000021_307 : STD_LOGIC; 
  signal IC0_ENA5HZ_cmp_eq000032_308 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_10_rt_311 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_11_rt_313 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_12_rt_315 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_13_rt_317 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_14_rt_319 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_15_rt_321 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_16_rt_323 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_17_rt_325 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_18_rt_327 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_19_rt_329 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_1_rt_331 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_20_rt_333 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_21_rt_335 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_2_rt_337 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_3_rt_339 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_4_rt_341 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_5_rt_343 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_6_rt_345 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_7_rt_347 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_8_rt_349 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy_9_rt_351 : STD_LOGIC; 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_xor_22_rt_353 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_10_rt_356 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_11_rt_358 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_12_rt_360 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_13_rt_362 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_14_rt_364 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_15_rt_366 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_16_rt_368 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_17_rt_370 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_18_rt_372 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_19_rt_374 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_1_rt_376 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_20_rt_378 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_21_rt_380 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_22_rt_382 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_23_rt_384 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_24_rt_386 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_2_rt_388 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_3_rt_390 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_4_rt_392 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_5_rt_394 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_6_rt_396 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_7_rt_398 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_8_rt_400 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy_9_rt_402 : STD_LOGIC; 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_xor_25_rt_404 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_10_rt_407 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_11_rt_409 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_12_rt_411 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_13_rt_413 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_14_rt_415 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_1_rt_417 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_2_rt_419 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_3_rt_421 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_4_rt_423 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_5_rt_425 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_6_rt_427 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_7_rt_429 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_8_rt_431 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy_9_rt_433 : STD_LOGIC; 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_xor_15_rt_435 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_10_rt_438 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_11_rt_440 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_12_rt_442 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_13_rt_444 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_14_rt_446 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_15_rt_448 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_16_rt_450 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_17_rt_452 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_18_rt_454 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_19_rt_456 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_1_rt_458 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_20_rt_460 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_21_rt_462 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_22_rt_464 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_23_rt_466 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_2_rt_468 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_3_rt_470 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_4_rt_472 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_5_rt_474 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_6_rt_476 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_7_rt_478 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_8_rt_480 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy_9_rt_482 : STD_LOGIC; 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_xor_24_rt_484 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_10_rt_487 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_11_rt_489 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_12_rt_491 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_13_rt_493 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_14_rt_495 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_15_rt_497 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_16_rt_499 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_17_rt_501 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_18_rt_503 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_19_rt_505 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_1_rt_507 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_20_rt_509 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_21_rt_511 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_22_rt_513 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_2_rt_515 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_3_rt_517 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_4_rt_519 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_5_rt_521 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_6_rt_523 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_7_rt_525 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_8_rt_527 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy_9_rt_529 : STD_LOGIC; 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_xor_23_rt_531 : STD_LOGIC; 
  signal IC0_N01 : STD_LOGIC; 
  signal IC0_N11 : STD_LOGIC; 
  signal IC0_N2 : STD_LOGIC; 
  signal IC0_N3 : STD_LOGIC; 
  signal IC1_IC3_DB_REG_FSM_FFd1_536 : STD_LOGIC; 
  signal IC1_IC3_DB_REG_FSM_FFd1_In : STD_LOGIC; 
  signal IC1_IC3_DB_REG_FSM_FFd2_538 : STD_LOGIC; 
  signal IC1_IC3_DB_REG_cmp_eq0000 : STD_LOGIC; 
  signal IC1_IC3_Msub_DELAY_REG_addsub0000_cy_0_rt_590 : STD_LOGIC; 
  signal IC1_IC3_N11 : STD_LOGIC; 
  signal IC1_IC4_QFF_629 : STD_LOGIC; 
  signal IC1_2_Mrom_OE : STD_LOGIC; 
  signal IC1_2_Mrom_OE1 : STD_LOGIC; 
  signal IC1_2_Mrom_OE2 : STD_LOGIC; 
  signal IC1_2_Mrom_OE3 : STD_LOGIC; 
  signal IC1_2_Mrom_OE4 : STD_LOGIC; 
  signal IC1_2_Mrom_OE5 : STD_LOGIC; 
  signal IC3_CHUC_0_17_639 : STD_LOGIC; 
  signal IC3_CHUC_0_4_640 : STD_LOGIC; 
  signal IC3_CHUC_0_40_641 : STD_LOGIC; 
  signal IC3_CHUC_1_17_642 : STD_LOGIC; 
  signal IC3_CHUC_1_4_643 : STD_LOGIC; 
  signal IC3_CHUC_1_40_644 : STD_LOGIC; 
  signal IC3_CHUC_2_17_645 : STD_LOGIC; 
  signal IC3_CHUC_2_4_646 : STD_LOGIC; 
  signal IC3_CHUC_2_40_647 : STD_LOGIC; 
  signal IC3_CHUC_3_17_648 : STD_LOGIC; 
  signal IC3_CHUC_3_4_649 : STD_LOGIC; 
  signal IC3_CHUC_3_40_650 : STD_LOGIC; 
  signal IC3_CHUC_REG_0_and0001 : STD_LOGIC; 
  signal IC3_CHUC_REG_0_and000117_656 : STD_LOGIC; 
  signal IC3_CHUC_REG_0_and00012_657 : STD_LOGIC; 
  signal IC3_CHUC_REG_0_and0004 : STD_LOGIC; 
  signal IC3_CHUC_REG_0_and0006 : STD_LOGIC; 
  signal IC3_CHUC_REG_0_cmp_eq0000 : STD_LOGIC; 
  signal IC3_CHUC_REG_0_cmp_eq0001 : STD_LOGIC; 
  signal IC3_CHUC_REG_1_and0001_670 : STD_LOGIC; 
  signal IC3_CHUC_REG_1_and0006 : STD_LOGIC; 
  signal IC3_CHUC_REG_1_cmp_eq0000 : STD_LOGIC; 
  signal IC3_CHUC_REG_1_cmp_eq0001 : STD_LOGIC; 
  signal IC3_CHUC_REG_2_and0001 : STD_LOGIC; 
  signal IC3_CHUC_REG_2_and000129_683 : STD_LOGIC; 
  signal IC3_CHUC_REG_2_and00018_684 : STD_LOGIC; 
  signal IC3_CHUC_REG_2_and0005 : STD_LOGIC; 
  signal IC3_CHUC_REG_3_and0001 : STD_LOGIC; 
  signal IC3_CHUC_REG_3_cmp_eq0000 : STD_LOGIC; 
  signal IC3_CHUC_REG_3_cmp_eq0001 : STD_LOGIC; 
  signal IC3_CHUC_REG_4_and0001_705 : STD_LOGIC; 
  signal IC3_CHUC_REG_4_and0005 : STD_LOGIC; 
  signal IC3_CHUC_REG_4_and0006 : STD_LOGIC; 
  signal IC3_CHUC_REG_4_cmp_eq0001 : STD_LOGIC; 
  signal IC3_CHUC_REG_5_and0001_717 : STD_LOGIC; 
  signal IC3_CHUC_REG_5_cmp_eq0000 : STD_LOGIC; 
  signal IC3_CHUC_REG_5_cmp_eq0001 : STD_LOGIC; 
  signal IC3_DONVI_0_4_724 : STD_LOGIC; 
  signal IC3_DONVI_1_17_725 : STD_LOGIC; 
  signal IC3_DONVI_1_4_726 : STD_LOGIC; 
  signal IC3_DONVI_1_40_727 : STD_LOGIC; 
  signal IC3_DONVI_2_17_728 : STD_LOGIC; 
  signal IC3_DONVI_2_4_729 : STD_LOGIC; 
  signal IC3_DONVI_2_40_730 : STD_LOGIC; 
  signal IC3_DONVI_3_17_731 : STD_LOGIC; 
  signal IC3_DONVI_3_4_732 : STD_LOGIC; 
  signal IC3_DONVI_3_40_733 : STD_LOGIC; 
  signal IC3_DONVI_REG_0_and0001 : STD_LOGIC; 
  signal IC3_DONVI_REG_0_or0000 : STD_LOGIC; 
  signal IC3_DONVI_REG_0_or0000172_744 : STD_LOGIC; 
  signal IC3_DONVI_REG_0_or000028_745 : STD_LOGIC; 
  signal IC3_DONVI_REG_0_or000054_746 : STD_LOGIC; 
  signal IC3_DONVI_REG_0_or000059_747 : STD_LOGIC; 
  signal IC3_DONVI_REG_0_or000070_748 : STD_LOGIC; 
  signal IC3_DONVI_REG_0_or000081_749 : STD_LOGIC; 
  signal IC3_DONVI_REG_1_and0001 : STD_LOGIC; 
  signal IC3_DONVI_REG_2_and0001_763 : STD_LOGIC; 
  signal IC3_DONVI_REG_3_and0001 : STD_LOGIC; 
  signal IC3_DONVI_REG_4_and0001 : STD_LOGIC; 
  signal IC3_DONVI_REG_5_and0001 : STD_LOGIC; 
  signal IC3_N19 : STD_LOGIC; 
  signal IC3_N20 : STD_LOGIC; 
  signal IC3_N57 : STD_LOGIC; 
  signal IC3_N59 : STD_LOGIC; 
  signal IC3_N62 : STD_LOGIC; 
  signal IC3_N63 : STD_LOGIC; 
  signal IC3_N64 : STD_LOGIC; 
  signal IC3_N66 : STD_LOGIC; 
  signal IC4_GIAIMA_SSEG_4_0 : STD_LOGIC; 
  signal IC4_GIAIMA_SSEG_4_32_803 : STD_LOGIC; 
  signal IC4_GIAIMA_SSEG_4_91_804 : STD_LOGIC; 
  signal IC4_GIAIMA_SSEG_6_123_805 : STD_LOGIC; 
  signal IC4_GIAIMA_SSEG_6_46_806 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N159 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N208 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N265 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal RST : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal SSEG_0_OBUF_933 : STD_LOGIC; 
  signal SSEG_1_OBUF_934 : STD_LOGIC; 
  signal SSEG_2_OBUF_935 : STD_LOGIC; 
  signal SSEG_3_OBUF_936 : STD_LOGIC; 
  signal SSEG_4_OBUF_937 : STD_LOGIC; 
  signal SSEG_5_OBUF_938 : STD_LOGIC; 
  signal SSEG_6_OBUF_939 : STD_LOGIC; 
  signal SSEG_7_OBUF_940 : STD_LOGIC; 
  signal SW0_IBUF_942 : STD_LOGIC; 
  signal CHUC : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal DONVI : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC0_D10HZ_NEXT_addsub0000 : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal IC0_D10HZ_REG : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal IC0_D1HZ_NEXT_addsub0000 : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal IC0_D1HZ_REG : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal IC0_D1KHZ_NEXT_addsub0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal IC0_D1KHZ_REG : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal IC0_D2HZ_NEXT_addsub0000 : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal IC0_D2HZ_REG : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal IC0_D5HZ_NEXT_addsub0000 : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal IC0_D5HZ_REG : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_cy : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal IC0_Madd_D10HZ_NEXT_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_cy : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal IC0_Madd_D1HZ_NEXT_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal IC0_Madd_D1KHZ_NEXT_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_cy : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal IC0_Madd_D2HZ_NEXT_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_cy : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal IC0_Madd_D5HZ_NEXT_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal IC1_IC3_DB_REG_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC1_IC3_DB_REG_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal IC1_IC3_DELAY_REG : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal IC1_IC3_DELAY_REG_addsub0000 : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal IC1_IC3_Msub_DELAY_REG_addsub0000_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal IC1_IC3_Msub_DELAY_REG_addsub0000_lut : STD_LOGIC_VECTOR ( 19 downto 1 ); 
  signal IC1_1_Q_REG : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal IC3_CHUC_REG_0 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_CHUC_REG_0_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_CHUC_REG_1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_CHUC_REG_1_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_CHUC_REG_2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_CHUC_REG_2_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_CHUC_REG_3 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_CHUC_REG_3_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_CHUC_REG_4 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_CHUC_REG_4_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_CHUC_REG_5 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_CHUC_REG_5_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_DONVI_REG_0 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_DONVI_REG_0_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_DONVI_REG_1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_DONVI_REG_1_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_DONVI_REG_2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_DONVI_REG_2_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_DONVI_REG_3 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_DONVI_REG_3_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal IC3_DONVI_REG_4 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal IC3_DONVI_REG_4_mux0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal IC3_DONVI_REG_5 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal IC3_DONVI_REG_5_mux0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal IC4_DEM_3BIT_CHON_8KENH_Q_REG : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal IC4_SO_GMA : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => SSEG_7_OBUF_940
    );
  IC1_IC4_QFF : FD_1
    port map (
      C => CKHT_BUFGP_26,
      D => IC1_IC3_DB_REG_FSM_FFd1_536,
      Q => IC1_IC4_QFF_629
    );
  IC1_1_Q_REG_0 : FDCE
    port map (
      C => CKHT_inv,
      CE => BTN_CDLH,
      CLR => RST,
      D => Result(0),
      Q => IC1_1_Q_REG(0)
    );
  IC1_1_Q_REG_1 : FDCE
    port map (
      C => CKHT_inv,
      CE => BTN_CDLH,
      CLR => RST,
      D => Result(1),
      Q => IC1_1_Q_REG(1)
    );
  IC1_1_Q_REG_2 : FDCE
    port map (
      C => CKHT_inv,
      CE => BTN_CDLH,
      CLR => RST,
      D => Result(2),
      Q => IC1_1_Q_REG(2)
    );
  IC4_DEM_3BIT_CHON_8KENH_Q_REG_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_inv,
      CE => ENA1KHZ,
      D => Result_0_1,
      Q => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0)
    );
  IC4_DEM_3BIT_CHON_8KENH_Q_REG_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_inv,
      CE => ENA1KHZ,
      D => Result_1_1,
      Q => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1)
    );
  IC4_DEM_3BIT_CHON_8KENH_Q_REG_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_inv,
      CE => ENA1KHZ,
      D => Result_2_1,
      Q => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_23_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(22),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_xor_23_rt_531,
      O => IC0_D5HZ_NEXT_addsub0000(23)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_22_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(21),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_22_rt_513,
      O => IC0_D5HZ_NEXT_addsub0000(22)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(21),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_22_rt_513,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(22)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_21_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(20),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_21_rt_511,
      O => IC0_D5HZ_NEXT_addsub0000(21)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(20),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_21_rt_511,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(21)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_20_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(19),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_20_rt_509,
      O => IC0_D5HZ_NEXT_addsub0000(20)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(19),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_20_rt_509,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(20)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_19_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(18),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_19_rt_505,
      O => IC0_D5HZ_NEXT_addsub0000(19)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(18),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_19_rt_505,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(19)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_18_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(17),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_18_rt_503,
      O => IC0_D5HZ_NEXT_addsub0000(18)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(17),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_18_rt_503,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(18)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_17_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(16),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_17_rt_501,
      O => IC0_D5HZ_NEXT_addsub0000(17)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(16),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_17_rt_501,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(17)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_16_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(15),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_16_rt_499,
      O => IC0_D5HZ_NEXT_addsub0000(16)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(15),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_16_rt_499,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(16)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_15_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(14),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_15_rt_497,
      O => IC0_D5HZ_NEXT_addsub0000(15)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(14),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_15_rt_497,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(15)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_14_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(13),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_14_rt_495,
      O => IC0_D5HZ_NEXT_addsub0000(14)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(13),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_14_rt_495,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(14)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_13_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(12),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_13_rt_493,
      O => IC0_D5HZ_NEXT_addsub0000(13)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(12),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_13_rt_493,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(13)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_12_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(11),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_12_rt_491,
      O => IC0_D5HZ_NEXT_addsub0000(12)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(11),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_12_rt_491,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(12)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_11_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(10),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_11_rt_489,
      O => IC0_D5HZ_NEXT_addsub0000(11)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(10),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_11_rt_489,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(11)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_10_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(9),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_10_rt_487,
      O => IC0_D5HZ_NEXT_addsub0000(10)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(9),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_10_rt_487,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(10)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_9_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(8),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_9_rt_529,
      O => IC0_D5HZ_NEXT_addsub0000(9)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(8),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_9_rt_529,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(9)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_8_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(7),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_8_rt_527,
      O => IC0_D5HZ_NEXT_addsub0000(8)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(7),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_8_rt_527,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(8)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_7_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(6),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_7_rt_525,
      O => IC0_D5HZ_NEXT_addsub0000(7)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(6),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_7_rt_525,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(7)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_6_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(5),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_6_rt_523,
      O => IC0_D5HZ_NEXT_addsub0000(6)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(5),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_6_rt_523,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(6)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_5_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(4),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_5_rt_521,
      O => IC0_D5HZ_NEXT_addsub0000(5)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(4),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_5_rt_521,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(5)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_4_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(3),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_4_rt_519,
      O => IC0_D5HZ_NEXT_addsub0000(4)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(3),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_4_rt_519,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(4)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_3_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(2),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_3_rt_517,
      O => IC0_D5HZ_NEXT_addsub0000(3)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(2),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_3_rt_517,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(3)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_2_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(1),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_2_rt_515,
      O => IC0_D5HZ_NEXT_addsub0000(2)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(1),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_2_rt_515,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(2)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_1_Q : XORCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(0),
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_cy_1_rt_507,
      O => IC0_D5HZ_NEXT_addsub0000(1)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => IC0_Madd_D5HZ_NEXT_addsub0000_cy(0),
      DI => N0,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_cy_1_rt_507,
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(1)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => IC0_Madd_D5HZ_NEXT_addsub0000_lut(0),
      O => IC0_D5HZ_NEXT_addsub0000(0)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => SSEG_7_OBUF_940,
      S => IC0_Madd_D5HZ_NEXT_addsub0000_lut(0),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy(0)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_25_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(24),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_xor_25_rt_404,
      O => IC0_D1HZ_NEXT_addsub0000(25)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_24_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(23),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_24_rt_386,
      O => IC0_D1HZ_NEXT_addsub0000(24)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_24_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(23),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_24_rt_386,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(24)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_23_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(22),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_23_rt_384,
      O => IC0_D1HZ_NEXT_addsub0000(23)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_23_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(22),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_23_rt_384,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(23)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_22_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(21),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_22_rt_382,
      O => IC0_D1HZ_NEXT_addsub0000(22)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(21),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_22_rt_382,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(22)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_21_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(20),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_21_rt_380,
      O => IC0_D1HZ_NEXT_addsub0000(21)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(20),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_21_rt_380,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(21)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_20_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(19),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_20_rt_378,
      O => IC0_D1HZ_NEXT_addsub0000(20)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(19),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_20_rt_378,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(20)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_19_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(18),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_19_rt_374,
      O => IC0_D1HZ_NEXT_addsub0000(19)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(18),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_19_rt_374,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(19)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_18_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(17),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_18_rt_372,
      O => IC0_D1HZ_NEXT_addsub0000(18)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(17),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_18_rt_372,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(18)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_17_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(16),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_17_rt_370,
      O => IC0_D1HZ_NEXT_addsub0000(17)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(16),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_17_rt_370,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(17)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_16_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(15),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_16_rt_368,
      O => IC0_D1HZ_NEXT_addsub0000(16)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(15),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_16_rt_368,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(16)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_15_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(14),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_15_rt_366,
      O => IC0_D1HZ_NEXT_addsub0000(15)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(14),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_15_rt_366,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(15)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_14_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(13),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_14_rt_364,
      O => IC0_D1HZ_NEXT_addsub0000(14)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(13),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_14_rt_364,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(14)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_13_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(12),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_13_rt_362,
      O => IC0_D1HZ_NEXT_addsub0000(13)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(12),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_13_rt_362,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(13)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_12_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(11),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_12_rt_360,
      O => IC0_D1HZ_NEXT_addsub0000(12)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(11),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_12_rt_360,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(12)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_11_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(10),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_11_rt_358,
      O => IC0_D1HZ_NEXT_addsub0000(11)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(10),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_11_rt_358,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(11)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_10_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(9),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_10_rt_356,
      O => IC0_D1HZ_NEXT_addsub0000(10)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(9),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_10_rt_356,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(10)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_9_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(8),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_9_rt_402,
      O => IC0_D1HZ_NEXT_addsub0000(9)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(8),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_9_rt_402,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(9)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_8_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(7),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_8_rt_400,
      O => IC0_D1HZ_NEXT_addsub0000(8)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(7),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_8_rt_400,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(8)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_7_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(6),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_7_rt_398,
      O => IC0_D1HZ_NEXT_addsub0000(7)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(6),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_7_rt_398,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(7)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_6_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(5),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_6_rt_396,
      O => IC0_D1HZ_NEXT_addsub0000(6)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(5),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_6_rt_396,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(6)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_5_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(4),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_5_rt_394,
      O => IC0_D1HZ_NEXT_addsub0000(5)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(4),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_5_rt_394,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(5)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_4_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(3),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_4_rt_392,
      O => IC0_D1HZ_NEXT_addsub0000(4)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(3),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_4_rt_392,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(4)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_3_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(2),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_3_rt_390,
      O => IC0_D1HZ_NEXT_addsub0000(3)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(2),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_3_rt_390,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(3)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_2_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(1),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_2_rt_388,
      O => IC0_D1HZ_NEXT_addsub0000(2)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(1),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_2_rt_388,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(2)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_1_Q : XORCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(0),
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_cy_1_rt_376,
      O => IC0_D1HZ_NEXT_addsub0000(1)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => IC0_Madd_D1HZ_NEXT_addsub0000_cy(0),
      DI => N0,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_cy_1_rt_376,
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(1)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => IC0_Madd_D1HZ_NEXT_addsub0000_lut(0),
      O => IC0_D1HZ_NEXT_addsub0000(0)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => SSEG_7_OBUF_940,
      S => IC0_Madd_D1HZ_NEXT_addsub0000_lut(0),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy(0)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_24_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(23),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_xor_24_rt_484,
      O => IC0_D2HZ_NEXT_addsub0000(24)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_23_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(22),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_23_rt_466,
      O => IC0_D2HZ_NEXT_addsub0000(23)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_23_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(22),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_23_rt_466,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(23)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_22_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(21),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_22_rt_464,
      O => IC0_D2HZ_NEXT_addsub0000(22)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(21),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_22_rt_464,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(22)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_21_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(20),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_21_rt_462,
      O => IC0_D2HZ_NEXT_addsub0000(21)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(20),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_21_rt_462,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(21)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_20_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(19),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_20_rt_460,
      O => IC0_D2HZ_NEXT_addsub0000(20)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(19),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_20_rt_460,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(20)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_19_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(18),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_19_rt_456,
      O => IC0_D2HZ_NEXT_addsub0000(19)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(18),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_19_rt_456,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(19)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_18_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(17),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_18_rt_454,
      O => IC0_D2HZ_NEXT_addsub0000(18)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(17),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_18_rt_454,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(18)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_17_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(16),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_17_rt_452,
      O => IC0_D2HZ_NEXT_addsub0000(17)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(16),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_17_rt_452,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(17)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_16_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(15),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_16_rt_450,
      O => IC0_D2HZ_NEXT_addsub0000(16)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(15),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_16_rt_450,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(16)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_15_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(14),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_15_rt_448,
      O => IC0_D2HZ_NEXT_addsub0000(15)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(14),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_15_rt_448,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(15)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_14_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(13),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_14_rt_446,
      O => IC0_D2HZ_NEXT_addsub0000(14)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(13),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_14_rt_446,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(14)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_13_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(12),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_13_rt_444,
      O => IC0_D2HZ_NEXT_addsub0000(13)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(12),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_13_rt_444,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(13)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_12_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(11),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_12_rt_442,
      O => IC0_D2HZ_NEXT_addsub0000(12)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(11),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_12_rt_442,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(12)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_11_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(10),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_11_rt_440,
      O => IC0_D2HZ_NEXT_addsub0000(11)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(10),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_11_rt_440,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(11)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_10_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(9),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_10_rt_438,
      O => IC0_D2HZ_NEXT_addsub0000(10)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(9),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_10_rt_438,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(10)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_9_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(8),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_9_rt_482,
      O => IC0_D2HZ_NEXT_addsub0000(9)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(8),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_9_rt_482,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(9)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_8_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(7),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_8_rt_480,
      O => IC0_D2HZ_NEXT_addsub0000(8)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(7),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_8_rt_480,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(8)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_7_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(6),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_7_rt_478,
      O => IC0_D2HZ_NEXT_addsub0000(7)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(6),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_7_rt_478,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(7)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_6_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(5),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_6_rt_476,
      O => IC0_D2HZ_NEXT_addsub0000(6)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(5),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_6_rt_476,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(6)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_5_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(4),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_5_rt_474,
      O => IC0_D2HZ_NEXT_addsub0000(5)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(4),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_5_rt_474,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(5)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_4_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(3),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_4_rt_472,
      O => IC0_D2HZ_NEXT_addsub0000(4)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(3),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_4_rt_472,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(4)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_3_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(2),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_3_rt_470,
      O => IC0_D2HZ_NEXT_addsub0000(3)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(2),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_3_rt_470,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(3)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_2_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(1),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_2_rt_468,
      O => IC0_D2HZ_NEXT_addsub0000(2)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(1),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_2_rt_468,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(2)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_1_Q : XORCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(0),
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_cy_1_rt_458,
      O => IC0_D2HZ_NEXT_addsub0000(1)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => IC0_Madd_D2HZ_NEXT_addsub0000_cy(0),
      DI => N0,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_cy_1_rt_458,
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(1)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => IC0_Madd_D2HZ_NEXT_addsub0000_lut(0),
      O => IC0_D2HZ_NEXT_addsub0000(0)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => SSEG_7_OBUF_940,
      S => IC0_Madd_D2HZ_NEXT_addsub0000_lut(0),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy(0)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_22_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(21),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_xor_22_rt_353,
      O => IC0_D10HZ_NEXT_addsub0000(22)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_21_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(20),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_21_rt_335,
      O => IC0_D10HZ_NEXT_addsub0000(21)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(20),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_21_rt_335,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(21)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_20_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(19),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_20_rt_333,
      O => IC0_D10HZ_NEXT_addsub0000(20)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(19),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_20_rt_333,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(20)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_19_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(18),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_19_rt_329,
      O => IC0_D10HZ_NEXT_addsub0000(19)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(18),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_19_rt_329,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(19)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_18_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(17),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_18_rt_327,
      O => IC0_D10HZ_NEXT_addsub0000(18)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(17),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_18_rt_327,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(18)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_17_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(16),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_17_rt_325,
      O => IC0_D10HZ_NEXT_addsub0000(17)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(16),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_17_rt_325,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(17)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_16_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(15),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_16_rt_323,
      O => IC0_D10HZ_NEXT_addsub0000(16)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(15),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_16_rt_323,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(16)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_15_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(14),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_15_rt_321,
      O => IC0_D10HZ_NEXT_addsub0000(15)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(14),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_15_rt_321,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(15)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_14_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(13),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_14_rt_319,
      O => IC0_D10HZ_NEXT_addsub0000(14)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(13),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_14_rt_319,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(14)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_13_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(12),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_13_rt_317,
      O => IC0_D10HZ_NEXT_addsub0000(13)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(12),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_13_rt_317,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(13)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_12_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(11),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_12_rt_315,
      O => IC0_D10HZ_NEXT_addsub0000(12)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(11),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_12_rt_315,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(12)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_11_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(10),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_11_rt_313,
      O => IC0_D10HZ_NEXT_addsub0000(11)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(10),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_11_rt_313,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(11)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_10_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(9),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_10_rt_311,
      O => IC0_D10HZ_NEXT_addsub0000(10)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(9),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_10_rt_311,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(10)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_9_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(8),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_9_rt_351,
      O => IC0_D10HZ_NEXT_addsub0000(9)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(8),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_9_rt_351,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(9)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_8_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(7),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_8_rt_349,
      O => IC0_D10HZ_NEXT_addsub0000(8)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(7),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_8_rt_349,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(8)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_7_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(6),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_7_rt_347,
      O => IC0_D10HZ_NEXT_addsub0000(7)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(6),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_7_rt_347,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(7)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_6_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(5),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_6_rt_345,
      O => IC0_D10HZ_NEXT_addsub0000(6)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(5),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_6_rt_345,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(6)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_5_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(4),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_5_rt_343,
      O => IC0_D10HZ_NEXT_addsub0000(5)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(4),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_5_rt_343,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(5)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_4_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(3),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_4_rt_341,
      O => IC0_D10HZ_NEXT_addsub0000(4)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(3),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_4_rt_341,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(4)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_3_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(2),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_3_rt_339,
      O => IC0_D10HZ_NEXT_addsub0000(3)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(2),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_3_rt_339,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(3)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_2_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(1),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_2_rt_337,
      O => IC0_D10HZ_NEXT_addsub0000(2)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(1),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_2_rt_337,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(2)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_1_Q : XORCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(0),
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_cy_1_rt_331,
      O => IC0_D10HZ_NEXT_addsub0000(1)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => IC0_Madd_D10HZ_NEXT_addsub0000_cy(0),
      DI => N0,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_cy_1_rt_331,
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(1)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => IC0_Madd_D10HZ_NEXT_addsub0000_lut(0),
      O => IC0_D10HZ_NEXT_addsub0000(0)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => SSEG_7_OBUF_940,
      S => IC0_Madd_D10HZ_NEXT_addsub0000_lut(0),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy(0)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_15_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(14),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_xor_15_rt_435,
      O => IC0_D1KHZ_NEXT_addsub0000(15)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_14_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(13),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_14_rt_415,
      O => IC0_D1KHZ_NEXT_addsub0000(14)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(13),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_14_rt_415,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(14)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_13_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(12),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_13_rt_413,
      O => IC0_D1KHZ_NEXT_addsub0000(13)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(12),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_13_rt_413,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(13)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_12_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(11),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_12_rt_411,
      O => IC0_D1KHZ_NEXT_addsub0000(12)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(11),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_12_rt_411,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(12)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_11_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(10),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_11_rt_409,
      O => IC0_D1KHZ_NEXT_addsub0000(11)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(10),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_11_rt_409,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(11)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_10_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(9),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_10_rt_407,
      O => IC0_D1KHZ_NEXT_addsub0000(10)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(9),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_10_rt_407,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(10)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_9_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(8),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_9_rt_433,
      O => IC0_D1KHZ_NEXT_addsub0000(9)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(8),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_9_rt_433,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(9)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_8_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(7),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_8_rt_431,
      O => IC0_D1KHZ_NEXT_addsub0000(8)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(7),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_8_rt_431,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(8)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_7_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(6),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_7_rt_429,
      O => IC0_D1KHZ_NEXT_addsub0000(7)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(6),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_7_rt_429,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(7)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_6_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(5),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_6_rt_427,
      O => IC0_D1KHZ_NEXT_addsub0000(6)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(5),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_6_rt_427,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(6)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_5_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(4),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_5_rt_425,
      O => IC0_D1KHZ_NEXT_addsub0000(5)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(4),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_5_rt_425,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(5)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_4_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(3),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_4_rt_423,
      O => IC0_D1KHZ_NEXT_addsub0000(4)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(3),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_4_rt_423,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(4)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_3_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(2),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_3_rt_421,
      O => IC0_D1KHZ_NEXT_addsub0000(3)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(2),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_3_rt_421,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(3)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_2_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(1),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_2_rt_419,
      O => IC0_D1KHZ_NEXT_addsub0000(2)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(1),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_2_rt_419,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(2)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_1_Q : XORCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(0),
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_1_rt_417,
      O => IC0_D1KHZ_NEXT_addsub0000(1)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(0),
      DI => N0,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_1_rt_417,
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(1)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => IC0_Madd_D1KHZ_NEXT_addsub0000_lut(0),
      O => IC0_D1KHZ_NEXT_addsub0000(0)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => SSEG_7_OBUF_940,
      S => IC0_Madd_D1KHZ_NEXT_addsub0000_lut(0),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy(0)
    );
  IC3_DONVI_REG_4_3 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_4_and0001,
      D => IC3_DONVI_REG_4_mux0000(0),
      Q => IC3_DONVI_REG_4(3)
    );
  IC3_DONVI_REG_4_2 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_4_and0001,
      D => IC3_DONVI_REG_4_mux0000(1),
      Q => IC3_DONVI_REG_4(2)
    );
  IC3_DONVI_REG_4_1 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_4_and0001,
      D => IC3_DONVI_REG_4_mux0000(2),
      Q => IC3_DONVI_REG_4(1)
    );
  IC3_DONVI_REG_3_3 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_3_and0001,
      D => IC3_DONVI_REG_3_mux0000(0),
      Q => IC3_DONVI_REG_3(3)
    );
  IC3_DONVI_REG_3_2 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_3_and0001,
      D => IC3_DONVI_REG_3_mux0000(1),
      Q => IC3_DONVI_REG_3(2)
    );
  IC3_DONVI_REG_3_1 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_3_and0001,
      D => IC3_DONVI_REG_3_mux0000(2),
      Q => IC3_DONVI_REG_3(1)
    );
  IC3_DONVI_REG_3_0 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_3_and0001,
      D => IC3_DONVI_REG_3_mux0000(3),
      Q => IC3_DONVI_REG_3(0)
    );
  IC3_DONVI_REG_5_3 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_5_and0001,
      D => IC3_DONVI_REG_5_mux0000(0),
      Q => IC3_DONVI_REG_5(3)
    );
  IC3_DONVI_REG_5_2 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_5_and0001,
      D => IC3_DONVI_REG_5_mux0000(1),
      Q => IC3_DONVI_REG_5(2)
    );
  IC3_DONVI_REG_5_1 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_5_and0001,
      D => IC3_DONVI_REG_5_mux0000(2),
      Q => IC3_DONVI_REG_5(1)
    );
  IC3_DONVI_REG_1_3 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_1_and0001,
      D => IC3_DONVI_REG_1_mux0000(0),
      Q => IC3_DONVI_REG_1(3)
    );
  IC3_DONVI_REG_1_2 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_1_and0001,
      D => IC3_DONVI_REG_1_mux0000(1),
      Q => IC3_DONVI_REG_1(2)
    );
  IC3_DONVI_REG_1_1 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_1_and0001,
      D => IC3_DONVI_REG_1_mux0000(2),
      Q => IC3_DONVI_REG_1(1)
    );
  IC3_DONVI_REG_1_0 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_1_and0001,
      D => IC3_DONVI_REG_1_mux0000(3),
      Q => IC3_DONVI_REG_1(0)
    );
  IC3_DONVI_REG_0_3 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_0_and0001,
      D => IC3_DONVI_REG_0_mux0000(0),
      Q => IC3_DONVI_REG_0(3)
    );
  IC3_DONVI_REG_0_2 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_0_and0001,
      D => IC3_DONVI_REG_0_mux0000(1),
      Q => IC3_DONVI_REG_0(2)
    );
  IC3_DONVI_REG_0_1 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_0_and0001,
      D => IC3_DONVI_REG_0_mux0000(2),
      Q => IC3_DONVI_REG_0(1)
    );
  IC3_DONVI_REG_0_0 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_0_and0001,
      D => IC3_DONVI_REG_0_mux0000(3),
      Q => IC3_DONVI_REG_0(0)
    );
  IC3_DONVI_REG_2_3 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_2_and0001_763,
      D => IC3_DONVI_REG_2_mux0000(0),
      Q => IC3_DONVI_REG_2(3)
    );
  IC3_DONVI_REG_2_2 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_2_and0001_763,
      D => IC3_DONVI_REG_2_mux0000(1),
      Q => IC3_DONVI_REG_2(2)
    );
  IC3_DONVI_REG_2_1 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_2_and0001_763,
      D => IC3_DONVI_REG_2_mux0000(2),
      Q => IC3_DONVI_REG_2(1)
    );
  IC3_DONVI_REG_2_0 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_DONVI_REG_2_and0001_763,
      D => IC3_DONVI_REG_2_mux0000(3),
      Q => IC3_DONVI_REG_2(0)
    );
  IC3_CHUC_REG_4_3 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_4_and0001_705,
      D => IC3_CHUC_REG_4_mux0000(0),
      Q => IC3_CHUC_REG_4(3)
    );
  IC3_CHUC_REG_4_2 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_4_and0001_705,
      D => IC3_CHUC_REG_4_mux0000(1),
      Q => IC3_CHUC_REG_4(2)
    );
  IC3_CHUC_REG_4_1 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_4_and0001_705,
      D => IC3_CHUC_REG_4_mux0000(2),
      Q => IC3_CHUC_REG_4(1)
    );
  IC3_CHUC_REG_4_0 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_4_and0001_705,
      D => IC3_CHUC_REG_4_mux0000(3),
      Q => IC3_CHUC_REG_4(0)
    );
  IC3_CHUC_REG_3_3 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_3_and0001,
      D => IC3_CHUC_REG_3_mux0000(0),
      Q => IC3_CHUC_REG_3(3)
    );
  IC3_CHUC_REG_3_2 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_3_and0001,
      D => IC3_CHUC_REG_3_mux0000(1),
      Q => IC3_CHUC_REG_3(2)
    );
  IC3_CHUC_REG_3_1 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_3_and0001,
      D => IC3_CHUC_REG_3_mux0000(2),
      Q => IC3_CHUC_REG_3(1)
    );
  IC3_CHUC_REG_3_0 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_3_and0001,
      D => IC3_CHUC_REG_3_mux0000(3),
      Q => IC3_CHUC_REG_3(0)
    );
  IC3_CHUC_REG_5_3 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_5_and0001_717,
      D => IC3_CHUC_REG_5_mux0000(0),
      Q => IC3_CHUC_REG_5(3)
    );
  IC3_CHUC_REG_5_2 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_5_and0001_717,
      D => IC3_CHUC_REG_5_mux0000(1),
      Q => IC3_CHUC_REG_5(2)
    );
  IC3_CHUC_REG_5_1 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_5_and0001_717,
      D => IC3_CHUC_REG_5_mux0000(2),
      Q => IC3_CHUC_REG_5(1)
    );
  IC3_CHUC_REG_5_0 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_5_and0001_717,
      D => IC3_CHUC_REG_5_mux0000(3),
      Q => IC3_CHUC_REG_5(0)
    );
  IC3_CHUC_REG_1_3 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_1_and0001_670,
      D => IC3_CHUC_REG_1_mux0000(0),
      Q => IC3_CHUC_REG_1(3)
    );
  IC3_CHUC_REG_1_2 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_1_and0001_670,
      D => IC3_CHUC_REG_1_mux0000(1),
      Q => IC3_CHUC_REG_1(2)
    );
  IC3_CHUC_REG_1_1 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_1_and0001_670,
      D => IC3_CHUC_REG_1_mux0000(2),
      Q => IC3_CHUC_REG_1(1)
    );
  IC3_CHUC_REG_1_0 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_1_and0001_670,
      D => IC3_CHUC_REG_1_mux0000(3),
      Q => IC3_CHUC_REG_1(0)
    );
  IC3_CHUC_REG_0_3 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_0_and0001,
      D => IC3_CHUC_REG_0_mux0000(0),
      Q => IC3_CHUC_REG_0(3)
    );
  IC3_CHUC_REG_0_2 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_0_and0001,
      D => IC3_CHUC_REG_0_mux0000(1),
      Q => IC3_CHUC_REG_0(2)
    );
  IC3_CHUC_REG_0_1 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_0_and0001,
      D => IC3_CHUC_REG_0_mux0000(2),
      Q => IC3_CHUC_REG_0(1)
    );
  IC3_CHUC_REG_0_0 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_0_and0001,
      D => IC3_CHUC_REG_0_mux0000(3),
      Q => IC3_CHUC_REG_0(0)
    );
  IC3_CHUC_REG_2_3 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_2_and0001,
      D => IC3_CHUC_REG_2_mux0000(0),
      Q => IC3_CHUC_REG_2(3)
    );
  IC3_CHUC_REG_2_2 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_2_and0001,
      D => IC3_CHUC_REG_2_mux0000(1),
      Q => IC3_CHUC_REG_2(2)
    );
  IC3_CHUC_REG_2_1 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_2_and0001,
      D => IC3_CHUC_REG_2_mux0000(2),
      Q => IC3_CHUC_REG_2(1)
    );
  IC3_CHUC_REG_2_0 : FDE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC3_CHUC_REG_2_and0001,
      D => IC3_CHUC_REG_2_mux0000(3),
      Q => IC3_CHUC_REG_2(0)
    );
  IC1_IC3_DB_REG_FSM_FFd1 : FD_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC1_IC3_DB_REG_FSM_FFd1_In,
      Q => IC1_IC3_DB_REG_FSM_FFd1_536
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_19_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(18),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(19),
      O => IC1_IC3_DELAY_REG_addsub0000(19)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_18_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(17),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(18),
      O => IC1_IC3_DELAY_REG_addsub0000(18)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(17),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(18),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(18)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_17_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(16),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(17),
      O => IC1_IC3_DELAY_REG_addsub0000(17)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(16),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(17),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(17)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_16_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(15),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(16),
      O => IC1_IC3_DELAY_REG_addsub0000(16)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(15),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(16),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(16)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_15_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(14),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(15),
      O => IC1_IC3_DELAY_REG_addsub0000(15)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(14),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(15),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(15)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_14_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(13),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(14),
      O => IC1_IC3_DELAY_REG_addsub0000(14)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(13),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(14),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(14)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_13_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(12),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(13),
      O => IC1_IC3_DELAY_REG_addsub0000(13)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(12),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(13),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(13)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_12_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(11),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(12),
      O => IC1_IC3_DELAY_REG_addsub0000(12)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(11),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(12),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(12)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_11_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(10),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(11),
      O => IC1_IC3_DELAY_REG_addsub0000(11)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(10),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(11),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(11)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_10_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(9),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(10),
      O => IC1_IC3_DELAY_REG_addsub0000(10)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(9),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(10),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(10)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_9_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(8),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(9),
      O => IC1_IC3_DELAY_REG_addsub0000(9)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(8),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(9),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(9)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_8_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(7),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(8),
      O => IC1_IC3_DELAY_REG_addsub0000(8)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(7),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(8),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(8)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_7_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(6),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(7),
      O => IC1_IC3_DELAY_REG_addsub0000(7)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(6),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(7),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(7)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_6_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(5),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(6),
      O => IC1_IC3_DELAY_REG_addsub0000(6)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(5),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(6),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(6)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_5_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(4),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(5),
      O => IC1_IC3_DELAY_REG_addsub0000(5)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(4),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(5),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(5)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_4_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(3),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(4),
      O => IC1_IC3_DELAY_REG_addsub0000(4)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(3),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(4),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(4)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_3_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(2),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(3),
      O => IC1_IC3_DELAY_REG_addsub0000(3)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(2),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(3),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(3)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_2_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(1),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(2),
      O => IC1_IC3_DELAY_REG_addsub0000(2)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(1),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(2),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(2)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_1_Q : XORCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(0),
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(1),
      O => IC1_IC3_DELAY_REG_addsub0000(1)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(0),
      DI => SSEG_7_OBUF_940,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(1),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(1)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_xor_0_Q : XORCY
    port map (
      CI => SSEG_7_OBUF_940,
      LI => IC1_IC3_Msub_DELAY_REG_addsub0000_cy_0_rt_590,
      O => IC1_IC3_DELAY_REG_addsub0000(0)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => SSEG_7_OBUF_940,
      DI => N0,
      S => IC1_IC3_Msub_DELAY_REG_addsub0000_cy_0_rt_590,
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy(0)
    );
  IC1_IC3_DB_REG_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC1_IC3_DELAY_REG(7),
      I1 => IC1_IC3_DELAY_REG(5),
      I2 => IC1_IC3_DELAY_REG(4),
      I3 => IC1_IC3_DELAY_REG(6),
      O => IC1_IC3_DB_REG_cmp_eq0000_wg_lut(0)
    );
  IC1_IC3_DB_REG_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => SSEG_7_OBUF_940,
      DI => N0,
      S => IC1_IC3_DB_REG_cmp_eq0000_wg_lut(0),
      O => IC1_IC3_DB_REG_cmp_eq0000_wg_cy(0)
    );
  IC1_IC3_DB_REG_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC1_IC3_DELAY_REG(8),
      I1 => IC1_IC3_DELAY_REG(9),
      I2 => IC1_IC3_DELAY_REG(3),
      I3 => IC1_IC3_DELAY_REG(12),
      O => IC1_IC3_DB_REG_cmp_eq0000_wg_lut(1)
    );
  IC1_IC3_DB_REG_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => IC1_IC3_DB_REG_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => IC1_IC3_DB_REG_cmp_eq0000_wg_lut(1),
      O => IC1_IC3_DB_REG_cmp_eq0000_wg_cy(1)
    );
  IC1_IC3_DB_REG_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC1_IC3_DELAY_REG(10),
      I1 => IC1_IC3_DELAY_REG(11),
      I2 => IC1_IC3_DELAY_REG(1),
      I3 => IC1_IC3_DELAY_REG(13),
      O => IC1_IC3_DB_REG_cmp_eq0000_wg_lut(2)
    );
  IC1_IC3_DB_REG_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => IC1_IC3_DB_REG_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => IC1_IC3_DB_REG_cmp_eq0000_wg_lut(2),
      O => IC1_IC3_DB_REG_cmp_eq0000_wg_cy(2)
    );
  IC1_IC3_DB_REG_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC1_IC3_DELAY_REG(14),
      I1 => IC1_IC3_DELAY_REG(17),
      I2 => IC1_IC3_DELAY_REG(0),
      I3 => IC1_IC3_DELAY_REG(15),
      O => IC1_IC3_DB_REG_cmp_eq0000_wg_lut(3)
    );
  IC1_IC3_DB_REG_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => IC1_IC3_DB_REG_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => IC1_IC3_DB_REG_cmp_eq0000_wg_lut(3),
      O => IC1_IC3_DB_REG_cmp_eq0000_wg_cy(3)
    );
  IC1_IC3_DB_REG_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC1_IC3_DELAY_REG(16),
      I1 => IC1_IC3_DELAY_REG(18),
      I2 => IC1_IC3_DELAY_REG(2),
      I3 => IC1_IC3_DELAY_REG(19),
      O => IC1_IC3_DB_REG_cmp_eq0000_wg_lut(4)
    );
  IC1_IC3_DB_REG_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => IC1_IC3_DB_REG_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => IC1_IC3_DB_REG_cmp_eq0000_wg_lut(4),
      O => IC1_IC3_DB_REG_cmp_eq0000
    );
  IC4_QUET_ANODE_8LED_7DOAN_Mdecod_ANODE71 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I2 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      O => ANODE_7_OBUF_15
    );
  IC4_QUET_ANODE_8LED_7DOAN_Mdecod_ANODE61 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      I2 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      O => ANODE_6_OBUF_14
    );
  IC4_QUET_ANODE_8LED_7DOAN_Mdecod_ANODE51 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I2 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      O => ANODE_5_OBUF_13
    );
  IC4_QUET_ANODE_8LED_7DOAN_Mdecod_ANODE41 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      I2 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      O => ANODE_4_OBUF_12
    );
  IC4_QUET_ANODE_8LED_7DOAN_Mdecod_ANODE31 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      I2 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      O => ANODE_3_OBUF_11
    );
  IC4_QUET_ANODE_8LED_7DOAN_Mdecod_ANODE21 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      I2 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      O => ANODE_2_OBUF_10
    );
  IC4_QUET_ANODE_8LED_7DOAN_Mdecod_ANODE11 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I2 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      O => ANODE_1_OBUF_9
    );
  IC4_QUET_ANODE_8LED_7DOAN_Mdecod_ANODE01 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      I2 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      O => ANODE_0_OBUF_8
    );
  IC4_DEM_3BIT_CHON_8KENH_Mcount_Q_REG_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      O => Result_1_1
    );
  IC1_1_Mcount_Q_REG_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(0),
      O => Result(1)
    );
  IC4_DEM_3BIT_CHON_8KENH_Mcount_Q_REG_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      I2 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      O => Result_2_1
    );
  IC1_1_Mcount_Q_REG_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(2),
      I2 => IC1_1_Q_REG(0),
      O => Result(2)
    );
  IC1_IC4_Q1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => IC1_IC4_QFF_629,
      I1 => IC1_IC3_DB_REG_FSM_FFd1_536,
      O => BTN_CDLH
    );
  IC3_CHUC_REG_4_mux0000_3_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => IC1_2_Mrom_OE4,
      I1 => IC3_CHUC_REG_4(0),
      I2 => IC3_CHUC_REG_4_cmp_eq0001,
      O => IC3_CHUC_REG_4_mux0000(3)
    );
  IC1_IC3_DELAY_REG_mux0000_0_21 : LUT3
    generic map(
      INIT => X"14"
    )
    port map (
      I0 => IC1_IC3_DB_REG_FSM_FFd2_538,
      I1 => BTN_1_IBUF_19,
      I2 => IC1_IC3_DB_REG_FSM_FFd1_536,
      O => IC1_IC3_N11
    );
  IC3_DONVI_REG_1_mux0000_3_1 : LUT4
    generic map(
      INIT => X"15FF"
    )
    port map (
      I0 => IC3_DONVI_REG_1(0),
      I1 => IC3_CHUC_REG_1_cmp_eq0001,
      I2 => N268,
      I3 => IC1_2_Mrom_OE1,
      O => IC3_DONVI_REG_1_mux0000(3)
    );
  IC3_CHUC_REG_1_mux0000_3_1 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => N267,
      I1 => IC1_2_Mrom_OE1,
      I2 => IC3_CHUC_REG_1(0),
      I3 => IC3_CHUC_REG_1_cmp_eq0000,
      O => IC3_CHUC_REG_1_mux0000(3)
    );
  IC3_DONVI_REG_3_mux0000_3_1 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => N262,
      I2 => IC3_DONVI_REG_3(0),
      I3 => IC3_CHUC_REG_3_cmp_eq0001,
      O => IC3_DONVI_REG_3_mux0000(3)
    );
  IC3_CHUC_REG_5_mux0000_3_1 : LUT4
    generic map(
      INIT => X"57DF"
    )
    port map (
      I0 => IC1_2_Mrom_OE5,
      I1 => IC3_CHUC_REG_5_cmp_eq0001,
      I2 => IC3_CHUC_REG_5(0),
      I3 => N263,
      O => IC3_CHUC_REG_5_mux0000(3)
    );
  IC3_CHUC_REG_3_mux0000_3_1 : LUT4
    generic map(
      INIT => X"57DF"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => IC3_CHUC_REG_3_cmp_eq0001,
      I2 => IC3_CHUC_REG_3(0),
      I3 => IC3_CHUC_REG_3_cmp_eq0000,
      O => IC3_CHUC_REG_3_mux0000(3)
    );
  IC3_DONVI_REG_5_mux0000_1_1 : LUT4
    generic map(
      INIT => X"8280"
    )
    port map (
      I0 => IC1_2_Mrom_OE5,
      I1 => IC3_DONVI_REG_5(1),
      I2 => IC3_DONVI_REG_5(2),
      I3 => IC3_DONVI_REG_5(3),
      O => IC3_DONVI_REG_5_mux0000(1)
    );
  IC3_DONVI_REG_3_mux0000_2_1 : LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => IC3_DONVI_REG_3(0),
      I1 => IC3_DONVI_REG_3(1),
      I2 => IC1_2_Mrom_OE3,
      I3 => IC3_CHUC_REG_3_cmp_eq0000,
      O => IC3_DONVI_REG_3_mux0000(2)
    );
  IC3_CHUC_REG_5_mux0000_2_1 : LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => IC3_CHUC_REG_5(0),
      I1 => IC3_CHUC_REG_5(1),
      I2 => IC1_2_Mrom_OE5,
      I3 => IC3_CHUC_REG_5_cmp_eq0001,
      O => IC3_CHUC_REG_5_mux0000(2)
    );
  IC3_CHUC_REG_3_mux0000_2_1 : LUT4
    generic map(
      INIT => X"0090"
    )
    port map (
      I0 => IC3_CHUC_REG_3(0),
      I1 => IC3_CHUC_REG_3(1),
      I2 => IC1_2_Mrom_OE3,
      I3 => IC3_CHUC_REG_3_cmp_eq0001,
      O => IC3_CHUC_REG_3_mux0000(2)
    );
  IC0_ENA1KHZ_cmp_eq000010 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D1KHZ_REG(7),
      I1 => IC0_D1KHZ_REG(9),
      I2 => IC0_D1KHZ_REG(5),
      I3 => IC0_D1KHZ_REG(6),
      O => IC0_ENA1KHZ_cmp_eq000010_304
    );
  IC0_ENA1KHZ_cmp_eq000021 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D1KHZ_REG(3),
      I1 => IC0_D1KHZ_REG(4),
      I2 => IC0_D1KHZ_REG(13),
      I3 => IC0_D1KHZ_REG(15),
      O => IC0_ENA1KHZ_cmp_eq000021_305
    );
  IC3_CHUC_REG_5_cmp_eq00011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC3_CHUC_REG_5(3),
      I1 => IC3_CHUC_REG_5(2),
      I2 => IC3_CHUC_REG_5(0),
      I3 => IC3_CHUC_REG_5(1),
      O => IC3_CHUC_REG_5_cmp_eq0001
    );
  IC3_CHUC_REG_3_cmp_eq00011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC3_CHUC_REG_3(3),
      I1 => IC3_CHUC_REG_3(2),
      I2 => IC3_CHUC_REG_3(0),
      I3 => IC3_CHUC_REG_3(1),
      O => IC3_CHUC_REG_3_cmp_eq0001
    );
  IC3_DONVI_REG_1_mux0000_0_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => IC3_DONVI_REG_1(0),
      I1 => IC3_DONVI_REG_1(1),
      O => N38
    );
  IC3_DONVI_REG_1_mux0000_0_Q : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => N265,
      I1 => IC3_DONVI_REG_1(3),
      I2 => IC3_DONVI_REG_1(2),
      I3 => N38,
      O => IC3_DONVI_REG_1_mux0000(0)
    );
  IC3_DONVI_REG_2_mux0000_3_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => IC1_2_Mrom_OE2,
      I1 => IC3_DONVI_REG_2(0),
      I2 => IC3_CHUC_REG_2_and0005,
      O => IC3_DONVI_REG_2_mux0000(3)
    );
  IC3_CHUC_REG_2_mux0000_3_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => IC1_2_Mrom_OE2,
      I1 => IC3_CHUC_REG_2(0),
      I2 => IC3_CHUC_REG_2_and0005,
      O => IC3_CHUC_REG_2_mux0000(3)
    );
  IC3_DONVI_REG_1_mux0000_2_1 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => IC3_DONVI_REG_1(0),
      I1 => IC3_DONVI_REG_1(1),
      I2 => IC3_N57,
      O => IC3_DONVI_REG_1_mux0000(2)
    );
  IC3_DONVI_REG_4_mux0000_2_1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC3_DONVI_REG_4(1),
      I1 => IC1_2_Mrom_OE4,
      I2 => IC3_CHUC_REG_4_and0006,
      I3 => IC3_CHUC_REG_4_and0005,
      O => IC3_DONVI_REG_4_mux0000(2)
    );
  IC3_DONVI_REG_0_mux0000_2_1 : LUT4
    generic map(
      INIT => X"0220"
    )
    port map (
      I0 => N264,
      I1 => IC3_CHUC_REG_0_and0006,
      I2 => IC3_DONVI_REG_0(1),
      I3 => IC3_DONVI_REG_0(0),
      O => IC3_DONVI_REG_0_mux0000(2)
    );
  IC3_DONVI_REG_1_mux0000_1_1 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => IC3_N57,
      I1 => IC3_DONVI_REG_1(2),
      I2 => IC3_DONVI_REG_1(0),
      I3 => IC3_DONVI_REG_1(1),
      O => IC3_DONVI_REG_1_mux0000(1)
    );
  IC3_CHUC_REG_0_mux0000_1_1 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => IC3_N20,
      I1 => IC3_CHUC_REG_0(2),
      I2 => IC3_CHUC_REG_0(0),
      I3 => IC3_CHUC_REG_0(1),
      O => IC3_CHUC_REG_0_mux0000(1)
    );
  IC0_D1KHZ_NEXT_cmp_eq0000111 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC0_D1KHZ_REG(11),
      I1 => IC0_D1KHZ_REG(14),
      I2 => IC0_D1KHZ_REG(10),
      I3 => IC0_D1KHZ_REG(12),
      O => IC0_D1KHZ_NEXT_cmp_eq0000111_166
    );
  IC0_D1KHZ_NEXT_cmp_eq0000123 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC0_D1KHZ_REG(2),
      I1 => IC0_D1KHZ_REG(8),
      I2 => IC0_D1KHZ_REG(0),
      I3 => IC0_D1KHZ_REG(1),
      O => IC0_D1KHZ_NEXT_cmp_eq0000123_167
    );
  IC0_D1KHZ_NEXT_cmp_eq000021 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D1KHZ_REG(4),
      I1 => IC0_D1KHZ_REG(3),
      I2 => IC0_D1KHZ_REG(15),
      I3 => IC0_D1KHZ_REG(13),
      O => IC0_D1KHZ_NEXT_cmp_eq000021_168
    );
  IC3_CHUC_REG_0_and00061 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC3_DONVI_REG_0(0),
      I1 => IC3_DONVI_REG_0(1),
      I2 => IC3_DONVI_REG_0(3),
      I3 => IC3_DONVI_REG_0(2),
      O => IC3_CHUC_REG_0_and0006
    );
  IC3_DONVI_REG_2_mux0000_1_Q : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => IC3_N66,
      I1 => IC3_DONVI_REG_2(0),
      I2 => N60,
      I3 => IC3_DONVI_REG_2(2),
      O => IC3_DONVI_REG_2_mux0000(1)
    );
  IC3_DONVI_REG_2_mux0000_0_Q : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => N280,
      I1 => IC3_DONVI_REG_2(0),
      I2 => N62,
      I3 => IC3_DONVI_REG_2(3),
      O => IC3_DONVI_REG_2_mux0000(0)
    );
  IC3_CHUC_REG_2_mux0000_0_Q : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => IC3_N66,
      I1 => IC3_CHUC_REG_2(0),
      I2 => N64,
      I3 => IC3_CHUC_REG_2(3),
      O => IC3_CHUC_REG_2_mux0000(0)
    );
  IC0_D2HZ_NEXT_cmp_eq000010 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D2HZ_REG(24),
      I1 => IC0_D2HZ_REG(23),
      I2 => IC0_D2HZ_REG(22),
      I3 => IC0_D2HZ_REG(17),
      O => IC0_D2HZ_NEXT_cmp_eq000010_211
    );
  IC0_D2HZ_NEXT_cmp_eq000013 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => IC0_D2HZ_REG(5),
      I1 => IC0_D2HZ_REG(6),
      O => IC0_D2HZ_NEXT_cmp_eq000013_214
    );
  IC0_D2HZ_NEXT_cmp_eq000024 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D2HZ_REG(16),
      I1 => IC0_D2HZ_REG(15),
      I2 => IC0_D2HZ_REG(14),
      I3 => IC0_D2HZ_REG(10),
      O => IC0_D2HZ_NEXT_cmp_eq000024_217
    );
  IC0_D2HZ_NEXT_cmp_eq000049 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IC0_N11,
      I1 => IC0_D2HZ_NEXT_cmp_eq000010_211,
      I2 => IC0_D2HZ_NEXT_cmp_eq000013_214,
      I3 => IC0_D2HZ_NEXT_cmp_eq000024_217,
      O => IC0_D2HZ_NEXT_cmp_eq0000
    );
  IC0_D1HZ_NEXT_cmp_eq000010 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D1HZ_REG(25),
      I1 => IC0_D1HZ_REG(24),
      I2 => IC0_D1HZ_REG(23),
      I3 => IC0_D1HZ_REG(18),
      O => IC0_D1HZ_NEXT_cmp_eq000010_116
    );
  IC0_D1HZ_NEXT_cmp_eq000013 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => IC0_D1HZ_REG(6),
      I1 => IC0_D1HZ_REG(7),
      O => IC0_D1HZ_NEXT_cmp_eq000013_118
    );
  IC0_D1HZ_NEXT_cmp_eq000024 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D1HZ_REG(17),
      I1 => IC0_D1HZ_REG(16),
      I2 => IC0_D1HZ_REG(15),
      I3 => IC0_D1HZ_REG(11),
      O => IC0_D1HZ_NEXT_cmp_eq000024_122
    );
  IC0_D1HZ_NEXT_cmp_eq000049 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IC0_N01,
      I1 => IC0_D1HZ_NEXT_cmp_eq000010_116,
      I2 => IC0_D1HZ_NEXT_cmp_eq000013_118,
      I3 => IC0_D1HZ_NEXT_cmp_eq000024_122,
      O => IC0_D1HZ_NEXT_cmp_eq0000
    );
  IC0_D5HZ_NEXT_cmp_eq000010 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D5HZ_REG(7),
      I1 => IC0_D5HZ_REG(8),
      I2 => IC0_D5HZ_REG(23),
      I3 => IC0_D5HZ_REG(6),
      O => IC0_D5HZ_NEXT_cmp_eq000010_268
    );
  IC0_D5HZ_NEXT_cmp_eq000021 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D5HZ_REG(20),
      I1 => IC0_D5HZ_REG(22),
      I2 => IC0_D5HZ_REG(15),
      I3 => IC0_D5HZ_REG(18),
      O => IC0_D5HZ_NEXT_cmp_eq000021_272
    );
  IC0_D5HZ_NEXT_cmp_eq000032 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D5HZ_REG(12),
      I1 => IC0_D5HZ_REG(14),
      I2 => IC0_D5HZ_REG(10),
      I3 => IC0_D5HZ_REG(11),
      O => IC0_D5HZ_NEXT_cmp_eq000032_273
    );
  IC0_D5HZ_NEXT_cmp_eq000063 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IC0_N2,
      I1 => IC0_D5HZ_NEXT_cmp_eq000010_268,
      I2 => IC0_D5HZ_NEXT_cmp_eq000021_272,
      I3 => IC0_D5HZ_NEXT_cmp_eq000032_273,
      O => IC0_D5HZ_NEXT_cmp_eq0000
    );
  IC0_D10HZ_NEXT_cmp_eq000010 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D10HZ_REG(9),
      I1 => IC0_D10HZ_REG(7),
      I2 => IC0_D10HZ_REG(6),
      I3 => IC0_D10HZ_REG(5),
      O => IC0_D10HZ_NEXT_cmp_eq000010_60
    );
  IC0_D10HZ_NEXT_cmp_eq000021 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D10HZ_REG(22),
      I1 => IC0_D10HZ_REG(21),
      I2 => IC0_D10HZ_REG(19),
      I3 => IC0_D10HZ_REG(17),
      O => IC0_D10HZ_NEXT_cmp_eq000021_64
    );
  IC0_D10HZ_NEXT_cmp_eq000032 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D10HZ_REG(14),
      I1 => IC0_D10HZ_REG(13),
      I2 => IC0_D10HZ_REG(11),
      I3 => IC0_D10HZ_REG(10),
      O => IC0_D10HZ_NEXT_cmp_eq000032_65
    );
  IC0_D10HZ_NEXT_cmp_eq000063 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IC0_N3,
      I1 => IC0_D10HZ_NEXT_cmp_eq000010_60,
      I2 => IC0_D10HZ_NEXT_cmp_eq000021_64,
      I3 => IC0_D10HZ_NEXT_cmp_eq000032_65,
      O => IC0_D10HZ_NEXT_cmp_eq0000
    );
  IC3_CHUC_REG_4_and00061 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => IC3_DONVI_REG_4(3),
      I1 => IC3_DONVI_REG_4(2),
      I2 => IC3_DONVI_REG_4(1),
      O => IC3_CHUC_REG_4_and0006
    );
  IC1_IC3_DB_REG_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => IC1_IC3_DB_REG_FSM_FFd2_538,
      I1 => IC1_IC3_DB_REG_FSM_FFd1_536,
      I2 => IC1_IC3_DB_REG_cmp_eq0000,
      I3 => BTN_1_IBUF_19,
      O => IC1_IC3_DB_REG_FSM_FFd1_In
    );
  IC3_CHUC_REG_2_and00051 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IC3_DONVI_REG_2(0),
      I1 => IC3_N63,
      I2 => IC3_CHUC_REG_2(0),
      I3 => N272,
      O => IC3_CHUC_REG_2_and0005
    );
  IC3_DONVI_REG_2_mux0000_2_1 : LUT4
    generic map(
      INIT => X"8082"
    )
    port map (
      I0 => IC3_N66,
      I1 => IC3_DONVI_REG_2(0),
      I2 => IC3_DONVI_REG_2(1),
      I3 => IC3_N63,
      O => IC3_DONVI_REG_2_mux0000(2)
    );
  IC3_CHUC_REG_2_mux0000_2_1 : LUT4
    generic map(
      INIT => X"8082"
    )
    port map (
      I0 => IC3_N66,
      I1 => IC3_CHUC_REG_2(0),
      I2 => IC3_CHUC_REG_2(1),
      I3 => IC3_N64,
      O => IC3_CHUC_REG_2_mux0000(2)
    );
  IC3_CHUC_REG_2_mux0000_1_Q : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => IC1_2_Mrom_OE2,
      I1 => IC3_CHUC_REG_2_and0005,
      I2 => N72,
      O => IC3_CHUC_REG_2_mux0000(1)
    );
  IC3_CHUC_REG_4_cmp_eq00011 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC3_CHUC_REG_4(1),
      I1 => IC3_CHUC_REG_4(0),
      I2 => IC3_CHUC_REG_4(2),
      I3 => IC3_CHUC_REG_4(3),
      O => IC3_CHUC_REG_4_cmp_eq0001
    );
  IC3_CHUC_REG_4_and00051 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC3_DONVI_REG_4(1),
      I1 => IC3_CHUC_REG_4_cmp_eq0001,
      I2 => IC3_DONVI_REG_4(2),
      I3 => IC3_DONVI_REG_4(3),
      O => IC3_CHUC_REG_4_and0005
    );
  IC0_D2HZ_NEXT_cmp_eq0000112 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => IC0_D2HZ_REG(4),
      I1 => IC0_D2HZ_REG(12),
      I2 => IC0_D2HZ_REG(13),
      O => IC0_D2HZ_NEXT_cmp_eq0000112_212
    );
  IC0_D2HZ_NEXT_cmp_eq0000129 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D2HZ_REG(21),
      I1 => IC0_D2HZ_REG(7),
      I2 => IC0_D2HZ_REG(11),
      I3 => IC0_D2HZ_REG(9),
      O => IC0_D2HZ_NEXT_cmp_eq0000129_213
    );
  IC0_D2HZ_NEXT_cmp_eq0000142 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC0_D2HZ_REG(2),
      I1 => IC0_D2HZ_REG(3),
      I2 => IC0_D2HZ_REG(1),
      I3 => IC0_D2HZ_REG(8),
      O => IC0_D2HZ_NEXT_cmp_eq0000142_215
    );
  IC0_D2HZ_NEXT_cmp_eq0000155 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IC0_D2HZ_NEXT_cmp_eq000017_216,
      I1 => IC0_D2HZ_NEXT_cmp_eq0000112_212,
      I2 => IC0_D2HZ_NEXT_cmp_eq0000129_213,
      I3 => IC0_D2HZ_NEXT_cmp_eq0000142_215,
      O => IC0_N11
    );
  IC3_CHUC_REG_1_and0001_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => N266,
      I1 => IC3_CHUC_REG_1_cmp_eq0001,
      I2 => IC3_CHUC_REG_1_cmp_eq0000,
      O => N80
    );
  IC3_CHUC_REG_4_and0001_SW1 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => N279,
      I1 => IC3_CHUC_REG_4_and0006,
      I2 => IC3_CHUC_REG_4_and0005,
      O => N83
    );
  IC3_CHUC_REG_4_and0001 : LUT4
    generic map(
      INIT => X"22E2"
    )
    port map (
      I0 => N82,
      I1 => IC1_2_Mrom_OE4,
      I2 => N83,
      I3 => IC3_DONVI_REG_0_or0000,
      O => IC3_CHUC_REG_4_and0001_705
    );
  IC3_CHUC_REG_0_and00012 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => IC3_CHUC_REG_0_and0006,
      I1 => N270,
      I2 => IC3_CHUC_REG_0_cmp_eq0001,
      O => IC3_CHUC_REG_0_and00012_657
    );
  IC3_CHUC_REG_2_and00018 : LUT4
    generic map(
      INIT => X"A222"
    )
    port map (
      I0 => N271,
      I1 => IC3_DONVI_REG_2(0),
      I2 => IC3_N64,
      I3 => IC3_CHUC_REG_2(0),
      O => IC3_CHUC_REG_2_and00018_684
    );
  IC0_ENA1HZ_cmp_eq000010 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D1HZ_REG(16),
      I1 => IC0_D1HZ_REG(17),
      I2 => IC0_D1HZ_REG(6),
      I3 => IC0_D1HZ_REG(7),
      O => IC0_ENA1HZ_cmp_eq000010_301
    );
  IC0_ENA1HZ_cmp_eq000013 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => IC0_D1HZ_REG(15),
      I1 => IC0_D1HZ_REG(11),
      O => IC0_ENA1HZ_cmp_eq000013_302
    );
  IC0_ENA1HZ_cmp_eq000024 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D1HZ_REG(18),
      I1 => IC0_D1HZ_REG(23),
      I2 => IC0_D1HZ_REG(24),
      I3 => IC0_D1HZ_REG(25),
      O => IC0_ENA1HZ_cmp_eq000024_303
    );
  IC0_ENA1HZ_cmp_eq000049 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IC0_ENA1HZ_cmp_eq000024_303,
      I1 => IC0_ENA1HZ_cmp_eq000013_302,
      I2 => IC0_ENA1HZ_cmp_eq000010_301,
      I3 => N276,
      O => ENA1
    );
  IC0_D10HZ_NEXT_cmp_eq0000119 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => IC0_D10HZ_REG(8),
      I1 => IC0_D10HZ_REG(12),
      I2 => IC0_D10HZ_REG(4),
      O => IC0_D10HZ_NEXT_cmp_eq0000119_62
    );
  IC0_D10HZ_NEXT_cmp_eq0000142 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC0_D10HZ_REG(3),
      I1 => IC0_D10HZ_REG(2),
      I2 => IC0_D10HZ_REG(1),
      I3 => IC0_D10HZ_REG(20),
      O => IC0_D10HZ_NEXT_cmp_eq0000142_63
    );
  IC0_D10HZ_NEXT_cmp_eq0000144 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => IC0_D10HZ_NEXT_cmp_eq0000111_61,
      I1 => IC0_D10HZ_NEXT_cmp_eq0000119_62,
      I2 => IC0_D10HZ_NEXT_cmp_eq0000142_63,
      O => IC0_N3
    );
  IC0_D5HZ_NEXT_cmp_eq0000123 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC0_D5HZ_REG(13),
      I1 => IC0_D5HZ_REG(9),
      I2 => IC0_D5HZ_REG(5),
      I3 => IC0_D5HZ_REG(4),
      O => IC0_D5HZ_NEXT_cmp_eq0000123_270
    );
  IC0_D5HZ_NEXT_cmp_eq0000147 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC0_D5HZ_REG(3),
      I1 => IC0_D5HZ_REG(2),
      I2 => IC0_D5HZ_REG(1),
      I3 => IC0_D5HZ_REG(0),
      O => IC0_D5HZ_NEXT_cmp_eq0000147_271
    );
  IC0_D5HZ_NEXT_cmp_eq0000149 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => IC0_D5HZ_NEXT_cmp_eq0000111_269,
      I1 => IC0_D5HZ_NEXT_cmp_eq0000123_270,
      I2 => IC0_D5HZ_NEXT_cmp_eq0000147_271,
      O => IC0_N2
    );
  IC0_ENA5HZ_cmp_eq000010 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D5HZ_REG(11),
      I1 => IC0_D5HZ_REG(10),
      I2 => IC0_D5HZ_REG(14),
      I3 => IC0_D5HZ_REG(12),
      O => IC0_ENA5HZ_cmp_eq000010_306
    );
  IC0_ENA5HZ_cmp_eq000021 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D5HZ_REG(18),
      I1 => IC0_D5HZ_REG(15),
      I2 => IC0_D5HZ_REG(22),
      I3 => IC0_D5HZ_REG(20),
      O => IC0_ENA5HZ_cmp_eq000021_307
    );
  IC0_ENA5HZ_cmp_eq000063 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IC0_ENA5HZ_cmp_eq000032_308,
      I1 => IC0_ENA5HZ_cmp_eq000021_307,
      I2 => IC0_ENA5HZ_cmp_eq000010_306,
      I3 => IC0_N2,
      O => ENA5
    );
  IC0_ENA10HZ_cmp_eq000010 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D10HZ_REG(10),
      I1 => IC0_D10HZ_REG(11),
      I2 => IC0_D10HZ_REG(13),
      I3 => IC0_D10HZ_REG(14),
      O => IC0_ENA10HZ_cmp_eq000010_298
    );
  IC0_ENA10HZ_cmp_eq000021 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D10HZ_REG(17),
      I1 => IC0_D10HZ_REG(19),
      I2 => IC0_D10HZ_REG(21),
      I3 => IC0_D10HZ_REG(22),
      O => IC0_ENA10HZ_cmp_eq000021_299
    );
  IC0_ENA10HZ_cmp_eq000063 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IC0_ENA10HZ_cmp_eq000032_300,
      I1 => IC0_ENA10HZ_cmp_eq000021_299,
      I2 => IC0_ENA10HZ_cmp_eq000010_298,
      I3 => IC0_N3,
      O => ENA10
    );
  IC0_D1HZ_NEXT_cmp_eq000014 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IC0_D1HZ_REG(22),
      I1 => IC0_D1HZ_REG(21),
      I2 => IC0_D1HZ_REG(20),
      I3 => IC0_D1HZ_REG(19),
      O => IC0_D1HZ_NEXT_cmp_eq000014_120
    );
  IC0_D1HZ_NEXT_cmp_eq0000112 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => IC0_D1HZ_REG(14),
      I1 => IC0_D1HZ_REG(13),
      I2 => IC0_D1HZ_REG(12),
      I3 => IC0_D1HZ_REG(10),
      O => IC0_D1HZ_NEXT_cmp_eq0000112_117
    );
  IC0_D1HZ_NEXT_cmp_eq0000133 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC0_D1HZ_REG(8),
      I1 => IC0_D1HZ_REG(9),
      I2 => IC0_D1HZ_REG(5),
      I3 => IC0_D1HZ_REG(4),
      O => IC0_D1HZ_NEXT_cmp_eq0000133_119
    );
  IC0_D1HZ_NEXT_cmp_eq0000146 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC0_D1HZ_REG(3),
      I1 => IC0_D1HZ_REG(1),
      I2 => IC0_D1HZ_REG(2),
      I3 => IC0_D1HZ_REG(0),
      O => IC0_D1HZ_NEXT_cmp_eq0000146_121
    );
  IC3_DONVI_REG_0_or000054 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => IC0_D2HZ_REG(5),
      I1 => IC0_D2HZ_REG(24),
      I2 => IC0_D2HZ_REG(15),
      I3 => IC0_D2HZ_REG(22),
      O => IC3_DONVI_REG_0_or000054_746
    );
  IC3_DONVI_REG_0_or000070 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => IC0_D2HZ_REG(17),
      I1 => IC0_D2HZ_REG(16),
      I2 => IC0_D2HZ_REG(10),
      I3 => IC0_D2HZ_REG(14),
      O => IC3_DONVI_REG_0_or000070_748
    );
  IC3_DONVI_REG_0_or000081 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => IC3_DONVI_REG_0_or000070_748,
      I1 => IC3_DONVI_REG_0_or000054_746,
      I2 => IC3_DONVI_REG_0_or000059_747,
      O => IC3_DONVI_REG_0_or000081_749
    );
  IC3_DONVI_0_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => IC3_DONVI_REG_1(0),
      I1 => IC1_2_Mrom_OE1,
      I2 => IC3_DONVI_REG_0(0),
      I3 => IC1_2_Mrom_OE,
      O => IC3_DONVI_0_4_724
    );
  IC4_DAHOP_8KENH_Mmux_SO_GMA2_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      O => IC4_GIAIMA_SSEG_4_0
    );
  IC4_DAHOP_8KENH_Mmux_SO_GMA2 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => DONVI(0),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I2 => CHUC(0),
      I3 => IC4_GIAIMA_SSEG_4_0,
      O => IC4_SO_GMA(0)
    );
  IC4_GIAIMA_SSEG_4_32 : LUT4
    generic map(
      INIT => X"232A"
    )
    port map (
      I0 => DONVI(0),
      I1 => DONVI(3),
      I2 => DONVI(1),
      I3 => DONVI(2),
      O => IC4_GIAIMA_SSEG_4_32_803
    );
  IC4_GIAIMA_SSEG_4_91 : LUT4
    generic map(
      INIT => X"232A"
    )
    port map (
      I0 => CHUC(0),
      I1 => CHUC(3),
      I2 => CHUC(1),
      I3 => CHUC(2),
      O => IC4_GIAIMA_SSEG_4_91_804
    );
  IC4_GIAIMA_SSEG_4_107 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => IC4_GIAIMA_SSEG_4_32_803,
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I2 => IC4_GIAIMA_SSEG_4_91_804,
      I3 => IC4_GIAIMA_SSEG_4_0,
      O => SSEG_4_OBUF_937
    );
  IC3_CHUC_1_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => IC3_CHUC_REG_1(1),
      I1 => IC1_2_Mrom_OE1,
      I2 => IC3_CHUC_REG_0(1),
      I3 => IC1_2_Mrom_OE,
      O => IC3_CHUC_1_4_643
    );
  IC3_CHUC_1_17 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => IC1_2_Mrom_OE4,
      I1 => IC1_2_Mrom_OE5,
      I2 => IC3_CHUC_REG_5(1),
      I3 => IC3_CHUC_REG_4(1),
      O => IC3_CHUC_1_17_642
    );
  IC3_CHUC_0_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => IC3_CHUC_REG_1(0),
      I1 => IC1_2_Mrom_OE1,
      I2 => IC3_CHUC_REG_0(0),
      I3 => IC1_2_Mrom_OE,
      O => IC3_CHUC_0_4_640
    );
  IC3_CHUC_0_17 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => IC1_2_Mrom_OE4,
      I1 => IC1_2_Mrom_OE5,
      I2 => IC3_CHUC_REG_5(0),
      I3 => IC3_CHUC_REG_4(0),
      O => IC3_CHUC_0_17_639
    );
  IC1_2_Mrom_OE41 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      O => IC1_2_Mrom_OE4
    );
  IC4_DAHOP_8KENH_Mmux_SO_GMA4 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => DONVI(1),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I2 => CHUC(1),
      I3 => IC4_GIAIMA_SSEG_4_0,
      O => IC4_SO_GMA(1)
    );
  IC4_GIAIMA_SSEG_6_46 : LUT4
    generic map(
      INIT => X"2109"
    )
    port map (
      I0 => DONVI(2),
      I1 => DONVI(3),
      I2 => DONVI(1),
      I3 => DONVI(0),
      O => IC4_GIAIMA_SSEG_6_46_806
    );
  IC4_GIAIMA_SSEG_6_123 : LUT4
    generic map(
      INIT => X"2109"
    )
    port map (
      I0 => CHUC(2),
      I1 => CHUC(3),
      I2 => CHUC(1),
      I3 => CHUC(0),
      O => IC4_GIAIMA_SSEG_6_123_805
    );
  IC4_GIAIMA_SSEG_6_142 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => IC4_GIAIMA_SSEG_6_46_806,
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I2 => IC4_GIAIMA_SSEG_6_123_805,
      I3 => IC4_GIAIMA_SSEG_4_0,
      O => SSEG_6_OBUF_939
    );
  IC3_DONVI_1_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => IC3_DONVI_REG_1(1),
      I1 => IC1_2_Mrom_OE1,
      I2 => IC3_DONVI_REG_0(1),
      I3 => IC1_2_Mrom_OE,
      O => IC3_DONVI_1_4_726
    );
  IC3_DONVI_1_17 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => IC1_2_Mrom_OE4,
      I1 => IC1_2_Mrom_OE5,
      I2 => IC3_DONVI_REG_5(1),
      I3 => IC3_DONVI_REG_4(1),
      O => IC3_DONVI_1_17_725
    );
  IC3_CHUC_3_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => IC3_CHUC_REG_1(3),
      I1 => IC1_2_Mrom_OE1,
      I2 => IC3_CHUC_REG_0(3),
      I3 => IC1_2_Mrom_OE,
      O => IC3_CHUC_3_4_649
    );
  IC3_CHUC_3_17 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => IC1_2_Mrom_OE4,
      I1 => IC1_2_Mrom_OE5,
      I2 => IC3_CHUC_REG_5(3),
      I3 => IC3_CHUC_REG_4(3),
      O => IC3_CHUC_3_17_648
    );
  IC3_CHUC_2_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => IC3_CHUC_REG_1(2),
      I1 => IC1_2_Mrom_OE1,
      I2 => IC3_CHUC_REG_0(2),
      I3 => IC1_2_Mrom_OE,
      O => IC3_CHUC_2_4_646
    );
  IC3_CHUC_2_17 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => IC1_2_Mrom_OE4,
      I1 => IC1_2_Mrom_OE5,
      I2 => IC3_CHUC_REG_5(2),
      I3 => IC3_CHUC_REG_4(2),
      O => IC3_CHUC_2_17_645
    );
  IC4_DAHOP_8KENH_Mmux_SO_GMA8 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => DONVI(3),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I2 => CHUC(3),
      I3 => IC4_GIAIMA_SSEG_4_0,
      O => IC4_SO_GMA(3)
    );
  IC4_DAHOP_8KENH_Mmux_SO_GMA6 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => DONVI(2),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      I2 => CHUC(2),
      I3 => IC4_GIAIMA_SSEG_4_0,
      O => IC4_SO_GMA(2)
    );
  IC4_GIAIMA_SSEG_0_SW0 : LUT4
    generic map(
      INIT => X"2904"
    )
    port map (
      I0 => IC4_SO_GMA(3),
      I1 => IC4_SO_GMA(2),
      I2 => IC4_SO_GMA(1),
      I3 => IC4_SO_GMA(0),
      O => N105
    );
  IC4_GIAIMA_SSEG_0_Q : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      I2 => N105,
      O => SSEG_0_OBUF_933
    );
  IC3_DONVI_3_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => IC3_DONVI_REG_1(3),
      I1 => IC1_2_Mrom_OE1,
      I2 => IC3_DONVI_REG_0(3),
      I3 => IC1_2_Mrom_OE,
      O => IC3_DONVI_3_4_732
    );
  IC3_DONVI_3_17 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => IC1_2_Mrom_OE4,
      I1 => IC1_2_Mrom_OE5,
      I2 => IC3_DONVI_REG_5(3),
      I3 => IC3_DONVI_REG_4(3),
      O => IC3_DONVI_3_17_731
    );
  IC3_DONVI_2_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => IC3_DONVI_REG_1(2),
      I1 => IC1_2_Mrom_OE1,
      I2 => IC3_DONVI_REG_0(2),
      I3 => IC1_2_Mrom_OE,
      O => IC3_DONVI_2_4_729
    );
  IC3_DONVI_2_17 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => IC1_2_Mrom_OE4,
      I1 => IC1_2_Mrom_OE5,
      I2 => IC3_DONVI_REG_5(2),
      I3 => IC3_DONVI_REG_4(2),
      O => IC3_DONVI_2_17_728
    );
  SW0_IBUF : IBUF
    port map (
      I => SW0,
      O => SW0_IBUF_942
    );
  BTN_1_IBUF : IBUF
    port map (
      I => BTN(1),
      O => BTN_1_IBUF_19
    );
  BTN_0_IBUF : IBUF
    port map (
      I => BTN(0),
      O => BTN_0_IBUF_18
    );
  ANODE_7_OBUF : OBUF
    port map (
      I => ANODE_7_OBUF_15,
      O => ANODE(7)
    );
  ANODE_6_OBUF : OBUF
    port map (
      I => ANODE_6_OBUF_14,
      O => ANODE(6)
    );
  ANODE_5_OBUF : OBUF
    port map (
      I => ANODE_5_OBUF_13,
      O => ANODE(5)
    );
  ANODE_4_OBUF : OBUF
    port map (
      I => ANODE_4_OBUF_12,
      O => ANODE(4)
    );
  ANODE_3_OBUF : OBUF
    port map (
      I => ANODE_3_OBUF_11,
      O => ANODE(3)
    );
  ANODE_2_OBUF : OBUF
    port map (
      I => ANODE_2_OBUF_10,
      O => ANODE(2)
    );
  ANODE_1_OBUF : OBUF
    port map (
      I => ANODE_1_OBUF_9,
      O => ANODE(1)
    );
  ANODE_0_OBUF : OBUF
    port map (
      I => ANODE_0_OBUF_8,
      O => ANODE(0)
    );
  SSEG_7_OBUF : OBUF
    port map (
      I => SSEG_7_OBUF_940,
      O => SSEG(7)
    );
  SSEG_6_OBUF : OBUF
    port map (
      I => SSEG_6_OBUF_939,
      O => SSEG(6)
    );
  SSEG_5_OBUF : OBUF
    port map (
      I => SSEG_5_OBUF_938,
      O => SSEG(5)
    );
  SSEG_4_OBUF : OBUF
    port map (
      I => SSEG_4_OBUF_937,
      O => SSEG(4)
    );
  SSEG_3_OBUF : OBUF
    port map (
      I => SSEG_3_OBUF_936,
      O => SSEG(3)
    );
  SSEG_2_OBUF : OBUF
    port map (
      I => SSEG_2_OBUF_935,
      O => SSEG(2)
    );
  SSEG_1_OBUF : OBUF
    port map (
      I => SSEG_1_OBUF_934,
      O => SSEG(1)
    );
  SSEG_0_OBUF : OBUF
    port map (
      I => SSEG_0_OBUF_933,
      O => SSEG(0)
    );
  IC0_D10HZ_REG_22 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(22),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(22)
    );
  IC0_D10HZ_REG_21 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(21),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(21)
    );
  IC0_D10HZ_REG_20 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(20),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(20)
    );
  IC0_D10HZ_REG_19 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(19),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(19)
    );
  IC0_D10HZ_REG_18 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(18),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(18)
    );
  IC0_D10HZ_REG_17 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(17),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(17)
    );
  IC0_D10HZ_REG_16 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(16),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(16)
    );
  IC0_D10HZ_REG_15 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(15),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(15)
    );
  IC0_D10HZ_REG_14 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(14),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(14)
    );
  IC0_D10HZ_REG_13 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(13),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(13)
    );
  IC0_D10HZ_REG_12 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(12),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(12)
    );
  IC0_D10HZ_REG_11 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(11),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(11)
    );
  IC0_D10HZ_REG_10 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(10),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(10)
    );
  IC0_D10HZ_REG_9 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(9),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(9)
    );
  IC0_D10HZ_REG_8 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(8),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(8)
    );
  IC0_D10HZ_REG_7 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(7),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(7)
    );
  IC0_D10HZ_REG_6 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(6),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(6)
    );
  IC0_D10HZ_REG_5 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(5),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(5)
    );
  IC0_D10HZ_REG_4 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(4),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(4)
    );
  IC0_D10HZ_REG_3 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(3),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(3)
    );
  IC0_D10HZ_REG_2 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(2),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(2)
    );
  IC0_D10HZ_REG_1 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(1),
      R => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(1)
    );
  IC0_D10HZ_REG_0 : FDS_1
    generic map(
      INIT => '1'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D10HZ_NEXT_addsub0000(0),
      S => IC0_D10HZ_NEXT_cmp_eq0000,
      Q => IC0_D10HZ_REG(0)
    );
  IC0_D1KHZ_REG_15 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(15),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(15)
    );
  IC0_D1KHZ_REG_14 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(14),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(14)
    );
  IC0_D1KHZ_REG_13 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(13),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(13)
    );
  IC0_D1KHZ_REG_12 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(12),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(12)
    );
  IC0_D1KHZ_REG_11 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(11),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(11)
    );
  IC0_D1KHZ_REG_10 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(10),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(10)
    );
  IC0_D1KHZ_REG_9 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(9),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(9)
    );
  IC0_D1KHZ_REG_8 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(8),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(8)
    );
  IC0_D1KHZ_REG_7 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(7),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(7)
    );
  IC0_D1KHZ_REG_6 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(6),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(6)
    );
  IC0_D1KHZ_REG_5 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(5),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(5)
    );
  IC0_D1KHZ_REG_4 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(4),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(4)
    );
  IC0_D1KHZ_REG_3 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(3),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(3)
    );
  IC0_D1KHZ_REG_2 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(2),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(2)
    );
  IC0_D1KHZ_REG_1 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(1),
      R => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(1)
    );
  IC0_D1KHZ_REG_0 : FDS_1
    generic map(
      INIT => '1'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1KHZ_NEXT_addsub0000(0),
      S => IC0_D1KHZ_NEXT_cmp_eq0000,
      Q => IC0_D1KHZ_REG(0)
    );
  IC0_D2HZ_REG_24 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(24),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(24)
    );
  IC0_D2HZ_REG_23 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(23),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(23)
    );
  IC0_D2HZ_REG_22 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(22),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(22)
    );
  IC0_D2HZ_REG_21 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(21),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(21)
    );
  IC0_D2HZ_REG_20 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(20),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(20)
    );
  IC0_D2HZ_REG_19 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(19),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(19)
    );
  IC0_D2HZ_REG_18 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(18),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(18)
    );
  IC0_D2HZ_REG_17 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(17),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(17)
    );
  IC0_D2HZ_REG_16 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(16),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(16)
    );
  IC0_D2HZ_REG_15 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(15),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(15)
    );
  IC0_D2HZ_REG_14 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(14),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(14)
    );
  IC0_D2HZ_REG_13 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(13),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(13)
    );
  IC0_D2HZ_REG_12 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(12),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(12)
    );
  IC0_D2HZ_REG_11 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(11),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(11)
    );
  IC0_D2HZ_REG_10 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(10),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(10)
    );
  IC0_D2HZ_REG_9 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(9),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(9)
    );
  IC0_D2HZ_REG_8 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(8),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(8)
    );
  IC0_D2HZ_REG_7 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(7),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(7)
    );
  IC0_D2HZ_REG_6 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(6),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(6)
    );
  IC0_D2HZ_REG_5 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(5),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(5)
    );
  IC0_D2HZ_REG_4 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(4),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(4)
    );
  IC0_D2HZ_REG_3 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(3),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(3)
    );
  IC0_D2HZ_REG_2 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(2),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(2)
    );
  IC0_D2HZ_REG_1 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(1),
      R => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(1)
    );
  IC0_D2HZ_REG_0 : FDS_1
    generic map(
      INIT => '1'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D2HZ_NEXT_addsub0000(0),
      S => IC0_D2HZ_NEXT_cmp_eq0000,
      Q => IC0_D2HZ_REG(0)
    );
  IC0_D5HZ_REG_23 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(23),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(23)
    );
  IC0_D5HZ_REG_22 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(22),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(22)
    );
  IC0_D5HZ_REG_21 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(21),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(21)
    );
  IC0_D5HZ_REG_20 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(20),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(20)
    );
  IC0_D5HZ_REG_19 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(19),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(19)
    );
  IC0_D5HZ_REG_18 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(18),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(18)
    );
  IC0_D5HZ_REG_17 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(17),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(17)
    );
  IC0_D5HZ_REG_16 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(16),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(16)
    );
  IC0_D5HZ_REG_15 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(15),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(15)
    );
  IC0_D5HZ_REG_14 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(14),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(14)
    );
  IC0_D5HZ_REG_13 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(13),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(13)
    );
  IC0_D5HZ_REG_12 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(12),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(12)
    );
  IC0_D5HZ_REG_11 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(11),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(11)
    );
  IC0_D5HZ_REG_10 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(10),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(10)
    );
  IC0_D5HZ_REG_9 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(9),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(9)
    );
  IC0_D5HZ_REG_8 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(8),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(8)
    );
  IC0_D5HZ_REG_7 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(7),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(7)
    );
  IC0_D5HZ_REG_6 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(6),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(6)
    );
  IC0_D5HZ_REG_5 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(5),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(5)
    );
  IC0_D5HZ_REG_4 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(4),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(4)
    );
  IC0_D5HZ_REG_3 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(3),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(3)
    );
  IC0_D5HZ_REG_2 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(2),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(2)
    );
  IC0_D5HZ_REG_1 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(1),
      R => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(1)
    );
  IC0_D5HZ_REG_0 : FDS_1
    generic map(
      INIT => '1'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D5HZ_NEXT_addsub0000(0),
      S => IC0_D5HZ_NEXT_cmp_eq0000,
      Q => IC0_D5HZ_REG(0)
    );
  IC0_D1HZ_REG_25 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(25),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(25)
    );
  IC0_D1HZ_REG_24 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(24),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(24)
    );
  IC0_D1HZ_REG_23 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(23),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(23)
    );
  IC0_D1HZ_REG_22 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(22),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(22)
    );
  IC0_D1HZ_REG_21 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(21),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(21)
    );
  IC0_D1HZ_REG_20 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(20),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(20)
    );
  IC0_D1HZ_REG_19 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(19),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(19)
    );
  IC0_D1HZ_REG_18 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(18),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(18)
    );
  IC0_D1HZ_REG_17 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(17),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(17)
    );
  IC0_D1HZ_REG_16 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(16),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(16)
    );
  IC0_D1HZ_REG_15 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(15),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(15)
    );
  IC0_D1HZ_REG_14 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(14),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(14)
    );
  IC0_D1HZ_REG_13 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(13),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(13)
    );
  IC0_D1HZ_REG_12 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(12),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(12)
    );
  IC0_D1HZ_REG_11 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(11),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(11)
    );
  IC0_D1HZ_REG_10 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(10),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(10)
    );
  IC0_D1HZ_REG_9 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(9),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(9)
    );
  IC0_D1HZ_REG_8 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(8),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(8)
    );
  IC0_D1HZ_REG_7 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(7),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(7)
    );
  IC0_D1HZ_REG_6 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(6),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(6)
    );
  IC0_D1HZ_REG_5 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(5),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(5)
    );
  IC0_D1HZ_REG_4 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(4),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(4)
    );
  IC0_D1HZ_REG_3 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(3),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(3)
    );
  IC0_D1HZ_REG_2 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(2),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(2)
    );
  IC0_D1HZ_REG_1 : FDR_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(1),
      R => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(1)
    );
  IC0_D1HZ_REG_0 : FDS_1
    generic map(
      INIT => '1'
    )
    port map (
      C => CKHT_BUFGP_26,
      D => IC0_D1HZ_NEXT_addsub0000(0),
      S => IC0_D1HZ_NEXT_cmp_eq0000,
      Q => IC0_D1HZ_REG(0)
    );
  IC1_IC3_DB_REG_FSM_FFd2 : FDSE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_cmp_eq0000,
      D => N0,
      S => IC1_IC3_N11,
      Q => IC1_IC3_DB_REG_FSM_FFd2_538
    );
  IC1_IC3_DELAY_REG_19 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(19),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(19)
    );
  IC1_IC3_DELAY_REG_18 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(18),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(18)
    );
  IC1_IC3_DELAY_REG_17 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(17),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(17)
    );
  IC1_IC3_DELAY_REG_16 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(16),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(16)
    );
  IC1_IC3_DELAY_REG_15 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(15),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(15)
    );
  IC1_IC3_DELAY_REG_14 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(14),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(14)
    );
  IC1_IC3_DELAY_REG_13 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(13),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(13)
    );
  IC1_IC3_DELAY_REG_12 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(12),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(12)
    );
  IC1_IC3_DELAY_REG_11 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(11),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(11)
    );
  IC1_IC3_DELAY_REG_10 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(10),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(10)
    );
  IC1_IC3_DELAY_REG_9 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(9),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(9)
    );
  IC1_IC3_DELAY_REG_8 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(8),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(8)
    );
  IC1_IC3_DELAY_REG_7 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(7),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(7)
    );
  IC1_IC3_DELAY_REG_6 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(6),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(6)
    );
  IC1_IC3_DELAY_REG_5 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(5),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(5)
    );
  IC1_IC3_DELAY_REG_4 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(4),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(4)
    );
  IC1_IC3_DELAY_REG_3 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(3),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(3)
    );
  IC1_IC3_DELAY_REG_2 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(2),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(2)
    );
  IC1_IC3_DELAY_REG_1 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(1),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(1)
    );
  IC1_IC3_DELAY_REG_0 : FDSE_1
    port map (
      C => CKHT_BUFGP_26,
      CE => IC1_IC3_DB_REG_FSM_FFd2_538,
      D => IC1_IC3_DELAY_REG_addsub0000(0),
      S => IC1_IC3_N11,
      Q => IC1_IC3_DELAY_REG(0)
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(22),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_22_rt_513
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(21),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_21_rt_511
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(20),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_20_rt_509
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(19),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_19_rt_505
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(18),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_18_rt_503
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(17),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_17_rt_501
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(16),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_16_rt_499
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(15),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_15_rt_497
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(14),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_14_rt_495
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(13),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_13_rt_493
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(12),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_12_rt_491
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(11),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_11_rt_489
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(10),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_10_rt_487
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(9),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_9_rt_529
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(8),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_8_rt_527
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(7),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_7_rt_525
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(6),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_6_rt_523
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(5),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_5_rt_521
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(4),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_4_rt_519
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(3),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_3_rt_517
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(2),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_2_rt_515
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(1),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_cy_1_rt_507
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(24),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_24_rt_386
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(23),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_23_rt_384
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(22),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_22_rt_382
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(21),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_21_rt_380
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(20),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_20_rt_378
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(19),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_19_rt_374
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(18),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_18_rt_372
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(17),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_17_rt_370
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(16),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_16_rt_368
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(15),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_15_rt_366
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(14),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_14_rt_364
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(13),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_13_rt_362
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(12),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_12_rt_360
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(11),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_11_rt_358
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(10),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_10_rt_356
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(9),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_9_rt_402
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(8),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_8_rt_400
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(7),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_7_rt_398
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(6),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_6_rt_396
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(5),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_5_rt_394
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(4),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_4_rt_392
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(3),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_3_rt_390
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(2),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_2_rt_388
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(1),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_cy_1_rt_376
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(23),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_23_rt_466
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(22),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_22_rt_464
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(21),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_21_rt_462
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(20),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_20_rt_460
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(19),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_19_rt_456
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(18),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_18_rt_454
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(17),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_17_rt_452
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(16),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_16_rt_450
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(15),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_15_rt_448
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(14),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_14_rt_446
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(13),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_13_rt_444
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(12),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_12_rt_442
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(11),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_11_rt_440
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(10),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_10_rt_438
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(9),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_9_rt_482
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(8),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_8_rt_480
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(7),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_7_rt_478
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(6),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_6_rt_476
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(5),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_5_rt_474
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(4),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_4_rt_472
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(3),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_3_rt_470
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(2),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_2_rt_468
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(1),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_cy_1_rt_458
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(21),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_21_rt_335
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(20),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_20_rt_333
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(19),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_19_rt_329
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(18),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_18_rt_327
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(17),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_17_rt_325
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(16),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_16_rt_323
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(15),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_15_rt_321
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(14),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_14_rt_319
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(13),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_13_rt_317
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(12),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_12_rt_315
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(11),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_11_rt_313
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(10),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_10_rt_311
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(9),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_9_rt_351
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(8),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_8_rt_349
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(7),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_7_rt_347
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(6),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_6_rt_345
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(5),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_5_rt_343
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(4),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_4_rt_341
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(3),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_3_rt_339
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(2),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_2_rt_337
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(1),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_cy_1_rt_331
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(14),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_14_rt_415
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(13),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_13_rt_413
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(12),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_12_rt_411
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(11),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_11_rt_409
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(10),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_10_rt_407
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(9),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_9_rt_433
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(8),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_8_rt_431
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(7),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_7_rt_429
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(6),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_6_rt_427
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(5),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_5_rt_425
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(4),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_4_rt_423
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(3),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_3_rt_421
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(2),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_2_rt_419
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(1),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_cy_1_rt_417
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC1_IC3_DELAY_REG(0),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_cy_0_rt_590
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_xor_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D5HZ_REG(23),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_xor_23_rt_531
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_xor_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1HZ_REG(25),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_xor_25_rt_404
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_xor_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D2HZ_REG(24),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_xor_24_rt_484
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_xor_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D10HZ_REG(22),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_xor_22_rt_353
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IC0_D1KHZ_REG(15),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_xor_15_rt_435
    );
  IC3_DONVI_REG_3_and00011 : LUT4
    generic map(
      INIT => X"0C44"
    )
    port map (
      I0 => N109,
      I1 => IC3_N62,
      I2 => IC1_2_Mrom_OE3,
      I3 => IC3_DONVI_REG_0_or000028_745,
      O => IC3_DONVI_REG_3_and0001
    );
  IC3_DONVI_REG_1_and00011 : LUT4
    generic map(
      INIT => X"0C44"
    )
    port map (
      I0 => N112,
      I1 => IC3_N59,
      I2 => IC1_2_Mrom_OE1,
      I3 => IC3_DONVI_REG_0_or000028_745,
      O => IC3_DONVI_REG_1_and0001
    );
  IC3_DONVI_REG_5_and00011 : LUT4
    generic map(
      INIT => X"5030"
    )
    port map (
      I0 => N116,
      I1 => N115,
      I2 => IC3_N19,
      I3 => IC3_DONVI_REG_0_or000028_745,
      O => IC3_DONVI_REG_5_and0001
    );
  IC3_CHUC_REG_3_and00011 : LUT4
    generic map(
      INIT => X"202A"
    )
    port map (
      I0 => IC3_N62,
      I1 => N277,
      I2 => IC3_DONVI_REG_0_or000028_745,
      I3 => N121,
      O => IC3_CHUC_REG_3_and0001
    );
  IC3_CHUC_REG_5_and0001 : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => IC3_DONVI_REG_0_or000028_745,
      I1 => N78,
      I2 => N278,
      I3 => N130,
      O => IC3_CHUC_REG_5_and0001_717
    );
  IC3_CHUC_REG_1_and0001 : LUT4
    generic map(
      INIT => X"202A"
    )
    port map (
      I0 => IC3_N59,
      I1 => N274,
      I2 => IC3_DONVI_REG_0_or000028_745,
      I3 => N133,
      O => IC3_CHUC_REG_1_and0001_670
    );
  IC3_DONVI_REG_0_or0000223_SW2 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC1_1_Q_REG(2),
      I1 => IC1_1_Q_REG(1),
      I2 => IC1_1_Q_REG(0),
      I3 => SW0_IBUF_942,
      O => N112
    );
  IC3_DONVI_REG_0_or0000223_SW0 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(2),
      I2 => IC1_1_Q_REG(1),
      I3 => SW0_IBUF_942,
      O => N109
    );
  IC3_DONVI_REG_0_or0000172 : MUXF5
    port map (
      I0 => N142,
      I1 => N143,
      S => IC1_1_Q_REG(1),
      O => IC3_DONVI_REG_0_or0000172_744
    );
  IC3_DONVI_REG_0_or0000172_F : LUT4
    generic map(
      INIT => X"23AF"
    )
    port map (
      I0 => IC3_DONVI_REG_0_or000081_749,
      I1 => IC1_1_Q_REG(2),
      I2 => IC0_N11,
      I3 => ENA5,
      O => N142
    );
  IC3_DONVI_REG_0_or0000172_G : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => IC1_1_Q_REG(2),
      I1 => ENA10,
      I2 => ENA1,
      O => N143
    );
  IC3_DONVI_REG_0_or000028 : MUXF5
    port map (
      I0 => N144,
      I1 => N145,
      S => IC1_1_Q_REG(1),
      O => IC3_DONVI_REG_0_or000028_745
    );
  IC3_DONVI_REG_0_or000028_F : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => IC0_ENA1HZ_cmp_eq000024_303,
      I1 => IC0_ENA1HZ_cmp_eq000013_302,
      I2 => IC0_ENA1HZ_cmp_eq000010_301,
      I3 => IC0_N01,
      O => N144
    );
  IC3_DONVI_REG_0_or000028_G : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => IC1_1_Q_REG(2),
      I1 => ENA5,
      I2 => ENA10,
      O => N145
    );
  IC3_DONVI_REG_0_or0000223_SW6_F : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => BTN_0_IBUF_18,
      I1 => IC1_2_Mrom_OE,
      I2 => SW0_IBUF_942,
      O => N148
    );
  IC3_DONVI_REG_0_or0000223_SW7_F : LUT4
    generic map(
      INIT => X"2AFF"
    )
    port map (
      I0 => IC1_2_Mrom_OE,
      I1 => IC1_1_Q_REG(0),
      I2 => SW0_IBUF_942,
      I3 => BTN_0_IBUF_18,
      O => N150
    );
  IC3_DONVI_REG_0_or0000223_SW8 : MUXF5
    port map (
      I0 => N152,
      I1 => N153,
      S => IC3_DONVI_REG_0_or0000172_744,
      O => N121
    );
  IC3_DONVI_REG_0_or0000223_SW8_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => IC3_CHUC_REG_3_cmp_eq0000,
      I2 => SW0_IBUF_942,
      O => N152
    );
  IC3_DONVI_REG_0_or0000223_SW8_G : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => IC3_CHUC_REG_3_cmp_eq0000,
      I2 => SW0_IBUF_942,
      I3 => IC1_1_Q_REG(0),
      O => N153
    );
  IC3_DONVI_REG_0_or0000223_SW14 : MUXF5
    port map (
      I0 => N162,
      I1 => N163,
      S => IC3_DONVI_REG_0_or0000172_744,
      O => N130
    );
  IC3_DONVI_REG_0_or0000223_SW14_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => IC1_2_Mrom_OE5,
      I1 => IC3_CHUC_REG_5_cmp_eq0000,
      I2 => SW0_IBUF_942,
      O => N162
    );
  IC3_DONVI_REG_0_or0000223_SW14_G : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => IC1_2_Mrom_OE5,
      I1 => IC3_CHUC_REG_5_cmp_eq0000,
      I2 => SW0_IBUF_942,
      I3 => IC1_1_Q_REG(0),
      O => N163
    );
  IC3_DONVI_REG_0_or0000223_SW16 : MUXF5
    port map (
      I0 => N164,
      I1 => N165,
      S => IC3_DONVI_REG_0_or0000172_744,
      O => N133
    );
  IC3_DONVI_REG_0_or0000223_SW16_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => IC1_2_Mrom_OE1,
      I1 => N80,
      I2 => SW0_IBUF_942,
      O => N164
    );
  IC3_DONVI_REG_0_or0000223_SW16_G : LUT4
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => IC1_2_Mrom_OE1,
      I1 => N80,
      I2 => SW0_IBUF_942,
      I3 => IC1_1_Q_REG(0),
      O => N165
    );
  IC3_DONVI_REG_0_or0000223_SW18_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => N275,
      I1 => IC3_CHUC_REG_0_and00012_657,
      I2 => SW0_IBUF_942,
      O => N166
    );
  IC3_DONVI_REG_0_or0000223_SW19_F : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => IC1_2_Mrom_OE,
      I1 => IC3_CHUC_REG_0_and00012_657,
      I2 => IC1_1_Q_REG(0),
      I3 => SW0_IBUF_942,
      O => N168
    );
  IC3_DONVI_REG_0_or0000223_SW20_F : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => N273,
      I1 => IC3_CHUC_REG_2_and00018_684,
      I2 => SW0_IBUF_942,
      O => N170
    );
  IC3_DONVI_REG_0_or0000223_SW21_F : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => IC1_2_Mrom_OE2,
      I1 => IC3_CHUC_REG_2_and00018_684,
      I2 => IC1_1_Q_REG(0),
      I3 => SW0_IBUF_942,
      O => N172
    );
  IC4_GIAIMA_SSEG_2_SW2 : LUT4
    generic map(
      INIT => X"A120"
    )
    port map (
      I0 => IC4_SO_GMA(3),
      I1 => IC4_SO_GMA(0),
      I2 => IC4_SO_GMA(2),
      I3 => IC4_SO_GMA(1),
      O => N174
    );
  IC4_GIAIMA_SSEG_2_Q : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      I2 => N174,
      O => SSEG_2_OBUF_935
    );
  IC4_GIAIMA_SSEG_5_SW2 : LUT4
    generic map(
      INIT => X"6302"
    )
    port map (
      I0 => IC4_SO_GMA(1),
      I1 => IC4_SO_GMA(3),
      I2 => IC4_SO_GMA(2),
      I3 => IC4_SO_GMA(0),
      O => N176
    );
  IC4_GIAIMA_SSEG_5_Q : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      I2 => N176,
      O => SSEG_5_OBUF_938
    );
  IC4_GIAIMA_SSEG_1_SW2 : LUT4
    generic map(
      INIT => X"D680"
    )
    port map (
      I0 => IC4_SO_GMA(0),
      I1 => IC4_SO_GMA(1),
      I2 => IC4_SO_GMA(3),
      I3 => IC4_SO_GMA(2),
      O => N178
    );
  IC4_GIAIMA_SSEG_1_Q : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      I2 => N178,
      O => SSEG_1_OBUF_934
    );
  IC4_GIAIMA_SSEG_3_SW2 : LUT4
    generic map(
      INIT => X"8492"
    )
    port map (
      I0 => IC4_SO_GMA(0),
      I1 => IC4_SO_GMA(1),
      I2 => IC4_SO_GMA(2),
      I3 => IC4_SO_GMA(3),
      O => N180
    );
  IC4_GIAIMA_SSEG_3_Q : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(1),
      I1 => IC4_DEM_3BIT_CHON_8KENH_Q_REG(2),
      I2 => N180,
      O => SSEG_3_OBUF_936
    );
  IC3_CHUC_1_40 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => IC3_CHUC_1_17_642,
      I2 => IC1_2_Mrom_OE2,
      I3 => IC3_CHUC_REG_3(1),
      O => IC3_CHUC_1_40_644
    );
  IC3_CHUC_0_40 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => IC3_CHUC_0_17_639,
      I2 => IC1_2_Mrom_OE2,
      I3 => IC3_CHUC_REG_3(0),
      O => IC3_CHUC_0_40_641
    );
  IC3_DONVI_1_40 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => IC3_DONVI_1_17_725,
      I2 => IC1_2_Mrom_OE2,
      I3 => IC3_DONVI_REG_3(1),
      O => IC3_DONVI_1_40_727
    );
  IC3_CHUC_3_40 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => IC3_CHUC_3_17_648,
      I2 => IC1_2_Mrom_OE2,
      I3 => IC3_CHUC_REG_3(3),
      O => IC3_CHUC_3_40_650
    );
  IC3_CHUC_2_40 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => IC3_CHUC_2_17_645,
      I2 => IC1_2_Mrom_OE2,
      I3 => IC3_CHUC_REG_3(2),
      O => IC3_CHUC_2_40_647
    );
  IC3_DONVI_3_40 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => IC3_DONVI_3_17_731,
      I2 => IC1_2_Mrom_OE2,
      I3 => IC3_DONVI_REG_3(3),
      O => IC3_DONVI_3_40_733
    );
  IC3_DONVI_2_40 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => IC3_DONVI_2_17_728,
      I2 => IC1_2_Mrom_OE2,
      I3 => IC3_DONVI_REG_3(2),
      O => IC3_DONVI_2_40_730
    );
  IC3_DONVI_REG_0_or0000223_SW18_G : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(2),
      I2 => IC1_1_Q_REG(1),
      O => N167
    );
  IC3_DONVI_REG_0_or0000223_SW20_G : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => IC1_1_Q_REG(2),
      I1 => IC1_1_Q_REG(1),
      I2 => IC1_1_Q_REG(0),
      O => N171
    );
  IC3_DONVI_REG_4_mux0000_1_1 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => IC3_DONVI_REG_4(1),
      I1 => IC3_DONVI_REG_4(2),
      I2 => IC1_2_Mrom_OE4,
      O => IC3_DONVI_REG_4_mux0000(1)
    );
  IC3_DONVI_REG_0_or0000223_SW6_G : LUT4
    generic map(
      INIT => X"555D"
    )
    port map (
      I0 => BTN_0_IBUF_18,
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(1),
      I3 => IC1_1_Q_REG(2),
      O => N149
    );
  IC3_DONVI_REG_0_or0000223_SW7_G : LUT4
    generic map(
      INIT => X"555D"
    )
    port map (
      I0 => BTN_0_IBUF_18,
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      I3 => IC1_1_Q_REG(1),
      O => N151
    );
  IC3_DONVI_REG_0_or0000223_SW10_G : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC1_1_Q_REG(2),
      O => N155
    );
  IC3_DONVI_REG_0_or0000223_SW11_F : LUT4
    generic map(
      INIT => X"2060"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      I3 => SW0_IBUF_942,
      O => N156
    );
  IC3_DONVI_REG_0_or0000223_SW10_F : LUT4
    generic map(
      INIT => X"2060"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      I3 => SW0_IBUF_942,
      O => N154
    );
  IC3_DONVI_REG_0_or0000223_SW11_G : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC1_1_Q_REG(2),
      O => N157
    );
  IC3_CHUC_REG_0_and00042 : LUT3
    generic map(
      INIT => X"7A"
    )
    port map (
      I0 => IC1_1_Q_REG(2),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(1),
      O => IC3_CHUC_REG_0_and0004
    );
  IC3_CHUC_REG_1_and000121 : LUT4
    generic map(
      INIT => X"9010"
    )
    port map (
      I0 => IC1_1_Q_REG(2),
      I1 => IC1_1_Q_REG(0),
      I2 => BTN_0_IBUF_18,
      I3 => IC1_1_Q_REG(1),
      O => IC3_N59
    );
  IC3_CHUC_REG_0_and000117 : LUT4
    generic map(
      INIT => X"9010"
    )
    port map (
      I0 => IC1_1_Q_REG(2),
      I1 => IC1_1_Q_REG(1),
      I2 => BTN_0_IBUF_18,
      I3 => IC1_1_Q_REG(0),
      O => IC3_CHUC_REG_0_and000117_656
    );
  IC0_D1KHZ_NEXT_cmp_eq000034_SW0 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => IC0_D1KHZ_REG(6),
      I1 => IC0_D1KHZ_REG(7),
      I2 => IC0_D1KHZ_REG(9),
      I3 => IC0_D1KHZ_REG(5),
      O => N184
    );
  IC0_D1KHZ_NEXT_cmp_eq000034 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => IC0_D1KHZ_NEXT_cmp_eq0000111_166,
      I1 => IC0_D1KHZ_NEXT_cmp_eq0000123_167,
      I2 => IC0_D1KHZ_NEXT_cmp_eq000021_168,
      I3 => N184,
      O => IC0_D1KHZ_NEXT_cmp_eq0000
    );
  IC3_DONVI_REG_4_mux0000_0_SW1 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      O => N186
    );
  IC3_DONVI_REG_4_mux0000_0_Q : LUT4
    generic map(
      INIT => X"0068"
    )
    port map (
      I0 => IC3_DONVI_REG_4(3),
      I1 => IC3_DONVI_REG_4(1),
      I2 => IC3_DONVI_REG_4(2),
      I3 => N186,
      O => IC3_DONVI_REG_4_mux0000(0)
    );
  IC3_DONVI_REG_0_or0000223_SW5 : LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      O => N116
    );
  IC0_ENA1KHZ_cmp_eq000034 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IC0_D1KHZ_NEXT_cmp_eq0000111_166,
      I1 => IC0_D1KHZ_NEXT_cmp_eq0000123_167,
      I2 => IC0_ENA1KHZ_cmp_eq000010_304,
      I3 => IC0_ENA1KHZ_cmp_eq000021_305,
      O => ENA1KHZ
    );
  IC3_DONVI_REG_2_and0001_SW0 : LUT4
    generic map(
      INIT => X"06FF"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC1_1_Q_REG(2),
      I3 => BTN_0_IBUF_18,
      O => N76
    );
  IC3_DONVI_REG_2_mux0000_0_SW0 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => IC3_DONVI_REG_2(3),
      I1 => IC3_DONVI_REG_2(2),
      I2 => IC3_DONVI_REG_2(1),
      O => N62
    );
  IC3_CHUC_REG_2_mux0000_0_SW0 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => IC3_CHUC_REG_2(3),
      I1 => IC3_CHUC_REG_2(2),
      I2 => IC3_CHUC_REG_2(1),
      O => N64
    );
  IC3_DONVI_REG_2_mux0000_1_SW0 : LUT3
    generic map(
      INIT => X"98"
    )
    port map (
      I0 => IC3_DONVI_REG_2(1),
      I1 => IC3_DONVI_REG_2(2),
      I2 => IC3_DONVI_REG_2(3),
      O => N60
    );
  IC3_CHUC_REG_2_mux0000_1_SW0 : LUT4
    generic map(
      INIT => X"5657"
    )
    port map (
      I0 => IC3_CHUC_REG_2(2),
      I1 => IC3_CHUC_REG_2(1),
      I2 => IC3_CHUC_REG_2(0),
      I3 => IC3_CHUC_REG_2(3),
      O => N72
    );
  IC3_DONVI_REG_0_mux0000_3_1 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => IC3_CHUC_REG_0_cmp_eq0000,
      I1 => IC1_2_Mrom_OE,
      I2 => IC3_DONVI_REG_0(0),
      I3 => N269,
      O => IC3_DONVI_REG_0_mux0000(3)
    );
  IC3_CHUC_REG_0_mux0000_3_1 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => IC3_CHUC_REG_0_cmp_eq0000,
      I1 => IC1_2_Mrom_OE,
      I2 => IC3_CHUC_REG_0(0),
      I3 => IC3_CHUC_REG_0_cmp_eq0001,
      O => IC3_CHUC_REG_0_mux0000(3)
    );
  IC3_DONVI_REG_3_mux0000_1_SW1 : LUT4
    generic map(
      INIT => X"A9A8"
    )
    port map (
      I0 => IC3_DONVI_REG_3(2),
      I1 => IC3_DONVI_REG_3(0),
      I2 => IC3_DONVI_REG_3(1),
      I3 => IC3_DONVI_REG_3(3),
      O => N196
    );
  IC3_DONVI_REG_3_mux0000_1_Q : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => N196,
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      I3 => IC1_1_Q_REG(1),
      O => IC3_DONVI_REG_3_mux0000(1)
    );
  IC3_CHUC_REG_3_mux0000_1_SW1 : LUT4
    generic map(
      INIT => X"A9A8"
    )
    port map (
      I0 => IC3_CHUC_REG_3(2),
      I1 => IC3_CHUC_REG_3(0),
      I2 => IC3_CHUC_REG_3(1),
      I3 => IC3_CHUC_REG_3(3),
      O => N198
    );
  IC3_CHUC_REG_3_mux0000_1_Q : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => N198,
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      I3 => IC1_1_Q_REG(1),
      O => IC3_CHUC_REG_3_mux0000(1)
    );
  IC3_CHUC_REG_5_mux0000_1_SW1 : LUT4
    generic map(
      INIT => X"A9A8"
    )
    port map (
      I0 => IC3_CHUC_REG_5(2),
      I1 => IC3_CHUC_REG_5(0),
      I2 => IC3_CHUC_REG_5(1),
      I3 => IC3_CHUC_REG_5(3),
      O => N200
    );
  IC3_CHUC_REG_5_mux0000_1_Q : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      I3 => N200,
      O => IC3_CHUC_REG_5_mux0000(1)
    );
  IC3_DONVI_REG_3_mux0000_0_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => IC3_DONVI_REG_3(0),
      I1 => IC3_DONVI_REG_3(1),
      I2 => IC3_DONVI_REG_3(2),
      O => N206
    );
  IC3_DONVI_REG_3_mux0000_0_Q : LUT4
    generic map(
      INIT => X"8082"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => IC3_DONVI_REG_3(3),
      I2 => N206,
      I3 => IC3_CHUC_REG_3_cmp_eq0001,
      O => IC3_DONVI_REG_3_mux0000(0)
    );
  IC3_CHUC_REG_5_mux0000_0_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => IC3_CHUC_REG_5(0),
      I1 => IC3_CHUC_REG_5(1),
      I2 => IC3_CHUC_REG_5(2),
      O => N208
    );
  IC3_CHUC_REG_5_mux0000_0_Q : LUT4
    generic map(
      INIT => X"8082"
    )
    port map (
      I0 => IC1_2_Mrom_OE5,
      I1 => IC3_CHUC_REG_5(3),
      I2 => N208,
      I3 => IC3_CHUC_REG_5_cmp_eq0000,
      O => IC3_CHUC_REG_5_mux0000(0)
    );
  IC3_CHUC_REG_3_mux0000_0_SW1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => IC3_CHUC_REG_3(0),
      I1 => IC3_CHUC_REG_3(1),
      I2 => IC3_CHUC_REG_3(2),
      O => N210
    );
  IC3_CHUC_REG_3_mux0000_0_Q : LUT4
    generic map(
      INIT => X"8082"
    )
    port map (
      I0 => IC1_2_Mrom_OE3,
      I1 => IC3_CHUC_REG_3(3),
      I2 => N210,
      I3 => IC3_CHUC_REG_3_cmp_eq0000,
      O => IC3_CHUC_REG_3_mux0000(0)
    );
  IC3_CHUC_REG_0_mux0000_2_SW1 : LUT4
    generic map(
      INIT => X"99D9"
    )
    port map (
      I0 => IC3_CHUC_REG_0(1),
      I1 => IC3_CHUC_REG_0(0),
      I2 => IC3_CHUC_REG_0(3),
      I3 => IC3_CHUC_REG_0(2),
      O => N212
    );
  IC3_CHUC_REG_0_mux0000_2_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      I3 => N212,
      O => IC3_CHUC_REG_0_mux0000(2)
    );
  IC3_CHUC_REG_4_mux0000_0_SW1 : LUT4
    generic map(
      INIT => X"9555"
    )
    port map (
      I0 => IC3_CHUC_REG_4(3),
      I1 => IC3_CHUC_REG_4(0),
      I2 => IC3_CHUC_REG_4(1),
      I3 => IC3_CHUC_REG_4(2),
      O => N214
    );
  IC3_CHUC_REG_4_mux0000_0_Q : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC1_1_Q_REG(2),
      I3 => N214,
      O => IC3_CHUC_REG_4_mux0000(0)
    );
  IC3_DONVI_REG_5_mux0000_2_1 : LUT4
    generic map(
      INIT => X"0A08"
    )
    port map (
      I0 => IC1_2_Mrom_OE5,
      I1 => IC3_DONVI_REG_5(2),
      I2 => IC3_DONVI_REG_5(1),
      I3 => IC3_DONVI_REG_5(3),
      O => IC3_DONVI_REG_5_mux0000(2)
    );
  IC3_DONVI_REG_5_mux0000_0_SW1 : LUT4
    generic map(
      INIT => X"A8A9"
    )
    port map (
      I0 => IC3_DONVI_REG_5(3),
      I1 => IC3_DONVI_REG_5(1),
      I2 => IC3_DONVI_REG_5(2),
      I3 => IC3_CHUC_REG_5_cmp_eq0001,
      O => N216
    );
  IC3_DONVI_REG_5_mux0000_0_Q : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      I3 => N216,
      O => IC3_DONVI_REG_5_mux0000(0)
    );
  IC3_CHUC_REG_4_mux0000_2_Q : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => N218,
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      I3 => IC1_1_Q_REG(1),
      O => IC3_CHUC_REG_4_mux0000(2)
    );
  IC3_DONVI_REG_0_or0000223_SW4 : LUT4
    generic map(
      INIT => X"2060"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC1_1_Q_REG(2),
      I3 => SW0_IBUF_942,
      O => N115
    );
  IC3_CHUC_REG_3_and00012 : LUT4
    generic map(
      INIT => X"9010"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => BTN_0_IBUF_18,
      I3 => IC1_1_Q_REG(2),
      O => IC3_N62
    );
  IC3_CHUC_REG_1_mux0000_1_Q : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => IC1_2_Mrom_OE1,
      I1 => IC3_CHUC_REG_1(2),
      I2 => IC3_CHUC_REG_1(0),
      I3 => IC3_CHUC_REG_1(1),
      O => IC3_CHUC_REG_1_mux0000(1)
    );
  IC3_CHUC_REG_4_and0001_SW0 : LUT4
    generic map(
      INIT => X"8082"
    )
    port map (
      I0 => BTN_0_IBUF_18,
      I1 => IC1_1_Q_REG(2),
      I2 => IC1_1_Q_REG(0),
      I3 => IC1_1_Q_REG(1),
      O => N82
    );
  IC3_DONVI_REG_0_or0000223_SW13_F : LUT4
    generic map(
      INIT => X"4C6C"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(2),
      I2 => IC1_1_Q_REG(1),
      I3 => SW0_IBUF_942,
      O => N160
    );
  IC3_DONVI_REG_0_or0000223_SW12_F : LUT4
    generic map(
      INIT => X"4C6C"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(2),
      I2 => IC1_1_Q_REG(1),
      I3 => SW0_IBUF_942,
      O => N158
    );
  IC3_CHUC_REG_2_and000129 : LUT4
    generic map(
      INIT => X"8082"
    )
    port map (
      I0 => BTN_0_IBUF_18,
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(1),
      I3 => IC1_1_Q_REG(2),
      O => IC3_CHUC_REG_2_and000129_683
    );
  IC3_DONVI_REG_0_or0000223_SW12_G : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(2),
      I2 => IC1_1_Q_REG(1),
      O => N159
    );
  IC3_DONVI_REG_0_or0000223_SW13_G : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(2),
      I2 => IC1_1_Q_REG(1),
      O => N161
    );
  IC3_CHUC_REG_5_and0001_SW0 : LUT4
    generic map(
      INIT => X"76FF"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(2),
      I2 => IC1_1_Q_REG(0),
      I3 => BTN_0_IBUF_18,
      O => N78
    );
  IC3_CHUC_REG_1_mux0000_0_SW0 : LUT4
    generic map(
      INIT => X"907F"
    )
    port map (
      I0 => IC3_CHUC_REG_1(2),
      I1 => IC3_CHUC_REG_1(1),
      I2 => IC3_CHUC_REG_1(0),
      I3 => IC3_CHUC_REG_1(3),
      O => N226
    );
  IC3_CHUC_REG_1_mux0000_0_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC1_1_Q_REG(2),
      I3 => N226,
      O => IC3_CHUC_REG_1_mux0000(0)
    );
  IC3_CHUC_REG_1_mux0000_2_SW0 : LUT4
    generic map(
      INIT => X"6626"
    )
    port map (
      I0 => IC3_CHUC_REG_1(1),
      I1 => IC3_CHUC_REG_1(0),
      I2 => IC3_CHUC_REG_1(3),
      I3 => IC3_CHUC_REG_1(2),
      O => N228
    );
  IC3_CHUC_REG_1_mux0000_2_Q : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      I3 => N228,
      O => IC3_CHUC_REG_1_mux0000(2)
    );
  IC3_CHUC_1_76_SW0 : LUT4
    generic map(
      INIT => X"9980"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC3_CHUC_REG_2(1),
      I3 => IC3_CHUC_1_40_644,
      O => N230
    );
  IC3_CHUC_1_76 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => N230,
      I1 => IC1_1_Q_REG(2),
      I2 => IC3_CHUC_1_40_644,
      I3 => IC3_CHUC_1_4_643,
      O => CHUC(1)
    );
  IC3_CHUC_0_76_SW0 : LUT4
    generic map(
      INIT => X"9980"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC3_CHUC_REG_2(0),
      I3 => IC3_CHUC_0_40_641,
      O => N232
    );
  IC3_CHUC_0_76 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => N232,
      I1 => IC1_1_Q_REG(2),
      I2 => IC3_CHUC_0_40_641,
      I3 => IC3_CHUC_0_4_640,
      O => CHUC(0)
    );
  IC3_DONVI_1_76_SW0 : LUT4
    generic map(
      INIT => X"9980"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC3_DONVI_REG_2(1),
      I3 => IC3_DONVI_1_40_727,
      O => N234
    );
  IC3_DONVI_1_76 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => N234,
      I1 => IC1_1_Q_REG(2),
      I2 => IC3_DONVI_1_40_727,
      I3 => IC3_DONVI_1_4_726,
      O => DONVI(1)
    );
  IC3_CHUC_3_76_SW0 : LUT4
    generic map(
      INIT => X"9980"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC3_CHUC_REG_2(3),
      I3 => IC3_CHUC_3_40_650,
      O => N236
    );
  IC3_CHUC_3_76 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => N236,
      I1 => IC1_1_Q_REG(2),
      I2 => IC3_CHUC_3_40_650,
      I3 => IC3_CHUC_3_4_649,
      O => CHUC(3)
    );
  IC3_CHUC_2_76_SW0 : LUT4
    generic map(
      INIT => X"9980"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC3_CHUC_REG_2(2),
      I3 => IC3_CHUC_2_40_647,
      O => N238
    );
  IC3_CHUC_2_76 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => N238,
      I1 => IC1_1_Q_REG(2),
      I2 => IC3_CHUC_2_40_647,
      I3 => IC3_CHUC_2_4_646,
      O => CHUC(2)
    );
  IC3_DONVI_3_76_SW0 : LUT4
    generic map(
      INIT => X"9980"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC3_DONVI_REG_2(3),
      I3 => IC3_DONVI_3_40_733,
      O => N240
    );
  IC3_DONVI_3_76 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => N240,
      I1 => IC1_1_Q_REG(2),
      I2 => IC3_DONVI_3_40_733,
      I3 => IC3_DONVI_3_4_732,
      O => DONVI(3)
    );
  IC3_DONVI_2_76_SW0 : LUT4
    generic map(
      INIT => X"9980"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC3_DONVI_REG_2(2),
      I3 => IC3_DONVI_2_40_730,
      O => N242
    );
  IC3_DONVI_2_76 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => N242,
      I1 => IC1_1_Q_REG(2),
      I2 => IC3_DONVI_2_40_730,
      I3 => IC3_DONVI_2_4_729,
      O => DONVI(2)
    );
  IC3_DONVI_REG_0_mux0000_1_Q : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => IC1_2_Mrom_OE,
      I1 => IC3_DONVI_REG_0(2),
      I2 => IC3_DONVI_REG_0(0),
      I3 => IC3_DONVI_REG_0(1),
      O => IC3_DONVI_REG_0_mux0000(1)
    );
  IC3_DONVI_REG_0_mux0000_0_SW1 : LUT4
    generic map(
      INIT => X"907F"
    )
    port map (
      I0 => IC3_DONVI_REG_0(2),
      I1 => IC3_DONVI_REG_0(1),
      I2 => IC3_DONVI_REG_0(0),
      I3 => IC3_DONVI_REG_0(3),
      O => N244
    );
  IC3_DONVI_REG_0_mux0000_0_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      I3 => N244,
      O => IC3_DONVI_REG_0_mux0000(0)
    );
  IC3_CHUC_REG_0_mux0000_0_SW1 : LUT4
    generic map(
      INIT => X"907F"
    )
    port map (
      I0 => IC3_CHUC_REG_0(2),
      I1 => IC3_CHUC_REG_0(1),
      I2 => IC3_CHUC_REG_0(0),
      I3 => IC3_CHUC_REG_0(3),
      O => N246
    );
  IC3_CHUC_REG_0_mux0000_0_Q : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(2),
      I3 => N246,
      O => IC3_CHUC_REG_0_mux0000(0)
    );
  CKHT_BUFGP : BUFGP
    port map (
      I => CKHT,
      O => CKHT_BUFGP_26
    );
  IC0_Madd_D5HZ_NEXT_addsub0000_lut_0_INV_0 : INV
    port map (
      I => IC0_D5HZ_REG(0),
      O => IC0_Madd_D5HZ_NEXT_addsub0000_lut(0)
    );
  IC0_Madd_D1HZ_NEXT_addsub0000_lut_0_INV_0 : INV
    port map (
      I => IC0_D1HZ_REG(0),
      O => IC0_Madd_D1HZ_NEXT_addsub0000_lut(0)
    );
  IC0_Madd_D2HZ_NEXT_addsub0000_lut_0_INV_0 : INV
    port map (
      I => IC0_D2HZ_REG(0),
      O => IC0_Madd_D2HZ_NEXT_addsub0000_lut(0)
    );
  IC0_Madd_D10HZ_NEXT_addsub0000_lut_0_INV_0 : INV
    port map (
      I => IC0_D10HZ_REG(0),
      O => IC0_Madd_D10HZ_NEXT_addsub0000_lut(0)
    );
  IC0_Madd_D1KHZ_NEXT_addsub0000_lut_0_INV_0 : INV
    port map (
      I => IC0_D1KHZ_REG(0),
      O => IC0_Madd_D1KHZ_NEXT_addsub0000_lut(0)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_19_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(19),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(19)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_18_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(18),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(18)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_17_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(17),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(17)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_16_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(16),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(16)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_15_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(15),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(15)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_14_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(14),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(14)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_13_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(13),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(13)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_12_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(12),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(12)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_11_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(11),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(11)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_10_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(10),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(10)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_9_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(9),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(9)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_8_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(8),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(8)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_7_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(7),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(7)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_6_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(6),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(6)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_5_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(5),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(5)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_4_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(4),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(4)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_3_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(3),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(3)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_2_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(2),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(2)
    );
  IC1_IC3_Msub_DELAY_REG_addsub0000_lut_1_INV_0 : INV
    port map (
      I => IC1_IC3_DELAY_REG(1),
      O => IC1_IC3_Msub_DELAY_REG_addsub0000_lut(1)
    );
  RST1_INV_0 : INV
    port map (
      I => BTN_0_IBUF_18,
      O => RST
    );
  CKHT_inv1_INV_0 : INV
    port map (
      I => CKHT_BUFGP_26,
      O => CKHT_inv
    );
  IC4_DEM_3BIT_CHON_8KENH_Mcount_Q_REG_xor_0_11_INV_0 : INV
    port map (
      I => IC4_DEM_3BIT_CHON_8KENH_Q_REG(0),
      O => Result_0_1
    );
  IC1_1_Mcount_Q_REG_xor_0_11_INV_0 : INV
    port map (
      I => IC1_1_Q_REG(0),
      O => Result(0)
    );
  IC3_CHUC_REG_4_mux0000_1_Q : MUXF5
    port map (
      I0 => N248,
      I1 => N249,
      S => IC3_CHUC_REG_4_cmp_eq0001,
      O => IC3_CHUC_REG_4_mux0000(1)
    );
  IC3_CHUC_REG_4_mux0000_1_F : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => IC1_2_Mrom_OE4,
      I1 => IC3_CHUC_REG_4(2),
      I2 => IC3_CHUC_REG_4(1),
      I3 => IC3_CHUC_REG_4(0),
      O => N248
    );
  IC3_CHUC_REG_4_mux0000_1_G : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC3_DONVI_REG_4(1),
      I1 => IC1_2_Mrom_OE4,
      I2 => IC3_DONVI_REG_4(2),
      I3 => IC3_DONVI_REG_4(3),
      O => N249
    );
  IC3_DONVI_0_53 : MUXF5
    port map (
      I0 => N250,
      I1 => N251,
      S => IC1_1_Q_REG(0),
      O => DONVI(0)
    );
  IC3_DONVI_0_53_F : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => IC1_1_Q_REG(2),
      I1 => IC1_1_Q_REG(1),
      I2 => IC3_DONVI_0_4_724,
      I3 => IC3_DONVI_REG_3(0),
      O => N250
    );
  IC3_DONVI_0_53_G : LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      I0 => IC3_DONVI_0_4_724,
      I1 => IC3_DONVI_REG_2(0),
      I2 => IC1_1_Q_REG(1),
      I3 => IC1_1_Q_REG(2),
      O => N251
    );
  IC3_CHUC_REG_0_and000122 : MUXF5
    port map (
      I0 => N252,
      I1 => N253,
      S => IC3_DONVI_REG_0_or0000172_744,
      O => IC3_CHUC_REG_0_and0001
    );
  IC3_CHUC_REG_0_and000122_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => IC3_CHUC_REG_0_and000117_656,
      I1 => IC3_DONVI_REG_0_or000028_745,
      I2 => N166,
      I3 => N168,
      O => N252
    );
  IC3_CHUC_REG_0_and000122_G : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => IC3_CHUC_REG_0_and000117_656,
      I1 => IC3_DONVI_REG_0_or000028_745,
      I2 => N167,
      I3 => IC1_2_Mrom_OE,
      O => N253
    );
  IC3_CHUC_REG_2_and000134 : MUXF5
    port map (
      I0 => N254,
      I1 => N255,
      S => IC3_DONVI_REG_0_or0000172_744,
      O => IC3_CHUC_REG_2_and0001
    );
  IC3_CHUC_REG_2_and000134_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => IC3_CHUC_REG_2_and000129_683,
      I1 => IC3_DONVI_REG_0_or000028_745,
      I2 => N170,
      I3 => N172,
      O => N254
    );
  IC3_CHUC_REG_2_and000134_G : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => IC3_CHUC_REG_2_and000129_683,
      I1 => IC3_DONVI_REG_0_or000028_745,
      I2 => N171,
      I3 => IC1_2_Mrom_OE2,
      O => N255
    );
  IC3_DONVI_REG_4_and00011 : MUXF5
    port map (
      I0 => N256,
      I1 => N257,
      S => IC3_DONVI_REG_0_or0000172_744,
      O => IC3_DONVI_REG_4_and0001
    );
  IC3_DONVI_REG_4_and00011_F : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => IC3_N19,
      I1 => IC3_DONVI_REG_0_or000028_745,
      I2 => N154,
      I3 => N156,
      O => N256
    );
  IC3_DONVI_REG_4_and00011_G : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => IC3_N19,
      I1 => IC3_DONVI_REG_0_or000028_745,
      I2 => N155,
      I3 => N157,
      O => N257
    );
  IC3_DONVI_REG_0_and00011 : MUXF5
    port map (
      I0 => N258,
      I1 => N259,
      S => IC3_DONVI_REG_0_or0000172_744,
      O => IC3_DONVI_REG_0_and0001
    );
  IC3_DONVI_REG_0_and00011_F : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => IC3_DONVI_REG_0_or000028_745,
      I1 => IC3_CHUC_REG_0_and0004,
      I2 => N150,
      I3 => N148,
      O => N258
    );
  IC3_DONVI_REG_0_and00011_G : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => IC3_DONVI_REG_0_or000028_745,
      I1 => IC3_CHUC_REG_0_and0004,
      I2 => N151,
      I3 => N149,
      O => N259
    );
  IC3_DONVI_REG_2_and0001 : MUXF5
    port map (
      I0 => N260,
      I1 => N261,
      S => IC3_DONVI_REG_0_or0000172_744,
      O => IC3_DONVI_REG_2_and0001_763
    );
  IC3_DONVI_REG_2_and0001_F : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => IC3_DONVI_REG_0_or000028_745,
      I1 => N76,
      I2 => N160,
      I3 => N158,
      O => N260
    );
  IC3_DONVI_REG_2_and0001_G : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => IC3_DONVI_REG_0_or000028_745,
      I1 => N76,
      I2 => N161,
      I3 => N159,
      O => N261
    );
  IC3_CHUC_REG_3_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC3_DONVI_REG_3(3),
      I1 => IC3_DONVI_REG_3(2),
      I2 => IC3_DONVI_REG_3(0),
      I3 => IC3_DONVI_REG_3(1),
      LO => N262,
      O => IC3_CHUC_REG_3_cmp_eq0000
    );
  IC3_CHUC_REG_5_cmp_eq00001 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => IC3_DONVI_REG_5(1),
      I1 => IC3_DONVI_REG_5(2),
      I2 => IC3_DONVI_REG_5(3),
      LO => N263,
      O => IC3_CHUC_REG_5_cmp_eq0000
    );
  IC3_DONVI_REG_0_mux0000_2_11 : LUT3_D
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => IC1_2_Mrom_OE,
      I1 => IC3_CHUC_REG_0_cmp_eq0000,
      I2 => IC3_CHUC_REG_0_cmp_eq0001,
      LO => N264,
      O => IC3_N20
    );
  IC3_DONVI_REG_1_mux0000_0_11 : LUT4_D
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => IC3_CHUC_REG_1_cmp_eq0001,
      I1 => IC1_2_Mrom_OE1,
      I2 => IC3_CHUC_REG_1_and0006,
      I3 => IC3_CHUC_REG_1_cmp_eq0000,
      LO => N265,
      O => IC3_N57
    );
  IC3_CHUC_REG_1_and00061 : LUT4_D
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC3_DONVI_REG_1(0),
      I1 => IC3_DONVI_REG_1(1),
      I2 => IC3_DONVI_REG_1(3),
      I3 => IC3_DONVI_REG_1(2),
      LO => N266,
      O => IC3_CHUC_REG_1_and0006
    );
  IC3_CHUC_REG_1_cmp_eq00011 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC3_CHUC_REG_1(1),
      I1 => IC3_CHUC_REG_1(2),
      I2 => IC3_CHUC_REG_1(0),
      I3 => IC3_CHUC_REG_1(3),
      LO => N267,
      O => IC3_CHUC_REG_1_cmp_eq0001
    );
  IC3_CHUC_REG_1_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC3_DONVI_REG_1(1),
      I1 => IC3_DONVI_REG_1(0),
      I2 => IC3_DONVI_REG_1(3),
      I3 => IC3_DONVI_REG_1(2),
      LO => N268,
      O => IC3_CHUC_REG_1_cmp_eq0000
    );
  IC3_CHUC_REG_0_cmp_eq00011 : LUT4_D
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC3_CHUC_REG_0(0),
      I1 => IC3_CHUC_REG_0(1),
      I2 => IC3_CHUC_REG_0(3),
      I3 => IC3_CHUC_REG_0(2),
      LO => N269,
      O => IC3_CHUC_REG_0_cmp_eq0001
    );
  IC3_CHUC_REG_0_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => IC3_DONVI_REG_0(1),
      I1 => IC3_DONVI_REG_0(0),
      I2 => IC3_DONVI_REG_0(3),
      I3 => IC3_DONVI_REG_0(2),
      LO => N270,
      O => IC3_CHUC_REG_0_cmp_eq0000
    );
  IC3_CHUC_REG_2_and000611 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => IC3_DONVI_REG_2(1),
      I1 => IC3_DONVI_REG_2(2),
      I2 => IC3_DONVI_REG_2(3),
      LO => N271,
      O => IC3_N63
    );
  IC3_CHUC_REG_2_and000711 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => IC3_CHUC_REG_2(2),
      I1 => IC3_CHUC_REG_2(1),
      I2 => IC3_CHUC_REG_2(3),
      LO => N272,
      O => IC3_N64
    );
  IC1_2_Mrom_OE21 : LUT3_D
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => IC1_1_Q_REG(2),
      I1 => IC1_1_Q_REG(1),
      I2 => IC1_1_Q_REG(0),
      LO => N273,
      O => IC1_2_Mrom_OE2
    );
  IC0_D2HZ_NEXT_cmp_eq000017 : LUT4_L
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => IC0_D2HZ_REG(19),
      I1 => IC0_D2HZ_REG(18),
      I2 => IC0_D2HZ_REG(20),
      I3 => IC0_D2HZ_REG(0),
      LO => IC0_D2HZ_NEXT_cmp_eq000017_216
    );
  IC1_2_Mrom_OE111 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => IC1_1_Q_REG(1),
      I1 => IC1_1_Q_REG(2),
      I2 => IC1_1_Q_REG(0),
      LO => N274,
      O => IC1_2_Mrom_OE1
    );
  IC1_2_Mrom_OE11 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(2),
      I2 => IC1_1_Q_REG(1),
      LO => N275,
      O => IC1_2_Mrom_OE
    );
  IC0_D10HZ_NEXT_cmp_eq0000111 : LUT4_L
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC0_D10HZ_REG(0),
      I1 => IC0_D10HZ_REG(18),
      I2 => IC0_D10HZ_REG(16),
      I3 => IC0_D10HZ_REG(15),
      LO => IC0_D10HZ_NEXT_cmp_eq0000111_61
    );
  IC0_D5HZ_NEXT_cmp_eq0000111 : LUT4_L
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => IC0_D5HZ_REG(21),
      I1 => IC0_D5HZ_REG(19),
      I2 => IC0_D5HZ_REG(17),
      I3 => IC0_D5HZ_REG(16),
      LO => IC0_D5HZ_NEXT_cmp_eq0000111_269
    );
  IC0_ENA5HZ_cmp_eq000032 : LUT4_L
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D5HZ_REG(6),
      I1 => IC0_D5HZ_REG(23),
      I2 => IC0_D5HZ_REG(8),
      I3 => IC0_D5HZ_REG(7),
      LO => IC0_ENA5HZ_cmp_eq000032_308
    );
  IC0_ENA10HZ_cmp_eq000032 : LUT4_L
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC0_D10HZ_REG(5),
      I1 => IC0_D10HZ_REG(6),
      I2 => IC0_D10HZ_REG(7),
      I3 => IC0_D10HZ_REG(9),
      LO => IC0_ENA10HZ_cmp_eq000032_300
    );
  IC0_D1HZ_NEXT_cmp_eq0000160 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => IC0_D1HZ_NEXT_cmp_eq000014_120,
      I1 => IC0_D1HZ_NEXT_cmp_eq0000112_117,
      I2 => IC0_D1HZ_NEXT_cmp_eq0000133_119,
      I3 => IC0_D1HZ_NEXT_cmp_eq0000146_121,
      LO => N276,
      O => IC0_N01
    );
  IC3_DONVI_REG_0_or000059 : LUT3_L
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => IC0_D2HZ_REG(6),
      I1 => IC0_D2HZ_REG(23),
      I2 => IC1_1_Q_REG(2),
      LO => IC3_DONVI_REG_0_or000059_747
    );
  IC3_DONVI_REG_0_or0000223 : LUT4_L
    generic map(
      INIT => X"F7D5"
    )
    port map (
      I0 => SW0_IBUF_942,
      I1 => IC1_1_Q_REG(0),
      I2 => IC3_DONVI_REG_0_or0000172_744,
      I3 => IC3_DONVI_REG_0_or000028_745,
      LO => IC3_DONVI_REG_0_or0000
    );
  IC1_2_Mrom_OE31 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => IC1_1_Q_REG(2),
      I1 => IC1_1_Q_REG(0),
      I2 => IC1_1_Q_REG(1),
      LO => N277,
      O => IC1_2_Mrom_OE3
    );
  IC1_2_Mrom_OE51 : LUT3_D
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC1_1_Q_REG(1),
      I2 => IC1_1_Q_REG(2),
      LO => N278,
      O => IC1_2_Mrom_OE5
    );
  IC3_CHUC_REG_5_and000121 : LUT4_D
    generic map(
      INIT => X"8884"
    )
    port map (
      I0 => IC1_1_Q_REG(2),
      I1 => BTN_0_IBUF_18,
      I2 => IC1_1_Q_REG(0),
      I3 => IC1_1_Q_REG(1),
      LO => N279,
      O => IC3_N19
    );
  IC3_CHUC_REG_2_mux0000_2_21 : LUT4_D
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => IC1_1_Q_REG(0),
      I1 => IC3_CHUC_REG_2_and0005,
      I2 => IC1_1_Q_REG(1),
      I3 => IC1_1_Q_REG(2),
      LO => N280,
      O => IC3_N66
    );
  IC3_CHUC_REG_4_mux0000_2_SW1 : LUT4_L
    generic map(
      INIT => X"FF06"
    )
    port map (
      I0 => IC3_CHUC_REG_4(0),
      I1 => IC3_CHUC_REG_4(1),
      I2 => IC3_CHUC_REG_4_cmp_eq0001,
      I3 => IC3_CHUC_REG_4_and0005,
      LO => N218
    );

end Structure;

