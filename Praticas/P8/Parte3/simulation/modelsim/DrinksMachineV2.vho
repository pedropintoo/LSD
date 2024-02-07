-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/11/2023 16:12:30"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DrinksMachineV2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(8 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END DrinksMachineV2;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksMachineV2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[7]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \debounce1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debounce1|s_dirtyIn~q\ : std_logic;
SIGNAL \debounce1|s_previousIn~q\ : std_logic;
SIGNAL \debounce1|Add0~0_combout\ : std_logic;
SIGNAL \debounce1|Add0~5\ : std_logic;
SIGNAL \debounce1|Add0~6_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debounce1|Add0~7\ : std_logic;
SIGNAL \debounce1|Add0~8_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debounce1|Add0~9\ : std_logic;
SIGNAL \debounce1|Add0~10_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debounce1|Add0~11\ : std_logic;
SIGNAL \debounce1|Add0~12_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debounce1|Add0~13\ : std_logic;
SIGNAL \debounce1|Add0~14_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debounce1|Add0~15\ : std_logic;
SIGNAL \debounce1|Add0~16_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debounce1|Add0~17\ : std_logic;
SIGNAL \debounce1|Add0~18_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debounce1|Add0~19\ : std_logic;
SIGNAL \debounce1|Add0~20_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debounce1|Add0~21\ : std_logic;
SIGNAL \debounce1|Add0~22_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debounce1|Add0~23\ : std_logic;
SIGNAL \debounce1|Add0~24_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debounce1|Add0~25\ : std_logic;
SIGNAL \debounce1|Add0~26_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debounce1|Add0~27\ : std_logic;
SIGNAL \debounce1|Add0~28_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debounce1|Add0~29\ : std_logic;
SIGNAL \debounce1|Add0~30_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \debounce1|Add0~31\ : std_logic;
SIGNAL \debounce1|Add0~32_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debounce1|Add0~33\ : std_logic;
SIGNAL \debounce1|Add0~34_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debounce1|Add0~35\ : std_logic;
SIGNAL \debounce1|Add0~36_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \debounce1|Add0~37\ : std_logic;
SIGNAL \debounce1|Add0~38_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounce1|Add0~39\ : std_logic;
SIGNAL \debounce1|Add0~40_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[22]~2_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~1_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~2_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~3_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~4_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~5_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~6_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~7_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debounce1|Add0~41\ : std_logic;
SIGNAL \debounce1|Add0~43\ : std_logic;
SIGNAL \debounce1|Add0~44_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[22]~3_combout\ : std_logic;
SIGNAL \debounce1|Add0~42_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~0_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[22]~0_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debounce1|Add0~1\ : std_logic;
SIGNAL \debounce1|Add0~2_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \debounce1|Add0~3\ : std_logic;
SIGNAL \debounce1|Add0~4_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \debounce0|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debounce0|s_dirtyIn~q\ : std_logic;
SIGNAL \debounce0|s_previousIn~q\ : std_logic;
SIGNAL \debounce0|Add0~9\ : std_logic;
SIGNAL \debounce0|Add0~10_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debounce0|Add0~11\ : std_logic;
SIGNAL \debounce0|Add0~12_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debounce0|Add0~13\ : std_logic;
SIGNAL \debounce0|Add0~14_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debounce0|Add0~15\ : std_logic;
SIGNAL \debounce0|Add0~16_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debounce0|Add0~17\ : std_logic;
SIGNAL \debounce0|Add0~18_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debounce0|Add0~19\ : std_logic;
SIGNAL \debounce0|Add0~20_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debounce0|Add0~21\ : std_logic;
SIGNAL \debounce0|Add0~22_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debounce0|Add0~23\ : std_logic;
SIGNAL \debounce0|Add0~24_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debounce0|Add0~25\ : std_logic;
SIGNAL \debounce0|Add0~26_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debounce0|Add0~27\ : std_logic;
SIGNAL \debounce0|Add0~28_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debounce0|Add0~29\ : std_logic;
SIGNAL \debounce0|Add0~30_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debounce0|Add0~31\ : std_logic;
SIGNAL \debounce0|Add0~32_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debounce0|Add0~33\ : std_logic;
SIGNAL \debounce0|Add0~34_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounce0|Add0~35\ : std_logic;
SIGNAL \debounce0|Add0~36_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debounce0|Add0~37\ : std_logic;
SIGNAL \debounce0|Add0~38_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debounce0|Add0~39\ : std_logic;
SIGNAL \debounce0|Add0~40_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[1]~2_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[1]~3_combout\ : std_logic;
SIGNAL \debounce0|Add0~41\ : std_logic;
SIGNAL \debounce0|Add0~42_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~4_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~5_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~6_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~1_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~0_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~2_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~3_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~7_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[1]~0_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debounce0|Add0~43\ : std_logic;
SIGNAL \debounce0|Add0~44_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[1]~4_combout\ : std_logic;
SIGNAL \debounce0|Add0~0_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debounce0|Add0~1\ : std_logic;
SIGNAL \debounce0|Add0~2_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debounce0|Add0~3\ : std_logic;
SIGNAL \debounce0|Add0~4_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debounce0|Add0~5\ : std_logic;
SIGNAL \debounce0|Add0~6_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debounce0|Add0~7\ : std_logic;
SIGNAL \debounce0|Add0~8_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~q\ : std_logic;
SIGNAL \fsm|reg_fstate.E0~0_combout\ : std_logic;
SIGNAL \fsm|reg_fstate.E0~1_combout\ : std_logic;
SIGNAL \fsm|fstate.E0~q\ : std_logic;
SIGNAL \fsm|reg_fstate.E1~0_combout\ : std_logic;
SIGNAL \fsm|reg_fstate.E1~1_combout\ : std_logic;
SIGNAL \fsm|fstate.E1~q\ : std_logic;
SIGNAL \fsm|reg_fstate.E2~0_combout\ : std_logic;
SIGNAL \fsm|reg_fstate.E2~1_combout\ : std_logic;
SIGNAL \fsm|fstate.E2~q\ : std_logic;
SIGNAL \fsm|Selector3~0_combout\ : std_logic;
SIGNAL \fsm|reg_fstate.E3~0_combout\ : std_logic;
SIGNAL \fsm|fstate.E3~q\ : std_logic;
SIGNAL \fsm|Selector4~0_combout\ : std_logic;
SIGNAL \fsm|reg_fstate.E4~0_combout\ : std_logic;
SIGNAL \fsm|fstate.E4~q\ : std_logic;
SIGNAL \fsm|Selector5~0_combout\ : std_logic;
SIGNAL \fsm|Selector5~1_combout\ : std_logic;
SIGNAL \fsm|reg_fstate.E5~0_combout\ : std_logic;
SIGNAL \fsm|fstate.E5~q\ : std_logic;
SIGNAL \hold_abrir|Add0~0_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~32_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~1\ : std_logic;
SIGNAL \hold_abrir|Add0~2_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~35_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~3\ : std_logic;
SIGNAL \hold_abrir|Add0~4_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~34_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~5\ : std_logic;
SIGNAL \hold_abrir|Add0~6_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~33_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~7\ : std_logic;
SIGNAL \hold_abrir|Add0~8_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~31_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~9\ : std_logic;
SIGNAL \hold_abrir|Add0~10_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~30_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~11\ : std_logic;
SIGNAL \hold_abrir|Add0~12_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~29_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~13\ : std_logic;
SIGNAL \hold_abrir|Add0~14_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~28_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~15\ : std_logic;
SIGNAL \hold_abrir|Add0~16_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~27_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~17\ : std_logic;
SIGNAL \hold_abrir|Add0~18_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~26_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~19\ : std_logic;
SIGNAL \hold_abrir|Add0~20_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~25_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~21\ : std_logic;
SIGNAL \hold_abrir|Add0~22_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~24_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~23\ : std_logic;
SIGNAL \hold_abrir|Add0~36_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~38_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~37\ : std_logic;
SIGNAL \hold_abrir|Add0~39_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~41_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~40\ : std_logic;
SIGNAL \hold_abrir|Add0~42_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~44_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~43\ : std_logic;
SIGNAL \hold_abrir|Add0~45_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~47_combout\ : std_logic;
SIGNAL \hold_abrir|Equal0~3_combout\ : std_logic;
SIGNAL \hold_abrir|Equal0~0_combout\ : std_logic;
SIGNAL \hold_abrir|Equal0~2_combout\ : std_logic;
SIGNAL \hold_abrir|Equal0~1_combout\ : std_logic;
SIGNAL \hold_abrir|Equal0~4_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~46\ : std_logic;
SIGNAL \hold_abrir|Add0~48_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~58_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~49\ : std_logic;
SIGNAL \hold_abrir|Add0~50_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~52_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~51\ : std_logic;
SIGNAL \hold_abrir|Add0~53_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~59_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~54\ : std_logic;
SIGNAL \hold_abrir|Add0~55_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~57_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~56\ : std_logic;
SIGNAL \hold_abrir|Add0~60_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~62_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~61\ : std_logic;
SIGNAL \hold_abrir|Add0~63_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~65_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~64\ : std_logic;
SIGNAL \hold_abrir|Add0~66_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~68_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~67\ : std_logic;
SIGNAL \hold_abrir|Add0~69_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~71_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~70\ : std_logic;
SIGNAL \hold_abrir|Add0~72_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~77_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~73\ : std_logic;
SIGNAL \hold_abrir|Add0~74_combout\ : std_logic;
SIGNAL \hold_abrir|Add0~76_combout\ : std_logic;
SIGNAL \hold_abrir|Equal0~5_combout\ : std_logic;
SIGNAL \hold_abrir|Equal0~6_combout\ : std_logic;
SIGNAL \hold_abrir|Equal0~7_combout\ : std_logic;
SIGNAL \hold_abrir|q~0_combout\ : std_logic;
SIGNAL \hold_abrir|q~1_combout\ : std_logic;
SIGNAL \hold_abrir|q~q\ : std_logic;
SIGNAL \moneyCounter|Add0~0_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter[0]~12_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~1\ : std_logic;
SIGNAL \moneyCounter|Add0~2_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~3\ : std_logic;
SIGNAL \moneyCounter|Add0~4_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~5\ : std_logic;
SIGNAL \moneyCounter|Add0~6_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~7\ : std_logic;
SIGNAL \moneyCounter|Add0~8_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~9\ : std_logic;
SIGNAL \moneyCounter|Add0~10_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~11\ : std_logic;
SIGNAL \moneyCounter|Add0~12_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~13\ : std_logic;
SIGNAL \moneyCounter|Add0~14_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter~0_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~15\ : std_logic;
SIGNAL \moneyCounter|Add0~16_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~17\ : std_logic;
SIGNAL \moneyCounter|Add0~18_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~19\ : std_logic;
SIGNAL \moneyCounter|Add0~20_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~21\ : std_logic;
SIGNAL \moneyCounter|Add0~22_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~23\ : std_logic;
SIGNAL \moneyCounter|Add0~24_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter~1_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~25\ : std_logic;
SIGNAL \moneyCounter|Add0~26_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter~2_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~27\ : std_logic;
SIGNAL \moneyCounter|Add0~28_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter~3_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~29\ : std_logic;
SIGNAL \moneyCounter|Add0~30_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter~4_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~31\ : std_logic;
SIGNAL \moneyCounter|Add0~32_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~33\ : std_logic;
SIGNAL \moneyCounter|Add0~34_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter~5_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~35\ : std_logic;
SIGNAL \moneyCounter|Add0~36_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~37\ : std_logic;
SIGNAL \moneyCounter|Add0~38_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter~6_combout\ : std_logic;
SIGNAL \moneyCounter|Equal0~5_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~39\ : std_logic;
SIGNAL \moneyCounter|Add0~40_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter~7_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~41\ : std_logic;
SIGNAL \moneyCounter|Add0~42_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter~8_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~43\ : std_logic;
SIGNAL \moneyCounter|Add0~44_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter~9_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~45\ : std_logic;
SIGNAL \moneyCounter|Add0~46_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter~10_combout\ : std_logic;
SIGNAL \moneyCounter|Equal0~6_combout\ : std_logic;
SIGNAL \moneyCounter|Equal0~3_combout\ : std_logic;
SIGNAL \moneyCounter|Equal0~2_combout\ : std_logic;
SIGNAL \moneyCounter|Equal0~0_combout\ : std_logic;
SIGNAL \moneyCounter|Equal0~1_combout\ : std_logic;
SIGNAL \moneyCounter|Equal0~4_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~47\ : std_logic;
SIGNAL \moneyCounter|Add0~48_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~49\ : std_logic;
SIGNAL \moneyCounter|Add0~50_combout\ : std_logic;
SIGNAL \moneyCounter|s_delayCounter~11_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~51\ : std_logic;
SIGNAL \moneyCounter|Add0~52_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~53\ : std_logic;
SIGNAL \moneyCounter|Add0~54_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~55\ : std_logic;
SIGNAL \moneyCounter|Add0~56_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~57\ : std_logic;
SIGNAL \moneyCounter|Add0~58_combout\ : std_logic;
SIGNAL \moneyCounter|Add0~59\ : std_logic;
SIGNAL \moneyCounter|Add0~60_combout\ : std_logic;
SIGNAL \moneyCounter|Equal0~7_combout\ : std_logic;
SIGNAL \moneyCounter|Equal0~8_combout\ : std_logic;
SIGNAL \moneyCounter|Equal0~9_combout\ : std_logic;
SIGNAL \fsm|process_1~0_combout\ : std_logic;
SIGNAL \moneyCounter|s_counter[0]~2_combout\ : std_logic;
SIGNAL \moneyCounter|Add1~0_combout\ : std_logic;
SIGNAL \moneyCounter|Add1~2_cout\ : std_logic;
SIGNAL \moneyCounter|Add1~3_combout\ : std_logic;
SIGNAL \moneyCounter|s_counter[1]~0_combout\ : std_logic;
SIGNAL \moneyCounter|Add1~4\ : std_logic;
SIGNAL \moneyCounter|Add1~5_combout\ : std_logic;
SIGNAL \moneyCounter|s_counter[2]~1_combout\ : std_logic;
SIGNAL \moneyCounter|LessThan0~0_combout\ : std_logic;
SIGNAL \moneyCounter|Add1~6\ : std_logic;
SIGNAL \moneyCounter|Add1~7_combout\ : std_logic;
SIGNAL \moneyCounter|Add1~9_combout\ : std_logic;
SIGNAL \dec7segUnits|decOut_n~0_combout\ : std_logic;
SIGNAL \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ : std_logic;
SIGNAL \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ : std_logic;
SIGNAL \dec7segTens|decOut_n~0_combout\ : std_logic;
SIGNAL \dec7segTens|decOut_n~1_combout\ : std_logic;
SIGNAL \dec7segTens|decOut_n~2_combout\ : std_logic;
SIGNAL \dec7segTens|decOut_n~3_combout\ : std_logic;
SIGNAL \dec7segTens|decOut_n~4_combout\ : std_logic;
SIGNAL \dec7segTens|decOut_n~5_combout\ : std_logic;
SIGNAL \dec7segTens|decOut_n~6_combout\ : std_logic;
SIGNAL \fsm|Selector3~1_combout\ : std_logic;
SIGNAL \fsm|WideOr6~0_combout\ : std_logic;
SIGNAL \fsm|currentState[1]~0_combout\ : std_logic;
SIGNAL \dec7segState|decOut_n~0_combout\ : std_logic;
SIGNAL \dec7segState|decOut_n~1_combout\ : std_logic;
SIGNAL \dec7segState|Equal14~0_combout\ : std_logic;
SIGNAL \dec7segState|decOut_n~2_combout\ : std_logic;
SIGNAL \dec7segState|decOut_n~3_combout\ : std_logic;
SIGNAL \dec7segState|decOut_n~4_combout\ : std_logic;
SIGNAL \fsm|currentState[1]~1_combout\ : std_logic;
SIGNAL \dec7segState|decOut_n~5_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \moneyCounter|s_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \moneyCounter|s_delayCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \hold_abrir|s_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \fsm|currentState\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounce0|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \dec7segState|ALT_INV_decOut_n~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDG <= ww_LEDG;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\dec7segState|ALT_INV_decOut_n~5_combout\ <= NOT \dec7segState|decOut_n~5_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hold_abrir|q~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segUnits|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segUnits|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segUnits|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segUnits|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\HEX5[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[7]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segTens|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segTens|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segTens|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segTens|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segTens|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segTens|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segTens|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segState|decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segState|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segState|Equal14~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segState|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segState|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segState|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7segState|ALT_INV_decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X83_Y9_N4
\debounce1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_dirtyIn~0_combout\ = !\SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	combout => \debounce1|s_dirtyIn~0_combout\);

-- Location: FF_X83_Y9_N5
\debounce1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_dirtyIn~q\);

-- Location: FF_X83_Y8_N17
\debounce1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounce1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_previousIn~q\);

-- Location: LCCOMB_X82_Y9_N10
\debounce1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~0_combout\ = \debounce1|s_debounceCnt\(0) $ (VCC)
-- \debounce1|Add0~1\ = CARRY(\debounce1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounce1|Add0~0_combout\,
	cout => \debounce1|Add0~1\);

-- Location: LCCOMB_X82_Y9_N14
\debounce1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~4_combout\ = (\debounce1|s_debounceCnt\(2) & ((GND) # (!\debounce1|Add0~3\))) # (!\debounce1|s_debounceCnt\(2) & (\debounce1|Add0~3\ $ (GND)))
-- \debounce1|Add0~5\ = CARRY((\debounce1|s_debounceCnt\(2)) # (!\debounce1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounce1|Add0~3\,
	combout => \debounce1|Add0~4_combout\,
	cout => \debounce1|Add0~5\);

-- Location: LCCOMB_X82_Y9_N16
\debounce1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~6_combout\ = (\debounce1|s_debounceCnt\(3) & (\debounce1|Add0~5\ & VCC)) # (!\debounce1|s_debounceCnt\(3) & (!\debounce1|Add0~5\))
-- \debounce1|Add0~7\ = CARRY((!\debounce1|s_debounceCnt\(3) & !\debounce1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(3),
	datad => VCC,
	cin => \debounce1|Add0~5\,
	combout => \debounce1|Add0~6_combout\,
	cout => \debounce1|Add0~7\);

-- Location: LCCOMB_X82_Y9_N4
\debounce1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~21_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~6_combout\ & \debounce1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_previousIn~q\,
	datab => \debounce1|Add0~6_combout\,
	datad => \debounce1|s_debounceCnt[22]~0_combout\,
	combout => \debounce1|s_debounceCnt~21_combout\);

-- Location: FF_X82_Y9_N5
\debounce1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~21_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(3));

-- Location: LCCOMB_X82_Y9_N18
\debounce1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~8_combout\ = (\debounce1|s_debounceCnt\(4) & ((GND) # (!\debounce1|Add0~7\))) # (!\debounce1|s_debounceCnt\(4) & (\debounce1|Add0~7\ $ (GND)))
-- \debounce1|Add0~9\ = CARRY((\debounce1|s_debounceCnt\(4)) # (!\debounce1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(4),
	datad => VCC,
	cin => \debounce1|Add0~7\,
	combout => \debounce1|Add0~8_combout\,
	cout => \debounce1|Add0~9\);

-- Location: LCCOMB_X82_Y9_N2
\debounce1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~22_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~8_combout\ & \debounce1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_previousIn~q\,
	datab => \debounce1|Add0~8_combout\,
	datad => \debounce1|s_debounceCnt[22]~0_combout\,
	combout => \debounce1|s_debounceCnt~22_combout\);

-- Location: FF_X82_Y9_N3
\debounce1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~22_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(4));

-- Location: LCCOMB_X82_Y9_N20
\debounce1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~10_combout\ = (\debounce1|s_debounceCnt\(5) & (\debounce1|Add0~9\ & VCC)) # (!\debounce1|s_debounceCnt\(5) & (!\debounce1|Add0~9\))
-- \debounce1|Add0~11\ = CARRY((!\debounce1|s_debounceCnt\(5) & !\debounce1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(5),
	datad => VCC,
	cin => \debounce1|Add0~9\,
	combout => \debounce1|Add0~10_combout\,
	cout => \debounce1|Add0~11\);

-- Location: LCCOMB_X83_Y8_N8
\debounce1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~27_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~10_combout\ & \debounce1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~10_combout\,
	datad => \debounce1|s_debounceCnt[22]~0_combout\,
	combout => \debounce1|s_debounceCnt~27_combout\);

-- Location: FF_X83_Y8_N9
\debounce1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~27_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(5));

