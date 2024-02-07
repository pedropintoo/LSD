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

-- DATE "04/18/2023 18:47:23"

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

ENTITY 	TimerDemo IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0)
	);
END TimerDemo;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerDemo IS
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
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ResetDebounce|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \ResetDebounce|s_dirtyIn~q\ : std_logic;
SIGNAL \ResetDebounce|s_previousIn~q\ : std_logic;
SIGNAL \ResetDebounce|Add0~0_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt[17]~4_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~1\ : std_logic;
SIGNAL \ResetDebounce|Add0~2_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~3\ : std_logic;
SIGNAL \ResetDebounce|Add0~4_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~5\ : std_logic;
SIGNAL \ResetDebounce|Add0~6_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~7\ : std_logic;
SIGNAL \ResetDebounce|Add0~8_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~9\ : std_logic;
SIGNAL \ResetDebounce|Add0~10_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~11\ : std_logic;
SIGNAL \ResetDebounce|Add0~12_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~13\ : std_logic;
SIGNAL \ResetDebounce|Add0~14_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~15\ : std_logic;
SIGNAL \ResetDebounce|Add0~16_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~17\ : std_logic;
SIGNAL \ResetDebounce|Add0~18_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~19\ : std_logic;
SIGNAL \ResetDebounce|Add0~20_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~21\ : std_logic;
SIGNAL \ResetDebounce|Add0~22_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~23\ : std_logic;
SIGNAL \ResetDebounce|Add0~24_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~25\ : std_logic;
SIGNAL \ResetDebounce|Add0~26_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~27\ : std_logic;
SIGNAL \ResetDebounce|Add0~28_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~29\ : std_logic;
SIGNAL \ResetDebounce|Add0~30_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~31\ : std_logic;
SIGNAL \ResetDebounce|Add0~32_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~33\ : std_logic;
SIGNAL \ResetDebounce|Add0~34_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~35\ : std_logic;
SIGNAL \ResetDebounce|Add0~36_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \ResetDebounce|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \ResetDebounce|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~37\ : std_logic;
SIGNAL \ResetDebounce|Add0~39\ : std_logic;
SIGNAL \ResetDebounce|Add0~40_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~41\ : std_logic;
SIGNAL \ResetDebounce|Add0~42_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \ResetDebounce|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \ResetDebounce|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \ResetDebounce|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \ResetDebounce|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt[17]~2_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt[17]~3_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~38_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \ResetDebounce|LessThan0~0_combout\ : std_logic;
SIGNAL \ResetDebounce|LessThan0~1_combout\ : std_logic;
SIGNAL \ResetDebounce|LessThan0~2_combout\ : std_logic;
SIGNAL \ResetDebounce|LessThan0~4_combout\ : std_logic;
SIGNAL \ResetDebounce|LessThan0~3_combout\ : std_logic;
SIGNAL \ResetDebounce|LessThan0~5_combout\ : std_logic;
SIGNAL \ResetDebounce|LessThan0~6_combout\ : std_logic;
SIGNAL \ResetDebounce|LessThan0~7_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt[17]~0_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \ResetDebounce|Add0~43\ : std_logic;
SIGNAL \ResetDebounce|Add0~44_combout\ : std_logic;
SIGNAL \ResetDebounce|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \ResetDebounce|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \ResetDebounce|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \ResetDebounce|s_pulsedOut~q\ : std_logic;
SIGNAL \timer|Equal0~1_combout\ : std_logic;
SIGNAL \timer|Add0~0_combout\ : std_logic;
SIGNAL \timer|s_value~1_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[0]~26_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~1_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~0_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~2_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~3_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~4_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~5_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~6_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~7_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~8_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[0]~27\ : std_logic;
SIGNAL \pulse_gen|s_counter[1]~28_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[1]~29\ : std_logic;
SIGNAL \pulse_gen|s_counter[2]~30_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[2]~31\ : std_logic;
SIGNAL \pulse_gen|s_counter[3]~32_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[3]~33\ : std_logic;
SIGNAL \pulse_gen|s_counter[4]~34_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[4]~35\ : std_logic;
SIGNAL \pulse_gen|s_counter[5]~36_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[5]~37\ : std_logic;
SIGNAL \pulse_gen|s_counter[6]~38_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[6]~39\ : std_logic;
SIGNAL \pulse_gen|s_counter[7]~40_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[7]~41\ : std_logic;
SIGNAL \pulse_gen|s_counter[8]~42_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[8]~43\ : std_logic;
SIGNAL \pulse_gen|s_counter[9]~44_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[9]~45\ : std_logic;
SIGNAL \pulse_gen|s_counter[10]~46_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[10]~47\ : std_logic;
SIGNAL \pulse_gen|s_counter[11]~48_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[11]~49\ : std_logic;
SIGNAL \pulse_gen|s_counter[12]~50_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[12]~51\ : std_logic;
SIGNAL \pulse_gen|s_counter[13]~52_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[13]~53\ : std_logic;
SIGNAL \pulse_gen|s_counter[14]~54_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[14]~55\ : std_logic;
SIGNAL \pulse_gen|s_counter[15]~56_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[15]~57\ : std_logic;
SIGNAL \pulse_gen|s_counter[16]~58_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[16]~59\ : std_logic;
SIGNAL \pulse_gen|s_counter[17]~60_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[17]~61\ : std_logic;
SIGNAL \pulse_gen|s_counter[18]~62_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[18]~63\ : std_logic;
SIGNAL \pulse_gen|s_counter[19]~64_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[19]~65\ : std_logic;
SIGNAL \pulse_gen|s_counter[20]~66_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[20]~67\ : std_logic;
SIGNAL \pulse_gen|s_counter[21]~68_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[21]~69\ : std_logic;
SIGNAL \pulse_gen|s_counter[22]~70_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[22]~71\ : std_logic;
SIGNAL \pulse_gen|s_counter[23]~72_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[23]~73\ : std_logic;
SIGNAL \pulse_gen|s_counter[24]~74_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[24]~75\ : std_logic;
SIGNAL \pulse_gen|s_counter[25]~76_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~1\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~3\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~5\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~7\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~9\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~11\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~13\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~15\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~17\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~19\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~21\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~23\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~25\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~27\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~29\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~31\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~33\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~35\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~37\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[26]~38_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~36_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~32_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~34_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~26_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~28_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~22_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~18_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~20_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~16_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~14_combout\ : std_logic;
SIGNAL \timer|process_0~8_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~24_combout\ : std_logic;
SIGNAL \timer|process_0~1_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \StartStopDebounce|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_dirtyIn~q\ : std_logic;
SIGNAL \StartStopDebounce|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_previousIn~q\ : std_logic;
SIGNAL \StartStopDebounce|Add0~11\ : std_logic;
SIGNAL \StartStopDebounce|Add0~13\ : std_logic;
SIGNAL \StartStopDebounce|Add0~14_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt[0]~3_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~15\ : std_logic;
SIGNAL \StartStopDebounce|Add0~16_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~17\ : std_logic;
SIGNAL \StartStopDebounce|Add0~18_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~19\ : std_logic;
SIGNAL \StartStopDebounce|Add0~20_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~21\ : std_logic;
SIGNAL \StartStopDebounce|Add0~22_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~23\ : std_logic;
SIGNAL \StartStopDebounce|Add0~24_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~25\ : std_logic;
SIGNAL \StartStopDebounce|Add0~26_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~27\ : std_logic;
SIGNAL \StartStopDebounce|Add0~28_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~29\ : std_logic;
SIGNAL \StartStopDebounce|Add0~30_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~31\ : std_logic;
SIGNAL \StartStopDebounce|Add0~32_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~33\ : std_logic;
SIGNAL \StartStopDebounce|Add0~34_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~35\ : std_logic;
SIGNAL \StartStopDebounce|Add0~36_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~37\ : std_logic;
SIGNAL \StartStopDebounce|Add0~38_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~39\ : std_logic;
SIGNAL \StartStopDebounce|Add0~40_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~41\ : std_logic;
SIGNAL \StartStopDebounce|Add0~42_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \StartStopDebounce|LessThan0~6_combout\ : std_logic;
SIGNAL \StartStopDebounce|LessThan0~3_combout\ : std_logic;
SIGNAL \StartStopDebounce|LessThan0~4_combout\ : std_logic;
SIGNAL \StartStopDebounce|LessThan0~0_combout\ : std_logic;
SIGNAL \StartStopDebounce|LessThan0~1_combout\ : std_logic;
SIGNAL \StartStopDebounce|LessThan0~2_combout\ : std_logic;
SIGNAL \StartStopDebounce|LessThan0~5_combout\ : std_logic;
SIGNAL \StartStopDebounce|LessThan0~7_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt[0]~0_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~12_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~43\ : std_logic;
SIGNAL \StartStopDebounce|Add0~44_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~1\ : std_logic;
SIGNAL \StartStopDebounce|Add0~2_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~3\ : std_logic;
SIGNAL \StartStopDebounce|Add0~4_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~5\ : std_logic;
SIGNAL \StartStopDebounce|Add0~6_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~7\ : std_logic;
SIGNAL \StartStopDebounce|Add0~8_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \StartStopDebounce|Add0~9\ : std_logic;
SIGNAL \StartStopDebounce|Add0~10_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \StartStopDebounce|s_pulsedOut~q\ : std_logic;
SIGNAL \timer|s_mode~0_combout\ : std_logic;
SIGNAL \timer|s_mode~1_combout\ : std_logic;
SIGNAL \timer|s_mode~q\ : std_logic;
SIGNAL \timer|process_0~0_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~0_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~4_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~2_combout\ : std_logic;
SIGNAL \timer|process_0~9_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~8_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~6_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~10_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~12_combout\ : std_logic;
SIGNAL \timer|process_0~10_combout\ : std_logic;
SIGNAL \timer|process_0~11_combout\ : std_logic;
SIGNAL \timer|process_0~12_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~30_combout\ : std_logic;
SIGNAL \timer|process_0~13_combout\ : std_logic;
SIGNAL \timer|process_0~14_combout\ : std_logic;
SIGNAL \timer|process_0~5_combout\ : std_logic;
SIGNAL \timer|process_0~2_combout\ : std_logic;
SIGNAL \timer|process_0~3_combout\ : std_logic;
SIGNAL \timer|process_0~4_combout\ : std_logic;
SIGNAL \timer|process_0~6_combout\ : std_logic;
SIGNAL \timer|process_0~7_combout\ : std_logic;
SIGNAL \timer|process_0~15_combout\ : std_logic;
SIGNAL \timer|s_value[4]~2_combout\ : std_logic;
SIGNAL \timer|Add0~1\ : std_logic;
SIGNAL \timer|Add0~2_combout\ : std_logic;
SIGNAL \timer|s_value~7_combout\ : std_logic;
SIGNAL \timer|Add0~3\ : std_logic;
SIGNAL \timer|Add0~4_combout\ : std_logic;
SIGNAL \timer|s_value~6_combout\ : std_logic;
SIGNAL \timer|Add0~5\ : std_logic;
SIGNAL \timer|Add0~6_combout\ : std_logic;
SIGNAL \timer|s_value~5_combout\ : std_logic;
SIGNAL \timer|Equal0~0_combout\ : std_logic;
SIGNAL \timer|s_value[4]~0_combout\ : std_logic;
SIGNAL \timer|Add0~7\ : std_logic;
SIGNAL \timer|Add0~8_combout\ : std_logic;
SIGNAL \timer|s_value~4_combout\ : std_logic;
SIGNAL \timer|Add0~9\ : std_logic;
SIGNAL \timer|Add0~10_combout\ : std_logic;
SIGNAL \timer|s_value~3_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \unid_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \unid_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \unid_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \unid_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \unid_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \unid_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \unid_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \dezen_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \dezen_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \dezen_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \dezen_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \dezen_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \dezen_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \dezen_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \timer|s_startReady~q\ : std_logic;
SIGNAL \pulse_gen|s_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \timer|s_value\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ResetDebounce|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \StartStopDebounce|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \timer|ALT_INV_s_startReady~q\ : std_logic;
SIGNAL \dezen_7seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \unid_7seg|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\timer|ALT_INV_s_startReady~q\ <= NOT \timer|s_startReady~q\;
\dezen_7seg|ALT_INV_Mux0~0_combout\ <= NOT \dezen_7seg|Mux0~0_combout\;
\unid_7seg|ALT_INV_Mux0~0_combout\ <= NOT \unid_7seg|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unid_7seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unid_7seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unid_7seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unid_7seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unid_7seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unid_7seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \unid_7seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezen_7seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezen_7seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezen_7seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezen_7seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezen_7seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezen_7seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dezen_7seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer|s_mode~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer|ALT_INV_s_startReady~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

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

-- Location: LCCOMB_X111_Y61_N14
\ResetDebounce|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \ResetDebounce|s_dirtyIn~0_combout\);

-- Location: FF_X111_Y61_N15
\ResetDebounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_dirtyIn~q\);

-- Location: FF_X111_Y61_N7
\ResetDebounce|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ResetDebounce|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_previousIn~q\);

-- Location: LCCOMB_X110_Y62_N10
\ResetDebounce|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~0_combout\ = \ResetDebounce|s_debounceCnt\(0) $ (VCC)
-- \ResetDebounce|Add0~1\ = CARRY(\ResetDebounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \ResetDebounce|Add0~0_combout\,
	cout => \ResetDebounce|Add0~1\);

-- Location: LCCOMB_X111_Y61_N20
\ResetDebounce|s_debounceCnt[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt[17]~4_combout\ = (\ResetDebounce|s_previousIn~q\ & (\ResetDebounce|s_dirtyIn~q\ & ((!\ResetDebounce|LessThan0~7_combout\) # (!\ResetDebounce|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_previousIn~q\,
	datab => \ResetDebounce|s_dirtyIn~q\,
	datac => \ResetDebounce|s_debounceCnt\(22),
	datad => \ResetDebounce|LessThan0~7_combout\,
	combout => \ResetDebounce|s_debounceCnt[17]~4_combout\);

-- Location: LCCOMB_X111_Y62_N4
\ResetDebounce|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~24_combout\ = (\ResetDebounce|Add0~0_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ResetDebounce|Add0~0_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~24_combout\);

-- Location: FF_X111_Y62_N5
\ResetDebounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~24_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(0));

-- Location: LCCOMB_X110_Y62_N12
\ResetDebounce|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~2_combout\ = (\ResetDebounce|s_debounceCnt\(1) & (\ResetDebounce|Add0~1\ & VCC)) # (!\ResetDebounce|s_debounceCnt\(1) & (!\ResetDebounce|Add0~1\))
-- \ResetDebounce|Add0~3\ = CARRY((!\ResetDebounce|s_debounceCnt\(1) & !\ResetDebounce|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \ResetDebounce|Add0~1\,
	combout => \ResetDebounce|Add0~2_combout\,
	cout => \ResetDebounce|Add0~3\);

-- Location: LCCOMB_X111_Y62_N2
\ResetDebounce|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~20_combout\ = (\ResetDebounce|Add0~2_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|Add0~2_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~20_combout\);

-- Location: FF_X111_Y62_N3
\ResetDebounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~20_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(1));

-- Location: LCCOMB_X110_Y62_N14
\ResetDebounce|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~4_combout\ = (\ResetDebounce|s_debounceCnt\(2) & ((GND) # (!\ResetDebounce|Add0~3\))) # (!\ResetDebounce|s_debounceCnt\(2) & (\ResetDebounce|Add0~3\ $ (GND)))
-- \ResetDebounce|Add0~5\ = CARRY((\ResetDebounce|s_debounceCnt\(2)) # (!\ResetDebounce|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \ResetDebounce|Add0~3\,
	combout => \ResetDebounce|Add0~4_combout\,
	cout => \ResetDebounce|Add0~5\);

-- Location: LCCOMB_X111_Y62_N0
\ResetDebounce|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~21_combout\ = (\ResetDebounce|Add0~4_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|Add0~4_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~21_combout\);

-- Location: FF_X111_Y62_N1
\ResetDebounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~21_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(2));

-- Location: LCCOMB_X110_Y62_N16
\ResetDebounce|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~6_combout\ = (\ResetDebounce|s_debounceCnt\(3) & (\ResetDebounce|Add0~5\ & VCC)) # (!\ResetDebounce|s_debounceCnt\(3) & (!\ResetDebounce|Add0~5\))
-- \ResetDebounce|Add0~7\ = CARRY((!\ResetDebounce|s_debounceCnt\(3) & !\ResetDebounce|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \ResetDebounce|Add0~5\,
	combout => \ResetDebounce|Add0~6_combout\,
	cout => \ResetDebounce|Add0~7\);

-- Location: LCCOMB_X111_Y62_N6
\ResetDebounce|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~22_combout\ = (\ResetDebounce|Add0~6_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ResetDebounce|Add0~6_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~22_combout\);

-- Location: FF_X111_Y62_N7
\ResetDebounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~22_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(3));

-- Location: LCCOMB_X110_Y62_N18
\ResetDebounce|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~8_combout\ = (\ResetDebounce|s_debounceCnt\(4) & ((GND) # (!\ResetDebounce|Add0~7\))) # (!\ResetDebounce|s_debounceCnt\(4) & (\ResetDebounce|Add0~7\ $ (GND)))
-- \ResetDebounce|Add0~9\ = CARRY((\ResetDebounce|s_debounceCnt\(4)) # (!\ResetDebounce|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \ResetDebounce|Add0~7\,
	combout => \ResetDebounce|Add0~8_combout\,
	cout => \ResetDebounce|Add0~9\);

-- Location: LCCOMB_X111_Y62_N8
\ResetDebounce|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~23_combout\ = (\ResetDebounce|Add0~8_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|Add0~8_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~23_combout\);

-- Location: FF_X111_Y62_N9
\ResetDebounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~23_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(4));

-- Location: LCCOMB_X110_Y62_N20
\ResetDebounce|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~10_combout\ = (\ResetDebounce|s_debounceCnt\(5) & (\ResetDebounce|Add0~9\ & VCC)) # (!\ResetDebounce|s_debounceCnt\(5) & (!\ResetDebounce|Add0~9\))
-- \ResetDebounce|Add0~11\ = CARRY((!\ResetDebounce|s_debounceCnt\(5) & !\ResetDebounce|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \ResetDebounce|Add0~9\,
	combout => \ResetDebounce|Add0~10_combout\,
	cout => \ResetDebounce|Add0~11\);

-- Location: LCCOMB_X111_Y62_N14
\ResetDebounce|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~27_combout\ = (\ResetDebounce|Add0~10_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|Add0~10_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~27_combout\);

-- Location: FF_X111_Y62_N15
\ResetDebounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~27_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(5));

-- Location: LCCOMB_X110_Y62_N22
\ResetDebounce|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~12_combout\ = (\ResetDebounce|s_debounceCnt\(6) & ((GND) # (!\ResetDebounce|Add0~11\))) # (!\ResetDebounce|s_debounceCnt\(6) & (\ResetDebounce|Add0~11\ $ (GND)))
-- \ResetDebounce|Add0~13\ = CARRY((\ResetDebounce|s_debounceCnt\(6)) # (!\ResetDebounce|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \ResetDebounce|Add0~11\,
	combout => \ResetDebounce|Add0~12_combout\,
	cout => \ResetDebounce|Add0~13\);

-- Location: LCCOMB_X110_Y61_N28
\ResetDebounce|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~1_combout\ = (\ResetDebounce|s_debounceCnt[17]~0_combout\ & ((\ResetDebounce|Add0~12_combout\) # (!\ResetDebounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_previousIn~q\,
	datac => \ResetDebounce|Add0~12_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~0_combout\,
	combout => \ResetDebounce|s_debounceCnt~1_combout\);

-- Location: FF_X110_Y61_N29
\ResetDebounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~1_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(6));

-- Location: LCCOMB_X110_Y62_N24
\ResetDebounce|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~14_combout\ = (\ResetDebounce|s_debounceCnt\(7) & (\ResetDebounce|Add0~13\ & VCC)) # (!\ResetDebounce|s_debounceCnt\(7) & (!\ResetDebounce|Add0~13\))
-- \ResetDebounce|Add0~15\ = CARRY((!\ResetDebounce|s_debounceCnt\(7) & !\ResetDebounce|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \ResetDebounce|Add0~13\,
	combout => \ResetDebounce|Add0~14_combout\,
	cout => \ResetDebounce|Add0~15\);

-- Location: LCCOMB_X110_Y62_N0
\ResetDebounce|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~12_combout\ = (\ResetDebounce|Add0~14_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|Add0~14_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~12_combout\);

-- Location: FF_X110_Y62_N1
\ResetDebounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~12_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(7));

-- Location: LCCOMB_X110_Y62_N26
\ResetDebounce|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~16_combout\ = (\ResetDebounce|s_debounceCnt\(8) & ((GND) # (!\ResetDebounce|Add0~15\))) # (!\ResetDebounce|s_debounceCnt\(8) & (\ResetDebounce|Add0~15\ $ (GND)))
-- \ResetDebounce|Add0~17\ = CARRY((\ResetDebounce|s_debounceCnt\(8)) # (!\ResetDebounce|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \ResetDebounce|Add0~15\,
	combout => \ResetDebounce|Add0~16_combout\,
	cout => \ResetDebounce|Add0~17\);

-- Location: LCCOMB_X110_Y61_N24
\ResetDebounce|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~13_combout\ = (\ResetDebounce|s_debounceCnt[17]~0_combout\ & ((\ResetDebounce|Add0~16_combout\) # (!\ResetDebounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_previousIn~q\,
	datac => \ResetDebounce|Add0~16_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~0_combout\,
	combout => \ResetDebounce|s_debounceCnt~13_combout\);

-- Location: FF_X110_Y61_N25
\ResetDebounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~13_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(8));

-- Location: LCCOMB_X110_Y62_N28
\ResetDebounce|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~18_combout\ = (\ResetDebounce|s_debounceCnt\(9) & (\ResetDebounce|Add0~17\ & VCC)) # (!\ResetDebounce|s_debounceCnt\(9) & (!\ResetDebounce|Add0~17\))
-- \ResetDebounce|Add0~19\ = CARRY((!\ResetDebounce|s_debounceCnt\(9) & !\ResetDebounce|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \ResetDebounce|Add0~17\,
	combout => \ResetDebounce|Add0~18_combout\,
	cout => \ResetDebounce|Add0~19\);

-- Location: LCCOMB_X110_Y61_N30
\ResetDebounce|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~14_combout\ = (\ResetDebounce|s_debounceCnt[17]~0_combout\ & ((\ResetDebounce|Add0~18_combout\) # (!\ResetDebounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_previousIn~q\,
	datac => \ResetDebounce|Add0~18_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~0_combout\,
	combout => \ResetDebounce|s_debounceCnt~14_combout\);

-- Location: FF_X110_Y61_N31
\ResetDebounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~14_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(9));

-- Location: LCCOMB_X110_Y62_N30
\ResetDebounce|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~20_combout\ = (\ResetDebounce|s_debounceCnt\(10) & ((GND) # (!\ResetDebounce|Add0~19\))) # (!\ResetDebounce|s_debounceCnt\(10) & (\ResetDebounce|Add0~19\ $ (GND)))
-- \ResetDebounce|Add0~21\ = CARRY((\ResetDebounce|s_debounceCnt\(10)) # (!\ResetDebounce|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \ResetDebounce|Add0~19\,
	combout => \ResetDebounce|Add0~20_combout\,
	cout => \ResetDebounce|Add0~21\);

-- Location: LCCOMB_X111_Y62_N12
\ResetDebounce|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~15_combout\ = (\ResetDebounce|Add0~20_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|Add0~20_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~15_combout\);

-- Location: FF_X111_Y62_N13
\ResetDebounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~15_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(10));

-- Location: LCCOMB_X110_Y61_N0
\ResetDebounce|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~22_combout\ = (\ResetDebounce|s_debounceCnt\(11) & (\ResetDebounce|Add0~21\ & VCC)) # (!\ResetDebounce|s_debounceCnt\(11) & (!\ResetDebounce|Add0~21\))
-- \ResetDebounce|Add0~23\ = CARRY((!\ResetDebounce|s_debounceCnt\(11) & !\ResetDebounce|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \ResetDebounce|Add0~21\,
	combout => \ResetDebounce|Add0~22_combout\,
	cout => \ResetDebounce|Add0~23\);

-- Location: LCCOMB_X111_Y61_N4
\ResetDebounce|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~16_combout\ = (\ResetDebounce|s_debounceCnt[17]~0_combout\ & ((\ResetDebounce|Add0~22_combout\) # (!\ResetDebounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_previousIn~q\,
	datab => \ResetDebounce|s_debounceCnt[17]~0_combout\,
	datad => \ResetDebounce|Add0~22_combout\,
	combout => \ResetDebounce|s_debounceCnt~16_combout\);

-- Location: FF_X111_Y61_N5
\ResetDebounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~16_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(11));

-- Location: LCCOMB_X110_Y61_N2
\ResetDebounce|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~24_combout\ = (\ResetDebounce|s_debounceCnt\(12) & ((GND) # (!\ResetDebounce|Add0~23\))) # (!\ResetDebounce|s_debounceCnt\(12) & (\ResetDebounce|Add0~23\ $ (GND)))
-- \ResetDebounce|Add0~25\ = CARRY((\ResetDebounce|s_debounceCnt\(12)) # (!\ResetDebounce|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \ResetDebounce|Add0~23\,
	combout => \ResetDebounce|Add0~24_combout\,
	cout => \ResetDebounce|Add0~25\);

-- Location: LCCOMB_X111_Y62_N10
\ResetDebounce|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~10_combout\ = (\ResetDebounce|Add0~24_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ResetDebounce|Add0~24_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~10_combout\);

-- Location: FF_X111_Y62_N11
\ResetDebounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~10_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(12));

-- Location: LCCOMB_X110_Y61_N4
\ResetDebounce|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~26_combout\ = (\ResetDebounce|s_debounceCnt\(13) & (\ResetDebounce|Add0~25\ & VCC)) # (!\ResetDebounce|s_debounceCnt\(13) & (!\ResetDebounce|Add0~25\))
-- \ResetDebounce|Add0~27\ = CARRY((!\ResetDebounce|s_debounceCnt\(13) & !\ResetDebounce|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \ResetDebounce|Add0~25\,
	combout => \ResetDebounce|Add0~26_combout\,
	cout => \ResetDebounce|Add0~27\);

-- Location: LCCOMB_X111_Y62_N16
\ResetDebounce|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~11_combout\ = (\ResetDebounce|Add0~26_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|Add0~26_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~11_combout\);

-- Location: FF_X111_Y62_N17
\ResetDebounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~11_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(13));

-- Location: LCCOMB_X110_Y61_N6
\ResetDebounce|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~28_combout\ = (\ResetDebounce|s_debounceCnt\(14) & ((GND) # (!\ResetDebounce|Add0~27\))) # (!\ResetDebounce|s_debounceCnt\(14) & (\ResetDebounce|Add0~27\ $ (GND)))
-- \ResetDebounce|Add0~29\ = CARRY((\ResetDebounce|s_debounceCnt\(14)) # (!\ResetDebounce|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \ResetDebounce|Add0~27\,
	combout => \ResetDebounce|Add0~28_combout\,
	cout => \ResetDebounce|Add0~29\);

-- Location: LCCOMB_X111_Y61_N0
\ResetDebounce|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~17_combout\ = (\ResetDebounce|s_debounceCnt[17]~0_combout\ & ((\ResetDebounce|Add0~28_combout\) # (!\ResetDebounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_previousIn~q\,
	datac => \ResetDebounce|Add0~28_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~0_combout\,
	combout => \ResetDebounce|s_debounceCnt~17_combout\);

-- Location: FF_X111_Y61_N1
\ResetDebounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~17_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(14));

-- Location: LCCOMB_X110_Y61_N8
\ResetDebounce|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~30_combout\ = (\ResetDebounce|s_debounceCnt\(15) & (\ResetDebounce|Add0~29\ & VCC)) # (!\ResetDebounce|s_debounceCnt\(15) & (!\ResetDebounce|Add0~29\))
-- \ResetDebounce|Add0~31\ = CARRY((!\ResetDebounce|s_debounceCnt\(15) & !\ResetDebounce|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \ResetDebounce|Add0~29\,
	combout => \ResetDebounce|Add0~30_combout\,
	cout => \ResetDebounce|Add0~31\);

-- Location: LCCOMB_X109_Y61_N16
\ResetDebounce|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~5_combout\ = (\ResetDebounce|Add0~30_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ResetDebounce|Add0~30_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~5_combout\);

-- Location: FF_X109_Y61_N17
\ResetDebounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~5_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(15));

-- Location: LCCOMB_X110_Y61_N10
\ResetDebounce|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~32_combout\ = (\ResetDebounce|s_debounceCnt\(16) & ((GND) # (!\ResetDebounce|Add0~31\))) # (!\ResetDebounce|s_debounceCnt\(16) & (\ResetDebounce|Add0~31\ $ (GND)))
-- \ResetDebounce|Add0~33\ = CARRY((\ResetDebounce|s_debounceCnt\(16)) # (!\ResetDebounce|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \ResetDebounce|Add0~31\,
	combout => \ResetDebounce|Add0~32_combout\,
	cout => \ResetDebounce|Add0~33\);

-- Location: LCCOMB_X109_Y61_N6
\ResetDebounce|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~6_combout\ = (\ResetDebounce|Add0~32_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ResetDebounce|Add0~32_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~6_combout\);

-- Location: FF_X109_Y61_N7
\ResetDebounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~6_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(16));

-- Location: LCCOMB_X110_Y61_N12
\ResetDebounce|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~34_combout\ = (\ResetDebounce|s_debounceCnt\(17) & (\ResetDebounce|Add0~33\ & VCC)) # (!\ResetDebounce|s_debounceCnt\(17) & (!\ResetDebounce|Add0~33\))
-- \ResetDebounce|Add0~35\ = CARRY((!\ResetDebounce|s_debounceCnt\(17) & !\ResetDebounce|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \ResetDebounce|Add0~33\,
	combout => \ResetDebounce|Add0~34_combout\,
	cout => \ResetDebounce|Add0~35\);

-- Location: LCCOMB_X109_Y61_N12
\ResetDebounce|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt~7_combout\ = (\ResetDebounce|Add0~34_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ResetDebounce|Add0~34_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt~7_combout\);

-- Location: FF_X109_Y61_N13
\ResetDebounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt~7_combout\,
	ena => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(17));

-- Location: LCCOMB_X110_Y61_N14
\ResetDebounce|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~36_combout\ = (\ResetDebounce|s_debounceCnt\(18) & ((GND) # (!\ResetDebounce|Add0~35\))) # (!\ResetDebounce|s_debounceCnt\(18) & (\ResetDebounce|Add0~35\ $ (GND)))
-- \ResetDebounce|Add0~37\ = CARRY((\ResetDebounce|s_debounceCnt\(18)) # (!\ResetDebounce|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \ResetDebounce|Add0~35\,
	combout => \ResetDebounce|Add0~36_combout\,
	cout => \ResetDebounce|Add0~37\);

-- Location: LCCOMB_X111_Y61_N28
\ResetDebounce|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt[18]~18_combout\ = (\ResetDebounce|s_debounceCnt[17]~3_combout\ & (\ResetDebounce|s_debounceCnt[17]~0_combout\ & ((\ResetDebounce|Add0~36_combout\) # (!\ResetDebounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_previousIn~q\,
	datab => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	datac => \ResetDebounce|Add0~36_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~0_combout\,
	combout => \ResetDebounce|s_debounceCnt[18]~18_combout\);

-- Location: FF_X111_Y61_N29
\ResetDebounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(18));

-- Location: LCCOMB_X111_Y61_N30
\ResetDebounce|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_pulsedOut~3_combout\ = (!\ResetDebounce|s_debounceCnt\(19) & (!\ResetDebounce|s_debounceCnt\(18) & (!\ResetDebounce|s_debounceCnt\(11) & !\ResetDebounce|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(19),
	datab => \ResetDebounce|s_debounceCnt\(18),
	datac => \ResetDebounce|s_debounceCnt\(11),
	datad => \ResetDebounce|s_debounceCnt\(14),
	combout => \ResetDebounce|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X109_Y61_N14
\ResetDebounce|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_pulsedOut~0_combout\ = (!\ResetDebounce|s_debounceCnt\(17) & (!\ResetDebounce|s_debounceCnt\(15) & (!\ResetDebounce|s_debounceCnt\(16) & !\ResetDebounce|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(17),
	datab => \ResetDebounce|s_debounceCnt\(15),
	datac => \ResetDebounce|s_debounceCnt\(16),
	datad => \ResetDebounce|s_debounceCnt\(6),
	combout => \ResetDebounce|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X110_Y61_N16
\ResetDebounce|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~38_combout\ = (\ResetDebounce|s_debounceCnt\(19) & (\ResetDebounce|Add0~37\ & VCC)) # (!\ResetDebounce|s_debounceCnt\(19) & (!\ResetDebounce|Add0~37\))
-- \ResetDebounce|Add0~39\ = CARRY((!\ResetDebounce|s_debounceCnt\(19) & !\ResetDebounce|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \ResetDebounce|Add0~37\,
	combout => \ResetDebounce|Add0~38_combout\,
	cout => \ResetDebounce|Add0~39\);

-- Location: LCCOMB_X110_Y61_N18
\ResetDebounce|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~40_combout\ = (\ResetDebounce|s_debounceCnt\(20) & ((GND) # (!\ResetDebounce|Add0~39\))) # (!\ResetDebounce|s_debounceCnt\(20) & (\ResetDebounce|Add0~39\ $ (GND)))
-- \ResetDebounce|Add0~41\ = CARRY((\ResetDebounce|s_debounceCnt\(20)) # (!\ResetDebounce|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \ResetDebounce|Add0~39\,
	combout => \ResetDebounce|Add0~40_combout\,
	cout => \ResetDebounce|Add0~41\);

-- Location: LCCOMB_X110_Y61_N26
\ResetDebounce|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt[20]~8_combout\ = (\ResetDebounce|s_debounceCnt[17]~3_combout\ & (\ResetDebounce|Add0~40_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	datab => \ResetDebounce|Add0~40_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt[20]~8_combout\);

-- Location: FF_X110_Y61_N27
\ResetDebounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(20));

-- Location: LCCOMB_X110_Y61_N20
\ResetDebounce|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~42_combout\ = (\ResetDebounce|s_debounceCnt\(21) & (\ResetDebounce|Add0~41\ & VCC)) # (!\ResetDebounce|s_debounceCnt\(21) & (!\ResetDebounce|Add0~41\))
-- \ResetDebounce|Add0~43\ = CARRY((!\ResetDebounce|s_debounceCnt\(21) & !\ResetDebounce|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \ResetDebounce|Add0~41\,
	combout => \ResetDebounce|Add0~42_combout\,
	cout => \ResetDebounce|Add0~43\);

-- Location: LCCOMB_X111_Y62_N20
\ResetDebounce|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt[21]~9_combout\ = (\ResetDebounce|Add0~42_combout\ & (\ResetDebounce|s_debounceCnt[17]~3_combout\ & \ResetDebounce|s_debounceCnt[17]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|Add0~42_combout\,
	datac => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~4_combout\,
	combout => \ResetDebounce|s_debounceCnt[21]~9_combout\);

-- Location: FF_X111_Y62_N21
\ResetDebounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(21));

-- Location: LCCOMB_X111_Y62_N30
\ResetDebounce|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_pulsedOut~1_combout\ = (!\ResetDebounce|s_debounceCnt\(12) & (!\ResetDebounce|s_debounceCnt\(13) & (!\ResetDebounce|s_debounceCnt\(20) & !\ResetDebounce|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(12),
	datab => \ResetDebounce|s_debounceCnt\(13),
	datac => \ResetDebounce|s_debounceCnt\(20),
	datad => \ResetDebounce|s_debounceCnt\(21),
	combout => \ResetDebounce|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X110_Y62_N2
\ResetDebounce|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_pulsedOut~2_combout\ = (!\ResetDebounce|s_debounceCnt\(8) & (!\ResetDebounce|s_debounceCnt\(7) & (!\ResetDebounce|s_debounceCnt\(10) & !\ResetDebounce|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(8),
	datab => \ResetDebounce|s_debounceCnt\(7),
	datac => \ResetDebounce|s_debounceCnt\(10),
	datad => \ResetDebounce|s_debounceCnt\(9),
	combout => \ResetDebounce|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X111_Y61_N22
\ResetDebounce|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_pulsedOut~4_combout\ = (\ResetDebounce|s_pulsedOut~3_combout\ & (\ResetDebounce|s_pulsedOut~0_combout\ & (\ResetDebounce|s_pulsedOut~1_combout\ & \ResetDebounce|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_pulsedOut~3_combout\,
	datab => \ResetDebounce|s_pulsedOut~0_combout\,
	datac => \ResetDebounce|s_pulsedOut~1_combout\,
	datad => \ResetDebounce|s_pulsedOut~2_combout\,
	combout => \ResetDebounce|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X111_Y62_N18
\ResetDebounce|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_pulsedOut~5_combout\ = (!\ResetDebounce|s_debounceCnt\(3) & (!\ResetDebounce|s_debounceCnt\(2) & (!\ResetDebounce|s_debounceCnt\(4) & !\ResetDebounce|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(3),
	datab => \ResetDebounce|s_debounceCnt\(2),
	datac => \ResetDebounce|s_debounceCnt\(4),
	datad => \ResetDebounce|s_debounceCnt\(1),
	combout => \ResetDebounce|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X111_Y61_N2
\ResetDebounce|s_debounceCnt[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt[17]~2_combout\ = ((\ResetDebounce|s_debounceCnt\(0)) # ((\ResetDebounce|s_debounceCnt\(5)) # (!\ResetDebounce|s_pulsedOut~5_combout\))) # (!\ResetDebounce|s_pulsedOut~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_pulsedOut~4_combout\,
	datab => \ResetDebounce|s_debounceCnt\(0),
	datac => \ResetDebounce|s_debounceCnt\(5),
	datad => \ResetDebounce|s_pulsedOut~5_combout\,
	combout => \ResetDebounce|s_debounceCnt[17]~2_combout\);

-- Location: LCCOMB_X111_Y61_N6
\ResetDebounce|s_debounceCnt[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt[17]~3_combout\ = (\ResetDebounce|s_debounceCnt\(22)) # (((\ResetDebounce|s_debounceCnt[17]~2_combout\) # (!\ResetDebounce|s_previousIn~q\)) # (!\ResetDebounce|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(22),
	datab => \ResetDebounce|s_dirtyIn~q\,
	datac => \ResetDebounce|s_previousIn~q\,
	datad => \ResetDebounce|s_debounceCnt[17]~2_combout\,
	combout => \ResetDebounce|s_debounceCnt[17]~3_combout\);

-- Location: LCCOMB_X111_Y61_N12
\ResetDebounce|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt[19]~19_combout\ = (\ResetDebounce|s_debounceCnt[17]~3_combout\ & (\ResetDebounce|s_debounceCnt[17]~0_combout\ & ((\ResetDebounce|Add0~38_combout\) # (!\ResetDebounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_previousIn~q\,
	datab => \ResetDebounce|s_debounceCnt[17]~3_combout\,
	datac => \ResetDebounce|Add0~38_combout\,
	datad => \ResetDebounce|s_debounceCnt[17]~0_combout\,
	combout => \ResetDebounce|s_debounceCnt[19]~19_combout\);

-- Location: FF_X111_Y61_N13
\ResetDebounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(19));

-- Location: LCCOMB_X110_Y62_N4
\ResetDebounce|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|LessThan0~0_combout\ = (\ResetDebounce|s_debounceCnt\(9) & (\ResetDebounce|s_debounceCnt\(8) & \ResetDebounce|s_debounceCnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(9),
	datac => \ResetDebounce|s_debounceCnt\(8),
	datad => \ResetDebounce|s_debounceCnt\(11),
	combout => \ResetDebounce|LessThan0~0_combout\);

-- Location: LCCOMB_X111_Y62_N24
\ResetDebounce|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|LessThan0~1_combout\ = (\ResetDebounce|s_debounceCnt\(5)) # ((\ResetDebounce|s_debounceCnt\(0)) # (!\ResetDebounce|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_debounceCnt\(5),
	datac => \ResetDebounce|s_debounceCnt\(0),
	datad => \ResetDebounce|s_pulsedOut~5_combout\,
	combout => \ResetDebounce|LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y62_N6
\ResetDebounce|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|LessThan0~2_combout\ = (\ResetDebounce|LessThan0~0_combout\ & ((\ResetDebounce|s_debounceCnt\(7)) # ((\ResetDebounce|s_debounceCnt\(6) & \ResetDebounce|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(6),
	datab => \ResetDebounce|s_debounceCnt\(7),
	datac => \ResetDebounce|LessThan0~0_combout\,
	datad => \ResetDebounce|LessThan0~1_combout\,
	combout => \ResetDebounce|LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y61_N8
\ResetDebounce|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|LessThan0~4_combout\ = (!\ResetDebounce|s_debounceCnt\(16) & (!\ResetDebounce|s_debounceCnt\(15) & !\ResetDebounce|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(16),
	datab => \ResetDebounce|s_debounceCnt\(15),
	datad => \ResetDebounce|s_debounceCnt\(17),
	combout => \ResetDebounce|LessThan0~4_combout\);

-- Location: LCCOMB_X111_Y62_N22
\ResetDebounce|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|LessThan0~3_combout\ = (\ResetDebounce|s_debounceCnt\(12)) # ((\ResetDebounce|s_debounceCnt\(13)) # ((\ResetDebounce|s_debounceCnt\(11) & \ResetDebounce|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(12),
	datab => \ResetDebounce|s_debounceCnt\(13),
	datac => \ResetDebounce|s_debounceCnt\(11),
	datad => \ResetDebounce|s_debounceCnt\(10),
	combout => \ResetDebounce|LessThan0~3_combout\);

-- Location: LCCOMB_X110_Y62_N8
\ResetDebounce|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|LessThan0~5_combout\ = ((\ResetDebounce|s_debounceCnt\(14) & ((\ResetDebounce|LessThan0~2_combout\) # (\ResetDebounce|LessThan0~3_combout\)))) # (!\ResetDebounce|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|LessThan0~2_combout\,
	datab => \ResetDebounce|s_debounceCnt\(14),
	datac => \ResetDebounce|LessThan0~4_combout\,
	datad => \ResetDebounce|LessThan0~3_combout\,
	combout => \ResetDebounce|LessThan0~5_combout\);

-- Location: LCCOMB_X111_Y62_N28
\ResetDebounce|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|LessThan0~6_combout\ = (!\ResetDebounce|s_debounceCnt\(20) & !\ResetDebounce|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ResetDebounce|s_debounceCnt\(20),
	datad => \ResetDebounce|s_debounceCnt\(21),
	combout => \ResetDebounce|LessThan0~6_combout\);

-- Location: LCCOMB_X111_Y61_N18
\ResetDebounce|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|LessThan0~7_combout\ = ((\ResetDebounce|s_debounceCnt\(19) & (\ResetDebounce|s_debounceCnt\(18) & \ResetDebounce|LessThan0~5_combout\))) # (!\ResetDebounce|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(19),
	datab => \ResetDebounce|s_debounceCnt\(18),
	datac => \ResetDebounce|LessThan0~5_combout\,
	datad => \ResetDebounce|LessThan0~6_combout\,
	combout => \ResetDebounce|LessThan0~7_combout\);

-- Location: LCCOMB_X111_Y61_N16
\ResetDebounce|s_debounceCnt[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt[17]~0_combout\ = (\ResetDebounce|s_dirtyIn~q\ & ((!\ResetDebounce|LessThan0~7_combout\) # (!\ResetDebounce|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_dirtyIn~q\,
	datac => \ResetDebounce|s_debounceCnt\(22),
	datad => \ResetDebounce|LessThan0~7_combout\,
	combout => \ResetDebounce|s_debounceCnt[17]~0_combout\);

-- Location: LCCOMB_X111_Y61_N26
\ResetDebounce|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt[22]~25_combout\ = (\ResetDebounce|s_dirtyIn~q\ & ((\ResetDebounce|s_debounceCnt\(22) & (!\ResetDebounce|LessThan0~7_combout\)) # (!\ResetDebounce|s_debounceCnt\(22) & ((\ResetDebounce|s_debounceCnt[17]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_debounceCnt\(22),
	datab => \ResetDebounce|LessThan0~7_combout\,
	datac => \ResetDebounce|s_dirtyIn~q\,
	datad => \ResetDebounce|s_debounceCnt[17]~2_combout\,
	combout => \ResetDebounce|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X110_Y61_N22
\ResetDebounce|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|Add0~44_combout\ = \ResetDebounce|Add0~43\ $ (\ResetDebounce|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ResetDebounce|s_debounceCnt\(22),
	cin => \ResetDebounce|Add0~43\,
	combout => \ResetDebounce|Add0~44_combout\);

-- Location: LCCOMB_X111_Y61_N24
\ResetDebounce|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_debounceCnt[22]~26_combout\ = (\ResetDebounce|s_previousIn~q\ & (((\ResetDebounce|s_debounceCnt[22]~25_combout\ & \ResetDebounce|Add0~44_combout\)))) # (!\ResetDebounce|s_previousIn~q\ & (\ResetDebounce|s_debounceCnt[17]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_previousIn~q\,
	datab => \ResetDebounce|s_debounceCnt[17]~0_combout\,
	datac => \ResetDebounce|s_debounceCnt[22]~25_combout\,
	datad => \ResetDebounce|Add0~44_combout\,
	combout => \ResetDebounce|s_debounceCnt[22]~26_combout\);

-- Location: FF_X111_Y61_N25
\ResetDebounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_debounceCnt\(22));

-- Location: LCCOMB_X111_Y61_N10
\ResetDebounce|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_pulsedOut~6_combout\ = (\ResetDebounce|s_previousIn~q\ & (\ResetDebounce|s_dirtyIn~q\ & (!\ResetDebounce|s_debounceCnt\(22) & \ResetDebounce|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_previousIn~q\,
	datab => \ResetDebounce|s_dirtyIn~q\,
	datac => \ResetDebounce|s_debounceCnt\(22),
	datad => \ResetDebounce|s_debounceCnt\(0),
	combout => \ResetDebounce|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X111_Y61_N8
\ResetDebounce|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ResetDebounce|s_pulsedOut~7_combout\ = (\ResetDebounce|s_pulsedOut~6_combout\ & (!\ResetDebounce|s_debounceCnt\(5) & (\ResetDebounce|s_pulsedOut~4_combout\ & \ResetDebounce|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ResetDebounce|s_pulsedOut~6_combout\,
	datab => \ResetDebounce|s_debounceCnt\(5),
	datac => \ResetDebounce|s_pulsedOut~4_combout\,
	datad => \ResetDebounce|s_pulsedOut~5_combout\,
	combout => \ResetDebounce|s_pulsedOut~7_combout\);

-- Location: FF_X111_Y61_N9
\ResetDebounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ResetDebounce|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetDebounce|s_pulsedOut~q\);

-- Location: LCCOMB_X102_Y59_N0
\timer|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~1_combout\ = ((\timer|Equal0~0_combout\) # (!\timer|s_value\(4))) # (!\timer|s_value\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_value\(5),
	datac => \timer|s_value\(4),
	datad => \timer|Equal0~0_combout\,
	combout => \timer|Equal0~1_combout\);

-- Location: LCCOMB_X102_Y60_N12
\timer|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~0_combout\ = \timer|s_value\(0) $ (GND)
-- \timer|Add0~1\ = CARRY(!\timer|s_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_value\(0),
	datad => VCC,
	combout => \timer|Add0~0_combout\,
	cout => \timer|Add0~1\);

-- Location: LCCOMB_X102_Y60_N8
\timer|s_value~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_value~1_combout\ = (\timer|s_value[4]~0_combout\ & !\timer|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value[4]~0_combout\,
	datad => \timer|Add0~0_combout\,
	combout => \timer|s_value~1_combout\);

-- Location: LCCOMB_X100_Y61_N6
\pulse_gen|s_counter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[0]~26_combout\ = \pulse_gen|s_counter\(0) $ (VCC)
-- \pulse_gen|s_counter[0]~27\ = CARRY(\pulse_gen|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(0),
	datad => VCC,
	combout => \pulse_gen|s_counter[0]~26_combout\,
	cout => \pulse_gen|s_counter[0]~27\);

-- Location: LCCOMB_X101_Y61_N6
\pulse_gen|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~1_combout\ = (((!\pulse_gen|s_counter\(15)) # (!\pulse_gen|s_counter\(12))) # (!\pulse_gen|s_counter\(14))) # (!\pulse_gen|s_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(13),
	datab => \pulse_gen|s_counter\(14),
	datac => \pulse_gen|s_counter\(12),
	datad => \pulse_gen|s_counter\(15),
	combout => \pulse_gen|LessThan0~1_combout\);

-- Location: LCCOMB_X101_Y61_N8
\pulse_gen|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~0_combout\ = (!\pulse_gen|s_counter\(11) & (!\pulse_gen|s_counter\(8) & (!\pulse_gen|s_counter\(10) & !\pulse_gen|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(11),
	datab => \pulse_gen|s_counter\(8),
	datac => \pulse_gen|s_counter\(10),
	datad => \pulse_gen|s_counter\(9),
	combout => \pulse_gen|LessThan0~0_combout\);

-- Location: LCCOMB_X100_Y61_N2
\pulse_gen|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~2_combout\ = (((!\pulse_gen|s_counter\(6)) # (!\pulse_gen|s_counter\(4))) # (!\pulse_gen|s_counter\(5))) # (!\pulse_gen|s_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(3),
	datab => \pulse_gen|s_counter\(5),
	datac => \pulse_gen|s_counter\(4),
	datad => \pulse_gen|s_counter\(6),
	combout => \pulse_gen|LessThan0~2_combout\);

-- Location: LCCOMB_X100_Y61_N4
\pulse_gen|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~3_combout\ = ((\pulse_gen|LessThan0~2_combout\) # ((!\pulse_gen|s_counter\(2)) # (!\pulse_gen|s_counter\(1)))) # (!\pulse_gen|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(0),
	datab => \pulse_gen|LessThan0~2_combout\,
	datac => \pulse_gen|s_counter\(1),
	datad => \pulse_gen|s_counter\(2),
	combout => \pulse_gen|LessThan0~3_combout\);

-- Location: LCCOMB_X99_Y61_N28
\pulse_gen|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~4_combout\ = (\pulse_gen|LessThan0~1_combout\) # ((\pulse_gen|LessThan0~0_combout\ & (!\pulse_gen|s_counter\(7) & \pulse_gen|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|LessThan0~1_combout\,
	datab => \pulse_gen|LessThan0~0_combout\,
	datac => \pulse_gen|s_counter\(7),
	datad => \pulse_gen|LessThan0~3_combout\,
	combout => \pulse_gen|LessThan0~4_combout\);

-- Location: LCCOMB_X99_Y61_N30
\pulse_gen|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~5_combout\ = (!\pulse_gen|s_counter\(18) & (((!\pulse_gen|s_counter\(16) & \pulse_gen|LessThan0~4_combout\)) # (!\pulse_gen|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(18),
	datab => \pulse_gen|s_counter\(16),
	datac => \pulse_gen|s_counter\(17),
	datad => \pulse_gen|LessThan0~4_combout\,
	combout => \pulse_gen|LessThan0~5_combout\);

-- Location: LCCOMB_X102_Y60_N0
\pulse_gen|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~6_combout\ = (((!\pulse_gen|s_counter\(20)) # (!\pulse_gen|s_counter\(22))) # (!\pulse_gen|s_counter\(21))) # (!\pulse_gen|s_counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(23),
	datab => \pulse_gen|s_counter\(21),
	datac => \pulse_gen|s_counter\(22),
	datad => \pulse_gen|s_counter\(20),
	combout => \pulse_gen|LessThan0~6_combout\);

-- Location: LCCOMB_X102_Y60_N2
\pulse_gen|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~7_combout\ = (\pulse_gen|LessThan0~6_combout\) # (!\pulse_gen|s_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|s_counter\(19),
	datad => \pulse_gen|LessThan0~6_combout\,
	combout => \pulse_gen|LessThan0~7_combout\);

-- Location: LCCOMB_X100_Y60_N26
\pulse_gen|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~8_combout\ = (\pulse_gen|s_counter\(25) & ((\pulse_gen|s_counter\(24)) # ((!\pulse_gen|LessThan0~5_combout\ & !\pulse_gen|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(24),
	datab => \pulse_gen|s_counter\(25),
	datac => \pulse_gen|LessThan0~5_combout\,
	datad => \pulse_gen|LessThan0~7_combout\,
	combout => \pulse_gen|LessThan0~8_combout\);

-- Location: FF_X100_Y61_N7
\pulse_gen|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[0]~26_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(0));

-- Location: LCCOMB_X100_Y61_N8
\pulse_gen|s_counter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[1]~28_combout\ = (\pulse_gen|s_counter\(1) & (!\pulse_gen|s_counter[0]~27\)) # (!\pulse_gen|s_counter\(1) & ((\pulse_gen|s_counter[0]~27\) # (GND)))
-- \pulse_gen|s_counter[1]~29\ = CARRY((!\pulse_gen|s_counter[0]~27\) # (!\pulse_gen|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(1),
	datad => VCC,
	cin => \pulse_gen|s_counter[0]~27\,
	combout => \pulse_gen|s_counter[1]~28_combout\,
	cout => \pulse_gen|s_counter[1]~29\);

-- Location: FF_X100_Y61_N9
\pulse_gen|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[1]~28_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(1));

-- Location: LCCOMB_X100_Y61_N10
\pulse_gen|s_counter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[2]~30_combout\ = (\pulse_gen|s_counter\(2) & (\pulse_gen|s_counter[1]~29\ $ (GND))) # (!\pulse_gen|s_counter\(2) & (!\pulse_gen|s_counter[1]~29\ & VCC))
-- \pulse_gen|s_counter[2]~31\ = CARRY((\pulse_gen|s_counter\(2) & !\pulse_gen|s_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(2),
	datad => VCC,
	cin => \pulse_gen|s_counter[1]~29\,
	combout => \pulse_gen|s_counter[2]~30_combout\,
	cout => \pulse_gen|s_counter[2]~31\);

-- Location: FF_X100_Y61_N11
\pulse_gen|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[2]~30_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(2));

-- Location: LCCOMB_X100_Y61_N12
\pulse_gen|s_counter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[3]~32_combout\ = (\pulse_gen|s_counter\(3) & (!\pulse_gen|s_counter[2]~31\)) # (!\pulse_gen|s_counter\(3) & ((\pulse_gen|s_counter[2]~31\) # (GND)))
-- \pulse_gen|s_counter[3]~33\ = CARRY((!\pulse_gen|s_counter[2]~31\) # (!\pulse_gen|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(3),
	datad => VCC,
	cin => \pulse_gen|s_counter[2]~31\,
	combout => \pulse_gen|s_counter[3]~32_combout\,
	cout => \pulse_gen|s_counter[3]~33\);

-- Location: FF_X100_Y61_N13
\pulse_gen|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[3]~32_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(3));

-- Location: LCCOMB_X100_Y61_N14
\pulse_gen|s_counter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[4]~34_combout\ = (\pulse_gen|s_counter\(4) & (\pulse_gen|s_counter[3]~33\ $ (GND))) # (!\pulse_gen|s_counter\(4) & (!\pulse_gen|s_counter[3]~33\ & VCC))
-- \pulse_gen|s_counter[4]~35\ = CARRY((\pulse_gen|s_counter\(4) & !\pulse_gen|s_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(4),
	datad => VCC,
	cin => \pulse_gen|s_counter[3]~33\,
	combout => \pulse_gen|s_counter[4]~34_combout\,
	cout => \pulse_gen|s_counter[4]~35\);

-- Location: FF_X100_Y61_N15
\pulse_gen|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[4]~34_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(4));

-- Location: LCCOMB_X100_Y61_N16
\pulse_gen|s_counter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[5]~36_combout\ = (\pulse_gen|s_counter\(5) & (!\pulse_gen|s_counter[4]~35\)) # (!\pulse_gen|s_counter\(5) & ((\pulse_gen|s_counter[4]~35\) # (GND)))
-- \pulse_gen|s_counter[5]~37\ = CARRY((!\pulse_gen|s_counter[4]~35\) # (!\pulse_gen|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(5),
	datad => VCC,
	cin => \pulse_gen|s_counter[4]~35\,
	combout => \pulse_gen|s_counter[5]~36_combout\,
	cout => \pulse_gen|s_counter[5]~37\);

-- Location: FF_X100_Y61_N17
\pulse_gen|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[5]~36_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(5));

-- Location: LCCOMB_X100_Y61_N18
\pulse_gen|s_counter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[6]~38_combout\ = (\pulse_gen|s_counter\(6) & (\pulse_gen|s_counter[5]~37\ $ (GND))) # (!\pulse_gen|s_counter\(6) & (!\pulse_gen|s_counter[5]~37\ & VCC))
-- \pulse_gen|s_counter[6]~39\ = CARRY((\pulse_gen|s_counter\(6) & !\pulse_gen|s_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(6),
	datad => VCC,
	cin => \pulse_gen|s_counter[5]~37\,
	combout => \pulse_gen|s_counter[6]~38_combout\,
	cout => \pulse_gen|s_counter[6]~39\);

-- Location: FF_X100_Y61_N19
\pulse_gen|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[6]~38_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(6));

-- Location: LCCOMB_X100_Y61_N20
\pulse_gen|s_counter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[7]~40_combout\ = (\pulse_gen|s_counter\(7) & (!\pulse_gen|s_counter[6]~39\)) # (!\pulse_gen|s_counter\(7) & ((\pulse_gen|s_counter[6]~39\) # (GND)))
-- \pulse_gen|s_counter[7]~41\ = CARRY((!\pulse_gen|s_counter[6]~39\) # (!\pulse_gen|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(7),
	datad => VCC,
	cin => \pulse_gen|s_counter[6]~39\,
	combout => \pulse_gen|s_counter[7]~40_combout\,
	cout => \pulse_gen|s_counter[7]~41\);

-- Location: FF_X101_Y61_N11
\pulse_gen|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[7]~40_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(7));

-- Location: LCCOMB_X100_Y61_N22
\pulse_gen|s_counter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[8]~42_combout\ = (\pulse_gen|s_counter\(8) & (\pulse_gen|s_counter[7]~41\ $ (GND))) # (!\pulse_gen|s_counter\(8) & (!\pulse_gen|s_counter[7]~41\ & VCC))
-- \pulse_gen|s_counter[8]~43\ = CARRY((\pulse_gen|s_counter\(8) & !\pulse_gen|s_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(8),
	datad => VCC,
	cin => \pulse_gen|s_counter[7]~41\,
	combout => \pulse_gen|s_counter[8]~42_combout\,
	cout => \pulse_gen|s_counter[8]~43\);

-- Location: FF_X101_Y61_N15
\pulse_gen|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[8]~42_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(8));

-- Location: LCCOMB_X100_Y61_N24
\pulse_gen|s_counter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[9]~44_combout\ = (\pulse_gen|s_counter\(9) & (!\pulse_gen|s_counter[8]~43\)) # (!\pulse_gen|s_counter\(9) & ((\pulse_gen|s_counter[8]~43\) # (GND)))
-- \pulse_gen|s_counter[9]~45\ = CARRY((!\pulse_gen|s_counter[8]~43\) # (!\pulse_gen|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(9),
	datad => VCC,
	cin => \pulse_gen|s_counter[8]~43\,
	combout => \pulse_gen|s_counter[9]~44_combout\,
	cout => \pulse_gen|s_counter[9]~45\);

-- Location: FF_X101_Y61_N21
\pulse_gen|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[9]~44_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(9));

-- Location: LCCOMB_X100_Y61_N26
\pulse_gen|s_counter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[10]~46_combout\ = (\pulse_gen|s_counter\(10) & (\pulse_gen|s_counter[9]~45\ $ (GND))) # (!\pulse_gen|s_counter\(10) & (!\pulse_gen|s_counter[9]~45\ & VCC))
-- \pulse_gen|s_counter[10]~47\ = CARRY((\pulse_gen|s_counter\(10) & !\pulse_gen|s_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(10),
	datad => VCC,
	cin => \pulse_gen|s_counter[9]~45\,
	combout => \pulse_gen|s_counter[10]~46_combout\,
	cout => \pulse_gen|s_counter[10]~47\);

-- Location: FF_X101_Y61_N9
\pulse_gen|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[10]~46_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(10));

-- Location: LCCOMB_X100_Y61_N28
\pulse_gen|s_counter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[11]~48_combout\ = (\pulse_gen|s_counter\(11) & (!\pulse_gen|s_counter[10]~47\)) # (!\pulse_gen|s_counter\(11) & ((\pulse_gen|s_counter[10]~47\) # (GND)))
-- \pulse_gen|s_counter[11]~49\ = CARRY((!\pulse_gen|s_counter[10]~47\) # (!\pulse_gen|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(11),
	datad => VCC,
	cin => \pulse_gen|s_counter[10]~47\,
	combout => \pulse_gen|s_counter[11]~48_combout\,
	cout => \pulse_gen|s_counter[11]~49\);

-- Location: FF_X101_Y61_N17
\pulse_gen|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[11]~48_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(11));

-- Location: LCCOMB_X100_Y61_N30
\pulse_gen|s_counter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[12]~50_combout\ = (\pulse_gen|s_counter\(12) & (\pulse_gen|s_counter[11]~49\ $ (GND))) # (!\pulse_gen|s_counter\(12) & (!\pulse_gen|s_counter[11]~49\ & VCC))
-- \pulse_gen|s_counter[12]~51\ = CARRY((\pulse_gen|s_counter\(12) & !\pulse_gen|s_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(12),
	datad => VCC,
	cin => \pulse_gen|s_counter[11]~49\,
	combout => \pulse_gen|s_counter[12]~50_combout\,
	cout => \pulse_gen|s_counter[12]~51\);

-- Location: FF_X101_Y61_N7
\pulse_gen|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[12]~50_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(12));

-- Location: LCCOMB_X100_Y60_N0
\pulse_gen|s_counter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[13]~52_combout\ = (\pulse_gen|s_counter\(13) & (!\pulse_gen|s_counter[12]~51\)) # (!\pulse_gen|s_counter\(13) & ((\pulse_gen|s_counter[12]~51\) # (GND)))
-- \pulse_gen|s_counter[13]~53\ = CARRY((!\pulse_gen|s_counter[12]~51\) # (!\pulse_gen|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(13),
	datad => VCC,
	cin => \pulse_gen|s_counter[12]~51\,
	combout => \pulse_gen|s_counter[13]~52_combout\,
	cout => \pulse_gen|s_counter[13]~53\);

-- Location: FF_X101_Y61_N31
\pulse_gen|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[13]~52_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(13));

-- Location: LCCOMB_X100_Y60_N2
\pulse_gen|s_counter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[14]~54_combout\ = (\pulse_gen|s_counter\(14) & (\pulse_gen|s_counter[13]~53\ $ (GND))) # (!\pulse_gen|s_counter\(14) & (!\pulse_gen|s_counter[13]~53\ & VCC))
-- \pulse_gen|s_counter[14]~55\ = CARRY((\pulse_gen|s_counter\(14) & !\pulse_gen|s_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(14),
	datad => VCC,
	cin => \pulse_gen|s_counter[13]~53\,
	combout => \pulse_gen|s_counter[14]~54_combout\,
	cout => \pulse_gen|s_counter[14]~55\);

-- Location: FF_X101_Y61_N5
\pulse_gen|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[14]~54_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(14));

-- Location: LCCOMB_X100_Y60_N4
\pulse_gen|s_counter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[15]~56_combout\ = (\pulse_gen|s_counter\(15) & (!\pulse_gen|s_counter[14]~55\)) # (!\pulse_gen|s_counter\(15) & ((\pulse_gen|s_counter[14]~55\) # (GND)))
-- \pulse_gen|s_counter[15]~57\ = CARRY((!\pulse_gen|s_counter[14]~55\) # (!\pulse_gen|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(15),
	datad => VCC,
	cin => \pulse_gen|s_counter[14]~55\,
	combout => \pulse_gen|s_counter[15]~56_combout\,
	cout => \pulse_gen|s_counter[15]~57\);

-- Location: FF_X101_Y61_N13
\pulse_gen|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[15]~56_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(15));

-- Location: LCCOMB_X100_Y60_N6
\pulse_gen|s_counter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[16]~58_combout\ = (\pulse_gen|s_counter\(16) & (\pulse_gen|s_counter[15]~57\ $ (GND))) # (!\pulse_gen|s_counter\(16) & (!\pulse_gen|s_counter[15]~57\ & VCC))
-- \pulse_gen|s_counter[16]~59\ = CARRY((\pulse_gen|s_counter\(16) & !\pulse_gen|s_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(16),
	datad => VCC,
	cin => \pulse_gen|s_counter[15]~57\,
	combout => \pulse_gen|s_counter[16]~58_combout\,
	cout => \pulse_gen|s_counter[16]~59\);

-- Location: FF_X101_Y61_N25
\pulse_gen|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[16]~58_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(16));

-- Location: LCCOMB_X100_Y60_N8
\pulse_gen|s_counter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[17]~60_combout\ = (\pulse_gen|s_counter\(17) & (!\pulse_gen|s_counter[16]~59\)) # (!\pulse_gen|s_counter\(17) & ((\pulse_gen|s_counter[16]~59\) # (GND)))
-- \pulse_gen|s_counter[17]~61\ = CARRY((!\pulse_gen|s_counter[16]~59\) # (!\pulse_gen|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(17),
	datad => VCC,
	cin => \pulse_gen|s_counter[16]~59\,
	combout => \pulse_gen|s_counter[17]~60_combout\,
	cout => \pulse_gen|s_counter[17]~61\);

-- Location: FF_X100_Y60_N9
\pulse_gen|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[17]~60_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(17));

-- Location: LCCOMB_X100_Y60_N10
\pulse_gen|s_counter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[18]~62_combout\ = (\pulse_gen|s_counter\(18) & (\pulse_gen|s_counter[17]~61\ $ (GND))) # (!\pulse_gen|s_counter\(18) & (!\pulse_gen|s_counter[17]~61\ & VCC))
-- \pulse_gen|s_counter[18]~63\ = CARRY((\pulse_gen|s_counter\(18) & !\pulse_gen|s_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(18),
	datad => VCC,
	cin => \pulse_gen|s_counter[17]~61\,
	combout => \pulse_gen|s_counter[18]~62_combout\,
	cout => \pulse_gen|s_counter[18]~63\);

-- Location: FF_X100_Y60_N11
\pulse_gen|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[18]~62_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(18));

-- Location: LCCOMB_X100_Y60_N12
\pulse_gen|s_counter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[19]~64_combout\ = (\pulse_gen|s_counter\(19) & (!\pulse_gen|s_counter[18]~63\)) # (!\pulse_gen|s_counter\(19) & ((\pulse_gen|s_counter[18]~63\) # (GND)))
-- \pulse_gen|s_counter[19]~65\ = CARRY((!\pulse_gen|s_counter[18]~63\) # (!\pulse_gen|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(19),
	datad => VCC,
	cin => \pulse_gen|s_counter[18]~63\,
	combout => \pulse_gen|s_counter[19]~64_combout\,
	cout => \pulse_gen|s_counter[19]~65\);

-- Location: FF_X100_Y60_N13
\pulse_gen|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[19]~64_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(19));

-- Location: LCCOMB_X100_Y60_N14
\pulse_gen|s_counter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[20]~66_combout\ = (\pulse_gen|s_counter\(20) & (\pulse_gen|s_counter[19]~65\ $ (GND))) # (!\pulse_gen|s_counter\(20) & (!\pulse_gen|s_counter[19]~65\ & VCC))
-- \pulse_gen|s_counter[20]~67\ = CARRY((\pulse_gen|s_counter\(20) & !\pulse_gen|s_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(20),
	datad => VCC,
	cin => \pulse_gen|s_counter[19]~65\,
	combout => \pulse_gen|s_counter[20]~66_combout\,
	cout => \pulse_gen|s_counter[20]~67\);

-- Location: FF_X100_Y60_N15
\pulse_gen|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[20]~66_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(20));

-- Location: LCCOMB_X100_Y60_N16
\pulse_gen|s_counter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[21]~68_combout\ = (\pulse_gen|s_counter\(21) & (!\pulse_gen|s_counter[20]~67\)) # (!\pulse_gen|s_counter\(21) & ((\pulse_gen|s_counter[20]~67\) # (GND)))
-- \pulse_gen|s_counter[21]~69\ = CARRY((!\pulse_gen|s_counter[20]~67\) # (!\pulse_gen|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(21),
	datad => VCC,
	cin => \pulse_gen|s_counter[20]~67\,
	combout => \pulse_gen|s_counter[21]~68_combout\,
	cout => \pulse_gen|s_counter[21]~69\);

-- Location: FF_X100_Y60_N17
\pulse_gen|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[21]~68_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(21));

-- Location: LCCOMB_X100_Y60_N18
\pulse_gen|s_counter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[22]~70_combout\ = (\pulse_gen|s_counter\(22) & (\pulse_gen|s_counter[21]~69\ $ (GND))) # (!\pulse_gen|s_counter\(22) & (!\pulse_gen|s_counter[21]~69\ & VCC))
-- \pulse_gen|s_counter[22]~71\ = CARRY((\pulse_gen|s_counter\(22) & !\pulse_gen|s_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(22),
	datad => VCC,
	cin => \pulse_gen|s_counter[21]~69\,
	combout => \pulse_gen|s_counter[22]~70_combout\,
	cout => \pulse_gen|s_counter[22]~71\);

-- Location: FF_X100_Y60_N19
\pulse_gen|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[22]~70_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(22));

-- Location: LCCOMB_X100_Y60_N20
\pulse_gen|s_counter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[23]~72_combout\ = (\pulse_gen|s_counter\(23) & (!\pulse_gen|s_counter[22]~71\)) # (!\pulse_gen|s_counter\(23) & ((\pulse_gen|s_counter[22]~71\) # (GND)))
-- \pulse_gen|s_counter[23]~73\ = CARRY((!\pulse_gen|s_counter[22]~71\) # (!\pulse_gen|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(23),
	datad => VCC,
	cin => \pulse_gen|s_counter[22]~71\,
	combout => \pulse_gen|s_counter[23]~72_combout\,
	cout => \pulse_gen|s_counter[23]~73\);

-- Location: FF_X100_Y60_N21
\pulse_gen|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[23]~72_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(23));

-- Location: LCCOMB_X100_Y60_N22
\pulse_gen|s_counter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[24]~74_combout\ = (\pulse_gen|s_counter\(24) & (\pulse_gen|s_counter[23]~73\ $ (GND))) # (!\pulse_gen|s_counter\(24) & (!\pulse_gen|s_counter[23]~73\ & VCC))
-- \pulse_gen|s_counter[24]~75\ = CARRY((\pulse_gen|s_counter\(24) & !\pulse_gen|s_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(24),
	datad => VCC,
	cin => \pulse_gen|s_counter[23]~73\,
	combout => \pulse_gen|s_counter[24]~74_combout\,
	cout => \pulse_gen|s_counter[24]~75\);

-- Location: FF_X100_Y60_N23
\pulse_gen|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[24]~74_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(24));

-- Location: LCCOMB_X100_Y60_N24
\pulse_gen|s_counter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[25]~76_combout\ = \pulse_gen|s_counter[24]~75\ $ (\pulse_gen|s_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulse_gen|s_counter\(25),
	cin => \pulse_gen|s_counter[24]~75\,
	combout => \pulse_gen|s_counter[25]~76_combout\);

-- Location: FF_X100_Y60_N25
\pulse_gen|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[25]~76_combout\,
	sclr => \pulse_gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(25));

-- Location: LCCOMB_X101_Y61_N12
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~0_combout\ = \pulse_gen|s_counter\(7) $ (VCC)
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~1\ = CARRY(\pulse_gen|s_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(7),
	datad => VCC,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~0_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~1\);

-- Location: LCCOMB_X101_Y61_N14
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~2_combout\ = (\pulse_gen|s_counter\(8) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~1\ & VCC)) # (!\pulse_gen|s_counter\(8) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~1\))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~3\ = CARRY((!\pulse_gen|s_counter\(8) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(8),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~1\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~2_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~3\);

-- Location: LCCOMB_X101_Y61_N16
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~4_combout\ = (\pulse_gen|s_counter\(9) & ((GND) # (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~3\))) # (!\pulse_gen|s_counter\(9) & 
-- (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~3\ $ (GND)))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~5\ = CARRY((\pulse_gen|s_counter\(9)) # (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(9),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~3\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~4_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~5\);

-- Location: LCCOMB_X101_Y61_N18
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~6_combout\ = (\pulse_gen|s_counter\(10) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~5\ & VCC)) # (!\pulse_gen|s_counter\(10) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~5\))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~7\ = CARRY((!\pulse_gen|s_counter\(10) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(10),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~5\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~6_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~7\);

-- Location: LCCOMB_X101_Y61_N20
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~8_combout\ = (\pulse_gen|s_counter\(11) & ((GND) # (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~7\))) # (!\pulse_gen|s_counter\(11) & 
-- (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~7\ $ (GND)))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~9\ = CARRY((\pulse_gen|s_counter\(11)) # (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(11),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~7\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~8_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~9\);

-- Location: LCCOMB_X101_Y61_N22
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~10_combout\ = (\pulse_gen|s_counter\(12) & (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~9\)) # (!\pulse_gen|s_counter\(12) & 
-- ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~9\) # (GND)))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~11\ = CARRY((!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~9\) # (!\pulse_gen|s_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(12),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~9\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~10_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~11\);

-- Location: LCCOMB_X101_Y61_N24
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~12_combout\ = (\pulse_gen|s_counter\(13) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~11\ $ (GND))) # (!\pulse_gen|s_counter\(13) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~11\ & VCC))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~13\ = CARRY((\pulse_gen|s_counter\(13) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(13),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~11\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~12_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~13\);

-- Location: LCCOMB_X101_Y61_N26
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~14_combout\ = (\pulse_gen|s_counter\(14) & (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~13\)) # (!\pulse_gen|s_counter\(14) & 
-- ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~13\) # (GND)))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~15\ = CARRY((!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~13\) # (!\pulse_gen|s_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(14),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~13\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~14_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~15\);

-- Location: LCCOMB_X101_Y61_N28
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~16_combout\ = (\pulse_gen|s_counter\(15) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~15\ $ (GND))) # (!\pulse_gen|s_counter\(15) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~15\ & VCC))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~17\ = CARRY((\pulse_gen|s_counter\(15) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(15),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~15\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~16_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~17\);

-- Location: LCCOMB_X101_Y61_N30
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~18_combout\ = (\pulse_gen|s_counter\(16) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~17\ & VCC)) # (!\pulse_gen|s_counter\(16) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~17\))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~19\ = CARRY((!\pulse_gen|s_counter\(16) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(16),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~17\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~18_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~19\);

-- Location: LCCOMB_X101_Y60_N0
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~20_combout\ = (\pulse_gen|s_counter\(17) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~19\ $ (GND))) # (!\pulse_gen|s_counter\(17) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~19\ & VCC))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~21\ = CARRY((\pulse_gen|s_counter\(17) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(17),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~19\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~20_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~21\);

-- Location: LCCOMB_X101_Y60_N2
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~22_combout\ = (\pulse_gen|s_counter\(18) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~21\ & VCC)) # (!\pulse_gen|s_counter\(18) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~21\))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~23\ = CARRY((!\pulse_gen|s_counter\(18) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(18),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~21\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~22_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~23\);

-- Location: LCCOMB_X101_Y60_N4
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~24_combout\ = (\pulse_gen|s_counter\(19) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~23\ $ (GND))) # (!\pulse_gen|s_counter\(19) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~23\ & VCC))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~25\ = CARRY((\pulse_gen|s_counter\(19) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(19),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~23\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~24_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~25\);

-- Location: LCCOMB_X101_Y60_N6
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~26_combout\ = (\pulse_gen|s_counter\(20) & (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~25\)) # (!\pulse_gen|s_counter\(20) & 
-- ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~25\) # (GND)))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~27\ = CARRY((!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~25\) # (!\pulse_gen|s_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(20),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~25\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~26_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~27\);

-- Location: LCCOMB_X101_Y60_N8
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~28_combout\ = (\pulse_gen|s_counter\(21) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~27\ $ (GND))) # (!\pulse_gen|s_counter\(21) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~27\ & VCC))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~29\ = CARRY((\pulse_gen|s_counter\(21) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(21),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~27\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~28_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~29\);

-- Location: LCCOMB_X101_Y60_N10
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~30_combout\ = (\pulse_gen|s_counter\(22) & (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~29\)) # (!\pulse_gen|s_counter\(22) & 
-- ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~29\) # (GND)))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~31\ = CARRY((!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~29\) # (!\pulse_gen|s_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(22),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~29\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~30_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~31\);

-- Location: LCCOMB_X101_Y60_N12
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~32_combout\ = (\pulse_gen|s_counter\(23) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~31\ $ (GND))) # (!\pulse_gen|s_counter\(23) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~31\ & VCC))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~33\ = CARRY((\pulse_gen|s_counter\(23) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(23),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~31\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~32_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~33\);

-- Location: LCCOMB_X101_Y60_N14
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~34_combout\ = (\pulse_gen|s_counter\(24) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~33\ & VCC)) # (!\pulse_gen|s_counter\(24) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~33\))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~35\ = CARRY((!\pulse_gen|s_counter\(24) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(24),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~33\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~34_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~35\);

-- Location: LCCOMB_X101_Y60_N16
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~36_combout\ = (\pulse_gen|s_counter\(25) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~35\ $ (GND))) # (!\pulse_gen|s_counter\(25) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~35\ & VCC))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~37\ = CARRY((\pulse_gen|s_counter\(25) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(25),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~35\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~36_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~37\);

-- Location: LCCOMB_X101_Y60_N18
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[26]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[26]~38_combout\ = !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~37\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~37\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[26]~38_combout\);

-- Location: LCCOMB_X101_Y60_N28
\timer|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~8_combout\ = (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~18_combout\) # ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~20_combout\) # 
-- ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~16_combout\) # (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~18_combout\,
	datab => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~20_combout\,
	datac => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~16_combout\,
	datad => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~14_combout\,
	combout => \timer|process_0~8_combout\);

-- Location: LCCOMB_X100_Y61_N0
\timer|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~1_combout\ = (\pulse_gen|s_counter\(2)) # ((\pulse_gen|s_counter\(1)) # ((\pulse_gen|s_counter\(0)) # (\pulse_gen|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(2),
	datab => \pulse_gen|s_counter\(1),
	datac => \pulse_gen|s_counter\(0),
	datad => \pulse_gen|s_counter\(3),
	combout => \timer|process_0~1_combout\);

-- Location: LCCOMB_X106_Y62_N10
\StartStopDebounce|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~0_combout\ = \StartStopDebounce|s_debounceCnt\(0) $ (VCC)
-- \StartStopDebounce|Add0~1\ = CARRY(\StartStopDebounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \StartStopDebounce|Add0~0_combout\,
	cout => \StartStopDebounce|Add0~1\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X107_Y61_N6
\StartStopDebounce|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	combout => \StartStopDebounce|s_dirtyIn~0_combout\);

-- Location: FF_X107_Y61_N7
\StartStopDebounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_dirtyIn~q\);

-- Location: LCCOMB_X106_Y62_N8
\StartStopDebounce|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_pulsedOut~5_combout\ = (!\StartStopDebounce|s_debounceCnt\(4) & (!\StartStopDebounce|s_debounceCnt\(2) & (!\StartStopDebounce|s_debounceCnt\(3) & !\StartStopDebounce|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(4),
	datab => \StartStopDebounce|s_debounceCnt\(2),
	datac => \StartStopDebounce|s_debounceCnt\(3),
	datad => \StartStopDebounce|s_debounceCnt\(1),
	combout => \StartStopDebounce|s_pulsedOut~5_combout\);

-- Location: FF_X107_Y61_N5
\StartStopDebounce|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \StartStopDebounce|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_previousIn~q\);

-- Location: LCCOMB_X106_Y62_N20
\StartStopDebounce|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~10_combout\ = (\StartStopDebounce|s_debounceCnt\(5) & (\StartStopDebounce|Add0~9\ & VCC)) # (!\StartStopDebounce|s_debounceCnt\(5) & (!\StartStopDebounce|Add0~9\))
-- \StartStopDebounce|Add0~11\ = CARRY((!\StartStopDebounce|s_debounceCnt\(5) & !\StartStopDebounce|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \StartStopDebounce|Add0~9\,
	combout => \StartStopDebounce|Add0~10_combout\,
	cout => \StartStopDebounce|Add0~11\);

-- Location: LCCOMB_X106_Y62_N22
\StartStopDebounce|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~12_combout\ = (\StartStopDebounce|s_debounceCnt\(6) & ((GND) # (!\StartStopDebounce|Add0~11\))) # (!\StartStopDebounce|s_debounceCnt\(6) & (\StartStopDebounce|Add0~11\ $ (GND)))
-- \StartStopDebounce|Add0~13\ = CARRY((\StartStopDebounce|s_debounceCnt\(6)) # (!\StartStopDebounce|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \StartStopDebounce|Add0~11\,
	combout => \StartStopDebounce|Add0~12_combout\,
	cout => \StartStopDebounce|Add0~13\);

-- Location: LCCOMB_X106_Y62_N24
\StartStopDebounce|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~14_combout\ = (\StartStopDebounce|s_debounceCnt\(7) & (\StartStopDebounce|Add0~13\ & VCC)) # (!\StartStopDebounce|s_debounceCnt\(7) & (!\StartStopDebounce|Add0~13\))
-- \StartStopDebounce|Add0~15\ = CARRY((!\StartStopDebounce|s_debounceCnt\(7) & !\StartStopDebounce|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \StartStopDebounce|Add0~13\,
	combout => \StartStopDebounce|Add0~14_combout\,
	cout => \StartStopDebounce|Add0~15\);

-- Location: LCCOMB_X105_Y61_N2
\StartStopDebounce|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~12_combout\ = (\StartStopDebounce|Add0~14_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StartStopDebounce|Add0~14_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~12_combout\);

-- Location: LCCOMB_X107_Y61_N4
\StartStopDebounce|s_debounceCnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt[0]~3_combout\ = ((\StartStopDebounce|s_debounceCnt\(22)) # ((\StartStopDebounce|s_debounceCnt[0]~2_combout\) # (!\StartStopDebounce|s_previousIn~q\))) # (!\StartStopDebounce|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_dirtyIn~q\,
	datab => \StartStopDebounce|s_debounceCnt\(22),
	datac => \StartStopDebounce|s_previousIn~q\,
	datad => \StartStopDebounce|s_debounceCnt[0]~2_combout\,
	combout => \StartStopDebounce|s_debounceCnt[0]~3_combout\);

-- Location: FF_X105_Y61_N3
\StartStopDebounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~12_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(7));

-- Location: LCCOMB_X106_Y62_N26
\StartStopDebounce|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~16_combout\ = (\StartStopDebounce|s_debounceCnt\(8) & ((GND) # (!\StartStopDebounce|Add0~15\))) # (!\StartStopDebounce|s_debounceCnt\(8) & (\StartStopDebounce|Add0~15\ $ (GND)))
-- \StartStopDebounce|Add0~17\ = CARRY((\StartStopDebounce|s_debounceCnt\(8)) # (!\StartStopDebounce|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \StartStopDebounce|Add0~15\,
	combout => \StartStopDebounce|Add0~16_combout\,
	cout => \StartStopDebounce|Add0~17\);

-- Location: LCCOMB_X107_Y61_N14
\StartStopDebounce|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~13_combout\ = (\StartStopDebounce|s_debounceCnt[0]~0_combout\ & ((\StartStopDebounce|Add0~16_combout\) # (!\StartStopDebounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_previousIn~q\,
	datac => \StartStopDebounce|s_debounceCnt[0]~0_combout\,
	datad => \StartStopDebounce|Add0~16_combout\,
	combout => \StartStopDebounce|s_debounceCnt~13_combout\);

-- Location: FF_X107_Y61_N15
\StartStopDebounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~13_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(8));

-- Location: LCCOMB_X106_Y62_N28
\StartStopDebounce|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~18_combout\ = (\StartStopDebounce|s_debounceCnt\(9) & (\StartStopDebounce|Add0~17\ & VCC)) # (!\StartStopDebounce|s_debounceCnt\(9) & (!\StartStopDebounce|Add0~17\))
-- \StartStopDebounce|Add0~19\ = CARRY((!\StartStopDebounce|s_debounceCnt\(9) & !\StartStopDebounce|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \StartStopDebounce|Add0~17\,
	combout => \StartStopDebounce|Add0~18_combout\,
	cout => \StartStopDebounce|Add0~19\);

-- Location: LCCOMB_X107_Y61_N12
\StartStopDebounce|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~14_combout\ = (\StartStopDebounce|s_debounceCnt[0]~0_combout\ & ((\StartStopDebounce|Add0~18_combout\) # (!\StartStopDebounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|Add0~18_combout\,
	datab => \StartStopDebounce|s_previousIn~q\,
	datad => \StartStopDebounce|s_debounceCnt[0]~0_combout\,
	combout => \StartStopDebounce|s_debounceCnt~14_combout\);

-- Location: FF_X107_Y61_N13
\StartStopDebounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~14_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(9));

-- Location: LCCOMB_X106_Y62_N30
\StartStopDebounce|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~20_combout\ = (\StartStopDebounce|s_debounceCnt\(10) & ((GND) # (!\StartStopDebounce|Add0~19\))) # (!\StartStopDebounce|s_debounceCnt\(10) & (\StartStopDebounce|Add0~19\ $ (GND)))
-- \StartStopDebounce|Add0~21\ = CARRY((\StartStopDebounce|s_debounceCnt\(10)) # (!\StartStopDebounce|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \StartStopDebounce|Add0~19\,
	combout => \StartStopDebounce|Add0~20_combout\,
	cout => \StartStopDebounce|Add0~21\);

-- Location: LCCOMB_X105_Y61_N12
\StartStopDebounce|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~15_combout\ = (\StartStopDebounce|Add0~20_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|Add0~20_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~15_combout\);

-- Location: FF_X105_Y61_N13
\StartStopDebounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~15_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(10));

-- Location: LCCOMB_X106_Y61_N0
\StartStopDebounce|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~22_combout\ = (\StartStopDebounce|s_debounceCnt\(11) & (\StartStopDebounce|Add0~21\ & VCC)) # (!\StartStopDebounce|s_debounceCnt\(11) & (!\StartStopDebounce|Add0~21\))
-- \StartStopDebounce|Add0~23\ = CARRY((!\StartStopDebounce|s_debounceCnt\(11) & !\StartStopDebounce|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \StartStopDebounce|Add0~21\,
	combout => \StartStopDebounce|Add0~22_combout\,
	cout => \StartStopDebounce|Add0~23\);

-- Location: LCCOMB_X107_Y61_N8
\StartStopDebounce|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~16_combout\ = (\StartStopDebounce|s_debounceCnt[0]~0_combout\ & ((\StartStopDebounce|Add0~22_combout\) # (!\StartStopDebounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|Add0~22_combout\,
	datab => \StartStopDebounce|s_previousIn~q\,
	datad => \StartStopDebounce|s_debounceCnt[0]~0_combout\,
	combout => \StartStopDebounce|s_debounceCnt~16_combout\);

-- Location: FF_X107_Y61_N9
\StartStopDebounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~16_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(11));

-- Location: LCCOMB_X106_Y61_N2
\StartStopDebounce|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~24_combout\ = (\StartStopDebounce|s_debounceCnt\(12) & ((GND) # (!\StartStopDebounce|Add0~23\))) # (!\StartStopDebounce|s_debounceCnt\(12) & (\StartStopDebounce|Add0~23\ $ (GND)))
-- \StartStopDebounce|Add0~25\ = CARRY((\StartStopDebounce|s_debounceCnt\(12)) # (!\StartStopDebounce|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \StartStopDebounce|Add0~23\,
	combout => \StartStopDebounce|Add0~24_combout\,
	cout => \StartStopDebounce|Add0~25\);

-- Location: LCCOMB_X106_Y61_N30
\StartStopDebounce|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~10_combout\ = (\StartStopDebounce|Add0~24_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|Add0~24_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~10_combout\);

-- Location: FF_X106_Y61_N31
\StartStopDebounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~10_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(12));

-- Location: LCCOMB_X106_Y61_N4
\StartStopDebounce|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~26_combout\ = (\StartStopDebounce|s_debounceCnt\(13) & (\StartStopDebounce|Add0~25\ & VCC)) # (!\StartStopDebounce|s_debounceCnt\(13) & (!\StartStopDebounce|Add0~25\))
-- \StartStopDebounce|Add0~27\ = CARRY((!\StartStopDebounce|s_debounceCnt\(13) & !\StartStopDebounce|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \StartStopDebounce|Add0~25\,
	combout => \StartStopDebounce|Add0~26_combout\,
	cout => \StartStopDebounce|Add0~27\);

-- Location: LCCOMB_X106_Y61_N24
\StartStopDebounce|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~11_combout\ = (\StartStopDebounce|Add0~26_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StartStopDebounce|Add0~26_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~11_combout\);

-- Location: FF_X106_Y61_N25
\StartStopDebounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~11_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(13));

-- Location: LCCOMB_X106_Y61_N6
\StartStopDebounce|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~28_combout\ = (\StartStopDebounce|s_debounceCnt\(14) & ((GND) # (!\StartStopDebounce|Add0~27\))) # (!\StartStopDebounce|s_debounceCnt\(14) & (\StartStopDebounce|Add0~27\ $ (GND)))
-- \StartStopDebounce|Add0~29\ = CARRY((\StartStopDebounce|s_debounceCnt\(14)) # (!\StartStopDebounce|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \StartStopDebounce|Add0~27\,
	combout => \StartStopDebounce|Add0~28_combout\,
	cout => \StartStopDebounce|Add0~29\);

-- Location: LCCOMB_X107_Y61_N30
\StartStopDebounce|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~17_combout\ = (\StartStopDebounce|s_debounceCnt[0]~0_combout\ & ((\StartStopDebounce|Add0~28_combout\) # (!\StartStopDebounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_previousIn~q\,
	datac => \StartStopDebounce|s_debounceCnt[0]~0_combout\,
	datad => \StartStopDebounce|Add0~28_combout\,
	combout => \StartStopDebounce|s_debounceCnt~17_combout\);

-- Location: FF_X107_Y61_N31
\StartStopDebounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~17_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(14));

-- Location: LCCOMB_X106_Y61_N8
\StartStopDebounce|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~30_combout\ = (\StartStopDebounce|s_debounceCnt\(15) & (\StartStopDebounce|Add0~29\ & VCC)) # (!\StartStopDebounce|s_debounceCnt\(15) & (!\StartStopDebounce|Add0~29\))
-- \StartStopDebounce|Add0~31\ = CARRY((!\StartStopDebounce|s_debounceCnt\(15) & !\StartStopDebounce|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \StartStopDebounce|Add0~29\,
	combout => \StartStopDebounce|Add0~30_combout\,
	cout => \StartStopDebounce|Add0~31\);

-- Location: LCCOMB_X106_Y61_N28
\StartStopDebounce|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~5_combout\ = (\StartStopDebounce|Add0~30_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StartStopDebounce|Add0~30_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~5_combout\);

-- Location: FF_X106_Y61_N29
\StartStopDebounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~5_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(15));

-- Location: LCCOMB_X106_Y61_N10
\StartStopDebounce|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~32_combout\ = (\StartStopDebounce|s_debounceCnt\(16) & ((GND) # (!\StartStopDebounce|Add0~31\))) # (!\StartStopDebounce|s_debounceCnt\(16) & (\StartStopDebounce|Add0~31\ $ (GND)))
-- \StartStopDebounce|Add0~33\ = CARRY((\StartStopDebounce|s_debounceCnt\(16)) # (!\StartStopDebounce|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \StartStopDebounce|Add0~31\,
	combout => \StartStopDebounce|Add0~32_combout\,
	cout => \StartStopDebounce|Add0~33\);

-- Location: LCCOMB_X103_Y61_N12
\StartStopDebounce|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~6_combout\ = (\StartStopDebounce|Add0~32_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StartStopDebounce|Add0~32_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~6_combout\);

-- Location: FF_X103_Y61_N13
\StartStopDebounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~6_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(16));

-- Location: LCCOMB_X106_Y61_N12
\StartStopDebounce|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~34_combout\ = (\StartStopDebounce|s_debounceCnt\(17) & (\StartStopDebounce|Add0~33\ & VCC)) # (!\StartStopDebounce|s_debounceCnt\(17) & (!\StartStopDebounce|Add0~33\))
-- \StartStopDebounce|Add0~35\ = CARRY((!\StartStopDebounce|s_debounceCnt\(17) & !\StartStopDebounce|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \StartStopDebounce|Add0~33\,
	combout => \StartStopDebounce|Add0~34_combout\,
	cout => \StartStopDebounce|Add0~35\);

-- Location: LCCOMB_X103_Y61_N26
\StartStopDebounce|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~7_combout\ = (\StartStopDebounce|Add0~34_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StartStopDebounce|Add0~34_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~7_combout\);

-- Location: FF_X103_Y61_N27
\StartStopDebounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~7_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(17));

-- Location: LCCOMB_X106_Y61_N14
\StartStopDebounce|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~36_combout\ = (\StartStopDebounce|s_debounceCnt\(18) & ((GND) # (!\StartStopDebounce|Add0~35\))) # (!\StartStopDebounce|s_debounceCnt\(18) & (\StartStopDebounce|Add0~35\ $ (GND)))
-- \StartStopDebounce|Add0~37\ = CARRY((\StartStopDebounce|s_debounceCnt\(18)) # (!\StartStopDebounce|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \StartStopDebounce|Add0~35\,
	combout => \StartStopDebounce|Add0~36_combout\,
	cout => \StartStopDebounce|Add0~37\);

-- Location: LCCOMB_X107_Y61_N10
\StartStopDebounce|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt[18]~18_combout\ = (\StartStopDebounce|s_debounceCnt[0]~0_combout\ & (\StartStopDebounce|s_debounceCnt[0]~3_combout\ & ((\StartStopDebounce|Add0~36_combout\) # (!\StartStopDebounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|Add0~36_combout\,
	datab => \StartStopDebounce|s_previousIn~q\,
	datac => \StartStopDebounce|s_debounceCnt[0]~0_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	combout => \StartStopDebounce|s_debounceCnt[18]~18_combout\);

-- Location: FF_X107_Y61_N11
\StartStopDebounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(18));

-- Location: LCCOMB_X106_Y61_N16
\StartStopDebounce|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~38_combout\ = (\StartStopDebounce|s_debounceCnt\(19) & (\StartStopDebounce|Add0~37\ & VCC)) # (!\StartStopDebounce|s_debounceCnt\(19) & (!\StartStopDebounce|Add0~37\))
-- \StartStopDebounce|Add0~39\ = CARRY((!\StartStopDebounce|s_debounceCnt\(19) & !\StartStopDebounce|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \StartStopDebounce|Add0~37\,
	combout => \StartStopDebounce|Add0~38_combout\,
	cout => \StartStopDebounce|Add0~39\);

-- Location: LCCOMB_X107_Y61_N18
\StartStopDebounce|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt[19]~19_combout\ = (\StartStopDebounce|s_debounceCnt[0]~0_combout\ & (\StartStopDebounce|s_debounceCnt[0]~3_combout\ & ((\StartStopDebounce|Add0~38_combout\) # (!\StartStopDebounce|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|Add0~38_combout\,
	datab => \StartStopDebounce|s_previousIn~q\,
	datac => \StartStopDebounce|s_debounceCnt[0]~0_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	combout => \StartStopDebounce|s_debounceCnt[19]~19_combout\);

-- Location: FF_X107_Y61_N19
\StartStopDebounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(19));

-- Location: LCCOMB_X106_Y61_N18
\StartStopDebounce|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~40_combout\ = (\StartStopDebounce|s_debounceCnt\(20) & ((GND) # (!\StartStopDebounce|Add0~39\))) # (!\StartStopDebounce|s_debounceCnt\(20) & (\StartStopDebounce|Add0~39\ $ (GND)))
-- \StartStopDebounce|Add0~41\ = CARRY((\StartStopDebounce|s_debounceCnt\(20)) # (!\StartStopDebounce|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \StartStopDebounce|Add0~39\,
	combout => \StartStopDebounce|Add0~40_combout\,
	cout => \StartStopDebounce|Add0~41\);

-- Location: LCCOMB_X105_Y61_N16
\StartStopDebounce|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt[20]~8_combout\ = (\StartStopDebounce|Add0~40_combout\ & (\StartStopDebounce|s_debounceCnt[0]~3_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|Add0~40_combout\,
	datac => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt[20]~8_combout\);

-- Location: FF_X105_Y61_N17
\StartStopDebounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(20));

-- Location: LCCOMB_X106_Y61_N20
\StartStopDebounce|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~42_combout\ = (\StartStopDebounce|s_debounceCnt\(21) & (\StartStopDebounce|Add0~41\ & VCC)) # (!\StartStopDebounce|s_debounceCnt\(21) & (!\StartStopDebounce|Add0~41\))
-- \StartStopDebounce|Add0~43\ = CARRY((!\StartStopDebounce|s_debounceCnt\(21) & !\StartStopDebounce|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \StartStopDebounce|Add0~41\,
	combout => \StartStopDebounce|Add0~42_combout\,
	cout => \StartStopDebounce|Add0~43\);

-- Location: LCCOMB_X105_Y61_N22
\StartStopDebounce|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt[21]~9_combout\ = (\StartStopDebounce|Add0~42_combout\ & (\StartStopDebounce|s_debounceCnt[0]~3_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|Add0~42_combout\,
	datac => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt[21]~9_combout\);

-- Location: FF_X105_Y61_N23
\StartStopDebounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(21));

-- Location: LCCOMB_X103_Y61_N18
\StartStopDebounce|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|LessThan0~6_combout\ = (!\StartStopDebounce|s_debounceCnt\(20) & !\StartStopDebounce|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StartStopDebounce|s_debounceCnt\(20),
	datad => \StartStopDebounce|s_debounceCnt\(21),
	combout => \StartStopDebounce|LessThan0~6_combout\);

-- Location: LCCOMB_X105_Y61_N24
\StartStopDebounce|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|LessThan0~3_combout\ = (\StartStopDebounce|s_debounceCnt\(13)) # ((\StartStopDebounce|s_debounceCnt\(12)) # ((\StartStopDebounce|s_debounceCnt\(10) & \StartStopDebounce|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(10),
	datab => \StartStopDebounce|s_debounceCnt\(13),
	datac => \StartStopDebounce|s_debounceCnt\(12),
	datad => \StartStopDebounce|s_debounceCnt\(11),
	combout => \StartStopDebounce|LessThan0~3_combout\);

-- Location: LCCOMB_X103_Y61_N24
\StartStopDebounce|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|LessThan0~4_combout\ = (!\StartStopDebounce|s_debounceCnt\(17) & (!\StartStopDebounce|s_debounceCnt\(15) & !\StartStopDebounce|s_debounceCnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(17),
	datac => \StartStopDebounce|s_debounceCnt\(15),
	datad => \StartStopDebounce|s_debounceCnt\(16),
	combout => \StartStopDebounce|LessThan0~4_combout\);

-- Location: LCCOMB_X105_Y61_N30
\StartStopDebounce|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|LessThan0~0_combout\ = (\StartStopDebounce|s_debounceCnt\(9) & \StartStopDebounce|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StartStopDebounce|s_debounceCnt\(9),
	datad => \StartStopDebounce|s_debounceCnt\(11),
	combout => \StartStopDebounce|LessThan0~0_combout\);

-- Location: LCCOMB_X105_Y61_N4
\StartStopDebounce|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|LessThan0~1_combout\ = (\StartStopDebounce|s_debounceCnt\(6) & ((\StartStopDebounce|s_debounceCnt\(5)) # ((\StartStopDebounce|s_debounceCnt\(0)) # (!\StartStopDebounce|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(5),
	datab => \StartStopDebounce|s_debounceCnt\(0),
	datac => \StartStopDebounce|s_debounceCnt\(6),
	datad => \StartStopDebounce|s_pulsedOut~5_combout\,
	combout => \StartStopDebounce|LessThan0~1_combout\);

-- Location: LCCOMB_X105_Y61_N14
\StartStopDebounce|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|LessThan0~2_combout\ = (\StartStopDebounce|LessThan0~0_combout\ & (\StartStopDebounce|s_debounceCnt\(8) & ((\StartStopDebounce|s_debounceCnt\(7)) # (\StartStopDebounce|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|LessThan0~0_combout\,
	datab => \StartStopDebounce|s_debounceCnt\(7),
	datac => \StartStopDebounce|LessThan0~1_combout\,
	datad => \StartStopDebounce|s_debounceCnt\(8),
	combout => \StartStopDebounce|LessThan0~2_combout\);

-- Location: LCCOMB_X106_Y61_N26
\StartStopDebounce|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|LessThan0~5_combout\ = ((\StartStopDebounce|s_debounceCnt\(14) & ((\StartStopDebounce|LessThan0~3_combout\) # (\StartStopDebounce|LessThan0~2_combout\)))) # (!\StartStopDebounce|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(14),
	datab => \StartStopDebounce|LessThan0~3_combout\,
	datac => \StartStopDebounce|LessThan0~4_combout\,
	datad => \StartStopDebounce|LessThan0~2_combout\,
	combout => \StartStopDebounce|LessThan0~5_combout\);

-- Location: LCCOMB_X107_Y61_N20
\StartStopDebounce|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|LessThan0~7_combout\ = ((\StartStopDebounce|s_debounceCnt\(18) & (\StartStopDebounce|LessThan0~5_combout\ & \StartStopDebounce|s_debounceCnt\(19)))) # (!\StartStopDebounce|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(18),
	datab => \StartStopDebounce|LessThan0~6_combout\,
	datac => \StartStopDebounce|LessThan0~5_combout\,
	datad => \StartStopDebounce|s_debounceCnt\(19),
	combout => \StartStopDebounce|LessThan0~7_combout\);

-- Location: LCCOMB_X107_Y61_N28
\StartStopDebounce|s_debounceCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt[0]~0_combout\ = (\StartStopDebounce|s_dirtyIn~q\ & ((!\StartStopDebounce|LessThan0~7_combout\) # (!\StartStopDebounce|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_dirtyIn~q\,
	datab => \StartStopDebounce|s_debounceCnt\(22),
	datad => \StartStopDebounce|LessThan0~7_combout\,
	combout => \StartStopDebounce|s_debounceCnt[0]~0_combout\);

-- Location: LCCOMB_X107_Y61_N24
\StartStopDebounce|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~1_combout\ = (\StartStopDebounce|s_debounceCnt[0]~0_combout\ & ((\StartStopDebounce|Add0~12_combout\) # (!\StartStopDebounce|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_previousIn~q\,
	datac => \StartStopDebounce|s_debounceCnt[0]~0_combout\,
	datad => \StartStopDebounce|Add0~12_combout\,
	combout => \StartStopDebounce|s_debounceCnt~1_combout\);

-- Location: FF_X107_Y61_N25
\StartStopDebounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~1_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(6));

-- Location: LCCOMB_X105_Y61_N26
\StartStopDebounce|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_pulsedOut~0_combout\ = (!\StartStopDebounce|s_debounceCnt\(6) & (!\StartStopDebounce|s_debounceCnt\(17) & (!\StartStopDebounce|s_debounceCnt\(16) & !\StartStopDebounce|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(6),
	datab => \StartStopDebounce|s_debounceCnt\(17),
	datac => \StartStopDebounce|s_debounceCnt\(16),
	datad => \StartStopDebounce|s_debounceCnt\(15),
	combout => \StartStopDebounce|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X105_Y61_N28
\StartStopDebounce|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_pulsedOut~1_combout\ = (!\StartStopDebounce|s_debounceCnt\(21) & (!\StartStopDebounce|s_debounceCnt\(20) & (!\StartStopDebounce|s_debounceCnt\(12) & !\StartStopDebounce|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(21),
	datab => \StartStopDebounce|s_debounceCnt\(20),
	datac => \StartStopDebounce|s_debounceCnt\(12),
	datad => \StartStopDebounce|s_debounceCnt\(13),
	combout => \StartStopDebounce|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X107_Y61_N0
\StartStopDebounce|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_pulsedOut~3_combout\ = (!\StartStopDebounce|s_debounceCnt\(14) & (!\StartStopDebounce|s_debounceCnt\(19) & (!\StartStopDebounce|s_debounceCnt\(11) & !\StartStopDebounce|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(14),
	datab => \StartStopDebounce|s_debounceCnt\(19),
	datac => \StartStopDebounce|s_debounceCnt\(11),
	datad => \StartStopDebounce|s_debounceCnt\(18),
	combout => \StartStopDebounce|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X105_Y61_N6
\StartStopDebounce|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_pulsedOut~2_combout\ = (!\StartStopDebounce|s_debounceCnt\(10) & (!\StartStopDebounce|s_debounceCnt\(7) & (!\StartStopDebounce|s_debounceCnt\(9) & !\StartStopDebounce|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(10),
	datab => \StartStopDebounce|s_debounceCnt\(7),
	datac => \StartStopDebounce|s_debounceCnt\(9),
	datad => \StartStopDebounce|s_debounceCnt\(8),
	combout => \StartStopDebounce|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X105_Y61_N20
\StartStopDebounce|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_pulsedOut~4_combout\ = (\StartStopDebounce|s_pulsedOut~0_combout\ & (\StartStopDebounce|s_pulsedOut~1_combout\ & (\StartStopDebounce|s_pulsedOut~3_combout\ & \StartStopDebounce|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_pulsedOut~0_combout\,
	datab => \StartStopDebounce|s_pulsedOut~1_combout\,
	datac => \StartStopDebounce|s_pulsedOut~3_combout\,
	datad => \StartStopDebounce|s_pulsedOut~2_combout\,
	combout => \StartStopDebounce|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X105_Y61_N10
\StartStopDebounce|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt[0]~2_combout\ = (\StartStopDebounce|s_debounceCnt\(5)) # (((\StartStopDebounce|s_debounceCnt\(0)) # (!\StartStopDebounce|s_pulsedOut~4_combout\)) # (!\StartStopDebounce|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(5),
	datab => \StartStopDebounce|s_pulsedOut~5_combout\,
	datac => \StartStopDebounce|s_debounceCnt\(0),
	datad => \StartStopDebounce|s_pulsedOut~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X107_Y61_N26
\StartStopDebounce|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt[22]~25_combout\ = (\StartStopDebounce|s_dirtyIn~q\ & ((\StartStopDebounce|s_debounceCnt\(22) & ((!\StartStopDebounce|LessThan0~7_combout\))) # (!\StartStopDebounce|s_debounceCnt\(22) & 
-- (\StartStopDebounce|s_debounceCnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_dirtyIn~q\,
	datab => \StartStopDebounce|s_debounceCnt\(22),
	datac => \StartStopDebounce|s_debounceCnt[0]~2_combout\,
	datad => \StartStopDebounce|LessThan0~7_combout\,
	combout => \StartStopDebounce|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X106_Y61_N22
\StartStopDebounce|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~44_combout\ = \StartStopDebounce|s_debounceCnt\(22) $ (\StartStopDebounce|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(22),
	cin => \StartStopDebounce|Add0~43\,
	combout => \StartStopDebounce|Add0~44_combout\);

-- Location: LCCOMB_X107_Y61_N2
\StartStopDebounce|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt[22]~26_combout\ = (\StartStopDebounce|s_previousIn~q\ & (\StartStopDebounce|s_debounceCnt[22]~25_combout\ & ((\StartStopDebounce|Add0~44_combout\)))) # (!\StartStopDebounce|s_previousIn~q\ & 
-- (((\StartStopDebounce|s_debounceCnt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt[22]~25_combout\,
	datab => \StartStopDebounce|s_previousIn~q\,
	datac => \StartStopDebounce|s_debounceCnt[0]~0_combout\,
	datad => \StartStopDebounce|Add0~44_combout\,
	combout => \StartStopDebounce|s_debounceCnt[22]~26_combout\);

-- Location: FF_X107_Y61_N3
\StartStopDebounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(22));

-- Location: LCCOMB_X107_Y61_N16
\StartStopDebounce|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt[0]~4_combout\ = (\StartStopDebounce|s_dirtyIn~q\ & (\StartStopDebounce|s_previousIn~q\ & ((!\StartStopDebounce|LessThan0~7_combout\) # (!\StartStopDebounce|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_dirtyIn~q\,
	datab => \StartStopDebounce|s_debounceCnt\(22),
	datac => \StartStopDebounce|s_previousIn~q\,
	datad => \StartStopDebounce|LessThan0~7_combout\,
	combout => \StartStopDebounce|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X105_Y61_N18
\StartStopDebounce|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~24_combout\ = (\StartStopDebounce|Add0~0_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StartStopDebounce|Add0~0_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~24_combout\);

-- Location: FF_X105_Y61_N19
\StartStopDebounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~24_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(0));

-- Location: LCCOMB_X106_Y62_N12
\StartStopDebounce|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~2_combout\ = (\StartStopDebounce|s_debounceCnt\(1) & (\StartStopDebounce|Add0~1\ & VCC)) # (!\StartStopDebounce|s_debounceCnt\(1) & (!\StartStopDebounce|Add0~1\))
-- \StartStopDebounce|Add0~3\ = CARRY((!\StartStopDebounce|s_debounceCnt\(1) & !\StartStopDebounce|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \StartStopDebounce|Add0~1\,
	combout => \StartStopDebounce|Add0~2_combout\,
	cout => \StartStopDebounce|Add0~3\);

-- Location: LCCOMB_X106_Y62_N0
\StartStopDebounce|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~20_combout\ = (\StartStopDebounce|Add0~2_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|Add0~2_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~20_combout\);

-- Location: FF_X106_Y62_N1
\StartStopDebounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~20_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(1));

-- Location: LCCOMB_X106_Y62_N14
\StartStopDebounce|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~4_combout\ = (\StartStopDebounce|s_debounceCnt\(2) & ((GND) # (!\StartStopDebounce|Add0~3\))) # (!\StartStopDebounce|s_debounceCnt\(2) & (\StartStopDebounce|Add0~3\ $ (GND)))
-- \StartStopDebounce|Add0~5\ = CARRY((\StartStopDebounce|s_debounceCnt\(2)) # (!\StartStopDebounce|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \StartStopDebounce|Add0~3\,
	combout => \StartStopDebounce|Add0~4_combout\,
	cout => \StartStopDebounce|Add0~5\);

-- Location: LCCOMB_X106_Y62_N2
\StartStopDebounce|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~21_combout\ = (\StartStopDebounce|Add0~4_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StartStopDebounce|Add0~4_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~21_combout\);

-- Location: FF_X106_Y62_N3
\StartStopDebounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~21_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(2));

-- Location: LCCOMB_X106_Y62_N16
\StartStopDebounce|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~6_combout\ = (\StartStopDebounce|s_debounceCnt\(3) & (\StartStopDebounce|Add0~5\ & VCC)) # (!\StartStopDebounce|s_debounceCnt\(3) & (!\StartStopDebounce|Add0~5\))
-- \StartStopDebounce|Add0~7\ = CARRY((!\StartStopDebounce|s_debounceCnt\(3) & !\StartStopDebounce|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \StartStopDebounce|Add0~5\,
	combout => \StartStopDebounce|Add0~6_combout\,
	cout => \StartStopDebounce|Add0~7\);

-- Location: LCCOMB_X106_Y62_N4
\StartStopDebounce|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~22_combout\ = (\StartStopDebounce|Add0~6_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|Add0~6_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~22_combout\);

-- Location: FF_X106_Y62_N5
\StartStopDebounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~22_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(3));

-- Location: LCCOMB_X106_Y62_N18
\StartStopDebounce|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|Add0~8_combout\ = (\StartStopDebounce|s_debounceCnt\(4) & ((GND) # (!\StartStopDebounce|Add0~7\))) # (!\StartStopDebounce|s_debounceCnt\(4) & (\StartStopDebounce|Add0~7\ $ (GND)))
-- \StartStopDebounce|Add0~9\ = CARRY((\StartStopDebounce|s_debounceCnt\(4)) # (!\StartStopDebounce|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \StartStopDebounce|Add0~7\,
	combout => \StartStopDebounce|Add0~8_combout\,
	cout => \StartStopDebounce|Add0~9\);

-- Location: LCCOMB_X106_Y62_N6
\StartStopDebounce|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~23_combout\ = (\StartStopDebounce|Add0~8_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \StartStopDebounce|Add0~8_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~23_combout\);

-- Location: FF_X106_Y62_N7
\StartStopDebounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~23_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(4));

-- Location: LCCOMB_X105_Y61_N0
\StartStopDebounce|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_debounceCnt~27_combout\ = (\StartStopDebounce|Add0~10_combout\ & \StartStopDebounce|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|Add0~10_combout\,
	datad => \StartStopDebounce|s_debounceCnt[0]~4_combout\,
	combout => \StartStopDebounce|s_debounceCnt~27_combout\);

-- Location: FF_X105_Y61_N1
\StartStopDebounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_debounceCnt~27_combout\,
	ena => \StartStopDebounce|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_debounceCnt\(5));

-- Location: LCCOMB_X107_Y61_N22
\StartStopDebounce|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_pulsedOut~6_combout\ = (\StartStopDebounce|s_dirtyIn~q\ & (\StartStopDebounce|s_previousIn~q\ & (\StartStopDebounce|s_debounceCnt\(0) & !\StartStopDebounce|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_dirtyIn~q\,
	datab => \StartStopDebounce|s_previousIn~q\,
	datac => \StartStopDebounce|s_debounceCnt\(0),
	datad => \StartStopDebounce|s_debounceCnt\(22),
	combout => \StartStopDebounce|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X105_Y61_N8
\StartStopDebounce|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \StartStopDebounce|s_pulsedOut~7_combout\ = (!\StartStopDebounce|s_debounceCnt\(5) & (\StartStopDebounce|s_pulsedOut~4_combout\ & (\StartStopDebounce|s_pulsedOut~6_combout\ & \StartStopDebounce|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStopDebounce|s_debounceCnt\(5),
	datab => \StartStopDebounce|s_pulsedOut~4_combout\,
	datac => \StartStopDebounce|s_pulsedOut~6_combout\,
	datad => \StartStopDebounce|s_pulsedOut~5_combout\,
	combout => \StartStopDebounce|s_pulsedOut~7_combout\);

-- Location: FF_X105_Y61_N9
\StartStopDebounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \StartStopDebounce|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StartStopDebounce|s_pulsedOut~q\);

-- Location: LCCOMB_X102_Y61_N22
\timer|s_mode~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_mode~0_combout\ = (!\ResetDebounce|s_pulsedOut~q\ & (\timer|s_mode~q\ $ (\StartStopDebounce|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_mode~q\,
	datab => \ResetDebounce|s_pulsedOut~q\,
	datad => \StartStopDebounce|s_pulsedOut~q\,
	combout => \timer|s_mode~0_combout\);

-- Location: LCCOMB_X102_Y61_N12
\timer|s_mode~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_mode~1_combout\ = (\timer|s_mode~0_combout\ & ((\timer|Equal0~1_combout\) # (\timer|process_0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal0~1_combout\,
	datac => \timer|s_mode~0_combout\,
	datad => \timer|process_0~15_combout\,
	combout => \timer|s_mode~1_combout\);

-- Location: FF_X102_Y61_N13
\timer|s_mode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_mode~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_mode~q\);

-- Location: LCCOMB_X102_Y61_N26
\timer|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~0_combout\ = ((\pulse_gen|s_counter\(4)) # ((\pulse_gen|s_counter\(6)) # (\pulse_gen|s_counter\(5)))) # (!\timer|s_mode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_mode~q\,
	datab => \pulse_gen|s_counter\(4),
	datac => \pulse_gen|s_counter\(6),
	datad => \pulse_gen|s_counter\(5),
	combout => \timer|process_0~0_combout\);

-- Location: LCCOMB_X101_Y61_N10
\timer|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~9_combout\ = (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~0_combout\) # ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~4_combout\) # 
-- (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~0_combout\,
	datab => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~4_combout\,
	datad => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~2_combout\,
	combout => \timer|process_0~9_combout\);

-- Location: LCCOMB_X101_Y61_N0
\timer|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~10_combout\ = (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~8_combout\) # ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~6_combout\) # 
-- ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~10_combout\) # (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~8_combout\,
	datab => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~6_combout\,
	datac => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~10_combout\,
	datad => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~12_combout\,
	combout => \timer|process_0~10_combout\);

-- Location: LCCOMB_X101_Y61_N2
\timer|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~11_combout\ = (\timer|process_0~1_combout\) # ((\timer|process_0~0_combout\) # ((\timer|process_0~9_combout\) # (\timer|process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|process_0~1_combout\,
	datab => \timer|process_0~0_combout\,
	datac => \timer|process_0~9_combout\,
	datad => \timer|process_0~10_combout\,
	combout => \timer|process_0~11_combout\);

-- Location: LCCOMB_X101_Y60_N26
\timer|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~12_combout\ = (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~22_combout\) # ((\timer|process_0~8_combout\) # ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~24_combout\) # 
-- (\timer|process_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~22_combout\,
	datab => \timer|process_0~8_combout\,
	datac => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~24_combout\,
	datad => \timer|process_0~11_combout\,
	combout => \timer|process_0~12_combout\);

-- Location: LCCOMB_X101_Y60_N20
\timer|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~13_combout\ = (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~26_combout\) # ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~28_combout\) # ((\timer|process_0~12_combout\) # 
-- (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~26_combout\,
	datab => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~28_combout\,
	datac => \timer|process_0~12_combout\,
	datad => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~30_combout\,
	combout => \timer|process_0~13_combout\);

-- Location: LCCOMB_X101_Y60_N22
\timer|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~14_combout\ = (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~32_combout\) # ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~34_combout\) # (\timer|process_0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~32_combout\,
	datab => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~34_combout\,
	datad => \timer|process_0~13_combout\,
	combout => \timer|process_0~14_combout\);

-- Location: LCCOMB_X101_Y61_N4
\timer|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~5_combout\ = (\pulse_gen|s_counter\(16)) # ((\pulse_gen|s_counter\(17)) # ((\pulse_gen|s_counter\(14)) # (\pulse_gen|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(16),
	datab => \pulse_gen|s_counter\(17),
	datac => \pulse_gen|s_counter\(14),
	datad => \pulse_gen|s_counter\(15),
	combout => \timer|process_0~5_combout\);

-- Location: LCCOMB_X100_Y60_N30
\timer|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~2_combout\ = (\pulse_gen|s_counter\(24)) # ((\pulse_gen|s_counter\(25)) # ((\pulse_gen|s_counter\(23)) # (\pulse_gen|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(24),
	datab => \pulse_gen|s_counter\(25),
	datac => \pulse_gen|s_counter\(23),
	datad => \pulse_gen|s_counter\(22),
	combout => \timer|process_0~2_combout\);

-- Location: LCCOMB_X100_Y60_N28
\timer|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~3_combout\ = (\pulse_gen|s_counter\(19)) # ((\pulse_gen|s_counter\(21)) # ((\pulse_gen|s_counter\(20)) # (\pulse_gen|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(19),
	datab => \pulse_gen|s_counter\(21),
	datac => \pulse_gen|s_counter\(20),
	datad => \pulse_gen|s_counter\(18),
	combout => \timer|process_0~3_combout\);

-- Location: LCCOMB_X102_Y61_N28
\timer|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~4_combout\ = ((\pulse_gen|s_counter\(7)) # ((\timer|process_0~2_combout\) # (\timer|process_0~3_combout\))) # (!\pulse_gen|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|LessThan0~0_combout\,
	datab => \pulse_gen|s_counter\(7),
	datac => \timer|process_0~2_combout\,
	datad => \timer|process_0~3_combout\,
	combout => \timer|process_0~4_combout\);

-- Location: LCCOMB_X102_Y61_N10
\timer|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~6_combout\ = (\pulse_gen|s_counter\(12)) # ((\pulse_gen|s_counter\(13)) # ((\timer|process_0~5_combout\) # (\timer|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(12),
	datab => \pulse_gen|s_counter\(13),
	datac => \timer|process_0~5_combout\,
	datad => \timer|process_0~4_combout\,
	combout => \timer|process_0~6_combout\);

-- Location: LCCOMB_X102_Y61_N24
\timer|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~7_combout\ = (\timer|process_0~0_combout\) # ((\timer|process_0~1_combout\) # (\timer|process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|process_0~0_combout\,
	datac => \timer|process_0~1_combout\,
	datad => \timer|process_0~6_combout\,
	combout => \timer|process_0~7_combout\);

-- Location: LCCOMB_X101_Y60_N30
\timer|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|process_0~15_combout\ = (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[26]~38_combout\ & (((\timer|process_0~7_combout\)))) # (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[26]~38_combout\ & 
-- ((\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~36_combout\) # ((\timer|process_0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[26]~38_combout\,
	datab => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~36_combout\,
	datac => \timer|process_0~14_combout\,
	datad => \timer|process_0~7_combout\,
	combout => \timer|process_0~15_combout\);

-- Location: LCCOMB_X101_Y60_N24
\timer|s_value[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_value[4]~2_combout\ = (\ResetDebounce|s_pulsedOut~q\) # (!\timer|process_0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_pulsedOut~q\,
	datad => \timer|process_0~15_combout\,
	combout => \timer|s_value[4]~2_combout\);

-- Location: FF_X101_Y60_N5
\timer|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timer|s_value~1_combout\,
	sload => VCC,
	ena => \timer|s_value[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_value\(0));

-- Location: LCCOMB_X102_Y60_N14
\timer|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~2_combout\ = (\timer|s_value\(1) & (!\timer|Add0~1\)) # (!\timer|s_value\(1) & (\timer|Add0~1\ & VCC))
-- \timer|Add0~3\ = CARRY((\timer|s_value\(1) & !\timer|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value\(1),
	datad => VCC,
	cin => \timer|Add0~1\,
	combout => \timer|Add0~2_combout\,
	cout => \timer|Add0~3\);

-- Location: LCCOMB_X102_Y60_N26
\timer|s_value~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_value~7_combout\ = (!\timer|Add0~2_combout\ & \timer|s_value[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|Add0~2_combout\,
	datad => \timer|s_value[4]~0_combout\,
	combout => \timer|s_value~7_combout\);

-- Location: FF_X101_Y60_N17
\timer|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timer|s_value~7_combout\,
	sload => VCC,
	ena => \timer|s_value[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_value\(1));

-- Location: LCCOMB_X102_Y60_N16
\timer|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~4_combout\ = (\timer|s_value\(2) & ((GND) # (!\timer|Add0~3\))) # (!\timer|s_value\(2) & (\timer|Add0~3\ $ (GND)))
-- \timer|Add0~5\ = CARRY((\timer|s_value\(2)) # (!\timer|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_value\(2),
	datad => VCC,
	cin => \timer|Add0~3\,
	combout => \timer|Add0~4_combout\,
	cout => \timer|Add0~5\);

-- Location: LCCOMB_X102_Y60_N28
\timer|s_value~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_value~6_combout\ = (!\ResetDebounce|s_pulsedOut~q\ & (\timer|Equal0~1_combout\ $ (!\timer|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ResetDebounce|s_pulsedOut~q\,
	datac => \timer|Equal0~1_combout\,
	datad => \timer|Add0~4_combout\,
	combout => \timer|s_value~6_combout\);

-- Location: FF_X101_Y60_N23
\timer|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timer|s_value~6_combout\,
	sload => VCC,
	ena => \timer|s_value[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_value\(2));

-- Location: LCCOMB_X102_Y60_N18
\timer|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~6_combout\ = (\timer|s_value\(3) & (!\timer|Add0~5\)) # (!\timer|s_value\(3) & (\timer|Add0~5\ & VCC))
-- \timer|Add0~7\ = CARRY((\timer|s_value\(3) & !\timer|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_value\(3),
	datad => VCC,
	cin => \timer|Add0~5\,
	combout => \timer|Add0~6_combout\,
	cout => \timer|Add0~7\);

-- Location: LCCOMB_X102_Y60_N10
\timer|s_value~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_value~5_combout\ = (\timer|s_value[4]~0_combout\ & !\timer|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value[4]~0_combout\,
	datad => \timer|Add0~6_combout\,
	combout => \timer|s_value~5_combout\);

-- Location: FF_X101_Y60_N25
\timer|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timer|s_value~5_combout\,
	sload => VCC,
	ena => \timer|s_value[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_value\(3));

-- Location: LCCOMB_X102_Y60_N4
\timer|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~0_combout\ = (((\timer|s_value\(2)) # (!\timer|s_value\(1))) # (!\timer|s_value\(0))) # (!\timer|s_value\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value\(3),
	datab => \timer|s_value\(0),
	datac => \timer|s_value\(1),
	datad => \timer|s_value\(2),
	combout => \timer|Equal0~0_combout\);

-- Location: LCCOMB_X102_Y60_N6
\timer|s_value[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_value[4]~0_combout\ = (!\ResetDebounce|s_pulsedOut~q\ & (((\timer|Equal0~0_combout\) # (!\timer|s_value\(5))) # (!\timer|s_value\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value\(4),
	datab => \timer|s_value\(5),
	datac => \timer|Equal0~0_combout\,
	datad => \ResetDebounce|s_pulsedOut~q\,
	combout => \timer|s_value[4]~0_combout\);

-- Location: LCCOMB_X102_Y60_N20
\timer|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~8_combout\ = (\timer|s_value\(4) & (\timer|Add0~7\ $ (GND))) # (!\timer|s_value\(4) & ((GND) # (!\timer|Add0~7\)))
-- \timer|Add0~9\ = CARRY((!\timer|Add0~7\) # (!\timer|s_value\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value\(4),
	datad => VCC,
	cin => \timer|Add0~7\,
	combout => \timer|Add0~8_combout\,
	cout => \timer|Add0~9\);

-- Location: LCCOMB_X102_Y60_N24
\timer|s_value~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_value~4_combout\ = (\timer|s_value[4]~0_combout\ & !\timer|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value[4]~0_combout\,
	datad => \timer|Add0~8_combout\,
	combout => \timer|s_value~4_combout\);

-- Location: FF_X101_Y60_N9
\timer|s_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timer|s_value~4_combout\,
	sload => VCC,
	ena => \timer|s_value[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_value\(4));

-- Location: LCCOMB_X102_Y60_N22
\timer|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Add0~10_combout\ = \timer|Add0~9\ $ (\timer|s_value\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer|s_value\(5),
	cin => \timer|Add0~9\,
	combout => \timer|Add0~10_combout\);

-- Location: LCCOMB_X102_Y60_N30
\timer|s_value~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_value~3_combout\ = (!\timer|Add0~10_combout\ & \timer|s_value[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Add0~10_combout\,
	datad => \timer|s_value[4]~0_combout\,
	combout => \timer|s_value~3_combout\);

-- Location: FF_X101_Y60_N19
\timer|s_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timer|s_value~3_combout\,
	sload => VCC,
	ena => \timer|s_value[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_value\(5));

-- Location: LCCOMB_X106_Y60_N4
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \timer|s_value\(3) $ (GND)
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(!\timer|s_value\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value\(3),
	datad => VCC,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X106_Y60_N6
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\timer|s_value\(4) & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # (!\timer|s_value\(4) & 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC))
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((\timer|s_value\(4) & !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value\(4),
	datad => VCC,
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X106_Y60_N8
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\timer|s_value\(5) & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC)) # (!\timer|s_value\(5) & 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND)))
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\timer|s_value\(5) & !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_value\(5),
	datad => VCC,
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X106_Y60_N10
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X105_Y60_N16
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X106_Y60_N0
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (!\timer|s_value\(5) & \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer|s_value\(5),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X105_Y60_N10
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X106_Y60_N2
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (!\timer|s_value\(4) & \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value\(4),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X105_Y60_N0
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X106_Y60_N20
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (!\timer|s_value\(3) & \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer|s_value\(3),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X105_Y60_N12
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timer|s_value\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timer|s_value\(2),
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X105_Y60_N30
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \timer|s_value\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \timer|s_value\(2),
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X106_Y60_N22
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\)))
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datad => VCC,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X106_Y60_N24
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\) # 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\)))
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X106_Y60_N26
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X106_Y60_N28
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\) # 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\)))
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X106_Y60_N30
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X106_Y60_N14
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \timer|s_value\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timer|s_value\(2),
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X107_Y60_N26
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X107_Y60_N12
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ = (!\timer|s_value\(1) & \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_value\(1),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X107_Y60_N2
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ = (!\timer|s_value\(1) & !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_value\(1),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X107_Y60_N14
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\) # (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\)))
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\) # (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\,
	datad => VCC,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X107_Y60_N16
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\) # 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\)))
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X106_Y60_N16
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[28]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\timer|s_value\(5)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \timer|s_value\(5),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\);

-- Location: LCCOMB_X107_Y60_N4
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X107_Y60_N10
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X106_Y60_N18
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[27]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\timer|s_value\(4)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \timer|s_value\(4),
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\);

-- Location: LCCOMB_X106_Y60_N12
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\timer|s_value\(3))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value\(3),
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\);

-- Location: LCCOMB_X107_Y60_N8
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X107_Y60_N18
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))))
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X107_Y60_N20
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\ & 
-- !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y60_N22
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\) # ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X107_Y60_N24
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X107_Y60_N6
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (((\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X107_Y60_N28
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (!\timer|s_value\(1))) # 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_value\(1),
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X107_Y60_N0
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\) # 
-- ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (((\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X107_Y60_N30
\unid_7seg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux6~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & (\timer|s_value\(0) $ 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (!\timer|s_value\(0) & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ $ 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datac => \timer|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	combout => \unid_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y60_N28
\unid_7seg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux5~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & ((\timer|s_value\(0) & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\)) # (!\timer|s_value\(0) & 
-- ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\))))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (\timer|s_value\(0) 
-- $ (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \timer|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \unid_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y60_N2
\unid_7seg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux4~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & ((\timer|s_value\(0)) # 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (\timer|s_value\(0) & 
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \timer|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \unid_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y60_N8
\unid_7seg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux3~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & ((!\timer|s_value\(0)))) # 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & \timer|s_value\(0))))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ $ (!\timer|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \timer|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \unid_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y60_N6
\unid_7seg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux2~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & ((!\timer|s_value\(0))))) # 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)) # 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & ((!\timer|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \timer|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \unid_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y60_N0
\unid_7seg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux1~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (!\timer|s_value\(0) & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ $ 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & 
-- ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\) # (!\timer|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \timer|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \unid_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y60_N26
\unid_7seg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux0~0_combout\ = (\timer|s_value\(0) & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\) # (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ $ 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\)))) # (!\timer|s_value\(0) & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\) # (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ 
-- $ (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \timer|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \unid_7seg|Mux0~0_combout\);

-- Location: LCCOMB_X106_Y56_N12
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \timer|s_value\(3) $ (GND)
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(!\timer|s_value\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value\(3),
	datad => VCC,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X106_Y56_N14
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\timer|s_value\(4) & (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # (!\timer|s_value\(4) & 
-- (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC))
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((\timer|s_value\(4) & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value\(4),
	datad => VCC,
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X106_Y56_N16
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\timer|s_value\(5) & (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC)) # (!\timer|s_value\(5) & 
-- (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND)))
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\timer|s_value\(5) & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_value\(5),
	datad => VCC,
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X106_Y56_N18
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X106_Y56_N6
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X106_Y56_N4
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (!\timer|s_value\(5) & \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer|s_value\(5),
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X106_Y56_N2
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X106_Y56_N20
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (!\timer|s_value\(4) & \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_value\(4),
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X106_Y56_N26
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X106_Y56_N24
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (!\timer|s_value\(3) & \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer|s_value\(3),
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X106_Y56_N8
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\timer|s_value\(2) & \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer|s_value\(2),
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X106_Y56_N30
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (\timer|s_value\(2) & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer|s_value\(2),
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X107_Y56_N10
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X107_Y56_N12
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X107_Y56_N14
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X107_Y56_N16
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & (!\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & 
-- !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y56_N18
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X106_Y56_N10
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\timer|s_value\(4))) # (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \timer|s_value\(4),
	datac => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X107_Y56_N4
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X107_Y56_N6
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X106_Y56_N28
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\timer|s_value\(3)))) # (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \timer|s_value\(3),
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X106_Y56_N0
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\timer|s_value\(2) & \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer|s_value\(2),
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X107_Y56_N8
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X107_Y56_N20
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[20]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (!\timer|s_value\(1) & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_value\(1),
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X107_Y56_N2
\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[20]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (!\timer|s_value\(1) & \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_value\(1),
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X107_Y56_N22
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\) # (\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datad => VCC,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X107_Y56_N24
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & (!\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & 
-- !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X107_Y56_N26
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & ((\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\) # 
-- (\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X107_Y56_N28
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & (!\bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & 
-- !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datad => VCC,
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X107_Y56_N30
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X114_Y30_N0
\dezen_7seg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezen_7seg|Mux6~0_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ 
-- (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \dezen_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y30_N2
\dezen_7seg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezen_7seg|Mux5~0_combout\ = (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \dezen_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y30_N28
\dezen_7seg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezen_7seg|Mux4~0_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \dezen_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y30_N10
\dezen_7seg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezen_7seg|Mux3~0_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \dezen_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y30_N12
\dezen_7seg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezen_7seg|Mux2~0_combout\ = ((!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \dezen_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y30_N22
\dezen_7seg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezen_7seg|Mux1~0_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \dezen_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y30_N20
\dezen_7seg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezen_7seg|Mux0~0_combout\ = (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # 
-- (\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \dezen_7seg|Mux0~0_combout\);

-- Location: FF_X101_Y60_N13
\timer|s_startReady\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timer|s_value[4]~0_combout\,
	sload => VCC,
	ena => \timer|s_value[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_startReady~q\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