-- Location: LCCOMB_X82_Y9_N22
\debounce1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~12_combout\ = (\debounce1|s_debounceCnt\(6) & ((GND) # (!\debounce1|Add0~11\))) # (!\debounce1|s_debounceCnt\(6) & (\debounce1|Add0~11\ $ (GND)))
-- \debounce1|Add0~13\ = CARRY((\debounce1|s_debounceCnt\(6)) # (!\debounce1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(6),
	datad => VCC,
	cin => \debounce1|Add0~11\,
	combout => \debounce1|Add0~12_combout\,
	cout => \debounce1|Add0~13\);

-- Location: LCCOMB_X83_Y8_N4
\debounce1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~1_combout\ = (\debounce1|s_debounceCnt[22]~0_combout\ & ((\debounce1|Add0~12_combout\) # (!\debounce1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~12_combout\,
	datad => \debounce1|s_debounceCnt[22]~0_combout\,
	combout => \debounce1|s_debounceCnt~1_combout\);

-- Location: FF_X83_Y8_N5
\debounce1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~1_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(6));

-- Location: LCCOMB_X82_Y9_N24
\debounce1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~14_combout\ = (\debounce1|s_debounceCnt\(7) & (\debounce1|Add0~13\ & VCC)) # (!\debounce1|s_debounceCnt\(7) & (!\debounce1|Add0~13\))
-- \debounce1|Add0~15\ = CARRY((!\debounce1|s_debounceCnt\(7) & !\debounce1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounce1|Add0~13\,
	combout => \debounce1|Add0~14_combout\,
	cout => \debounce1|Add0~15\);

-- Location: LCCOMB_X83_Y8_N10
\debounce1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~11_combout\ = (\debounce1|Add0~14_combout\ & (\debounce1|s_previousIn~q\ & \debounce1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|Add0~14_combout\,
	datab => \debounce1|s_previousIn~q\,
	datad => \debounce1|s_debounceCnt[22]~0_combout\,
	combout => \debounce1|s_debounceCnt~11_combout\);

-- Location: FF_X83_Y8_N11
\debounce1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~11_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(7));

-- Location: LCCOMB_X82_Y9_N26
\debounce1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~16_combout\ = (\debounce1|s_debounceCnt\(8) & ((GND) # (!\debounce1|Add0~15\))) # (!\debounce1|s_debounceCnt\(8) & (\debounce1|Add0~15\ $ (GND)))
-- \debounce1|Add0~17\ = CARRY((\debounce1|s_debounceCnt\(8)) # (!\debounce1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(8),
	datad => VCC,
	cin => \debounce1|Add0~15\,
	combout => \debounce1|Add0~16_combout\,
	cout => \debounce1|Add0~17\);

-- Location: LCCOMB_X84_Y8_N30
\debounce1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~12_combout\ = (\debounce1|s_debounceCnt[22]~0_combout\ & ((\debounce1|Add0~16_combout\) # (!\debounce1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|s_debounceCnt[22]~0_combout\,
	datad => \debounce1|Add0~16_combout\,
	combout => \debounce1|s_debounceCnt~12_combout\);

-- Location: FF_X84_Y8_N31
\debounce1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~12_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(8));

-- Location: LCCOMB_X82_Y9_N28
\debounce1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~18_combout\ = (\debounce1|s_debounceCnt\(9) & (\debounce1|Add0~17\ & VCC)) # (!\debounce1|s_debounceCnt\(9) & (!\debounce1|Add0~17\))
-- \debounce1|Add0~19\ = CARRY((!\debounce1|s_debounceCnt\(9) & !\debounce1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(9),
	datad => VCC,
	cin => \debounce1|Add0~17\,
	combout => \debounce1|Add0~18_combout\,
	cout => \debounce1|Add0~19\);

-- Location: LCCOMB_X84_Y8_N0
\debounce1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~13_combout\ = (\debounce1|s_debounceCnt[22]~0_combout\ & ((\debounce1|Add0~18_combout\) # (!\debounce1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|s_debounceCnt[22]~0_combout\,
	datad => \debounce1|Add0~18_combout\,
	combout => \debounce1|s_debounceCnt~13_combout\);

-- Location: FF_X84_Y8_N1
\debounce1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~13_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(9));

-- Location: LCCOMB_X82_Y9_N30
\debounce1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~20_combout\ = (\debounce1|s_debounceCnt\(10) & ((GND) # (!\debounce1|Add0~19\))) # (!\debounce1|s_debounceCnt\(10) & (\debounce1|Add0~19\ $ (GND)))
-- \debounce1|Add0~21\ = CARRY((\debounce1|s_debounceCnt\(10)) # (!\debounce1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(10),
	datad => VCC,
	cin => \debounce1|Add0~19\,
	combout => \debounce1|Add0~20_combout\,
	cout => \debounce1|Add0~21\);

-- Location: LCCOMB_X84_Y8_N6
\debounce1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~14_combout\ = (\debounce1|s_debounceCnt[22]~0_combout\ & (\debounce1|s_previousIn~q\ & \debounce1|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt[22]~0_combout\,
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~20_combout\,
	combout => \debounce1|s_debounceCnt~14_combout\);

-- Location: FF_X84_Y8_N7
\debounce1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~14_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(10));

-- Location: LCCOMB_X82_Y8_N0
\debounce1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~22_combout\ = (\debounce1|s_debounceCnt\(11) & (\debounce1|Add0~21\ & VCC)) # (!\debounce1|s_debounceCnt\(11) & (!\debounce1|Add0~21\))
-- \debounce1|Add0~23\ = CARRY((!\debounce1|s_debounceCnt\(11) & !\debounce1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounce1|Add0~21\,
	combout => \debounce1|Add0~22_combout\,
	cout => \debounce1|Add0~23\);

-- Location: LCCOMB_X84_Y8_N2
\debounce1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~15_combout\ = (\debounce1|s_debounceCnt[22]~0_combout\ & ((\debounce1|Add0~22_combout\) # (!\debounce1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|s_debounceCnt[22]~0_combout\,
	datad => \debounce1|Add0~22_combout\,
	combout => \debounce1|s_debounceCnt~15_combout\);

-- Location: FF_X84_Y8_N3
\debounce1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~15_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(11));

-- Location: LCCOMB_X82_Y8_N2
\debounce1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~24_combout\ = (\debounce1|s_debounceCnt\(12) & ((GND) # (!\debounce1|Add0~23\))) # (!\debounce1|s_debounceCnt\(12) & (\debounce1|Add0~23\ $ (GND)))
-- \debounce1|Add0~25\ = CARRY((\debounce1|s_debounceCnt\(12)) # (!\debounce1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounce1|Add0~23\,
	combout => \debounce1|Add0~24_combout\,
	cout => \debounce1|Add0~25\);

-- Location: LCCOMB_X84_Y8_N24
\debounce1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~7_combout\ = (\debounce1|s_debounceCnt[22]~0_combout\ & (\debounce1|s_previousIn~q\ & \debounce1|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt[22]~0_combout\,
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~24_combout\,
	combout => \debounce1|s_debounceCnt~7_combout\);

-- Location: FF_X84_Y8_N25
\debounce1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~7_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(12));

-- Location: LCCOMB_X82_Y8_N4
\debounce1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~26_combout\ = (\debounce1|s_debounceCnt\(13) & (\debounce1|Add0~25\ & VCC)) # (!\debounce1|s_debounceCnt\(13) & (!\debounce1|Add0~25\))
-- \debounce1|Add0~27\ = CARRY((!\debounce1|s_debounceCnt\(13) & !\debounce1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(13),
	datad => VCC,
	cin => \debounce1|Add0~25\,
	combout => \debounce1|Add0~26_combout\,
	cout => \debounce1|Add0~27\);

-- Location: LCCOMB_X84_Y8_N26
\debounce1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~8_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|s_debounceCnt[22]~0_combout\ & \debounce1|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|s_debounceCnt[22]~0_combout\,
	datad => \debounce1|Add0~26_combout\,
	combout => \debounce1|s_debounceCnt~8_combout\);

-- Location: FF_X84_Y8_N27
\debounce1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~8_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(13));

-- Location: LCCOMB_X82_Y8_N6
\debounce1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~28_combout\ = (\debounce1|s_debounceCnt\(14) & ((GND) # (!\debounce1|Add0~27\))) # (!\debounce1|s_debounceCnt\(14) & (\debounce1|Add0~27\ $ (GND)))
-- \debounce1|Add0~29\ = CARRY((\debounce1|s_debounceCnt\(14)) # (!\debounce1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounce1|Add0~27\,
	combout => \debounce1|Add0~28_combout\,
	cout => \debounce1|Add0~29\);

-- Location: LCCOMB_X83_Y8_N28
\debounce1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~16_combout\ = (\debounce1|s_debounceCnt[22]~0_combout\ & ((\debounce1|Add0~28_combout\) # (!\debounce1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~28_combout\,
	datad => \debounce1|s_debounceCnt[22]~0_combout\,
	combout => \debounce1|s_debounceCnt~16_combout\);

-- Location: FF_X83_Y8_N29
\debounce1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~16_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(14));

-- Location: LCCOMB_X82_Y8_N8
\debounce1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~30_combout\ = (\debounce1|s_debounceCnt\(15) & (\debounce1|Add0~29\ & VCC)) # (!\debounce1|s_debounceCnt\(15) & (!\debounce1|Add0~29\))
-- \debounce1|Add0~31\ = CARRY((!\debounce1|s_debounceCnt\(15) & !\debounce1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(15),
	datad => VCC,
	cin => \debounce1|Add0~29\,
	combout => \debounce1|Add0~30_combout\,
	cout => \debounce1|Add0~31\);

-- Location: LCCOMB_X83_Y8_N14
\debounce1|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~4_combout\ = (\debounce1|Add0~30_combout\ & (\debounce1|s_previousIn~q\ & \debounce1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|Add0~30_combout\,
	datab => \debounce1|s_previousIn~q\,
	datad => \debounce1|s_debounceCnt[22]~0_combout\,
	combout => \debounce1|s_debounceCnt~4_combout\);

-- Location: FF_X83_Y8_N15
\debounce1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~4_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(15));

-- Location: LCCOMB_X82_Y8_N10
\debounce1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~32_combout\ = (\debounce1|s_debounceCnt\(16) & ((GND) # (!\debounce1|Add0~31\))) # (!\debounce1|s_debounceCnt\(16) & (\debounce1|Add0~31\ $ (GND)))
-- \debounce1|Add0~33\ = CARRY((\debounce1|s_debounceCnt\(16)) # (!\debounce1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(16),
	datad => VCC,
	cin => \debounce1|Add0~31\,
	combout => \debounce1|Add0~32_combout\,
	cout => \debounce1|Add0~33\);

-- Location: LCCOMB_X83_Y8_N24
\debounce1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~5_combout\ = (\debounce1|Add0~32_combout\ & (\debounce1|s_previousIn~q\ & \debounce1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|Add0~32_combout\,
	datab => \debounce1|s_previousIn~q\,
	datad => \debounce1|s_debounceCnt[22]~0_combout\,
	combout => \debounce1|s_debounceCnt~5_combout\);

-- Location: FF_X83_Y8_N25
\debounce1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~5_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(16));

-- Location: LCCOMB_X82_Y8_N12
\debounce1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~34_combout\ = (\debounce1|s_debounceCnt\(17) & (\debounce1|Add0~33\ & VCC)) # (!\debounce1|s_debounceCnt\(17) & (!\debounce1|Add0~33\))
-- \debounce1|Add0~35\ = CARRY((!\debounce1|s_debounceCnt\(17) & !\debounce1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounce1|Add0~33\,
	combout => \debounce1|Add0~34_combout\,
	cout => \debounce1|Add0~35\);

-- Location: LCCOMB_X83_Y8_N26
\debounce1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~6_combout\ = (\debounce1|Add0~34_combout\ & (\debounce1|s_previousIn~q\ & \debounce1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|Add0~34_combout\,
	datab => \debounce1|s_previousIn~q\,
	datad => \debounce1|s_debounceCnt[22]~0_combout\,
	combout => \debounce1|s_debounceCnt~6_combout\);

-- Location: FF_X83_Y8_N27
\debounce1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~6_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(17));

-- Location: LCCOMB_X82_Y8_N14
\debounce1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~36_combout\ = (\debounce1|s_debounceCnt\(18) & ((GND) # (!\debounce1|Add0~35\))) # (!\debounce1|s_debounceCnt\(18) & (\debounce1|Add0~35\ $ (GND)))
-- \debounce1|Add0~37\ = CARRY((\debounce1|s_debounceCnt\(18)) # (!\debounce1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(18),
	datad => VCC,
	cin => \debounce1|Add0~35\,
	combout => \debounce1|Add0~36_combout\,
	cout => \debounce1|Add0~37\);

-- Location: LCCOMB_X84_Y8_N12
\debounce1|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[18]~17_combout\ = (\debounce1|s_debounceCnt[22]~3_combout\ & (\debounce1|s_debounceCnt[22]~0_combout\ & ((\debounce1|Add0~36_combout\) # (!\debounce1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt[22]~3_combout\,
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|s_debounceCnt[22]~0_combout\,
	datad => \debounce1|Add0~36_combout\,
	combout => \debounce1|s_debounceCnt[18]~17_combout\);

-- Location: FF_X84_Y8_N13
\debounce1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(18));

-- Location: LCCOMB_X82_Y8_N16
\debounce1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~38_combout\ = (\debounce1|s_debounceCnt\(19) & (\debounce1|Add0~37\ & VCC)) # (!\debounce1|s_debounceCnt\(19) & (!\debounce1|Add0~37\))
-- \debounce1|Add0~39\ = CARRY((!\debounce1|s_debounceCnt\(19) & !\debounce1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounce1|Add0~37\,
	combout => \debounce1|Add0~38_combout\,
	cout => \debounce1|Add0~39\);

-- Location: LCCOMB_X84_Y8_N14
\debounce1|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[19]~18_combout\ = (\debounce1|s_debounceCnt[22]~3_combout\ & (\debounce1|s_debounceCnt[22]~0_combout\ & ((\debounce1|Add0~38_combout\) # (!\debounce1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt[22]~3_combout\,
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|s_debounceCnt[22]~0_combout\,
	datad => \debounce1|Add0~38_combout\,
	combout => \debounce1|s_debounceCnt[19]~18_combout\);

-- Location: FF_X84_Y8_N15
\debounce1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(19));

-- Location: LCCOMB_X84_Y8_N20
\debounce1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~3_combout\ = (!\debounce1|s_debounceCnt\(18) & (!\debounce1|s_debounceCnt\(11) & (!\debounce1|s_debounceCnt\(19) & !\debounce1|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(18),
	datab => \debounce1|s_debounceCnt\(11),
	datac => \debounce1|s_debounceCnt\(19),
	datad => \debounce1|s_debounceCnt\(14),
	combout => \debounce1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X83_Y8_N20
\debounce1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~0_combout\ = (!\debounce1|s_debounceCnt\(17) & (!\debounce1|s_debounceCnt\(15) & (!\debounce1|s_debounceCnt\(6) & !\debounce1|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(17),
	datab => \debounce1|s_debounceCnt\(15),
	datac => \debounce1|s_debounceCnt\(6),
	datad => \debounce1|s_debounceCnt\(16),
	combout => \debounce1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X84_Y8_N8
\debounce1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~2_combout\ = (!\debounce1|s_debounceCnt\(10) & (!\debounce1|s_debounceCnt\(9) & (!\debounce1|s_debounceCnt\(8) & !\debounce1|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(10),
	datab => \debounce1|s_debounceCnt\(9),
	datac => \debounce1|s_debounceCnt\(8),
	datad => \debounce1|s_debounceCnt\(7),
	combout => \debounce1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X82_Y8_N18
\debounce1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~40_combout\ = (\debounce1|s_debounceCnt\(20) & ((GND) # (!\debounce1|Add0~39\))) # (!\debounce1|s_debounceCnt\(20) & (\debounce1|Add0~39\ $ (GND)))
-- \debounce1|Add0~41\ = CARRY((\debounce1|s_debounceCnt\(20)) # (!\debounce1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounce1|Add0~39\,
	combout => \debounce1|Add0~40_combout\,
	cout => \debounce1|Add0~41\);

-- Location: LCCOMB_X82_Y8_N28
\debounce1|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[20]~9_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|s_debounceCnt[22]~3_combout\ & (\debounce1|s_debounceCnt[22]~0_combout\ & \debounce1|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_previousIn~q\,
	datab => \debounce1|s_debounceCnt[22]~3_combout\,
	datac => \debounce1|s_debounceCnt[22]~0_combout\,
	datad => \debounce1|Add0~40_combout\,
	combout => \debounce1|s_debounceCnt[20]~9_combout\);

-- Location: FF_X82_Y8_N29
\debounce1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(20));

-- Location: LCCOMB_X84_Y8_N28
\debounce1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~1_combout\ = (!\debounce1|s_debounceCnt\(13) & (!\debounce1|s_debounceCnt\(12) & (!\debounce1|s_debounceCnt\(21) & !\debounce1|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(13),
	datab => \debounce1|s_debounceCnt\(12),
	datac => \debounce1|s_debounceCnt\(21),
	datad => \debounce1|s_debounceCnt\(20),
	combout => \debounce1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X83_Y8_N6
\debounce1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~4_combout\ = (\debounce1|s_pulsedOut~3_combout\ & (\debounce1|s_pulsedOut~0_combout\ & (\debounce1|s_pulsedOut~2_combout\ & \debounce1|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_pulsedOut~3_combout\,
	datab => \debounce1|s_pulsedOut~0_combout\,
	datac => \debounce1|s_pulsedOut~2_combout\,
	datad => \debounce1|s_pulsedOut~1_combout\,
	combout => \debounce1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X83_Y8_N18
\debounce1|s_debounceCnt[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[22]~2_combout\ = (\debounce1|s_debounceCnt\(5)) # ((\debounce1|s_debounceCnt\(0)) # ((!\debounce1|s_pulsedOut~4_combout\) # (!\debounce1|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(5),
	datab => \debounce1|s_debounceCnt\(0),
	datac => \debounce1|s_pulsedOut~5_combout\,
	datad => \debounce1|s_pulsedOut~4_combout\,
	combout => \debounce1|s_debounceCnt[22]~2_combout\);

-- Location: LCCOMB_X84_Y8_N22
\debounce1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~1_combout\ = (\debounce1|s_debounceCnt\(13)) # ((\debounce1|s_debounceCnt\(12)) # ((\debounce1|s_debounceCnt\(10) & \debounce1|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(10),
	datab => \debounce1|s_debounceCnt\(11),
	datac => \debounce1|s_debounceCnt\(13),
	datad => \debounce1|s_debounceCnt\(12),
	combout => \debounce1|LessThan0~1_combout\);

-- Location: LCCOMB_X84_Y8_N16
\debounce1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~2_combout\ = (\debounce1|s_debounceCnt\(15)) # ((\debounce1|s_debounceCnt\(16)) # ((\debounce1|LessThan0~1_combout\ & \debounce1|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(15),
	datab => \debounce1|s_debounceCnt\(16),
	datac => \debounce1|LessThan0~1_combout\,
	datad => \debounce1|s_debounceCnt\(14),
	combout => \debounce1|LessThan0~2_combout\);

-- Location: LCCOMB_X84_Y8_N18
\debounce1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~3_combout\ = (\debounce1|s_debounceCnt\(18) & (\debounce1|s_debounceCnt\(19) & ((\debounce1|s_debounceCnt\(17)) # (\debounce1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(18),
	datab => \debounce1|s_debounceCnt\(19),
	datac => \debounce1|s_debounceCnt\(17),
	datad => \debounce1|LessThan0~2_combout\,
	combout => \debounce1|LessThan0~3_combout\);

-- Location: LCCOMB_X84_Y8_N4
\debounce1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~4_combout\ = (\debounce1|s_debounceCnt\(18) & (\debounce1|s_debounceCnt\(19) & (\debounce1|s_debounceCnt\(8) & \debounce1|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(18),
	datab => \debounce1|s_debounceCnt\(19),
	datac => \debounce1|s_debounceCnt\(8),
	datad => \debounce1|s_debounceCnt\(14),
	combout => \debounce1|LessThan0~4_combout\);

-- Location: LCCOMB_X84_Y8_N10
\debounce1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~5_combout\ = (\debounce1|s_debounceCnt\(11) & (\debounce1|LessThan0~4_combout\ & \debounce1|s_debounceCnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(11),
	datac => \debounce1|LessThan0~4_combout\,
	datad => \debounce1|s_debounceCnt\(9),
	combout => \debounce1|LessThan0~5_combout\);

-- Location: LCCOMB_X83_Y9_N28
\debounce1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~6_combout\ = (\debounce1|s_debounceCnt\(6) & ((\debounce1|s_debounceCnt\(0)) # ((\debounce1|s_debounceCnt\(5)) # (!\debounce1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(0),
	datab => \debounce1|s_debounceCnt\(6),
	datac => \debounce1|s_debounceCnt\(5),
	datad => \debounce1|s_pulsedOut~5_combout\,
	combout => \debounce1|LessThan0~6_combout\);

-- Location: LCCOMB_X83_Y8_N2
\debounce1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~7_combout\ = (\debounce1|LessThan0~3_combout\) # ((\debounce1|LessThan0~5_combout\ & ((\debounce1|s_debounceCnt\(7)) # (\debounce1|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(7),
	datab => \debounce1|LessThan0~3_combout\,
	datac => \debounce1|LessThan0~5_combout\,
	datad => \debounce1|LessThan0~6_combout\,
	combout => \debounce1|LessThan0~7_combout\);

-- Location: LCCOMB_X83_Y8_N12
\debounce1|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[22]~24_combout\ = (\debounce1|s_debounceCnt\(22) & (\debounce1|LessThan0~0_combout\ & ((!\debounce1|LessThan0~7_combout\)))) # (!\debounce1|s_debounceCnt\(22) & (((\debounce1|s_debounceCnt[22]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|LessThan0~0_combout\,
	datab => \debounce1|s_debounceCnt[22]~2_combout\,
	datac => \debounce1|s_debounceCnt\(22),
	datad => \debounce1|LessThan0~7_combout\,
	combout => \debounce1|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X83_Y8_N22
\debounce1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[22]~25_combout\ = (\debounce1|s_dirtyIn~q\ & \debounce1|s_debounceCnt[22]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce1|s_dirtyIn~q\,
	datad => \debounce1|s_debounceCnt[22]~24_combout\,
	combout => \debounce1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X82_Y8_N20
\debounce1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~42_combout\ = (\debounce1|s_debounceCnt\(21) & (\debounce1|Add0~41\ & VCC)) # (!\debounce1|s_debounceCnt\(21) & (!\debounce1|Add0~41\))
-- \debounce1|Add0~43\ = CARRY((!\debounce1|s_debounceCnt\(21) & !\debounce1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(21),
	datad => VCC,
	cin => \debounce1|Add0~41\,
	combout => \debounce1|Add0~42_combout\,
	cout => \debounce1|Add0~43\);

-- Location: LCCOMB_X82_Y8_N22
\debounce1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~44_combout\ = \debounce1|s_debounceCnt\(22) $ (\debounce1|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(22),
	cin => \debounce1|Add0~43\,
	combout => \debounce1|Add0~44_combout\);

-- Location: LCCOMB_X83_Y8_N30
\debounce1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[22]~26_combout\ = (\debounce1|s_previousIn~q\ & (((\debounce1|s_debounceCnt[22]~25_combout\ & \debounce1|Add0~44_combout\)))) # (!\debounce1|s_previousIn~q\ & (\debounce1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_previousIn~q\,
	datab => \debounce1|s_debounceCnt[22]~0_combout\,
	datac => \debounce1|s_debounceCnt[22]~25_combout\,
	datad => \debounce1|Add0~44_combout\,
	combout => \debounce1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X83_Y8_N31
\debounce1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(22));

-- Location: LCCOMB_X83_Y8_N16
\debounce1|s_debounceCnt[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[22]~3_combout\ = ((\debounce1|s_debounceCnt\(22)) # ((\debounce1|s_debounceCnt[22]~2_combout\) # (!\debounce1|s_previousIn~q\))) # (!\debounce1|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_dirtyIn~q\,
	datab => \debounce1|s_debounceCnt\(22),
	datac => \debounce1|s_previousIn~q\,
	datad => \debounce1|s_debounceCnt[22]~2_combout\,
	combout => \debounce1|s_debounceCnt[22]~3_combout\);

-- Location: LCCOMB_X82_Y8_N30
\debounce1|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[21]~10_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|s_debounceCnt[22]~3_combout\ & (\debounce1|s_debounceCnt[22]~0_combout\ & \debounce1|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_previousIn~q\,
	datab => \debounce1|s_debounceCnt[22]~3_combout\,
	datac => \debounce1|s_debounceCnt[22]~0_combout\,
	datad => \debounce1|Add0~42_combout\,
	combout => \debounce1|s_debounceCnt[21]~10_combout\);

-- Location: FF_X82_Y8_N31
\debounce1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(21));

-- Location: LCCOMB_X82_Y8_N24
\debounce1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~0_combout\ = (!\debounce1|s_debounceCnt\(21) & !\debounce1|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce1|s_debounceCnt\(21),
	datad => \debounce1|s_debounceCnt\(20),
	combout => \debounce1|LessThan0~0_combout\);

-- Location: LCCOMB_X83_Y8_N0
\debounce1|s_debounceCnt[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[22]~0_combout\ = (\debounce1|s_dirtyIn~q\ & (((\debounce1|LessThan0~0_combout\ & !\debounce1|LessThan0~7_combout\)) # (!\debounce1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|LessThan0~0_combout\,
	datab => \debounce1|s_debounceCnt\(22),
	datac => \debounce1|s_dirtyIn~q\,
	datad => \debounce1|LessThan0~7_combout\,
	combout => \debounce1|s_debounceCnt[22]~0_combout\);

-- Location: LCCOMB_X83_Y9_N30
\debounce1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~23_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~0_combout\ & \debounce1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~0_combout\,
	datad => \debounce1|s_debounceCnt[22]~0_combout\,
	combout => \debounce1|s_debounceCnt~23_combout\);

-- Location: FF_X83_Y9_N31
\debounce1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~23_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(0));

-- Location: LCCOMB_X82_Y9_N12
\debounce1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~2_combout\ = (\debounce1|s_debounceCnt\(1) & (\debounce1|Add0~1\ & VCC)) # (!\debounce1|s_debounceCnt\(1) & (!\debounce1|Add0~1\))
-- \debounce1|Add0~3\ = CARRY((!\debounce1|s_debounceCnt\(1) & !\debounce1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(1),
	datad => VCC,
	cin => \debounce1|Add0~1\,
	combout => \debounce1|Add0~2_combout\,
	cout => \debounce1|Add0~3\);

-- Location: LCCOMB_X82_Y9_N0
\debounce1|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~19_combout\ = (\debounce1|Add0~2_combout\ & (\debounce1|s_previousIn~q\ & \debounce1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|Add0~2_combout\,
	datac => \debounce1|s_previousIn~q\,
	datad => \debounce1|s_debounceCnt[22]~0_combout\,
	combout => \debounce1|s_debounceCnt~19_combout\);

-- Location: FF_X82_Y9_N1
\debounce1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~19_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(1));

-- Location: LCCOMB_X82_Y9_N6
\debounce1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~20_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~4_combout\ & \debounce1|s_debounceCnt[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~4_combout\,
	datad => \debounce1|s_debounceCnt[22]~0_combout\,
	combout => \debounce1|s_debounceCnt~20_combout\);

-- Location: FF_X82_Y9_N7
\debounce1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~20_combout\,
	ena => \debounce1|s_debounceCnt[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(2));

-- Location: LCCOMB_X82_Y9_N8
\debounce1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~5_combout\ = (!\debounce1|s_debounceCnt\(2) & (!\debounce1|s_debounceCnt\(3) & (!\debounce1|s_debounceCnt\(4) & !\debounce1|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(2),
	datab => \debounce1|s_debounceCnt\(3),
	datac => \debounce1|s_debounceCnt\(4),
	datad => \debounce1|s_debounceCnt\(1),
	combout => \debounce1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X83_Y9_N18
\debounce1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~6_combout\ = (\debounce1|s_debounceCnt\(0) & (\debounce1|s_dirtyIn~q\ & (\debounce1|s_previousIn~q\ & !\debounce1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(0),
	datab => \debounce1|s_dirtyIn~q\,
	datac => \debounce1|s_previousIn~q\,
	datad => \debounce1|s_debounceCnt\(22),
	combout => \debounce1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X83_Y9_N20
\debounce1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~7_combout\ = (\debounce1|s_pulsedOut~5_combout\ & (\debounce1|s_pulsedOut~6_combout\ & (!\debounce1|s_debounceCnt\(5) & \debounce1|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_pulsedOut~5_combout\,
	datab => \debounce1|s_pulsedOut~6_combout\,
	datac => \debounce1|s_debounceCnt\(5),
	datad => \debounce1|s_pulsedOut~4_combout\,
	combout => \debounce1|s_pulsedOut~7_combout\);

-- Location: FF_X83_Y9_N21
\debounce1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_pulsedOut~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X100_Y7_N20
\debounce0|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_dirtyIn~0_combout\ = !\SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \debounce0|s_dirtyIn~0_combout\);

-- Location: FF_X100_Y7_N21
\debounce0|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_dirtyIn~q\);

-- Location: FF_X99_Y7_N1
\debounce0|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounce0|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_previousIn~q\);

-- Location: LCCOMB_X98_Y8_N18
\debounce0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~8_combout\ = (\debounce0|s_debounceCnt\(4) & ((GND) # (!\debounce0|Add0~7\))) # (!\debounce0|s_debounceCnt\(4) & (\debounce0|Add0~7\ $ (GND)))
-- \debounce0|Add0~9\ = CARRY((\debounce0|s_debounceCnt\(4)) # (!\debounce0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(4),
	datad => VCC,
	cin => \debounce0|Add0~7\,
	combout => \debounce0|Add0~8_combout\,
	cout => \debounce0|Add0~9\);

-- Location: LCCOMB_X98_Y8_N20
\debounce0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~10_combout\ = (\debounce0|s_debounceCnt\(5) & (\debounce0|Add0~9\ & VCC)) # (!\debounce0|s_debounceCnt\(5) & (!\debounce0|Add0~9\))
-- \debounce0|Add0~11\ = CARRY((!\debounce0|s_debounceCnt\(5) & !\debounce0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(5),
	datad => VCC,
	cin => \debounce0|Add0~9\,
	combout => \debounce0|Add0~10_combout\,
	cout => \debounce0|Add0~11\);

-- Location: LCCOMB_X97_Y7_N22
\debounce0|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~27_combout\ = (\debounce0|s_debounceCnt[1]~4_combout\ & \debounce0|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|s_debounceCnt[1]~4_combout\,
	datad => \debounce0|Add0~10_combout\,
	combout => \debounce0|s_debounceCnt~27_combout\);

-- Location: FF_X97_Y7_N23
\debounce0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~27_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(5));

-- Location: LCCOMB_X98_Y8_N22
\debounce0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~12_combout\ = (\debounce0|s_debounceCnt\(6) & ((GND) # (!\debounce0|Add0~11\))) # (!\debounce0|s_debounceCnt\(6) & (\debounce0|Add0~11\ $ (GND)))
-- \debounce0|Add0~13\ = CARRY((\debounce0|s_debounceCnt\(6)) # (!\debounce0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(6),
	datad => VCC,
	cin => \debounce0|Add0~11\,
	combout => \debounce0|Add0~12_combout\,
	cout => \debounce0|Add0~13\);

-- Location: LCCOMB_X99_Y7_N24
\debounce0|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~1_combout\ = (\debounce0|s_debounceCnt[1]~0_combout\ & ((\debounce0|Add0~12_combout\) # (!\debounce0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_previousIn~q\,
	datab => \debounce0|Add0~12_combout\,
	datac => \debounce0|s_debounceCnt[1]~0_combout\,
	combout => \debounce0|s_debounceCnt~1_combout\);

-- Location: FF_X99_Y7_N25
\debounce0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~1_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(6));

-- Location: LCCOMB_X98_Y8_N24
\debounce0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~14_combout\ = (\debounce0|s_debounceCnt\(7) & (\debounce0|Add0~13\ & VCC)) # (!\debounce0|s_debounceCnt\(7) & (!\debounce0|Add0~13\))
-- \debounce0|Add0~15\ = CARRY((!\debounce0|s_debounceCnt\(7) & !\debounce0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounce0|Add0~13\,
	combout => \debounce0|Add0~14_combout\,
	cout => \debounce0|Add0~15\);

-- Location: LCCOMB_X97_Y7_N28
\debounce0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~12_combout\ = (\debounce0|s_debounceCnt[1]~4_combout\ & \debounce0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|s_debounceCnt[1]~4_combout\,
	datad => \debounce0|Add0~14_combout\,
	combout => \debounce0|s_debounceCnt~12_combout\);

-- Location: FF_X97_Y7_N29
\debounce0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~12_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(7));

-- Location: LCCOMB_X98_Y8_N26
\debounce0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~16_combout\ = (\debounce0|s_debounceCnt\(8) & ((GND) # (!\debounce0|Add0~15\))) # (!\debounce0|s_debounceCnt\(8) & (\debounce0|Add0~15\ $ (GND)))
-- \debounce0|Add0~17\ = CARRY((\debounce0|s_debounceCnt\(8)) # (!\debounce0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(8),
	datad => VCC,
	cin => \debounce0|Add0~15\,
	combout => \debounce0|Add0~16_combout\,
	cout => \debounce0|Add0~17\);

-- Location: LCCOMB_X99_Y7_N18
\debounce0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~13_combout\ = (\debounce0|s_debounceCnt[1]~0_combout\ & ((\debounce0|Add0~16_combout\) # (!\debounce0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_previousIn~q\,
	datac => \debounce0|s_debounceCnt[1]~0_combout\,
	datad => \debounce0|Add0~16_combout\,
	combout => \debounce0|s_debounceCnt~13_combout\);

-- Location: FF_X99_Y7_N19
\debounce0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~13_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(8));

-- Location: LCCOMB_X98_Y8_N28
\debounce0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~18_combout\ = (\debounce0|s_debounceCnt\(9) & (\debounce0|Add0~17\ & VCC)) # (!\debounce0|s_debounceCnt\(9) & (!\debounce0|Add0~17\))
-- \debounce0|Add0~19\ = CARRY((!\debounce0|s_debounceCnt\(9) & !\debounce0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(9),
	datad => VCC,
	cin => \debounce0|Add0~17\,
	combout => \debounce0|Add0~18_combout\,
	cout => \debounce0|Add0~19\);

-- Location: LCCOMB_X99_Y7_N12
\debounce0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~14_combout\ = (\debounce0|s_debounceCnt[1]~0_combout\ & ((\debounce0|Add0~18_combout\) # (!\debounce0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_previousIn~q\,
	datac => \debounce0|s_debounceCnt[1]~0_combout\,
	datad => \debounce0|Add0~18_combout\,
	combout => \debounce0|s_debounceCnt~14_combout\);

-- Location: FF_X99_Y7_N13
\debounce0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~14_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(9));

-- Location: LCCOMB_X98_Y8_N30
\debounce0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~20_combout\ = (\debounce0|s_debounceCnt\(10) & ((GND) # (!\debounce0|Add0~19\))) # (!\debounce0|s_debounceCnt\(10) & (\debounce0|Add0~19\ $ (GND)))
-- \debounce0|Add0~21\ = CARRY((\debounce0|s_debounceCnt\(10)) # (!\debounce0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(10),
	datad => VCC,
	cin => \debounce0|Add0~19\,
	combout => \debounce0|Add0~20_combout\,
	cout => \debounce0|Add0~21\);

-- Location: LCCOMB_X99_Y7_N2
\debounce0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~15_combout\ = (\debounce0|Add0~20_combout\ & \debounce0|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|Add0~20_combout\,
	datad => \debounce0|s_debounceCnt[1]~4_combout\,
	combout => \debounce0|s_debounceCnt~15_combout\);

-- Location: FF_X99_Y7_N3
\debounce0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~15_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(10));

-- Location: LCCOMB_X98_Y7_N0
\debounce0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~22_combout\ = (\debounce0|s_debounceCnt\(11) & (\debounce0|Add0~21\ & VCC)) # (!\debounce0|s_debounceCnt\(11) & (!\debounce0|Add0~21\))
-- \debounce0|Add0~23\ = CARRY((!\debounce0|s_debounceCnt\(11) & !\debounce0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounce0|Add0~21\,
	combout => \debounce0|Add0~22_combout\,
	cout => \debounce0|Add0~23\);

-- Location: LCCOMB_X97_Y7_N30
\debounce0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~16_combout\ = (\debounce0|s_debounceCnt[1]~0_combout\ & ((\debounce0|Add0~22_combout\) # (!\debounce0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_previousIn~q\,
	datac => \debounce0|Add0~22_combout\,
	datad => \debounce0|s_debounceCnt[1]~0_combout\,
	combout => \debounce0|s_debounceCnt~16_combout\);

-- Location: FF_X97_Y7_N31
\debounce0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~16_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(11));

-- Location: LCCOMB_X98_Y7_N2
\debounce0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~24_combout\ = (\debounce0|s_debounceCnt\(12) & ((GND) # (!\debounce0|Add0~23\))) # (!\debounce0|s_debounceCnt\(12) & (\debounce0|Add0~23\ $ (GND)))
-- \debounce0|Add0~25\ = CARRY((\debounce0|s_debounceCnt\(12)) # (!\debounce0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounce0|Add0~23\,
	combout => \debounce0|Add0~24_combout\,
	cout => \debounce0|Add0~25\);

-- Location: LCCOMB_X99_Y7_N4
\debounce0|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~8_combout\ = (\debounce0|Add0~24_combout\ & \debounce0|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|Add0~24_combout\,
	datad => \debounce0|s_debounceCnt[1]~4_combout\,
	combout => \debounce0|s_debounceCnt~8_combout\);

-- Location: FF_X99_Y7_N5
\debounce0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~8_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(12));

-- Location: LCCOMB_X98_Y7_N4
\debounce0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~26_combout\ = (\debounce0|s_debounceCnt\(13) & (\debounce0|Add0~25\ & VCC)) # (!\debounce0|s_debounceCnt\(13) & (!\debounce0|Add0~25\))
-- \debounce0|Add0~27\ = CARRY((!\debounce0|s_debounceCnt\(13) & !\debounce0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(13),
	datad => VCC,
	cin => \debounce0|Add0~25\,
	combout => \debounce0|Add0~26_combout\,
	cout => \debounce0|Add0~27\);

-- Location: LCCOMB_X99_Y7_N6
\debounce0|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~9_combout\ = (\debounce0|Add0~26_combout\ & \debounce0|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|Add0~26_combout\,
	datad => \debounce0|s_debounceCnt[1]~4_combout\,
	combout => \debounce0|s_debounceCnt~9_combout\);

-- Location: FF_X99_Y7_N7
\debounce0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~9_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(13));

-- Location: LCCOMB_X98_Y7_N6
\debounce0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~28_combout\ = (\debounce0|s_debounceCnt\(14) & ((GND) # (!\debounce0|Add0~27\))) # (!\debounce0|s_debounceCnt\(14) & (\debounce0|Add0~27\ $ (GND)))
-- \debounce0|Add0~29\ = CARRY((\debounce0|s_debounceCnt\(14)) # (!\debounce0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounce0|Add0~27\,
	combout => \debounce0|Add0~28_combout\,
	cout => \debounce0|Add0~29\);

-- Location: LCCOMB_X99_Y7_N26
\debounce0|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~17_combout\ = (\debounce0|s_debounceCnt[1]~0_combout\ & ((\debounce0|Add0~28_combout\) # (!\debounce0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_previousIn~q\,
	datab => \debounce0|Add0~28_combout\,
	datac => \debounce0|s_debounceCnt[1]~0_combout\,
	combout => \debounce0|s_debounceCnt~17_combout\);

-- Location: FF_X99_Y7_N27
\debounce0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~17_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(14));

-- Location: LCCOMB_X98_Y7_N8
\debounce0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~30_combout\ = (\debounce0|s_debounceCnt\(15) & (\debounce0|Add0~29\ & VCC)) # (!\debounce0|s_debounceCnt\(15) & (!\debounce0|Add0~29\))
-- \debounce0|Add0~31\ = CARRY((!\debounce0|s_debounceCnt\(15) & !\debounce0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(15),
	datad => VCC,
	cin => \debounce0|Add0~29\,
	combout => \debounce0|Add0~30_combout\,
	cout => \debounce0|Add0~31\);

-- Location: LCCOMB_X98_Y7_N28
\debounce0|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~5_combout\ = (\debounce0|Add0~30_combout\ & \debounce0|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|Add0~30_combout\,
	datad => \debounce0|s_debounceCnt[1]~4_combout\,
	combout => \debounce0|s_debounceCnt~5_combout\);

-- Location: FF_X98_Y7_N29
\debounce0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~5_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(15));

-- Location: LCCOMB_X98_Y7_N10
\debounce0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~32_combout\ = (\debounce0|s_debounceCnt\(16) & ((GND) # (!\debounce0|Add0~31\))) # (!\debounce0|s_debounceCnt\(16) & (\debounce0|Add0~31\ $ (GND)))
-- \debounce0|Add0~33\ = CARRY((\debounce0|s_debounceCnt\(16)) # (!\debounce0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(16),
	datad => VCC,
	cin => \debounce0|Add0~31\,
	combout => \debounce0|Add0~32_combout\,
	cout => \debounce0|Add0~33\);

-- Location: LCCOMB_X96_Y7_N26
\debounce0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~6_combout\ = (\debounce0|s_debounceCnt[1]~4_combout\ & \debounce0|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|s_debounceCnt[1]~4_combout\,
	datad => \debounce0|Add0~32_combout\,
	combout => \debounce0|s_debounceCnt~6_combout\);

-- Location: FF_X96_Y7_N27
\debounce0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~6_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(16));

-- Location: LCCOMB_X98_Y7_N12
\debounce0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~34_combout\ = (\debounce0|s_debounceCnt\(17) & (\debounce0|Add0~33\ & VCC)) # (!\debounce0|s_debounceCnt\(17) & (!\debounce0|Add0~33\))
-- \debounce0|Add0~35\ = CARRY((!\debounce0|s_debounceCnt\(17) & !\debounce0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounce0|Add0~33\,
	combout => \debounce0|Add0~34_combout\,
	cout => \debounce0|Add0~35\);

-- Location: LCCOMB_X98_Y7_N26
\debounce0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~7_combout\ = (\debounce0|s_debounceCnt[1]~4_combout\ & \debounce0|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt[1]~4_combout\,
	datad => \debounce0|Add0~34_combout\,
	combout => \debounce0|s_debounceCnt~7_combout\);

-- Location: FF_X98_Y7_N27
\debounce0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~7_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(17));

-- Location: LCCOMB_X99_Y7_N30
\debounce0|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~0_combout\ = (!\debounce0|s_debounceCnt\(17) & (!\debounce0|s_debounceCnt\(6) & (!\debounce0|s_debounceCnt\(15) & !\debounce0|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(17),
	datab => \debounce0|s_debounceCnt\(6),
	datac => \debounce0|s_debounceCnt\(15),
	datad => \debounce0|s_debounceCnt\(16),
	combout => \debounce0|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X98_Y7_N14
\debounce0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~36_combout\ = (\debounce0|s_debounceCnt\(18) & ((GND) # (!\debounce0|Add0~35\))) # (!\debounce0|s_debounceCnt\(18) & (\debounce0|Add0~35\ $ (GND)))
-- \debounce0|Add0~37\ = CARRY((\debounce0|s_debounceCnt\(18)) # (!\debounce0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(18),
	datad => VCC,
	cin => \debounce0|Add0~35\,
	combout => \debounce0|Add0~36_combout\,
	cout => \debounce0|Add0~37\);

-- Location: LCCOMB_X97_Y7_N12
\debounce0|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[18]~18_combout\ = (\debounce0|s_debounceCnt[1]~0_combout\ & (\debounce0|s_debounceCnt[1]~3_combout\ & ((\debounce0|Add0~36_combout\) # (!\debounce0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_previousIn~q\,
	datab => \debounce0|s_debounceCnt[1]~0_combout\,
	datac => \debounce0|Add0~36_combout\,
	datad => \debounce0|s_debounceCnt[1]~3_combout\,
	combout => \debounce0|s_debounceCnt[18]~18_combout\);

-- Location: FF_X97_Y7_N13
\debounce0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(18));

-- Location: LCCOMB_X98_Y7_N16
\debounce0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~38_combout\ = (\debounce0|s_debounceCnt\(19) & (\debounce0|Add0~37\ & VCC)) # (!\debounce0|s_debounceCnt\(19) & (!\debounce0|Add0~37\))
-- \debounce0|Add0~39\ = CARRY((!\debounce0|s_debounceCnt\(19) & !\debounce0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounce0|Add0~37\,
	combout => \debounce0|Add0~38_combout\,
	cout => \debounce0|Add0~39\);

-- Location: LCCOMB_X97_Y7_N6
\debounce0|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[19]~19_combout\ = (\debounce0|s_debounceCnt[1]~3_combout\ & (\debounce0|s_debounceCnt[1]~0_combout\ & ((\debounce0|Add0~38_combout\) # (!\debounce0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt[1]~3_combout\,
	datab => \debounce0|s_debounceCnt[1]~0_combout\,
	datac => \debounce0|s_previousIn~q\,
	datad => \debounce0|Add0~38_combout\,
	combout => \debounce0|s_debounceCnt[19]~19_combout\);

-- Location: FF_X97_Y7_N7
\debounce0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(19));

-- Location: LCCOMB_X98_Y7_N18
\debounce0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~40_combout\ = (\debounce0|s_debounceCnt\(20) & ((GND) # (!\debounce0|Add0~39\))) # (!\debounce0|s_debounceCnt\(20) & (\debounce0|Add0~39\ $ (GND)))
-- \debounce0|Add0~41\ = CARRY((\debounce0|s_debounceCnt\(20)) # (!\debounce0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounce0|Add0~39\,
	combout => \debounce0|Add0~40_combout\,
	cout => \debounce0|Add0~41\);

-- Location: LCCOMB_X98_Y7_N24
\debounce0|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[20]~10_combout\ = (\debounce0|s_debounceCnt[1]~4_combout\ & (\debounce0|s_debounceCnt[1]~3_combout\ & \debounce0|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt[1]~4_combout\,
	datac => \debounce0|s_debounceCnt[1]~3_combout\,
	datad => \debounce0|Add0~40_combout\,
	combout => \debounce0|s_debounceCnt[20]~10_combout\);

-- Location: FF_X98_Y7_N25
\debounce0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(20));

-- Location: LCCOMB_X99_Y7_N28
\debounce0|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~1_combout\ = (!\debounce0|s_debounceCnt\(13) & (!\debounce0|s_debounceCnt\(21) & (!\debounce0|s_debounceCnt\(12) & !\debounce0|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(13),
	datab => \debounce0|s_debounceCnt\(21),
	datac => \debounce0|s_debounceCnt\(12),
	datad => \debounce0|s_debounceCnt\(20),
	combout => \debounce0|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X99_Y7_N8
\debounce0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~3_combout\ = (!\debounce0|s_debounceCnt\(11) & (!\debounce0|s_debounceCnt\(14) & (!\debounce0|s_debounceCnt\(18) & !\debounce0|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(11),
	datab => \debounce0|s_debounceCnt\(14),
	datac => \debounce0|s_debounceCnt\(18),
	datad => \debounce0|s_debounceCnt\(19),
	combout => \debounce0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X99_Y7_N20
\debounce0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~2_combout\ = (!\debounce0|s_debounceCnt\(9) & (!\debounce0|s_debounceCnt\(8) & (!\debounce0|s_debounceCnt\(7) & !\debounce0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(9),
	datab => \debounce0|s_debounceCnt\(8),
	datac => \debounce0|s_debounceCnt\(7),
	datad => \debounce0|s_debounceCnt\(10),
	combout => \debounce0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X99_Y7_N10
\debounce0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~4_combout\ = (\debounce0|s_pulsedOut~0_combout\ & (\debounce0|s_pulsedOut~1_combout\ & (\debounce0|s_pulsedOut~3_combout\ & \debounce0|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_pulsedOut~0_combout\,
	datab => \debounce0|s_pulsedOut~1_combout\,
	datac => \debounce0|s_pulsedOut~3_combout\,
	datad => \debounce0|s_pulsedOut~2_combout\,
	combout => \debounce0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X99_Y7_N16
\debounce0|s_debounceCnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[1]~2_combout\ = (\debounce0|s_debounceCnt\(0)) # ((\debounce0|s_debounceCnt\(5)) # ((!\debounce0|s_pulsedOut~4_combout\) # (!\debounce0|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(0),
	datab => \debounce0|s_debounceCnt\(5),
	datac => \debounce0|s_pulsedOut~5_combout\,
	datad => \debounce0|s_pulsedOut~4_combout\,
	combout => \debounce0|s_debounceCnt[1]~2_combout\);

-- Location: LCCOMB_X99_Y7_N0
\debounce0|s_debounceCnt[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[1]~3_combout\ = ((\debounce0|s_debounceCnt\(22)) # ((\debounce0|s_debounceCnt[1]~2_combout\) # (!\debounce0|s_previousIn~q\))) # (!\debounce0|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_dirtyIn~q\,
	datab => \debounce0|s_debounceCnt\(22),
	datac => \debounce0|s_previousIn~q\,
	datad => \debounce0|s_debounceCnt[1]~2_combout\,
	combout => \debounce0|s_debounceCnt[1]~3_combout\);

-- Location: LCCOMB_X98_Y7_N20
\debounce0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~42_combout\ = (\debounce0|s_debounceCnt\(21) & (\debounce0|Add0~41\ & VCC)) # (!\debounce0|s_debounceCnt\(21) & (!\debounce0|Add0~41\))
-- \debounce0|Add0~43\ = CARRY((!\debounce0|s_debounceCnt\(21) & !\debounce0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(21),
	datad => VCC,
	cin => \debounce0|Add0~41\,
	combout => \debounce0|Add0~42_combout\,
	cout => \debounce0|Add0~43\);

-- Location: LCCOMB_X98_Y7_N30
\debounce0|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[21]~11_combout\ = (\debounce0|s_debounceCnt[1]~4_combout\ & (\debounce0|s_debounceCnt[1]~3_combout\ & \debounce0|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt[1]~4_combout\,
	datac => \debounce0|s_debounceCnt[1]~3_combout\,
	datad => \debounce0|Add0~42_combout\,
	combout => \debounce0|s_debounceCnt[21]~11_combout\);

-- Location: FF_X98_Y7_N31
\debounce0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(21));

-- Location: LCCOMB_X97_Y7_N16
\debounce0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~4_combout\ = (\debounce0|s_debounceCnt\(12)) # ((\debounce0|s_debounceCnt\(13)) # ((\debounce0|s_debounceCnt\(11) & \debounce0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(11),
	datab => \debounce0|s_debounceCnt\(12),
	datac => \debounce0|s_debounceCnt\(10),
	datad => \debounce0|s_debounceCnt\(13),
	combout => \debounce0|LessThan0~4_combout\);

-- Location: LCCOMB_X97_Y7_N18
\debounce0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~5_combout\ = (\debounce0|s_debounceCnt\(16)) # ((\debounce0|s_debounceCnt\(15)) # ((\debounce0|s_debounceCnt\(14) & \debounce0|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(16),
	datab => \debounce0|s_debounceCnt\(15),
	datac => \debounce0|s_debounceCnt\(14),
	datad => \debounce0|LessThan0~4_combout\,
	combout => \debounce0|LessThan0~5_combout\);

-- Location: LCCOMB_X97_Y7_N8
\debounce0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~6_combout\ = (\debounce0|s_debounceCnt\(19) & (\debounce0|s_debounceCnt\(18) & ((\debounce0|s_debounceCnt\(17)) # (\debounce0|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(19),
	datab => \debounce0|s_debounceCnt\(17),
	datac => \debounce0|s_debounceCnt\(18),
	datad => \debounce0|LessThan0~5_combout\,
	combout => \debounce0|LessThan0~6_combout\);

-- Location: LCCOMB_X97_Y7_N26
\debounce0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~1_combout\ = (\debounce0|s_debounceCnt\(11) & \debounce0|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|s_debounceCnt\(11),
	datad => \debounce0|s_debounceCnt\(9),
	combout => \debounce0|LessThan0~1_combout\);

-- Location: LCCOMB_X97_Y7_N4
\debounce0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~0_combout\ = (\debounce0|s_debounceCnt\(18) & (\debounce0|s_debounceCnt\(14) & (\debounce0|s_debounceCnt\(8) & \debounce0|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(18),
	datab => \debounce0|s_debounceCnt\(14),
	datac => \debounce0|s_debounceCnt\(8),
	datad => \debounce0|s_debounceCnt\(19),
	combout => \debounce0|LessThan0~0_combout\);

-- Location: LCCOMB_X97_Y7_N20
\debounce0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~2_combout\ = (\debounce0|s_debounceCnt\(6) & ((\debounce0|s_debounceCnt\(5)) # ((\debounce0|s_debounceCnt\(0)) # (!\debounce0|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(5),
	datab => \debounce0|s_debounceCnt\(0),
	datac => \debounce0|s_debounceCnt\(6),
	datad => \debounce0|s_pulsedOut~5_combout\,
	combout => \debounce0|LessThan0~2_combout\);

-- Location: LCCOMB_X97_Y7_N10
\debounce0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~3_combout\ = (\debounce0|LessThan0~1_combout\ & (\debounce0|LessThan0~0_combout\ & ((\debounce0|s_debounceCnt\(7)) # (\debounce0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|LessThan0~1_combout\,
	datab => \debounce0|s_debounceCnt\(7),
	datac => \debounce0|LessThan0~0_combout\,
	datad => \debounce0|LessThan0~2_combout\,
	combout => \debounce0|LessThan0~3_combout\);

-- Location: LCCOMB_X97_Y7_N2
\debounce0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~7_combout\ = (\debounce0|s_debounceCnt\(21)) # ((\debounce0|s_debounceCnt\(20)) # ((\debounce0|LessThan0~6_combout\) # (\debounce0|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(21),
	datab => \debounce0|s_debounceCnt\(20),
	datac => \debounce0|LessThan0~6_combout\,
	datad => \debounce0|LessThan0~3_combout\,
	combout => \debounce0|LessThan0~7_combout\);

-- Location: LCCOMB_X97_Y7_N24
\debounce0|s_debounceCnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[1]~0_combout\ = (\debounce0|s_dirtyIn~q\ & ((!\debounce0|LessThan0~7_combout\) # (!\debounce0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(22),
	datab => \debounce0|s_dirtyIn~q\,
	datad => \debounce0|LessThan0~7_combout\,
	combout => \debounce0|s_debounceCnt[1]~0_combout\);

-- Location: LCCOMB_X99_Y7_N14
\debounce0|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[22]~25_combout\ = (\debounce0|s_dirtyIn~q\ & ((\debounce0|s_debounceCnt\(22) & ((!\debounce0|LessThan0~7_combout\))) # (!\debounce0|s_debounceCnt\(22) & (\debounce0|s_debounceCnt[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(22),
	datab => \debounce0|s_debounceCnt[1]~2_combout\,
	datac => \debounce0|s_dirtyIn~q\,
	datad => \debounce0|LessThan0~7_combout\,
	combout => \debounce0|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X98_Y7_N22
\debounce0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~44_combout\ = \debounce0|Add0~43\ $ (\debounce0|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounce0|s_debounceCnt\(22),
	cin => \debounce0|Add0~43\,
	combout => \debounce0|Add0~44_combout\);

-- Location: LCCOMB_X99_Y7_N22
\debounce0|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[22]~26_combout\ = (\debounce0|s_previousIn~q\ & (((\debounce0|s_debounceCnt[22]~25_combout\ & \debounce0|Add0~44_combout\)))) # (!\debounce0|s_previousIn~q\ & (\debounce0|s_debounceCnt[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt[1]~0_combout\,
	datab => \debounce0|s_previousIn~q\,
	datac => \debounce0|s_debounceCnt[22]~25_combout\,
	datad => \debounce0|Add0~44_combout\,
	combout => \debounce0|s_debounceCnt[22]~26_combout\);

-- Location: FF_X99_Y7_N23
\debounce0|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(22));

-- Location: LCCOMB_X97_Y7_N14
\debounce0|s_debounceCnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[1]~4_combout\ = (\debounce0|s_dirtyIn~q\ & (\debounce0|s_previousIn~q\ & ((!\debounce0|LessThan0~7_combout\) # (!\debounce0|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(22),
	datab => \debounce0|s_dirtyIn~q\,
	datac => \debounce0|s_previousIn~q\,
	datad => \debounce0|LessThan0~7_combout\,
	combout => \debounce0|s_debounceCnt[1]~4_combout\);

-- Location: LCCOMB_X98_Y8_N10
\debounce0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~0_combout\ = \debounce0|s_debounceCnt\(0) $ (VCC)
-- \debounce0|Add0~1\ = CARRY(\debounce0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounce0|Add0~0_combout\,
	cout => \debounce0|Add0~1\);

-- Location: LCCOMB_X97_Y7_N0
\debounce0|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~24_combout\ = (\debounce0|s_debounceCnt[1]~4_combout\ & \debounce0|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|s_debounceCnt[1]~4_combout\,
	datad => \debounce0|Add0~0_combout\,
	combout => \debounce0|s_debounceCnt~24_combout\);

-- Location: FF_X97_Y7_N1
\debounce0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~24_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(0));

-- Location: LCCOMB_X98_Y8_N12
\debounce0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~2_combout\ = (\debounce0|s_debounceCnt\(1) & (\debounce0|Add0~1\ & VCC)) # (!\debounce0|s_debounceCnt\(1) & (!\debounce0|Add0~1\))
-- \debounce0|Add0~3\ = CARRY((!\debounce0|s_debounceCnt\(1) & !\debounce0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(1),
	datad => VCC,
	cin => \debounce0|Add0~1\,
	combout => \debounce0|Add0~2_combout\,
	cout => \debounce0|Add0~3\);

-- Location: LCCOMB_X98_Y8_N8
\debounce0|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~20_combout\ = (\debounce0|Add0~2_combout\ & \debounce0|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|Add0~2_combout\,
	datad => \debounce0|s_debounceCnt[1]~4_combout\,
	combout => \debounce0|s_debounceCnt~20_combout\);

-- Location: FF_X98_Y8_N9
\debounce0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~20_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(1));

-- Location: LCCOMB_X98_Y8_N14
\debounce0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~4_combout\ = (\debounce0|s_debounceCnt\(2) & ((GND) # (!\debounce0|Add0~3\))) # (!\debounce0|s_debounceCnt\(2) & (\debounce0|Add0~3\ $ (GND)))
-- \debounce0|Add0~5\ = CARRY((\debounce0|s_debounceCnt\(2)) # (!\debounce0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounce0|Add0~3\,
	combout => \debounce0|Add0~4_combout\,
	cout => \debounce0|Add0~5\);

-- Location: LCCOMB_X98_Y8_N2
\debounce0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~21_combout\ = (\debounce0|Add0~4_combout\ & \debounce0|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|Add0~4_combout\,
	datad => \debounce0|s_debounceCnt[1]~4_combout\,
	combout => \debounce0|s_debounceCnt~21_combout\);

-- Location: FF_X98_Y8_N3
\debounce0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~21_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(2));

-- Location: LCCOMB_X98_Y8_N16
\debounce0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~6_combout\ = (\debounce0|s_debounceCnt\(3) & (\debounce0|Add0~5\ & VCC)) # (!\debounce0|s_debounceCnt\(3) & (!\debounce0|Add0~5\))
-- \debounce0|Add0~7\ = CARRY((!\debounce0|s_debounceCnt\(3) & !\debounce0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(3),
	datad => VCC,
	cin => \debounce0|Add0~5\,
	combout => \debounce0|Add0~6_combout\,
	cout => \debounce0|Add0~7\);

-- Location: LCCOMB_X98_Y8_N0
\debounce0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~22_combout\ = (\debounce0|Add0~6_combout\ & \debounce0|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|Add0~6_combout\,
	datad => \debounce0|s_debounceCnt[1]~4_combout\,
	combout => \debounce0|s_debounceCnt~22_combout\);

-- Location: FF_X98_Y8_N1
\debounce0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~22_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(3));

-- Location: LCCOMB_X98_Y8_N6
\debounce0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~23_combout\ = (\debounce0|Add0~8_combout\ & \debounce0|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|Add0~8_combout\,
	datad => \debounce0|s_debounceCnt[1]~4_combout\,
	combout => \debounce0|s_debounceCnt~23_combout\);

-- Location: FF_X98_Y8_N7
\debounce0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~23_combout\,
	ena => \debounce0|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(4));

-- Location: LCCOMB_X98_Y8_N4
\debounce0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~5_combout\ = (!\debounce0|s_debounceCnt\(4) & (!\debounce0|s_debounceCnt\(3) & (!\debounce0|s_debounceCnt\(1) & !\debounce0|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(4),
	datab => \debounce0|s_debounceCnt\(3),
	datac => \debounce0|s_debounceCnt\(1),
	datad => \debounce0|s_debounceCnt\(2),
	combout => \debounce0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X96_Y7_N28
\debounce0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~6_combout\ = (\debounce0|s_previousIn~q\ & (!\debounce0|s_debounceCnt\(22) & (\debounce0|s_debounceCnt\(0) & \debounce0|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_previousIn~q\,
	datab => \debounce0|s_debounceCnt\(22),
	datac => \debounce0|s_debounceCnt\(0),
	datad => \debounce0|s_dirtyIn~q\,
	combout => \debounce0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X96_Y7_N24
\debounce0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~7_combout\ = (\debounce0|s_pulsedOut~5_combout\ & (!\debounce0|s_debounceCnt\(5) & (\debounce0|s_pulsedOut~4_combout\ & \debounce0|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_pulsedOut~5_combout\,
	datab => \debounce0|s_debounceCnt\(5),
	datac => \debounce0|s_pulsedOut~4_combout\,
	datad => \debounce0|s_pulsedOut~6_combout\,
	combout => \debounce0|s_pulsedOut~7_combout\);

-- Location: FF_X96_Y7_N25
\debounce0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_pulsedOut~q\);

-- Location: LCCOMB_X84_Y7_N22
\fsm|reg_fstate.E0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|reg_fstate.E0~0_combout\ = ((!\debounce0|s_pulsedOut~q\ & (!\fsm|fstate.E0~q\ & !\debounce1|s_pulsedOut~q\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_pulsedOut~q\,
	datab => \fsm|fstate.E0~q\,
	datac => \KEY[0]~input_o\,
	datad => \debounce1|s_pulsedOut~q\,
	combout => \fsm|reg_fstate.E0~0_combout\);

-- Location: LCCOMB_X84_Y7_N10
\fsm|reg_fstate.E0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|reg_fstate.E0~1_combout\ = (!\fsm|fstate.E5~q\ & !\fsm|reg_fstate.E0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|fstate.E5~q\,
	datac => \fsm|reg_fstate.E0~0_combout\,
	combout => \fsm|reg_fstate.E0~1_combout\);

-- Location: FF_X84_Y7_N11
\fsm|fstate.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|reg_fstate.E0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|fstate.E0~q\);

-- Location: LCCOMB_X84_Y7_N26
\fsm|reg_fstate.E1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|reg_fstate.E1~0_combout\ = (\KEY[0]~input_o\ & ((\debounce0|s_pulsedOut~q\ & (!\fsm|fstate.E0~q\)) # (!\debounce0|s_pulsedOut~q\ & ((\fsm|fstate.E1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|fstate.E0~q\,
	datab => \fsm|fstate.E1~q\,
	datac => \KEY[0]~input_o\,
	datad => \debounce0|s_pulsedOut~q\,
	combout => \fsm|reg_fstate.E1~0_combout\);

-- Location: LCCOMB_X84_Y7_N2
\fsm|reg_fstate.E1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|reg_fstate.E1~1_combout\ = (!\debounce1|s_pulsedOut~q\ & \fsm|reg_fstate.E1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_pulsedOut~q\,
	datac => \fsm|reg_fstate.E1~0_combout\,
	combout => \fsm|reg_fstate.E1~1_combout\);

-- Location: FF_X84_Y7_N3
\fsm|fstate.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|reg_fstate.E1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|fstate.E1~q\);

-- Location: LCCOMB_X84_Y7_N18
\fsm|reg_fstate.E2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|reg_fstate.E2~0_combout\ = (!\debounce1|s_pulsedOut~q\ & ((\debounce0|s_pulsedOut~q\ & ((\fsm|fstate.E1~q\))) # (!\debounce0|s_pulsedOut~q\ & (\fsm|fstate.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_pulsedOut~q\,
	datab => \fsm|fstate.E2~q\,
	datac => \fsm|fstate.E1~q\,
	datad => \debounce0|s_pulsedOut~q\,
	combout => \fsm|reg_fstate.E2~0_combout\);

-- Location: LCCOMB_X84_Y7_N12
\fsm|reg_fstate.E2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|reg_fstate.E2~1_combout\ = (\KEY[0]~input_o\ & \fsm|reg_fstate.E2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \fsm|reg_fstate.E2~0_combout\,
	combout => \fsm|reg_fstate.E2~1_combout\);

-- Location: FF_X84_Y7_N13
\fsm|fstate.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|reg_fstate.E2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|fstate.E2~q\);

-- Location: LCCOMB_X85_Y7_N4
\fsm|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~0_combout\ = (!\debounce1|s_pulsedOut~q\ & ((\debounce0|s_pulsedOut~q\ & (\fsm|fstate.E2~q\)) # (!\debounce0|s_pulsedOut~q\ & ((\fsm|fstate.E3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|fstate.E2~q\,
	datab => \debounce1|s_pulsedOut~q\,
	datac => \debounce0|s_pulsedOut~q\,
	datad => \fsm|fstate.E3~q\,
	combout => \fsm|Selector3~0_combout\);

-- Location: LCCOMB_X84_Y7_N14
\fsm|reg_fstate.E3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|reg_fstate.E3~0_combout\ = (\KEY[0]~input_o\ & ((\fsm|Selector3~0_combout\) # ((\debounce1|s_pulsedOut~q\ & !\fsm|fstate.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_pulsedOut~q\,
	datab => \fsm|fstate.E0~q\,
	datac => \KEY[0]~input_o\,
	datad => \fsm|Selector3~0_combout\,
	combout => \fsm|reg_fstate.E3~0_combout\);

-- Location: FF_X84_Y7_N15
\fsm|fstate.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|reg_fstate.E3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|fstate.E3~q\);

-- Location: LCCOMB_X84_Y7_N28
\fsm|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector4~0_combout\ = (!\debounce1|s_pulsedOut~q\ & ((\debounce0|s_pulsedOut~q\ & (\fsm|fstate.E3~q\)) # (!\debounce0|s_pulsedOut~q\ & ((\fsm|fstate.E4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_pulsedOut~q\,
	datab => \fsm|fstate.E3~q\,
	datac => \fsm|fstate.E4~q\,
	datad => \debounce1|s_pulsedOut~q\,
	combout => \fsm|Selector4~0_combout\);

-- Location: LCCOMB_X84_Y7_N30
\fsm|reg_fstate.E4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|reg_fstate.E4~0_combout\ = (\KEY[0]~input_o\ & ((\fsm|Selector4~0_combout\) # ((\fsm|fstate.E1~q\ & \debounce1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector4~0_combout\,
	datab => \fsm|fstate.E1~q\,
	datac => \KEY[0]~input_o\,
	datad => \debounce1|s_pulsedOut~q\,
	combout => \fsm|reg_fstate.E4~0_combout\);

-- Location: FF_X84_Y7_N31
\fsm|fstate.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|reg_fstate.E4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|fstate.E4~q\);

-- Location: LCCOMB_X85_Y7_N8
\fsm|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector5~0_combout\ = (\fsm|fstate.E4~q\ & ((\debounce0|s_pulsedOut~q\) # (\debounce1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|fstate.E4~q\,
	datac => \debounce0|s_pulsedOut~q\,
	datad => \debounce1|s_pulsedOut~q\,
	combout => \fsm|Selector5~0_combout\);

-- Location: LCCOMB_X85_Y7_N26
\fsm|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector5~1_combout\ = (\fsm|Selector5~0_combout\) # ((\debounce1|s_pulsedOut~q\ & ((\fsm|fstate.E3~q\) # (\fsm|fstate.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|fstate.E3~q\,
	datab => \debounce1|s_pulsedOut~q\,
	datac => \fsm|Selector5~0_combout\,
	datad => \fsm|fstate.E2~q\,
	combout => \fsm|Selector5~1_combout\);

-- Location: LCCOMB_X84_Y7_N6
\fsm|reg_fstate.E5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|reg_fstate.E5~0_combout\ = (\KEY[0]~input_o\ & \fsm|Selector5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \fsm|Selector5~1_combout\,
	combout => \fsm|reg_fstate.E5~0_combout\);

-- Location: FF_X84_Y7_N7
\fsm|fstate.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|reg_fstate.E5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|fstate.E5~q\);

-- Location: LCCOMB_X96_Y35_N6
\hold_abrir|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~0_combout\ = \hold_abrir|s_counter\(0) $ (GND)
-- \hold_abrir|Add0~1\ = CARRY(!\hold_abrir|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(0),
	datad => VCC,
	combout => \hold_abrir|Add0~0_combout\,
	cout => \hold_abrir|Add0~1\);

-- Location: LCCOMB_X96_Y35_N0
\hold_abrir|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~32_combout\ = (!\hold_abrir|Add0~0_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|Add0~0_combout\,
	datab => \KEY[0]~input_o\,
	datad => \fsm|fstate.E5~q\,
	combout => \hold_abrir|Add0~32_combout\);

-- Location: FF_X96_Y35_N1
\hold_abrir|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(0));

-- Location: LCCOMB_X96_Y35_N8
\hold_abrir|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~2_combout\ = (\hold_abrir|s_counter\(1) & (!\hold_abrir|Add0~1\)) # (!\hold_abrir|s_counter\(1) & ((\hold_abrir|Add0~1\) # (GND)))
-- \hold_abrir|Add0~3\ = CARRY((!\hold_abrir|Add0~1\) # (!\hold_abrir|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(1),
	datad => VCC,
	cin => \hold_abrir|Add0~1\,
	combout => \hold_abrir|Add0~2_combout\,
	cout => \hold_abrir|Add0~3\);

-- Location: LCCOMB_X97_Y35_N10
\hold_abrir|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~35_combout\ = (\hold_abrir|Add0~2_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~2_combout\,
	combout => \hold_abrir|Add0~35_combout\);

-- Location: FF_X96_Y35_N19
\hold_abrir|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \hold_abrir|Add0~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(1));

-- Location: LCCOMB_X96_Y35_N10
\hold_abrir|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~4_combout\ = (\hold_abrir|s_counter\(2) & (\hold_abrir|Add0~3\ $ (GND))) # (!\hold_abrir|s_counter\(2) & (!\hold_abrir|Add0~3\ & VCC))
-- \hold_abrir|Add0~5\ = CARRY((\hold_abrir|s_counter\(2) & !\hold_abrir|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(2),
	datad => VCC,
	cin => \hold_abrir|Add0~3\,
	combout => \hold_abrir|Add0~4_combout\,
	cout => \hold_abrir|Add0~5\);

-- Location: LCCOMB_X97_Y35_N12
\hold_abrir|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~34_combout\ = (\hold_abrir|Add0~4_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~4_combout\,
	combout => \hold_abrir|Add0~34_combout\);

-- Location: FF_X96_Y35_N13
\hold_abrir|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \hold_abrir|Add0~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(2));

-- Location: LCCOMB_X96_Y35_N12
\hold_abrir|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~6_combout\ = (\hold_abrir|s_counter\(3) & (!\hold_abrir|Add0~5\)) # (!\hold_abrir|s_counter\(3) & ((\hold_abrir|Add0~5\) # (GND)))
-- \hold_abrir|Add0~7\ = CARRY((!\hold_abrir|Add0~5\) # (!\hold_abrir|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(3),
	datad => VCC,
	cin => \hold_abrir|Add0~5\,
	combout => \hold_abrir|Add0~6_combout\,
	cout => \hold_abrir|Add0~7\);

-- Location: LCCOMB_X97_Y35_N8
\hold_abrir|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~33_combout\ = (\hold_abrir|Add0~6_combout\ & ((!\KEY[0]~input_o\) # (!\fsm|fstate.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|Add0~6_combout\,
	datab => \fsm|fstate.E5~q\,
	datac => \KEY[0]~input_o\,
	combout => \hold_abrir|Add0~33_combout\);

-- Location: FF_X97_Y35_N9
\hold_abrir|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(3));

-- Location: LCCOMB_X96_Y35_N14
\hold_abrir|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~8_combout\ = (\hold_abrir|s_counter\(4) & (\hold_abrir|Add0~7\ $ (GND))) # (!\hold_abrir|s_counter\(4) & (!\hold_abrir|Add0~7\ & VCC))
-- \hold_abrir|Add0~9\ = CARRY((\hold_abrir|s_counter\(4) & !\hold_abrir|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(4),
	datad => VCC,
	cin => \hold_abrir|Add0~7\,
	combout => \hold_abrir|Add0~8_combout\,
	cout => \hold_abrir|Add0~9\);

-- Location: LCCOMB_X96_Y35_N2
\hold_abrir|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~31_combout\ = (\hold_abrir|Add0~8_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \hold_abrir|Add0~8_combout\,
	datad => \fsm|fstate.E5~q\,
	combout => \hold_abrir|Add0~31_combout\);

-- Location: FF_X96_Y35_N3
\hold_abrir|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(4));

-- Location: LCCOMB_X96_Y35_N16
\hold_abrir|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~10_combout\ = (\hold_abrir|s_counter\(5) & (!\hold_abrir|Add0~9\)) # (!\hold_abrir|s_counter\(5) & ((\hold_abrir|Add0~9\) # (GND)))
-- \hold_abrir|Add0~11\ = CARRY((!\hold_abrir|Add0~9\) # (!\hold_abrir|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(5),
	datad => VCC,
	cin => \hold_abrir|Add0~9\,
	combout => \hold_abrir|Add0~10_combout\,
	cout => \hold_abrir|Add0~11\);

-- Location: LCCOMB_X97_Y35_N24
\hold_abrir|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~30_combout\ = (\hold_abrir|Add0~10_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fsm|fstate.E5~q\,
	datac => \hold_abrir|Add0~10_combout\,
	combout => \hold_abrir|Add0~30_combout\);

-- Location: FF_X97_Y35_N25
\hold_abrir|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(5));

-- Location: LCCOMB_X96_Y35_N18
\hold_abrir|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~12_combout\ = (\hold_abrir|s_counter\(6) & (\hold_abrir|Add0~11\ $ (GND))) # (!\hold_abrir|s_counter\(6) & (!\hold_abrir|Add0~11\ & VCC))
-- \hold_abrir|Add0~13\ = CARRY((\hold_abrir|s_counter\(6) & !\hold_abrir|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(6),
	datad => VCC,
	cin => \hold_abrir|Add0~11\,
	combout => \hold_abrir|Add0~12_combout\,
	cout => \hold_abrir|Add0~13\);

-- Location: LCCOMB_X96_Y35_N4
\hold_abrir|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~29_combout\ = (\hold_abrir|Add0~12_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~12_combout\,
	combout => \hold_abrir|Add0~29_combout\);

-- Location: FF_X96_Y35_N5
\hold_abrir|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(6));

-- Location: LCCOMB_X96_Y35_N20
\hold_abrir|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~14_combout\ = (\hold_abrir|s_counter\(7) & (!\hold_abrir|Add0~13\)) # (!\hold_abrir|s_counter\(7) & ((\hold_abrir|Add0~13\) # (GND)))
-- \hold_abrir|Add0~15\ = CARRY((!\hold_abrir|Add0~13\) # (!\hold_abrir|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(7),
	datad => VCC,
	cin => \hold_abrir|Add0~13\,
	combout => \hold_abrir|Add0~14_combout\,
	cout => \hold_abrir|Add0~15\);

-- Location: LCCOMB_X97_Y35_N2
\hold_abrir|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~28_combout\ = (\hold_abrir|Add0~14_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \hold_abrir|Add0~14_combout\,
	datac => \fsm|fstate.E5~q\,
	combout => \hold_abrir|Add0~28_combout\);

-- Location: FF_X97_Y35_N3
\hold_abrir|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(7));

-- Location: LCCOMB_X96_Y35_N22
\hold_abrir|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~16_combout\ = (\hold_abrir|s_counter\(8) & (\hold_abrir|Add0~15\ $ (GND))) # (!\hold_abrir|s_counter\(8) & (!\hold_abrir|Add0~15\ & VCC))
-- \hold_abrir|Add0~17\ = CARRY((\hold_abrir|s_counter\(8) & !\hold_abrir|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(8),
	datad => VCC,
	cin => \hold_abrir|Add0~15\,
	combout => \hold_abrir|Add0~16_combout\,
	cout => \hold_abrir|Add0~17\);

-- Location: LCCOMB_X97_Y35_N28
\hold_abrir|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~27_combout\ = (\hold_abrir|Add0~16_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \hold_abrir|Add0~16_combout\,
	datac => \fsm|fstate.E5~q\,
	combout => \hold_abrir|Add0~27_combout\);

-- Location: FF_X97_Y35_N29
\hold_abrir|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(8));

-- Location: LCCOMB_X96_Y35_N24
\hold_abrir|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~18_combout\ = (\hold_abrir|s_counter\(9) & (!\hold_abrir|Add0~17\)) # (!\hold_abrir|s_counter\(9) & ((\hold_abrir|Add0~17\) # (GND)))
-- \hold_abrir|Add0~19\ = CARRY((!\hold_abrir|Add0~17\) # (!\hold_abrir|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(9),
	datad => VCC,
	cin => \hold_abrir|Add0~17\,
	combout => \hold_abrir|Add0~18_combout\,
	cout => \hold_abrir|Add0~19\);

-- Location: LCCOMB_X97_Y35_N30
\hold_abrir|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~26_combout\ = (\hold_abrir|Add0~18_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~18_combout\,
	combout => \hold_abrir|Add0~26_combout\);

-- Location: FF_X96_Y35_N11
\hold_abrir|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \hold_abrir|Add0~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(9));

-- Location: LCCOMB_X96_Y35_N26
\hold_abrir|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~20_combout\ = (\hold_abrir|s_counter\(10) & (\hold_abrir|Add0~19\ $ (GND))) # (!\hold_abrir|s_counter\(10) & (!\hold_abrir|Add0~19\ & VCC))
-- \hold_abrir|Add0~21\ = CARRY((\hold_abrir|s_counter\(10) & !\hold_abrir|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(10),
	datad => VCC,
	cin => \hold_abrir|Add0~19\,
	combout => \hold_abrir|Add0~20_combout\,
	cout => \hold_abrir|Add0~21\);

-- Location: LCCOMB_X97_Y35_N22
\hold_abrir|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~25_combout\ = (\hold_abrir|Add0~20_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fsm|fstate.E5~q\,
	datac => \hold_abrir|Add0~20_combout\,
	combout => \hold_abrir|Add0~25_combout\);

-- Location: FF_X97_Y35_N23
\hold_abrir|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(10));

-- Location: LCCOMB_X96_Y35_N28
\hold_abrir|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~22_combout\ = (\hold_abrir|s_counter\(11) & (!\hold_abrir|Add0~21\)) # (!\hold_abrir|s_counter\(11) & ((\hold_abrir|Add0~21\) # (GND)))
-- \hold_abrir|Add0~23\ = CARRY((!\hold_abrir|Add0~21\) # (!\hold_abrir|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(11),
	datad => VCC,
	cin => \hold_abrir|Add0~21\,
	combout => \hold_abrir|Add0~22_combout\,
	cout => \hold_abrir|Add0~23\);

-- Location: LCCOMB_X97_Y35_N20
\hold_abrir|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~24_combout\ = (\hold_abrir|Add0~22_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~22_combout\,
	combout => \hold_abrir|Add0~24_combout\);

-- Location: FF_X97_Y35_N21
\hold_abrir|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(11));

-- Location: LCCOMB_X96_Y35_N30
\hold_abrir|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~36_combout\ = (\hold_abrir|s_counter\(12) & (\hold_abrir|Add0~23\ $ (GND))) # (!\hold_abrir|s_counter\(12) & (!\hold_abrir|Add0~23\ & VCC))
-- \hold_abrir|Add0~37\ = CARRY((\hold_abrir|s_counter\(12) & !\hold_abrir|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(12),
	datad => VCC,
	cin => \hold_abrir|Add0~23\,
	combout => \hold_abrir|Add0~36_combout\,
	cout => \hold_abrir|Add0~37\);

-- Location: LCCOMB_X97_Y35_N4
\hold_abrir|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~38_combout\ = (\hold_abrir|Add0~36_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~36_combout\,
	combout => \hold_abrir|Add0~38_combout\);

-- Location: FF_X97_Y35_N5
\hold_abrir|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(12));

-- Location: LCCOMB_X96_Y34_N0
\hold_abrir|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~39_combout\ = (\hold_abrir|s_counter\(13) & (!\hold_abrir|Add0~37\)) # (!\hold_abrir|s_counter\(13) & ((\hold_abrir|Add0~37\) # (GND)))
-- \hold_abrir|Add0~40\ = CARRY((!\hold_abrir|Add0~37\) # (!\hold_abrir|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(13),
	datad => VCC,
	cin => \hold_abrir|Add0~37\,
	combout => \hold_abrir|Add0~39_combout\,
	cout => \hold_abrir|Add0~40\);

-- Location: LCCOMB_X97_Y34_N4
\hold_abrir|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~41_combout\ = (\hold_abrir|Add0~39_combout\ & ((!\KEY[0]~input_o\) # (!\fsm|fstate.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|fstate.E5~q\,
	datac => \hold_abrir|Add0~39_combout\,
	datad => \KEY[0]~input_o\,
	combout => \hold_abrir|Add0~41_combout\);

-- Location: FF_X97_Y34_N5
\hold_abrir|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(13));

-- Location: LCCOMB_X96_Y34_N2
\hold_abrir|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~42_combout\ = (\hold_abrir|s_counter\(14) & (\hold_abrir|Add0~40\ $ (GND))) # (!\hold_abrir|s_counter\(14) & (!\hold_abrir|Add0~40\ & VCC))
-- \hold_abrir|Add0~43\ = CARRY((\hold_abrir|s_counter\(14) & !\hold_abrir|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(14),
	datad => VCC,
	cin => \hold_abrir|Add0~40\,
	combout => \hold_abrir|Add0~42_combout\,
	cout => \hold_abrir|Add0~43\);

-- Location: LCCOMB_X97_Y34_N2
\hold_abrir|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~44_combout\ = (\hold_abrir|Add0~42_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~42_combout\,
	combout => \hold_abrir|Add0~44_combout\);

-- Location: FF_X97_Y34_N3
\hold_abrir|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(14));

-- Location: LCCOMB_X96_Y34_N4
\hold_abrir|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~45_combout\ = (\hold_abrir|s_counter\(15) & (!\hold_abrir|Add0~43\)) # (!\hold_abrir|s_counter\(15) & ((\hold_abrir|Add0~43\) # (GND)))
-- \hold_abrir|Add0~46\ = CARRY((!\hold_abrir|Add0~43\) # (!\hold_abrir|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(15),
	datad => VCC,
	cin => \hold_abrir|Add0~43\,
	combout => \hold_abrir|Add0~45_combout\,
	cout => \hold_abrir|Add0~46\);

-- Location: LCCOMB_X97_Y34_N12
\hold_abrir|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~47_combout\ = (\hold_abrir|Add0~45_combout\ & ((!\KEY[0]~input_o\) # (!\fsm|fstate.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|fstate.E5~q\,
	datac => \hold_abrir|Add0~45_combout\,
	datad => \KEY[0]~input_o\,
	combout => \hold_abrir|Add0~47_combout\);

-- Location: FF_X97_Y34_N13
\hold_abrir|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(15));

-- Location: LCCOMB_X97_Y35_N26
\hold_abrir|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Equal0~3_combout\ = (\hold_abrir|s_counter\(15) & (\hold_abrir|s_counter\(12) & (\hold_abrir|s_counter\(14) & \hold_abrir|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(15),
	datab => \hold_abrir|s_counter\(12),
	datac => \hold_abrir|s_counter\(14),
	datad => \hold_abrir|s_counter\(13),
	combout => \hold_abrir|Equal0~3_combout\);

-- Location: LCCOMB_X96_Y36_N28
\hold_abrir|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Equal0~0_combout\ = (!\hold_abrir|s_counter\(8) & (!\hold_abrir|s_counter\(11) & (!\hold_abrir|s_counter\(10) & !\hold_abrir|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(8),
	datab => \hold_abrir|s_counter\(11),
	datac => \hold_abrir|s_counter\(10),
	datad => \hold_abrir|s_counter\(9),
	combout => \hold_abrir|Equal0~0_combout\);

-- Location: LCCOMB_X97_Y35_N14
\hold_abrir|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Equal0~2_combout\ = (\hold_abrir|s_counter\(0) & (!\hold_abrir|s_counter\(1) & (!\hold_abrir|s_counter\(3) & !\hold_abrir|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(0),
	datab => \hold_abrir|s_counter\(1),
	datac => \hold_abrir|s_counter\(3),
	datad => \hold_abrir|s_counter\(2),
	combout => \hold_abrir|Equal0~2_combout\);

-- Location: LCCOMB_X97_Y35_N6
\hold_abrir|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Equal0~1_combout\ = (!\hold_abrir|s_counter\(4) & (\hold_abrir|s_counter\(7) & (!\hold_abrir|s_counter\(6) & !\hold_abrir|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(4),
	datab => \hold_abrir|s_counter\(7),
	datac => \hold_abrir|s_counter\(6),
	datad => \hold_abrir|s_counter\(5),
	combout => \hold_abrir|Equal0~1_combout\);

-- Location: LCCOMB_X97_Y35_N16
\hold_abrir|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Equal0~4_combout\ = (\hold_abrir|Equal0~3_combout\ & (\hold_abrir|Equal0~0_combout\ & (\hold_abrir|Equal0~2_combout\ & \hold_abrir|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|Equal0~3_combout\,
	datab => \hold_abrir|Equal0~0_combout\,
	datac => \hold_abrir|Equal0~2_combout\,
	datad => \hold_abrir|Equal0~1_combout\,
	combout => \hold_abrir|Equal0~4_combout\);

-- Location: LCCOMB_X96_Y34_N6
\hold_abrir|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~48_combout\ = (\hold_abrir|s_counter\(16) & (\hold_abrir|Add0~46\ $ (GND))) # (!\hold_abrir|s_counter\(16) & (!\hold_abrir|Add0~46\ & VCC))
-- \hold_abrir|Add0~49\ = CARRY((\hold_abrir|s_counter\(16) & !\hold_abrir|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(16),
	datad => VCC,
	cin => \hold_abrir|Add0~46\,
	combout => \hold_abrir|Add0~48_combout\,
	cout => \hold_abrir|Add0~49\);

-- Location: LCCOMB_X97_Y34_N10
\hold_abrir|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~58_combout\ = (\hold_abrir|Add0~48_combout\ & ((!\KEY[0]~input_o\) # (!\fsm|fstate.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|fstate.E5~q\,
	datac => \hold_abrir|Add0~48_combout\,
	datad => \KEY[0]~input_o\,
	combout => \hold_abrir|Add0~58_combout\);

-- Location: FF_X97_Y34_N11
\hold_abrir|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(16));

-- Location: LCCOMB_X96_Y34_N8
\hold_abrir|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~50_combout\ = (\hold_abrir|s_counter\(17) & (!\hold_abrir|Add0~49\)) # (!\hold_abrir|s_counter\(17) & ((\hold_abrir|Add0~49\) # (GND)))
-- \hold_abrir|Add0~51\ = CARRY((!\hold_abrir|Add0~49\) # (!\hold_abrir|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(17),
	datad => VCC,
	cin => \hold_abrir|Add0~49\,
	combout => \hold_abrir|Add0~50_combout\,
	cout => \hold_abrir|Add0~51\);

-- Location: LCCOMB_X97_Y34_N18
\hold_abrir|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~52_combout\ = (\hold_abrir|Add0~50_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~50_combout\,
	combout => \hold_abrir|Add0~52_combout\);

-- Location: FF_X97_Y34_N19
\hold_abrir|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(17));

-- Location: LCCOMB_X96_Y34_N10
\hold_abrir|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~53_combout\ = (\hold_abrir|s_counter\(18) & (\hold_abrir|Add0~51\ $ (GND))) # (!\hold_abrir|s_counter\(18) & (!\hold_abrir|Add0~51\ & VCC))
-- \hold_abrir|Add0~54\ = CARRY((\hold_abrir|s_counter\(18) & !\hold_abrir|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(18),
	datad => VCC,
	cin => \hold_abrir|Add0~51\,
	combout => \hold_abrir|Add0~53_combout\,
	cout => \hold_abrir|Add0~54\);

-- Location: LCCOMB_X97_Y34_N8
\hold_abrir|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~59_combout\ = (\hold_abrir|Add0~53_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~53_combout\,
	combout => \hold_abrir|Add0~59_combout\);

-- Location: FF_X97_Y34_N9
\hold_abrir|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(18));

-- Location: LCCOMB_X96_Y34_N12
\hold_abrir|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~55_combout\ = (\hold_abrir|s_counter\(19) & (!\hold_abrir|Add0~54\)) # (!\hold_abrir|s_counter\(19) & ((\hold_abrir|Add0~54\) # (GND)))
-- \hold_abrir|Add0~56\ = CARRY((!\hold_abrir|Add0~54\) # (!\hold_abrir|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(19),
	datad => VCC,
	cin => \hold_abrir|Add0~54\,
	combout => \hold_abrir|Add0~55_combout\,
	cout => \hold_abrir|Add0~56\);

-- Location: LCCOMB_X97_Y34_N28
\hold_abrir|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~57_combout\ = (\hold_abrir|Add0~55_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~55_combout\,
	combout => \hold_abrir|Add0~57_combout\);

-- Location: FF_X97_Y34_N29
\hold_abrir|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(19));

-- Location: LCCOMB_X96_Y34_N14
\hold_abrir|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~60_combout\ = (\hold_abrir|s_counter\(20) & (\hold_abrir|Add0~56\ $ (GND))) # (!\hold_abrir|s_counter\(20) & (!\hold_abrir|Add0~56\ & VCC))
-- \hold_abrir|Add0~61\ = CARRY((\hold_abrir|s_counter\(20) & !\hold_abrir|Add0~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(20),
	datad => VCC,
	cin => \hold_abrir|Add0~56\,
	combout => \hold_abrir|Add0~60_combout\,
	cout => \hold_abrir|Add0~61\);

-- Location: LCCOMB_X97_Y34_N20
\hold_abrir|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~62_combout\ = (\hold_abrir|Add0~60_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~60_combout\,
	combout => \hold_abrir|Add0~62_combout\);

-- Location: FF_X97_Y34_N21
\hold_abrir|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(20));

-- Location: LCCOMB_X96_Y34_N16
\hold_abrir|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~63_combout\ = (\hold_abrir|s_counter\(21) & (!\hold_abrir|Add0~61\)) # (!\hold_abrir|s_counter\(21) & ((\hold_abrir|Add0~61\) # (GND)))
-- \hold_abrir|Add0~64\ = CARRY((!\hold_abrir|Add0~61\) # (!\hold_abrir|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(21),
	datad => VCC,
	cin => \hold_abrir|Add0~61\,
	combout => \hold_abrir|Add0~63_combout\,
	cout => \hold_abrir|Add0~64\);

-- Location: LCCOMB_X96_Y34_N26
\hold_abrir|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~65_combout\ = (\hold_abrir|Add0~63_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~63_combout\,
	combout => \hold_abrir|Add0~65_combout\);

-- Location: FF_X96_Y34_N27
\hold_abrir|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(21));

-- Location: LCCOMB_X96_Y34_N18
\hold_abrir|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~66_combout\ = (\hold_abrir|s_counter\(22) & (\hold_abrir|Add0~64\ $ (GND))) # (!\hold_abrir|s_counter\(22) & (!\hold_abrir|Add0~64\ & VCC))
-- \hold_abrir|Add0~67\ = CARRY((\hold_abrir|s_counter\(22) & !\hold_abrir|Add0~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(22),
	datad => VCC,
	cin => \hold_abrir|Add0~64\,
	combout => \hold_abrir|Add0~66_combout\,
	cout => \hold_abrir|Add0~67\);

-- Location: LCCOMB_X97_Y34_N30
\hold_abrir|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~68_combout\ = (\hold_abrir|Add0~66_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~66_combout\,
	combout => \hold_abrir|Add0~68_combout\);

-- Location: FF_X97_Y34_N31
\hold_abrir|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(22));

-- Location: LCCOMB_X96_Y34_N20
\hold_abrir|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~69_combout\ = (\hold_abrir|s_counter\(23) & (!\hold_abrir|Add0~67\)) # (!\hold_abrir|s_counter\(23) & ((\hold_abrir|Add0~67\) # (GND)))
-- \hold_abrir|Add0~70\ = CARRY((!\hold_abrir|Add0~67\) # (!\hold_abrir|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|s_counter\(23),
	datad => VCC,
	cin => \hold_abrir|Add0~67\,
	combout => \hold_abrir|Add0~69_combout\,
	cout => \hold_abrir|Add0~70\);

-- Location: LCCOMB_X96_Y34_N28
\hold_abrir|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~71_combout\ = (\hold_abrir|Add0~69_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~69_combout\,
	combout => \hold_abrir|Add0~71_combout\);

-- Location: FF_X96_Y34_N29
\hold_abrir|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(23));

-- Location: LCCOMB_X96_Y34_N22
\hold_abrir|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~72_combout\ = (\hold_abrir|s_counter\(24) & (\hold_abrir|Add0~70\ $ (GND))) # (!\hold_abrir|s_counter\(24) & (!\hold_abrir|Add0~70\ & VCC))
-- \hold_abrir|Add0~73\ = CARRY((\hold_abrir|s_counter\(24) & !\hold_abrir|Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(24),
	datad => VCC,
	cin => \hold_abrir|Add0~70\,
	combout => \hold_abrir|Add0~72_combout\,
	cout => \hold_abrir|Add0~73\);

-- Location: LCCOMB_X96_Y34_N30
\hold_abrir|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~77_combout\ = (\hold_abrir|Add0~72_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \hold_abrir|Add0~72_combout\,
	datad => \fsm|fstate.E5~q\,
	combout => \hold_abrir|Add0~77_combout\);

-- Location: FF_X96_Y34_N31
\hold_abrir|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(24));

-- Location: LCCOMB_X96_Y34_N24
\hold_abrir|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~74_combout\ = \hold_abrir|Add0~73\ $ (\hold_abrir|s_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \hold_abrir|s_counter\(25),
	cin => \hold_abrir|Add0~73\,
	combout => \hold_abrir|Add0~74_combout\);

-- Location: LCCOMB_X97_Y34_N6
\hold_abrir|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Add0~76_combout\ = (\hold_abrir|Add0~74_combout\ & ((!\fsm|fstate.E5~q\) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \fsm|fstate.E5~q\,
	datad => \hold_abrir|Add0~74_combout\,
	combout => \hold_abrir|Add0~76_combout\);

-- Location: FF_X97_Y34_N7
\hold_abrir|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|s_counter\(25));

-- Location: LCCOMB_X97_Y34_N22
\hold_abrir|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Equal0~5_combout\ = (!\hold_abrir|s_counter\(16) & (\hold_abrir|s_counter\(17) & (!\hold_abrir|s_counter\(18) & \hold_abrir|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(16),
	datab => \hold_abrir|s_counter\(17),
	datac => \hold_abrir|s_counter\(18),
	datad => \hold_abrir|s_counter\(19),
	combout => \hold_abrir|Equal0~5_combout\);

-- Location: LCCOMB_X97_Y34_N16
\hold_abrir|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Equal0~6_combout\ = (\hold_abrir|s_counter\(22) & (\hold_abrir|s_counter\(23) & (\hold_abrir|s_counter\(21) & \hold_abrir|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(22),
	datab => \hold_abrir|s_counter\(23),
	datac => \hold_abrir|s_counter\(21),
	datad => \hold_abrir|s_counter\(20),
	combout => \hold_abrir|Equal0~6_combout\);

-- Location: LCCOMB_X97_Y34_N24
\hold_abrir|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|Equal0~7_combout\ = (\hold_abrir|s_counter\(25) & (!\hold_abrir|s_counter\(24) & (\hold_abrir|Equal0~5_combout\ & \hold_abrir|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hold_abrir|s_counter\(25),
	datab => \hold_abrir|s_counter\(24),
	datac => \hold_abrir|Equal0~5_combout\,
	datad => \hold_abrir|Equal0~6_combout\,
	combout => \hold_abrir|Equal0~7_combout\);

-- Location: LCCOMB_X97_Y35_N18
\hold_abrir|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|q~0_combout\ = (\hold_abrir|q~q\) # ((\KEY[0]~input_o\ & \fsm|fstate.E5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \hold_abrir|q~q\,
	datac => \fsm|fstate.E5~q\,
	combout => \hold_abrir|q~0_combout\);

-- Location: LCCOMB_X97_Y35_N0
\hold_abrir|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hold_abrir|q~1_combout\ = (\hold_abrir|q~0_combout\ & ((!\hold_abrir|Equal0~7_combout\) # (!\hold_abrir|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hold_abrir|Equal0~4_combout\,
	datac => \hold_abrir|Equal0~7_combout\,
	datad => \hold_abrir|q~0_combout\,
	combout => \hold_abrir|q~1_combout\);

-- Location: FF_X97_Y35_N1
\hold_abrir|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \hold_abrir|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hold_abrir|q~q\);

-- Location: LCCOMB_X83_Y6_N2
\moneyCounter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~0_combout\ = \moneyCounter|s_delayCounter\(0) $ (GND)
-- \moneyCounter|Add0~1\ = CARRY(!\moneyCounter|s_delayCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(0),
	datad => VCC,
	combout => \moneyCounter|Add0~0_combout\,
	cout => \moneyCounter|Add0~1\);

-- Location: LCCOMB_X82_Y6_N26
\moneyCounter|s_delayCounter[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter[0]~12_combout\ = !\moneyCounter|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \moneyCounter|Add0~0_combout\,
	combout => \moneyCounter|s_delayCounter[0]~12_combout\);

-- Location: FF_X83_Y6_N1
\moneyCounter|s_delayCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \moneyCounter|s_delayCounter[0]~12_combout\,
	sload => VCC,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(0));

-- Location: LCCOMB_X83_Y6_N4
\moneyCounter|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~2_combout\ = (\moneyCounter|s_delayCounter\(1) & (!\moneyCounter|Add0~1\)) # (!\moneyCounter|s_delayCounter\(1) & ((\moneyCounter|Add0~1\) # (GND)))
-- \moneyCounter|Add0~3\ = CARRY((!\moneyCounter|Add0~1\) # (!\moneyCounter|s_delayCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(1),
	datad => VCC,
	cin => \moneyCounter|Add0~1\,
	combout => \moneyCounter|Add0~2_combout\,
	cout => \moneyCounter|Add0~3\);

-- Location: FF_X83_Y6_N5
\moneyCounter|s_delayCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~2_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(1));

-- Location: LCCOMB_X83_Y6_N6
\moneyCounter|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~4_combout\ = (\moneyCounter|s_delayCounter\(2) & (\moneyCounter|Add0~3\ $ (GND))) # (!\moneyCounter|s_delayCounter\(2) & (!\moneyCounter|Add0~3\ & VCC))
-- \moneyCounter|Add0~5\ = CARRY((\moneyCounter|s_delayCounter\(2) & !\moneyCounter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(2),
	datad => VCC,
	cin => \moneyCounter|Add0~3\,
	combout => \moneyCounter|Add0~4_combout\,
	cout => \moneyCounter|Add0~5\);

-- Location: FF_X83_Y6_N7
\moneyCounter|s_delayCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~4_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(2));

-- Location: LCCOMB_X83_Y6_N8
\moneyCounter|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~6_combout\ = (\moneyCounter|s_delayCounter\(3) & (!\moneyCounter|Add0~5\)) # (!\moneyCounter|s_delayCounter\(3) & ((\moneyCounter|Add0~5\) # (GND)))
-- \moneyCounter|Add0~7\ = CARRY((!\moneyCounter|Add0~5\) # (!\moneyCounter|s_delayCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(3),
	datad => VCC,
	cin => \moneyCounter|Add0~5\,
	combout => \moneyCounter|Add0~6_combout\,
	cout => \moneyCounter|Add0~7\);

-- Location: FF_X83_Y6_N9
\moneyCounter|s_delayCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~6_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(3));

-- Location: LCCOMB_X83_Y6_N10
\moneyCounter|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~8_combout\ = (\moneyCounter|s_delayCounter\(4) & (\moneyCounter|Add0~7\ $ (GND))) # (!\moneyCounter|s_delayCounter\(4) & (!\moneyCounter|Add0~7\ & VCC))
-- \moneyCounter|Add0~9\ = CARRY((\moneyCounter|s_delayCounter\(4) & !\moneyCounter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(4),
	datad => VCC,
	cin => \moneyCounter|Add0~7\,
	combout => \moneyCounter|Add0~8_combout\,
	cout => \moneyCounter|Add0~9\);

-- Location: FF_X83_Y6_N11
\moneyCounter|s_delayCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~8_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(4));

-- Location: LCCOMB_X83_Y6_N12
\moneyCounter|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~10_combout\ = (\moneyCounter|s_delayCounter\(5) & (!\moneyCounter|Add0~9\)) # (!\moneyCounter|s_delayCounter\(5) & ((\moneyCounter|Add0~9\) # (GND)))
-- \moneyCounter|Add0~11\ = CARRY((!\moneyCounter|Add0~9\) # (!\moneyCounter|s_delayCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(5),
	datad => VCC,
	cin => \moneyCounter|Add0~9\,
	combout => \moneyCounter|Add0~10_combout\,
	cout => \moneyCounter|Add0~11\);

-- Location: FF_X83_Y6_N13
\moneyCounter|s_delayCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~10_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(5));

-- Location: LCCOMB_X83_Y6_N14
\moneyCounter|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~12_combout\ = (\moneyCounter|s_delayCounter\(6) & (\moneyCounter|Add0~11\ $ (GND))) # (!\moneyCounter|s_delayCounter\(6) & (!\moneyCounter|Add0~11\ & VCC))
-- \moneyCounter|Add0~13\ = CARRY((\moneyCounter|s_delayCounter\(6) & !\moneyCounter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(6),
	datad => VCC,
	cin => \moneyCounter|Add0~11\,
	combout => \moneyCounter|Add0~12_combout\,
	cout => \moneyCounter|Add0~13\);

-- Location: FF_X83_Y6_N15
\moneyCounter|s_delayCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~12_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(6));

-- Location: LCCOMB_X83_Y6_N16
\moneyCounter|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~14_combout\ = (\moneyCounter|s_delayCounter\(7) & (!\moneyCounter|Add0~13\)) # (!\moneyCounter|s_delayCounter\(7) & ((\moneyCounter|Add0~13\) # (GND)))
-- \moneyCounter|Add0~15\ = CARRY((!\moneyCounter|Add0~13\) # (!\moneyCounter|s_delayCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(7),
	datad => VCC,
	cin => \moneyCounter|Add0~13\,
	combout => \moneyCounter|Add0~14_combout\,
	cout => \moneyCounter|Add0~15\);

-- Location: LCCOMB_X82_Y6_N12
\moneyCounter|s_delayCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter~0_combout\ = (!\moneyCounter|Equal0~9_combout\ & \moneyCounter|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|Equal0~9_combout\,
	datac => \moneyCounter|Add0~14_combout\,
	combout => \moneyCounter|s_delayCounter~0_combout\);

-- Location: FF_X82_Y6_N13
\moneyCounter|s_delayCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_delayCounter~0_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(7));

-- Location: LCCOMB_X83_Y6_N18
\moneyCounter|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~16_combout\ = (\moneyCounter|s_delayCounter\(8) & (\moneyCounter|Add0~15\ $ (GND))) # (!\moneyCounter|s_delayCounter\(8) & (!\moneyCounter|Add0~15\ & VCC))
-- \moneyCounter|Add0~17\ = CARRY((\moneyCounter|s_delayCounter\(8) & !\moneyCounter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(8),
	datad => VCC,
	cin => \moneyCounter|Add0~15\,
	combout => \moneyCounter|Add0~16_combout\,
	cout => \moneyCounter|Add0~17\);

-- Location: FF_X83_Y6_N19
\moneyCounter|s_delayCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~16_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(8));

-- Location: LCCOMB_X83_Y6_N20
\moneyCounter|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~18_combout\ = (\moneyCounter|s_delayCounter\(9) & (!\moneyCounter|Add0~17\)) # (!\moneyCounter|s_delayCounter\(9) & ((\moneyCounter|Add0~17\) # (GND)))
-- \moneyCounter|Add0~19\ = CARRY((!\moneyCounter|Add0~17\) # (!\moneyCounter|s_delayCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(9),
	datad => VCC,
	cin => \moneyCounter|Add0~17\,
	combout => \moneyCounter|Add0~18_combout\,
	cout => \moneyCounter|Add0~19\);

-- Location: FF_X83_Y6_N21
\moneyCounter|s_delayCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~18_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(9));

-- Location: LCCOMB_X83_Y6_N22
\moneyCounter|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~20_combout\ = (\moneyCounter|s_delayCounter\(10) & (\moneyCounter|Add0~19\ $ (GND))) # (!\moneyCounter|s_delayCounter\(10) & (!\moneyCounter|Add0~19\ & VCC))
-- \moneyCounter|Add0~21\ = CARRY((\moneyCounter|s_delayCounter\(10) & !\moneyCounter|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(10),
	datad => VCC,
	cin => \moneyCounter|Add0~19\,
	combout => \moneyCounter|Add0~20_combout\,
	cout => \moneyCounter|Add0~21\);

-- Location: FF_X83_Y6_N23
\moneyCounter|s_delayCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~20_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(10));

-- Location: LCCOMB_X83_Y6_N24
\moneyCounter|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~22_combout\ = (\moneyCounter|s_delayCounter\(11) & (!\moneyCounter|Add0~21\)) # (!\moneyCounter|s_delayCounter\(11) & ((\moneyCounter|Add0~21\) # (GND)))
-- \moneyCounter|Add0~23\ = CARRY((!\moneyCounter|Add0~21\) # (!\moneyCounter|s_delayCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(11),
	datad => VCC,
	cin => \moneyCounter|Add0~21\,
	combout => \moneyCounter|Add0~22_combout\,
	cout => \moneyCounter|Add0~23\);

-- Location: FF_X83_Y6_N25
\moneyCounter|s_delayCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~22_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(11));

-- Location: LCCOMB_X83_Y6_N26
\moneyCounter|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~24_combout\ = (\moneyCounter|s_delayCounter\(12) & (\moneyCounter|Add0~23\ $ (GND))) # (!\moneyCounter|s_delayCounter\(12) & (!\moneyCounter|Add0~23\ & VCC))
-- \moneyCounter|Add0~25\ = CARRY((\moneyCounter|s_delayCounter\(12) & !\moneyCounter|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(12),
	datad => VCC,
	cin => \moneyCounter|Add0~23\,
	combout => \moneyCounter|Add0~24_combout\,
	cout => \moneyCounter|Add0~25\);

-- Location: LCCOMB_X82_Y6_N14
\moneyCounter|s_delayCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter~1_combout\ = (!\moneyCounter|Equal0~9_combout\ & \moneyCounter|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|Equal0~9_combout\,
	datad => \moneyCounter|Add0~24_combout\,
	combout => \moneyCounter|s_delayCounter~1_combout\);

-- Location: FF_X82_Y6_N15
\moneyCounter|s_delayCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_delayCounter~1_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(12));

-- Location: LCCOMB_X83_Y6_N28
\moneyCounter|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~26_combout\ = (\moneyCounter|s_delayCounter\(13) & (!\moneyCounter|Add0~25\)) # (!\moneyCounter|s_delayCounter\(13) & ((\moneyCounter|Add0~25\) # (GND)))
-- \moneyCounter|Add0~27\ = CARRY((!\moneyCounter|Add0~25\) # (!\moneyCounter|s_delayCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(13),
	datad => VCC,
	cin => \moneyCounter|Add0~25\,
	combout => \moneyCounter|Add0~26_combout\,
	cout => \moneyCounter|Add0~27\);

-- Location: LCCOMB_X82_Y6_N24
\moneyCounter|s_delayCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter~2_combout\ = (!\moneyCounter|Equal0~9_combout\ & \moneyCounter|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|Equal0~9_combout\,
	datad => \moneyCounter|Add0~26_combout\,
	combout => \moneyCounter|s_delayCounter~2_combout\);

-- Location: FF_X82_Y6_N25
\moneyCounter|s_delayCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_delayCounter~2_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(13));

-- Location: LCCOMB_X83_Y6_N30
\moneyCounter|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~28_combout\ = (\moneyCounter|s_delayCounter\(14) & (\moneyCounter|Add0~27\ $ (GND))) # (!\moneyCounter|s_delayCounter\(14) & (!\moneyCounter|Add0~27\ & VCC))
-- \moneyCounter|Add0~29\ = CARRY((\moneyCounter|s_delayCounter\(14) & !\moneyCounter|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(14),
	datad => VCC,
	cin => \moneyCounter|Add0~27\,
	combout => \moneyCounter|Add0~28_combout\,
	cout => \moneyCounter|Add0~29\);

-- Location: LCCOMB_X82_Y6_N6
\moneyCounter|s_delayCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter~3_combout\ = (\moneyCounter|Add0~28_combout\ & !\moneyCounter|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \moneyCounter|Add0~28_combout\,
	datad => \moneyCounter|Equal0~9_combout\,
	combout => \moneyCounter|s_delayCounter~3_combout\);

-- Location: FF_X82_Y6_N7
\moneyCounter|s_delayCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_delayCounter~3_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(14));

-- Location: LCCOMB_X83_Y5_N0
\moneyCounter|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~30_combout\ = (\moneyCounter|s_delayCounter\(15) & (!\moneyCounter|Add0~29\)) # (!\moneyCounter|s_delayCounter\(15) & ((\moneyCounter|Add0~29\) # (GND)))
-- \moneyCounter|Add0~31\ = CARRY((!\moneyCounter|Add0~29\) # (!\moneyCounter|s_delayCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(15),
	datad => VCC,
	cin => \moneyCounter|Add0~29\,
	combout => \moneyCounter|Add0~30_combout\,
	cout => \moneyCounter|Add0~31\);

-- Location: LCCOMB_X82_Y6_N20
\moneyCounter|s_delayCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter~4_combout\ = (!\moneyCounter|Equal0~9_combout\ & \moneyCounter|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|Equal0~9_combout\,
	datad => \moneyCounter|Add0~30_combout\,
	combout => \moneyCounter|s_delayCounter~4_combout\);

-- Location: FF_X82_Y6_N21
\moneyCounter|s_delayCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_delayCounter~4_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(15));

-- Location: LCCOMB_X83_Y5_N2
\moneyCounter|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~32_combout\ = (\moneyCounter|s_delayCounter\(16) & (\moneyCounter|Add0~31\ $ (GND))) # (!\moneyCounter|s_delayCounter\(16) & (!\moneyCounter|Add0~31\ & VCC))
-- \moneyCounter|Add0~33\ = CARRY((\moneyCounter|s_delayCounter\(16) & !\moneyCounter|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(16),
	datad => VCC,
	cin => \moneyCounter|Add0~31\,
	combout => \moneyCounter|Add0~32_combout\,
	cout => \moneyCounter|Add0~33\);

-- Location: FF_X83_Y5_N3
\moneyCounter|s_delayCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~32_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(16));

-- Location: LCCOMB_X83_Y5_N4
\moneyCounter|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~34_combout\ = (\moneyCounter|s_delayCounter\(17) & (!\moneyCounter|Add0~33\)) # (!\moneyCounter|s_delayCounter\(17) & ((\moneyCounter|Add0~33\) # (GND)))
-- \moneyCounter|Add0~35\ = CARRY((!\moneyCounter|Add0~33\) # (!\moneyCounter|s_delayCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(17),
	datad => VCC,
	cin => \moneyCounter|Add0~33\,
	combout => \moneyCounter|Add0~34_combout\,
	cout => \moneyCounter|Add0~35\);

-- Location: LCCOMB_X82_Y6_N30
\moneyCounter|s_delayCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter~5_combout\ = (!\moneyCounter|Equal0~9_combout\ & \moneyCounter|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|Equal0~9_combout\,
	datad => \moneyCounter|Add0~34_combout\,
	combout => \moneyCounter|s_delayCounter~5_combout\);

-- Location: FF_X82_Y6_N31
\moneyCounter|s_delayCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_delayCounter~5_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(17));

-- Location: LCCOMB_X83_Y5_N6
\moneyCounter|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~36_combout\ = (\moneyCounter|s_delayCounter\(18) & (\moneyCounter|Add0~35\ $ (GND))) # (!\moneyCounter|s_delayCounter\(18) & (!\moneyCounter|Add0~35\ & VCC))
-- \moneyCounter|Add0~37\ = CARRY((\moneyCounter|s_delayCounter\(18) & !\moneyCounter|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(18),
	datad => VCC,
	cin => \moneyCounter|Add0~35\,
	combout => \moneyCounter|Add0~36_combout\,
	cout => \moneyCounter|Add0~37\);

-- Location: FF_X83_Y5_N7
\moneyCounter|s_delayCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~36_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(18));

-- Location: LCCOMB_X83_Y5_N8
\moneyCounter|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~38_combout\ = (\moneyCounter|s_delayCounter\(19) & (!\moneyCounter|Add0~37\)) # (!\moneyCounter|s_delayCounter\(19) & ((\moneyCounter|Add0~37\) # (GND)))
-- \moneyCounter|Add0~39\ = CARRY((!\moneyCounter|Add0~37\) # (!\moneyCounter|s_delayCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(19),
	datad => VCC,
	cin => \moneyCounter|Add0~37\,
	combout => \moneyCounter|Add0~38_combout\,
	cout => \moneyCounter|Add0~39\);

-- Location: LCCOMB_X82_Y6_N28
\moneyCounter|s_delayCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter~6_combout\ = (!\moneyCounter|Equal0~9_combout\ & \moneyCounter|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|Equal0~9_combout\,
	datad => \moneyCounter|Add0~38_combout\,
	combout => \moneyCounter|s_delayCounter~6_combout\);

-- Location: FF_X82_Y6_N29
\moneyCounter|s_delayCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_delayCounter~6_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(19));

-- Location: LCCOMB_X82_Y6_N10
\moneyCounter|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Equal0~5_combout\ = (\moneyCounter|s_delayCounter\(17) & (\moneyCounter|s_delayCounter\(19) & (!\moneyCounter|s_delayCounter\(18) & !\moneyCounter|s_delayCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(17),
	datab => \moneyCounter|s_delayCounter\(19),
	datac => \moneyCounter|s_delayCounter\(18),
	datad => \moneyCounter|s_delayCounter\(16),
	combout => \moneyCounter|Equal0~5_combout\);

-- Location: LCCOMB_X83_Y5_N10
\moneyCounter|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~40_combout\ = (\moneyCounter|s_delayCounter\(20) & (\moneyCounter|Add0~39\ $ (GND))) # (!\moneyCounter|s_delayCounter\(20) & (!\moneyCounter|Add0~39\ & VCC))
-- \moneyCounter|Add0~41\ = CARRY((\moneyCounter|s_delayCounter\(20) & !\moneyCounter|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(20),
	datad => VCC,
	cin => \moneyCounter|Add0~39\,
	combout => \moneyCounter|Add0~40_combout\,
	cout => \moneyCounter|Add0~41\);

-- Location: LCCOMB_X84_Y5_N4
\moneyCounter|s_delayCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter~7_combout\ = (!\moneyCounter|Equal0~9_combout\ & \moneyCounter|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \moneyCounter|Equal0~9_combout\,
	datad => \moneyCounter|Add0~40_combout\,
	combout => \moneyCounter|s_delayCounter~7_combout\);

-- Location: FF_X84_Y5_N5
\moneyCounter|s_delayCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_delayCounter~7_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(20));

-- Location: LCCOMB_X83_Y5_N12
\moneyCounter|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~42_combout\ = (\moneyCounter|s_delayCounter\(21) & (!\moneyCounter|Add0~41\)) # (!\moneyCounter|s_delayCounter\(21) & ((\moneyCounter|Add0~41\) # (GND)))
-- \moneyCounter|Add0~43\ = CARRY((!\moneyCounter|Add0~41\) # (!\moneyCounter|s_delayCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(21),
	datad => VCC,
	cin => \moneyCounter|Add0~41\,
	combout => \moneyCounter|Add0~42_combout\,
	cout => \moneyCounter|Add0~43\);

-- Location: LCCOMB_X84_Y5_N2
\moneyCounter|s_delayCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter~8_combout\ = (!\moneyCounter|Equal0~9_combout\ & \moneyCounter|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \moneyCounter|Equal0~9_combout\,
	datad => \moneyCounter|Add0~42_combout\,
	combout => \moneyCounter|s_delayCounter~8_combout\);

-- Location: FF_X84_Y5_N3
\moneyCounter|s_delayCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_delayCounter~8_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(21));

-- Location: LCCOMB_X83_Y5_N14
\moneyCounter|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~44_combout\ = (\moneyCounter|s_delayCounter\(22) & (\moneyCounter|Add0~43\ $ (GND))) # (!\moneyCounter|s_delayCounter\(22) & (!\moneyCounter|Add0~43\ & VCC))
-- \moneyCounter|Add0~45\ = CARRY((\moneyCounter|s_delayCounter\(22) & !\moneyCounter|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(22),
	datad => VCC,
	cin => \moneyCounter|Add0~43\,
	combout => \moneyCounter|Add0~44_combout\,
	cout => \moneyCounter|Add0~45\);

-- Location: LCCOMB_X84_Y5_N12
\moneyCounter|s_delayCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter~9_combout\ = (!\moneyCounter|Equal0~9_combout\ & \moneyCounter|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \moneyCounter|Equal0~9_combout\,
	datad => \moneyCounter|Add0~44_combout\,
	combout => \moneyCounter|s_delayCounter~9_combout\);

-- Location: FF_X84_Y5_N13
\moneyCounter|s_delayCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_delayCounter~9_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(22));

-- Location: LCCOMB_X83_Y5_N16
\moneyCounter|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~46_combout\ = (\moneyCounter|s_delayCounter\(23) & (!\moneyCounter|Add0~45\)) # (!\moneyCounter|s_delayCounter\(23) & ((\moneyCounter|Add0~45\) # (GND)))
-- \moneyCounter|Add0~47\ = CARRY((!\moneyCounter|Add0~45\) # (!\moneyCounter|s_delayCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(23),
	datad => VCC,
	cin => \moneyCounter|Add0~45\,
	combout => \moneyCounter|Add0~46_combout\,
	cout => \moneyCounter|Add0~47\);

-- Location: LCCOMB_X84_Y5_N22
\moneyCounter|s_delayCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter~10_combout\ = (!\moneyCounter|Equal0~9_combout\ & \moneyCounter|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|Equal0~9_combout\,
	datac => \moneyCounter|Add0~46_combout\,
	combout => \moneyCounter|s_delayCounter~10_combout\);

-- Location: FF_X84_Y5_N23
\moneyCounter|s_delayCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_delayCounter~10_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(23));

-- Location: LCCOMB_X84_Y5_N0
\moneyCounter|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Equal0~6_combout\ = (\moneyCounter|s_delayCounter\(23) & (\moneyCounter|s_delayCounter\(21) & (\moneyCounter|s_delayCounter\(20) & \moneyCounter|s_delayCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(23),
	datab => \moneyCounter|s_delayCounter\(21),
	datac => \moneyCounter|s_delayCounter\(20),
	datad => \moneyCounter|s_delayCounter\(22),
	combout => \moneyCounter|Equal0~6_combout\);

-- Location: LCCOMB_X82_Y6_N22
\moneyCounter|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Equal0~3_combout\ = (\moneyCounter|s_delayCounter\(14) & (\moneyCounter|s_delayCounter\(13) & (\moneyCounter|s_delayCounter\(12) & \moneyCounter|s_delayCounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(14),
	datab => \moneyCounter|s_delayCounter\(13),
	datac => \moneyCounter|s_delayCounter\(12),
	datad => \moneyCounter|s_delayCounter\(15),
	combout => \moneyCounter|Equal0~3_combout\);

-- Location: LCCOMB_X82_Y6_N8
\moneyCounter|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Equal0~2_combout\ = (!\moneyCounter|s_delayCounter\(9) & (!\moneyCounter|s_delayCounter\(10) & (!\moneyCounter|s_delayCounter\(8) & !\moneyCounter|s_delayCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(9),
	datab => \moneyCounter|s_delayCounter\(10),
	datac => \moneyCounter|s_delayCounter\(8),
	datad => \moneyCounter|s_delayCounter\(11),
	combout => \moneyCounter|Equal0~2_combout\);

-- Location: LCCOMB_X83_Y6_N0
\moneyCounter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Equal0~0_combout\ = (!\moneyCounter|s_delayCounter\(2) & (!\moneyCounter|s_delayCounter\(1) & (\moneyCounter|s_delayCounter\(0) & !\moneyCounter|s_delayCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(2),
	datab => \moneyCounter|s_delayCounter\(1),
	datac => \moneyCounter|s_delayCounter\(0),
	datad => \moneyCounter|s_delayCounter\(3),
	combout => \moneyCounter|Equal0~0_combout\);

-- Location: LCCOMB_X82_Y6_N18
\moneyCounter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Equal0~1_combout\ = (\moneyCounter|s_delayCounter\(7) & (!\moneyCounter|s_delayCounter\(5) & (!\moneyCounter|s_delayCounter\(6) & !\moneyCounter|s_delayCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(7),
	datab => \moneyCounter|s_delayCounter\(5),
	datac => \moneyCounter|s_delayCounter\(6),
	datad => \moneyCounter|s_delayCounter\(4),
	combout => \moneyCounter|Equal0~1_combout\);

-- Location: LCCOMB_X82_Y6_N4
\moneyCounter|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Equal0~4_combout\ = (\moneyCounter|Equal0~3_combout\ & (\moneyCounter|Equal0~2_combout\ & (\moneyCounter|Equal0~0_combout\ & \moneyCounter|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Equal0~3_combout\,
	datab => \moneyCounter|Equal0~2_combout\,
	datac => \moneyCounter|Equal0~0_combout\,
	datad => \moneyCounter|Equal0~1_combout\,
	combout => \moneyCounter|Equal0~4_combout\);

-- Location: LCCOMB_X83_Y5_N18
\moneyCounter|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~48_combout\ = (\moneyCounter|s_delayCounter\(24) & (\moneyCounter|Add0~47\ $ (GND))) # (!\moneyCounter|s_delayCounter\(24) & (!\moneyCounter|Add0~47\ & VCC))
-- \moneyCounter|Add0~49\ = CARRY((\moneyCounter|s_delayCounter\(24) & !\moneyCounter|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(24),
	datad => VCC,
	cin => \moneyCounter|Add0~47\,
	combout => \moneyCounter|Add0~48_combout\,
	cout => \moneyCounter|Add0~49\);

-- Location: FF_X83_Y5_N19
\moneyCounter|s_delayCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~48_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(24));

-- Location: LCCOMB_X83_Y5_N20
\moneyCounter|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~50_combout\ = (\moneyCounter|s_delayCounter\(25) & (!\moneyCounter|Add0~49\)) # (!\moneyCounter|s_delayCounter\(25) & ((\moneyCounter|Add0~49\) # (GND)))
-- \moneyCounter|Add0~51\ = CARRY((!\moneyCounter|Add0~49\) # (!\moneyCounter|s_delayCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(25),
	datad => VCC,
	cin => \moneyCounter|Add0~49\,
	combout => \moneyCounter|Add0~50_combout\,
	cout => \moneyCounter|Add0~51\);

-- Location: LCCOMB_X82_Y5_N12
\moneyCounter|s_delayCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_delayCounter~11_combout\ = (\moneyCounter|Add0~50_combout\ & !\moneyCounter|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \moneyCounter|Add0~50_combout\,
	datad => \moneyCounter|Equal0~9_combout\,
	combout => \moneyCounter|s_delayCounter~11_combout\);

-- Location: FF_X82_Y5_N13
\moneyCounter|s_delayCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_delayCounter~11_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(25));

-- Location: LCCOMB_X83_Y5_N22
\moneyCounter|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~52_combout\ = (\moneyCounter|s_delayCounter\(26) & (\moneyCounter|Add0~51\ $ (GND))) # (!\moneyCounter|s_delayCounter\(26) & (!\moneyCounter|Add0~51\ & VCC))
-- \moneyCounter|Add0~53\ = CARRY((\moneyCounter|s_delayCounter\(26) & !\moneyCounter|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(26),
	datad => VCC,
	cin => \moneyCounter|Add0~51\,
	combout => \moneyCounter|Add0~52_combout\,
	cout => \moneyCounter|Add0~53\);

-- Location: FF_X83_Y5_N23
\moneyCounter|s_delayCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~52_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(26));

-- Location: LCCOMB_X83_Y5_N24
\moneyCounter|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~54_combout\ = (\moneyCounter|s_delayCounter\(27) & (!\moneyCounter|Add0~53\)) # (!\moneyCounter|s_delayCounter\(27) & ((\moneyCounter|Add0~53\) # (GND)))
-- \moneyCounter|Add0~55\ = CARRY((!\moneyCounter|Add0~53\) # (!\moneyCounter|s_delayCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(27),
	datad => VCC,
	cin => \moneyCounter|Add0~53\,
	combout => \moneyCounter|Add0~54_combout\,
	cout => \moneyCounter|Add0~55\);

-- Location: FF_X83_Y5_N25
\moneyCounter|s_delayCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~54_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(27));

-- Location: LCCOMB_X83_Y5_N26
\moneyCounter|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~56_combout\ = (\moneyCounter|s_delayCounter\(28) & (\moneyCounter|Add0~55\ $ (GND))) # (!\moneyCounter|s_delayCounter\(28) & (!\moneyCounter|Add0~55\ & VCC))
-- \moneyCounter|Add0~57\ = CARRY((\moneyCounter|s_delayCounter\(28) & !\moneyCounter|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(28),
	datad => VCC,
	cin => \moneyCounter|Add0~55\,
	combout => \moneyCounter|Add0~56_combout\,
	cout => \moneyCounter|Add0~57\);

-- Location: FF_X83_Y5_N27
\moneyCounter|s_delayCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~56_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(28));

-- Location: LCCOMB_X83_Y5_N28
\moneyCounter|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~58_combout\ = (\moneyCounter|s_delayCounter\(29) & (!\moneyCounter|Add0~57\)) # (!\moneyCounter|s_delayCounter\(29) & ((\moneyCounter|Add0~57\) # (GND)))
-- \moneyCounter|Add0~59\ = CARRY((!\moneyCounter|Add0~57\) # (!\moneyCounter|s_delayCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_delayCounter\(29),
	datad => VCC,
	cin => \moneyCounter|Add0~57\,
	combout => \moneyCounter|Add0~58_combout\,
	cout => \moneyCounter|Add0~59\);

-- Location: FF_X83_Y5_N29
\moneyCounter|s_delayCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~58_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(29));

-- Location: LCCOMB_X83_Y5_N30
\moneyCounter|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add0~60_combout\ = \moneyCounter|s_delayCounter\(30) $ (!\moneyCounter|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(30),
	cin => \moneyCounter|Add0~59\,
	combout => \moneyCounter|Add0~60_combout\);

-- Location: FF_X83_Y5_N31
\moneyCounter|s_delayCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add0~60_combout\,
	ena => \moneyCounter|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_delayCounter\(30));

-- Location: LCCOMB_X82_Y5_N30
\moneyCounter|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Equal0~7_combout\ = (\moneyCounter|s_delayCounter\(25) & (!\moneyCounter|s_delayCounter\(26) & (!\moneyCounter|s_delayCounter\(27) & !\moneyCounter|s_delayCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(25),
	datab => \moneyCounter|s_delayCounter\(26),
	datac => \moneyCounter|s_delayCounter\(27),
	datad => \moneyCounter|s_delayCounter\(24),
	combout => \moneyCounter|Equal0~7_combout\);

-- Location: LCCOMB_X82_Y5_N0
\moneyCounter|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Equal0~8_combout\ = (!\moneyCounter|s_delayCounter\(30) & (!\moneyCounter|s_delayCounter\(28) & (\moneyCounter|Equal0~7_combout\ & !\moneyCounter|s_delayCounter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_delayCounter\(30),
	datab => \moneyCounter|s_delayCounter\(28),
	datac => \moneyCounter|Equal0~7_combout\,
	datad => \moneyCounter|s_delayCounter\(29),
	combout => \moneyCounter|Equal0~8_combout\);

-- Location: LCCOMB_X82_Y6_N16
\moneyCounter|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Equal0~9_combout\ = (\moneyCounter|Equal0~5_combout\ & (\moneyCounter|Equal0~6_combout\ & (\moneyCounter|Equal0~4_combout\ & \moneyCounter|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Equal0~5_combout\,
	datab => \moneyCounter|Equal0~6_combout\,
	datac => \moneyCounter|Equal0~4_combout\,
	datad => \moneyCounter|Equal0~8_combout\,
	combout => \moneyCounter|Equal0~9_combout\);

-- Location: LCCOMB_X84_Y7_N8
\fsm|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|process_1~0_combout\ = (!\debounce1|s_pulsedOut~q\ & \debounce0|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_pulsedOut~q\,
	datad => \debounce0|s_pulsedOut~q\,
	combout => \fsm|process_1~0_combout\);

-- Location: LCCOMB_X82_Y7_N28
\moneyCounter|s_counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_counter[0]~2_combout\ = (\moneyCounter|LessThan0~0_combout\ & (((\moneyCounter|s_counter\(0) & !\moneyCounter|Equal0~9_combout\)))) # (!\moneyCounter|LessThan0~0_combout\ & (\debounce1|s_pulsedOut~q\ $ ((\moneyCounter|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|LessThan0~0_combout\,
	datab => \debounce1|s_pulsedOut~q\,
	datac => \moneyCounter|s_counter\(0),
	datad => \moneyCounter|Equal0~9_combout\,
	combout => \moneyCounter|s_counter[0]~2_combout\);

-- Location: FF_X82_Y7_N29
\moneyCounter|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_counter\(0));

-- Location: LCCOMB_X83_Y7_N0
\moneyCounter|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add1~0_combout\ = (\debounce1|s_pulsedOut~q\ & \moneyCounter|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce1|s_pulsedOut~q\,
	datad => \moneyCounter|s_counter\(0),
	combout => \moneyCounter|Add1~0_combout\);

-- Location: LCCOMB_X83_Y7_N16
\moneyCounter|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add1~2_cout\ = CARRY((\moneyCounter|Add1~0_combout\ & \debounce1|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Add1~0_combout\,
	datab => \debounce1|s_pulsedOut~q\,
	datad => VCC,
	cout => \moneyCounter|Add1~2_cout\);

-- Location: LCCOMB_X83_Y7_N18
\moneyCounter|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add1~3_combout\ = (\moneyCounter|s_counter\(1) & ((\fsm|process_1~0_combout\ & (\moneyCounter|Add1~2_cout\ & VCC)) # (!\fsm|process_1~0_combout\ & (!\moneyCounter|Add1~2_cout\)))) # (!\moneyCounter|s_counter\(1) & ((\fsm|process_1~0_combout\ 
-- & (!\moneyCounter|Add1~2_cout\)) # (!\fsm|process_1~0_combout\ & ((\moneyCounter|Add1~2_cout\) # (GND)))))
-- \moneyCounter|Add1~4\ = CARRY((\moneyCounter|s_counter\(1) & (!\fsm|process_1~0_combout\ & !\moneyCounter|Add1~2_cout\)) # (!\moneyCounter|s_counter\(1) & ((!\moneyCounter|Add1~2_cout\) # (!\fsm|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_counter\(1),
	datab => \fsm|process_1~0_combout\,
	datad => VCC,
	cin => \moneyCounter|Add1~2_cout\,
	combout => \moneyCounter|Add1~3_combout\,
	cout => \moneyCounter|Add1~4\);

-- Location: LCCOMB_X83_Y7_N26
\moneyCounter|s_counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_counter[1]~0_combout\ = (\moneyCounter|LessThan0~0_combout\ & (!\moneyCounter|Equal0~9_combout\ & (\moneyCounter|s_counter\(1)))) # (!\moneyCounter|LessThan0~0_combout\ & (((\moneyCounter|Add1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Equal0~9_combout\,
	datab => \moneyCounter|LessThan0~0_combout\,
	datac => \moneyCounter|s_counter\(1),
	datad => \moneyCounter|Add1~3_combout\,
	combout => \moneyCounter|s_counter[1]~0_combout\);

-- Location: FF_X83_Y7_N27
\moneyCounter|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_counter\(1));

-- Location: LCCOMB_X83_Y7_N20
\moneyCounter|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add1~5_combout\ = ((\moneyCounter|s_counter\(2) $ (\debounce1|s_pulsedOut~q\ $ (!\moneyCounter|Add1~4\)))) # (GND)
-- \moneyCounter|Add1~6\ = CARRY((\moneyCounter|s_counter\(2) & ((\debounce1|s_pulsedOut~q\) # (!\moneyCounter|Add1~4\))) # (!\moneyCounter|s_counter\(2) & (\debounce1|s_pulsedOut~q\ & !\moneyCounter|Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_counter\(2),
	datab => \debounce1|s_pulsedOut~q\,
	datad => VCC,
	cin => \moneyCounter|Add1~4\,
	combout => \moneyCounter|Add1~5_combout\,
	cout => \moneyCounter|Add1~6\);

-- Location: LCCOMB_X83_Y7_N24
\moneyCounter|s_counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|s_counter[2]~1_combout\ = (\moneyCounter|LessThan0~0_combout\ & (!\moneyCounter|Equal0~9_combout\ & (\moneyCounter|s_counter\(2)))) # (!\moneyCounter|LessThan0~0_combout\ & (((\moneyCounter|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Equal0~9_combout\,
	datab => \moneyCounter|LessThan0~0_combout\,
	datac => \moneyCounter|s_counter\(2),
	datad => \moneyCounter|Add1~5_combout\,
	combout => \moneyCounter|s_counter[2]~1_combout\);

-- Location: FF_X83_Y7_N25
\moneyCounter|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|s_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_counter\(2));

-- Location: LCCOMB_X83_Y7_N2
\moneyCounter|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|LessThan0~0_combout\ = (\moneyCounter|s_counter\(3) & ((\moneyCounter|s_counter\(2)) # ((\moneyCounter|s_counter\(1)) # (\moneyCounter|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_counter\(2),
	datab => \moneyCounter|s_counter\(3),
	datac => \moneyCounter|s_counter\(1),
	datad => \moneyCounter|s_counter\(0),
	combout => \moneyCounter|LessThan0~0_combout\);

-- Location: LCCOMB_X83_Y7_N22
\moneyCounter|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add1~7_combout\ = \moneyCounter|Add1~6\ $ (\moneyCounter|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \moneyCounter|s_counter\(3),
	cin => \moneyCounter|Add1~6\,
	combout => \moneyCounter|Add1~7_combout\);

-- Location: LCCOMB_X83_Y7_N28
\moneyCounter|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Add1~9_combout\ = (\moneyCounter|LessThan0~0_combout\ & ((!\moneyCounter|Equal0~9_combout\))) # (!\moneyCounter|LessThan0~0_combout\ & (\moneyCounter|Add1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|LessThan0~0_combout\,
	datac => \moneyCounter|Add1~7_combout\,
	datad => \moneyCounter|Equal0~9_combout\,
	combout => \moneyCounter|Add1~9_combout\);

-- Location: FF_X83_Y7_N29
\moneyCounter|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \moneyCounter|Add1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moneyCounter|s_counter\(3));

-- Location: LCCOMB_X83_Y7_N30
\dec7segUnits|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segUnits|decOut_n~0_combout\ = (\moneyCounter|s_counter\(3) & ((\moneyCounter|s_counter\(1)) # (\moneyCounter|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_counter\(3),
	datac => \moneyCounter|s_counter\(1),
	datad => \moneyCounter|s_counter\(2),
	combout => \dec7segUnits|decOut_n~0_combout\);

-- Location: LCCOMB_X83_Y7_N6
\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \moneyCounter|s_counter\(1) $ (VCC)
-- \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\moneyCounter|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|s_counter\(1),
	datad => VCC,
	combout => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X83_Y7_N8
\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\moneyCounter|s_counter\(2) & (\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\moneyCounter|s_counter\(2) & 
-- (!\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\moneyCounter|s_counter\(2) & !\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_counter\(2),
	datad => VCC,
	cin => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X83_Y7_N10
\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\moneyCounter|s_counter\(3) & (\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\moneyCounter|s_counter\(3) & 
-- (!\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\moneyCounter|s_counter\(3) & !\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moneyCounter|s_counter\(3),
	datad => VCC,
	cin => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X83_Y7_N12
\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X83_Y7_N14
\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ = (\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\moneyCounter|s_counter\(1)))) # 
-- (!\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \moneyCounter|s_counter\(1),
	datad => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\);

-- Location: LCCOMB_X83_Y7_N4
\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\moneyCounter|s_counter\(3)))) # 
-- (!\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => \moneyCounter|s_counter\(3),
	datad => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

-- Location: LCCOMB_X84_Y7_N20
\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ = (\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\moneyCounter|s_counter\(2)))) # 
-- (!\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \moneyCounter|s_counter\(2),
	datad => \moneyCounter|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\);

-- Location: LCCOMB_X83_Y3_N24
\dec7segTens|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segTens|decOut_n~0_combout\ = (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\moneyCounter|s_counter\(0) & (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ $ 
-- (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\)))) # (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & 
-- (\moneyCounter|s_counter\(0) $ (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datab => \moneyCounter|s_counter\(0),
	datac => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	combout => \dec7segTens|decOut_n~0_combout\);

-- Location: LCCOMB_X83_Y3_N6
\dec7segTens|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segTens|decOut_n~1_combout\ = (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & ((\moneyCounter|s_counter\(0) & (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)) # (!\moneyCounter|s_counter\(0) & 
-- ((\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\))))) # (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & 
-- (\moneyCounter|s_counter\(0) $ (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datab => \moneyCounter|s_counter\(0),
	datac => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	combout => \dec7segTens|decOut_n~1_combout\);

-- Location: LCCOMB_X83_Y3_N4
\dec7segTens|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segTens|decOut_n~2_combout\ = (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & 
-- ((\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\) # (!\moneyCounter|s_counter\(0))))) # (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & 
-- (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & (!\moneyCounter|s_counter\(0) & !\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datab => \moneyCounter|s_counter\(0),
	datac => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	combout => \dec7segTens|decOut_n~2_combout\);

-- Location: LCCOMB_X83_Y3_N10
\dec7segTens|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segTens|decOut_n~3_combout\ = (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & ((\moneyCounter|s_counter\(0) & ((\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\))) # (!\moneyCounter|s_counter\(0) 
-- & (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & !\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\)))) # (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & 
-- (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\moneyCounter|s_counter\(0) $ (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datab => \moneyCounter|s_counter\(0),
	datac => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	combout => \dec7segTens|decOut_n~3_combout\);

-- Location: LCCOMB_X83_Y3_N12
\dec7segTens|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segTens|decOut_n~4_combout\ = (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & (\moneyCounter|s_counter\(0) & (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\))) # 
-- (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & ((\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & ((!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\))) # 
-- (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\ & (\moneyCounter|s_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datab => \moneyCounter|s_counter\(0),
	datac => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	combout => \dec7segTens|decOut_n~4_combout\);

-- Location: LCCOMB_X83_Y3_N22
\dec7segTens|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segTens|decOut_n~5_combout\ = (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & ((\moneyCounter|s_counter\(0)) # 
-- (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\)))) # (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & (\moneyCounter|s_counter\(0) & 
-- (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ $ (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datab => \moneyCounter|s_counter\(0),
	datac => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	combout => \dec7segTens|decOut_n~5_combout\);

-- Location: LCCOMB_X83_Y3_N16
\dec7segTens|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segTens|decOut_n~6_combout\ = (\moneyCounter|s_counter\(0) & (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ & (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ $ 
-- (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\)))) # (!\moneyCounter|s_counter\(0) & (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\ & 
-- (\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ $ (!\moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[13]~1_combout\,
	datab => \moneyCounter|s_counter\(0),
	datac => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => \moneyCounter|Mod0|auto_generated|divider|divider|StageOut[14]~2_combout\,
	combout => \dec7segTens|decOut_n~6_combout\);

-- Location: LCCOMB_X84_Y7_N0
\fsm|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|Selector3~1_combout\ = (\fsm|Selector3~0_combout\) # ((\debounce1|s_pulsedOut~q\ & !\fsm|fstate.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_pulsedOut~q\,
	datac => \fsm|fstate.E0~q\,
	datad => \fsm|Selector3~0_combout\,
	combout => \fsm|Selector3~1_combout\);

-- Location: LCCOMB_X84_Y7_N24
\fsm|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr6~0_combout\ = (!\fsm|reg_fstate.E1~1_combout\ & (((!\fsm|Selector3~1_combout\ & !\fsm|Selector5~1_combout\)) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|Selector3~1_combout\,
	datab => \fsm|Selector5~1_combout\,
	datac => \KEY[0]~input_o\,
	datad => \fsm|reg_fstate.E1~1_combout\,
	combout => \fsm|WideOr6~0_combout\);

-- Location: LCCOMB_X84_Y7_N16
\fsm|currentState[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|currentState\(2) = (\fsm|Selector4~0_combout\) # ((\fsm|Selector5~1_combout\) # ((\debounce1|s_pulsedOut~q\ & \fsm|fstate.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_pulsedOut~q\,
	datab => \fsm|Selector4~0_combout\,
	datac => \fsm|fstate.E1~q\,
	datad => \fsm|Selector5~1_combout\,
	combout => \fsm|currentState\(2));

-- Location: LCCOMB_X80_Y7_N8
\fsm|currentState[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|currentState[1]~0_combout\ = (\KEY[0]~input_o\ & ((\fsm|reg_fstate.E2~0_combout\) # (\fsm|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|reg_fstate.E2~0_combout\,
	datac => \fsm|Selector3~1_combout\,
	datad => \KEY[0]~input_o\,
	combout => \fsm|currentState[1]~0_combout\);

-- Location: LCCOMB_X80_Y7_N14
\dec7segState|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segState|decOut_n~0_combout\ = (!\fsm|currentState[1]~0_combout\ & (\fsm|WideOr6~0_combout\ $ (((!\KEY[0]~input_o\) # (!\fsm|currentState\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr6~0_combout\,
	datab => \fsm|currentState\(2),
	datac => \fsm|currentState[1]~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \dec7segState|decOut_n~0_combout\);

-- Location: LCCOMB_X80_Y7_N4
\dec7segState|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segState|decOut_n~1_combout\ = (\fsm|currentState\(2) & (\KEY[0]~input_o\ & (\fsm|WideOr6~0_combout\ $ (!\fsm|currentState[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr6~0_combout\,
	datab => \fsm|currentState\(2),
	datac => \fsm|currentState[1]~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \dec7segState|decOut_n~1_combout\);

-- Location: LCCOMB_X80_Y7_N22
\dec7segState|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segState|Equal14~0_combout\ = (\fsm|WideOr6~0_combout\ & (\fsm|currentState[1]~0_combout\ & ((!\KEY[0]~input_o\) # (!\fsm|currentState\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr6~0_combout\,
	datab => \fsm|currentState\(2),
	datac => \fsm|currentState[1]~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \dec7segState|Equal14~0_combout\);

-- Location: LCCOMB_X80_Y7_N28
\dec7segState|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segState|decOut_n~2_combout\ = (\fsm|WideOr6~0_combout\ & (\fsm|currentState\(2) & (!\fsm|currentState[1]~0_combout\ & \KEY[0]~input_o\))) # (!\fsm|WideOr6~0_combout\ & (\fsm|currentState[1]~0_combout\ $ (((!\KEY[0]~input_o\) # 
-- (!\fsm|currentState\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr6~0_combout\,
	datab => \fsm|currentState\(2),
	datac => \fsm|currentState[1]~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \dec7segState|decOut_n~2_combout\);

-- Location: LCCOMB_X80_Y7_N6
\dec7segState|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segState|decOut_n~3_combout\ = ((\fsm|currentState\(2) & (!\fsm|currentState[1]~0_combout\ & \KEY[0]~input_o\))) # (!\fsm|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr6~0_combout\,
	datab => \fsm|currentState\(2),
	datac => \fsm|currentState[1]~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \dec7segState|decOut_n~3_combout\);

-- Location: LCCOMB_X80_Y7_N12
\dec7segState|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segState|decOut_n~4_combout\ = (\fsm|WideOr6~0_combout\ & (\fsm|currentState[1]~0_combout\ & ((!\KEY[0]~input_o\) # (!\fsm|currentState\(2))))) # (!\fsm|WideOr6~0_combout\ & (((\fsm|currentState[1]~0_combout\) # (!\KEY[0]~input_o\)) # 
-- (!\fsm|currentState\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr6~0_combout\,
	datab => \fsm|currentState\(2),
	datac => \fsm|currentState[1]~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \dec7segState|decOut_n~4_combout\);

-- Location: LCCOMB_X84_Y7_N4
\fsm|currentState[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|currentState[1]~1_combout\ = (!\fsm|reg_fstate.E2~0_combout\ & (!\fsm|Selector3~0_combout\ & ((\fsm|fstate.E0~q\) # (!\debounce1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_pulsedOut~q\,
	datab => \fsm|reg_fstate.E2~0_combout\,
	datac => \fsm|fstate.E0~q\,
	datad => \fsm|Selector3~0_combout\,
	combout => \fsm|currentState[1]~1_combout\);

-- Location: LCCOMB_X80_Y7_N10
\dec7segState|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7segState|decOut_n~5_combout\ = (\KEY[0]~input_o\ & ((\fsm|currentState\(2) & ((\fsm|WideOr6~0_combout\) # (\fsm|currentState[1]~1_combout\))) # (!\fsm|currentState\(2) & ((!\fsm|currentState[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr6~0_combout\,
	datab => \fsm|currentState\(2),
	datac => \fsm|currentState[1]~1_combout\,
	datad => \KEY[0]~input_o\,
	combout => \dec7segState|decOut_n~5_combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(7) <= \HEX5[7]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


