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

-- DATE "04/06/2023 01:10:00"

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

ENTITY 	DrinksMachine IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(2 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END DrinksMachine;

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
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksMachine IS
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
SIGNAL ww_LEDR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
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
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \debounce1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debounce1|s_dirtyIn~q\ : std_logic;
SIGNAL \debounce1|s_previousIn~q\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debounce1|Add0~0_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debounce1|Add0~1\ : std_logic;
SIGNAL \debounce1|Add0~2_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \debounce1|Add0~3\ : std_logic;
SIGNAL \debounce1|Add0~4_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~20_combout\ : std_logic;
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
SIGNAL \debounce1|Add0~33\ : std_logic;
SIGNAL \debounce1|Add0~34_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debounce1|Add0~35\ : std_logic;
SIGNAL \debounce1|Add0~36_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \debounce1|Add0~37\ : std_logic;
SIGNAL \debounce1|Add0~38_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \debounce1|Add0~39\ : std_logic;
SIGNAL \debounce1|Add0~40_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debounce1|Add0~41\ : std_logic;
SIGNAL \debounce1|Add0~43\ : std_logic;
SIGNAL \debounce1|Add0~44_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[9]~2_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~4_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~5_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~6_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~1_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~2_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~3_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~7_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[9]~3_combout\ : std_logic;
SIGNAL \debounce1|Add0~42_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debounce1|LessThan0~0_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt[9]~0_combout\ : std_logic;
SIGNAL \debounce1|Add0~32_combout\ : std_logic;
SIGNAL \debounce1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debounce1|s_pulsedOut~q\ : std_logic;
SIGNAL \fsm|s_currentState~12_combout\ : std_logic;
SIGNAL \debounce0|Add0~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \debounce0|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debounce0|s_dirtyIn~q\ : std_logic;
SIGNAL \debounce0|Add0~9\ : std_logic;
SIGNAL \debounce0|Add0~10_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debounce0|s_previousIn~q\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[12]~3_combout\ : std_logic;
SIGNAL \debounce0|Add0~11\ : std_logic;
SIGNAL \debounce0|Add0~12_combout\ : std_logic;
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
SIGNAL \debounce0|Add0~35\ : std_logic;
SIGNAL \debounce0|Add0~36_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debounce0|Add0~37\ : std_logic;
SIGNAL \debounce0|Add0~38_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debounce0|Add0~39\ : std_logic;
SIGNAL \debounce0|Add0~40_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debounce0|Add0~41\ : std_logic;
SIGNAL \debounce0|Add0~42_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~1_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~0_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~2_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~3_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~4_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~5_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~6_combout\ : std_logic;
SIGNAL \debounce0|LessThan0~7_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[12]~0_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debounce0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[12]~2_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debounce0|Add0~43\ : std_logic;
SIGNAL \debounce0|Add0~44_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debounce0|s_debounceCnt[12]~4_combout\ : std_logic;
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
SIGNAL \fsm|s_nextState~0_combout\ : std_logic;
SIGNAL \fsm|s_currentState~17_combout\ : std_logic;
SIGNAL \fsm|s_currentState.E0~q\ : std_logic;
SIGNAL \fsm|s_currentState~13_combout\ : std_logic;
SIGNAL \fsm|s_currentState.E1~q\ : std_logic;
SIGNAL \fsm|s_currentState~16_combout\ : std_logic;
SIGNAL \fsm|s_currentState.E2~q\ : std_logic;
SIGNAL \fsm|s_currentState~8_combout\ : std_logic;
SIGNAL \fsm|s_currentState~9_combout\ : std_logic;
SIGNAL \fsm|s_currentState.E3~q\ : std_logic;
SIGNAL \fsm|s_currentState~14_combout\ : std_logic;
SIGNAL \fsm|s_currentState~15_combout\ : std_logic;
SIGNAL \fsm|s_currentState.E4~q\ : std_logic;
SIGNAL \fsm|s_currentState~10_combout\ : std_logic;
SIGNAL \fsm|s_currentState~11_combout\ : std_logic;
SIGNAL \fsm|s_currentState.E5~q\ : std_logic;
SIGNAL \toogle_abrir|Add0~0_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~32_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~1\ : std_logic;
SIGNAL \toogle_abrir|Add0~2_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~35_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~3\ : std_logic;
SIGNAL \toogle_abrir|Add0~4_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~34_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~5\ : std_logic;
SIGNAL \toogle_abrir|Add0~6_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~33_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~7\ : std_logic;
SIGNAL \toogle_abrir|Add0~8_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~31_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~9\ : std_logic;
SIGNAL \toogle_abrir|Add0~10_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~30_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~11\ : std_logic;
SIGNAL \toogle_abrir|Add0~12_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~29_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~13\ : std_logic;
SIGNAL \toogle_abrir|Add0~14_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~28_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~15\ : std_logic;
SIGNAL \toogle_abrir|Add0~16_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~27_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~17\ : std_logic;
SIGNAL \toogle_abrir|Add0~18_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~26_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~19\ : std_logic;
SIGNAL \toogle_abrir|Add0~20_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~25_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~21\ : std_logic;
SIGNAL \toogle_abrir|Add0~22_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~24_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~23\ : std_logic;
SIGNAL \toogle_abrir|Add0~36_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~38_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~37\ : std_logic;
SIGNAL \toogle_abrir|Add0~39_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~41_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~40\ : std_logic;
SIGNAL \toogle_abrir|Add0~42_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~44_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~43\ : std_logic;
SIGNAL \toogle_abrir|Add0~45_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~47_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~46\ : std_logic;
SIGNAL \toogle_abrir|Add0~48_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~58_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~49\ : std_logic;
SIGNAL \toogle_abrir|Add0~50_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~52_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~51\ : std_logic;
SIGNAL \toogle_abrir|Add0~53_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~59_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~54\ : std_logic;
SIGNAL \toogle_abrir|Add0~55_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~57_combout\ : std_logic;
SIGNAL \toogle_abrir|Equal0~5_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~56\ : std_logic;
SIGNAL \toogle_abrir|Add0~60_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~62_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~61\ : std_logic;
SIGNAL \toogle_abrir|Add0~63_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~65_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~64\ : std_logic;
SIGNAL \toogle_abrir|Add0~66_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~68_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~67\ : std_logic;
SIGNAL \toogle_abrir|Add0~69_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~71_combout\ : std_logic;
SIGNAL \toogle_abrir|Equal0~6_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~70\ : std_logic;
SIGNAL \toogle_abrir|Add0~72_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~77_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~73\ : std_logic;
SIGNAL \toogle_abrir|Add0~74_combout\ : std_logic;
SIGNAL \toogle_abrir|Add0~76_combout\ : std_logic;
SIGNAL \toogle_abrir|Equal0~7_combout\ : std_logic;
SIGNAL \toogle_abrir|Equal0~1_combout\ : std_logic;
SIGNAL \toogle_abrir|Equal0~2_combout\ : std_logic;
SIGNAL \toogle_abrir|Equal0~3_combout\ : std_logic;
SIGNAL \toogle_abrir|Equal0~0_combout\ : std_logic;
SIGNAL \toogle_abrir|Equal0~4_combout\ : std_logic;
SIGNAL \toogle_abrir|q~0_combout\ : std_logic;
SIGNAL \toogle_abrir|q~q\ : std_logic;
SIGNAL \fsm|WideOr6~0_combout\ : std_logic;
SIGNAL \dec7seg|decOut_n~0_combout\ : std_logic;
SIGNAL \dec7seg|decOut_n~1_combout\ : std_logic;
SIGNAL \dec7seg|Equal14~0_combout\ : std_logic;
SIGNAL \dec7seg|decOut_n~2_combout\ : std_logic;
SIGNAL \dec7seg|decOut_n~3_combout\ : std_logic;
SIGNAL \dec7seg|decOut_n~4_combout\ : std_logic;
SIGNAL \dec7seg|decOut_n~5_combout\ : std_logic;
SIGNAL \toogle_abrir|s_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \fsm|currentState\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounce1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \debounce0|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \dec7seg|ALT_INV_decOut_n~3_combout\ : std_logic;
SIGNAL \dec7seg|ALT_INV_decOut_n~2_combout\ : std_logic;
SIGNAL \dec7seg|ALT_INV_decOut_n~1_combout\ : std_logic;

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
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\dec7seg|ALT_INV_decOut_n~3_combout\ <= NOT \dec7seg|decOut_n~3_combout\;
\dec7seg|ALT_INV_decOut_n~2_combout\ <= NOT \dec7seg|decOut_n~2_combout\;
\dec7seg|ALT_INV_decOut_n~1_combout\ <= NOT \dec7seg|decOut_n~1_combout\;
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
	i => \toogle_abrir|q~q\,
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

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec7seg|decOut_n~0_combout\,
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
	i => \dec7seg|ALT_INV_decOut_n~1_combout\,
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
	i => \dec7seg|Equal14~0_combout\,
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
	i => \dec7seg|ALT_INV_decOut_n~2_combout\,
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
	i => \dec7seg|ALT_INV_decOut_n~3_combout\,
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
	i => \dec7seg|decOut_n~4_combout\,
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
	i => \dec7seg|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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

-- Location: LCCOMB_X113_Y43_N30
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

-- Location: FF_X113_Y43_N31
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

-- Location: FF_X112_Y42_N1
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

-- Location: LCCOMB_X112_Y42_N0
\debounce1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[22]~25_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|s_dirtyIn~q\)) # (!\debounce1|s_previousIn~q\ & ((\debounce1|s_debounceCnt[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_dirtyIn~q\,
	datac => \debounce1|s_previousIn~q\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X111_Y43_N10
\debounce1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~0_combout\ = \debounce1|s_debounceCnt\(0) $ (VCC)
-- \debounce1|Add0~1\ = CARRY(\debounce1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounce1|Add0~0_combout\,
	cout => \debounce1|Add0~1\);

-- Location: LCCOMB_X111_Y43_N0
\debounce1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~23_combout\ = (\debounce1|Add0~0_combout\ & (\debounce1|s_previousIn~q\ & \debounce1|s_debounceCnt[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|Add0~0_combout\,
	datab => \debounce1|s_previousIn~q\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~23_combout\);

-- Location: FF_X111_Y43_N1
\debounce1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~23_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(0));

-- Location: LCCOMB_X111_Y43_N12
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

-- Location: LCCOMB_X111_Y43_N2
\debounce1|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~19_combout\ = (\debounce1|Add0~2_combout\ & (\debounce1|s_previousIn~q\ & \debounce1|s_debounceCnt[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|Add0~2_combout\,
	datab => \debounce1|s_previousIn~q\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~19_combout\);

-- Location: FF_X111_Y43_N3
\debounce1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~19_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(1));

-- Location: LCCOMB_X111_Y43_N14
\debounce1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~4_combout\ = (\debounce1|s_debounceCnt\(2) & ((GND) # (!\debounce1|Add0~3\))) # (!\debounce1|s_debounceCnt\(2) & (\debounce1|Add0~3\ $ (GND)))
-- \debounce1|Add0~5\ = CARRY((\debounce1|s_debounceCnt\(2)) # (!\debounce1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(2),
	datad => VCC,
	cin => \debounce1|Add0~3\,
	combout => \debounce1|Add0~4_combout\,
	cout => \debounce1|Add0~5\);

-- Location: LCCOMB_X111_Y43_N8
\debounce1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~20_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~4_combout\ & \debounce1|s_debounceCnt[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~4_combout\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~20_combout\);

-- Location: FF_X111_Y43_N9
\debounce1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~20_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(2));

-- Location: LCCOMB_X111_Y43_N16
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

-- Location: LCCOMB_X112_Y43_N12
\debounce1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~21_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~6_combout\ & \debounce1|s_debounceCnt[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~6_combout\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~21_combout\);

-- Location: FF_X112_Y43_N13
\debounce1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~21_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(3));

-- Location: LCCOMB_X111_Y43_N18
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

-- Location: LCCOMB_X112_Y43_N26
\debounce1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~22_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~8_combout\ & \debounce1|s_debounceCnt[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~8_combout\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~22_combout\);

-- Location: FF_X112_Y43_N27
\debounce1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~22_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(4));

-- Location: LCCOMB_X111_Y43_N20
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

-- Location: LCCOMB_X112_Y42_N26
\debounce1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~27_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~10_combout\ & \debounce1|s_debounceCnt[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~10_combout\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~27_combout\);

-- Location: FF_X111_Y43_N31
\debounce1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debounce1|s_debounceCnt~27_combout\,
	sload => VCC,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(5));

-- Location: LCCOMB_X111_Y43_N22
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

-- Location: LCCOMB_X111_Y43_N4
\debounce1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~1_combout\ = (\debounce1|s_debounceCnt[9]~0_combout\ & ((\debounce1|Add0~12_combout\) # (!\debounce1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~12_combout\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~1_combout\);

-- Location: FF_X111_Y43_N5
\debounce1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~1_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(6));

-- Location: LCCOMB_X111_Y43_N24
\debounce1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~14_combout\ = (\debounce1|s_debounceCnt\(7) & (\debounce1|Add0~13\ & VCC)) # (!\debounce1|s_debounceCnt\(7) & (!\debounce1|Add0~13\))
-- \debounce1|Add0~15\ = CARRY((!\debounce1|s_debounceCnt\(7) & !\debounce1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounce1|Add0~13\,
	combout => \debounce1|Add0~14_combout\,
	cout => \debounce1|Add0~15\);

-- Location: LCCOMB_X112_Y43_N10
\debounce1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~11_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~14_combout\ & \debounce1|s_debounceCnt[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~14_combout\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~11_combout\);

-- Location: FF_X112_Y43_N11
\debounce1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~11_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(7));

-- Location: LCCOMB_X111_Y43_N26
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

-- Location: LCCOMB_X112_Y43_N0
\debounce1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~12_combout\ = (\debounce1|s_debounceCnt[9]~0_combout\ & ((\debounce1|Add0~16_combout\) # (!\debounce1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~16_combout\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~12_combout\);

-- Location: FF_X112_Y43_N1
\debounce1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~12_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(8));

-- Location: LCCOMB_X111_Y43_N28
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

-- Location: LCCOMB_X112_Y43_N6
\debounce1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~13_combout\ = (\debounce1|s_debounceCnt[9]~0_combout\ & ((\debounce1|Add0~18_combout\) # (!\debounce1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt[9]~0_combout\,
	datab => \debounce1|s_previousIn~q\,
	datad => \debounce1|Add0~18_combout\,
	combout => \debounce1|s_debounceCnt~13_combout\);

-- Location: FF_X112_Y43_N7
\debounce1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~13_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(9));

-- Location: LCCOMB_X111_Y43_N30
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

-- Location: LCCOMB_X112_Y43_N8
\debounce1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~14_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~20_combout\ & \debounce1|s_debounceCnt[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~20_combout\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~14_combout\);

-- Location: FF_X112_Y43_N9
\debounce1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~14_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(10));

-- Location: LCCOMB_X111_Y42_N0
\debounce1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~22_combout\ = (\debounce1|s_debounceCnt\(11) & (\debounce1|Add0~21\ & VCC)) # (!\debounce1|s_debounceCnt\(11) & (!\debounce1|Add0~21\))
-- \debounce1|Add0~23\ = CARRY((!\debounce1|s_debounceCnt\(11) & !\debounce1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounce1|Add0~21\,
	combout => \debounce1|Add0~22_combout\,
	cout => \debounce1|Add0~23\);

-- Location: LCCOMB_X112_Y42_N4
\debounce1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~15_combout\ = (\debounce1|s_debounceCnt[9]~0_combout\ & ((\debounce1|Add0~22_combout\) # (!\debounce1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt[9]~0_combout\,
	datac => \debounce1|s_previousIn~q\,
	datad => \debounce1|Add0~22_combout\,
	combout => \debounce1|s_debounceCnt~15_combout\);

-- Location: FF_X112_Y42_N5
\debounce1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~15_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(11));

-- Location: LCCOMB_X111_Y42_N2
\debounce1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~24_combout\ = (\debounce1|s_debounceCnt\(12) & ((GND) # (!\debounce1|Add0~23\))) # (!\debounce1|s_debounceCnt\(12) & (\debounce1|Add0~23\ $ (GND)))
-- \debounce1|Add0~25\ = CARRY((\debounce1|s_debounceCnt\(12)) # (!\debounce1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(12),
	datad => VCC,
	cin => \debounce1|Add0~23\,
	combout => \debounce1|Add0~24_combout\,
	cout => \debounce1|Add0~25\);

-- Location: LCCOMB_X111_Y42_N28
\debounce1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~7_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|s_debounceCnt[9]~0_combout\ & \debounce1|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_previousIn~q\,
	datac => \debounce1|s_debounceCnt[9]~0_combout\,
	datad => \debounce1|Add0~24_combout\,
	combout => \debounce1|s_debounceCnt~7_combout\);

-- Location: FF_X111_Y42_N29
\debounce1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~7_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(12));

-- Location: LCCOMB_X111_Y42_N4
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

-- Location: LCCOMB_X112_Y43_N24
\debounce1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~8_combout\ = (\debounce1|Add0~26_combout\ & (\debounce1|s_previousIn~q\ & \debounce1|s_debounceCnt[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|Add0~26_combout\,
	datab => \debounce1|s_previousIn~q\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~8_combout\);

-- Location: FF_X112_Y43_N25
\debounce1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~8_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(13));

-- Location: LCCOMB_X111_Y42_N6
\debounce1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~28_combout\ = (\debounce1|s_debounceCnt\(14) & ((GND) # (!\debounce1|Add0~27\))) # (!\debounce1|s_debounceCnt\(14) & (\debounce1|Add0~27\ $ (GND)))
-- \debounce1|Add0~29\ = CARRY((\debounce1|s_debounceCnt\(14)) # (!\debounce1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounce1|Add0~27\,
	combout => \debounce1|Add0~28_combout\,
	cout => \debounce1|Add0~29\);

-- Location: LCCOMB_X112_Y43_N20
\debounce1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~16_combout\ = (\debounce1|s_debounceCnt[9]~0_combout\ & ((\debounce1|Add0~28_combout\) # (!\debounce1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~28_combout\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~16_combout\);

-- Location: FF_X112_Y43_N21
\debounce1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~16_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(14));

-- Location: LCCOMB_X111_Y42_N8
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

-- Location: LCCOMB_X112_Y43_N28
\debounce1|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~4_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~30_combout\ & \debounce1|s_debounceCnt[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~30_combout\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~4_combout\);

-- Location: FF_X112_Y43_N29
\debounce1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~4_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(15));

-- Location: LCCOMB_X111_Y42_N10
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

-- Location: LCCOMB_X111_Y42_N12
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

-- Location: LCCOMB_X112_Y43_N4
\debounce1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~6_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|Add0~34_combout\ & \debounce1|s_debounceCnt[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|Add0~34_combout\,
	datad => \debounce1|s_debounceCnt[9]~0_combout\,
	combout => \debounce1|s_debounceCnt~6_combout\);

-- Location: FF_X112_Y43_N5
\debounce1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~6_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(17));

-- Location: LCCOMB_X111_Y42_N14
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

-- Location: LCCOMB_X112_Y42_N6
\debounce1|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[18]~17_combout\ = (\debounce1|s_debounceCnt[9]~0_combout\ & (\debounce1|s_debounceCnt[9]~3_combout\ & ((\debounce1|Add0~36_combout\) # (!\debounce1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt[9]~0_combout\,
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|s_debounceCnt[9]~3_combout\,
	datad => \debounce1|Add0~36_combout\,
	combout => \debounce1|s_debounceCnt[18]~17_combout\);

-- Location: FF_X112_Y42_N7
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

-- Location: LCCOMB_X111_Y42_N16
\debounce1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~38_combout\ = (\debounce1|s_debounceCnt\(19) & (\debounce1|Add0~37\ & VCC)) # (!\debounce1|s_debounceCnt\(19) & (!\debounce1|Add0~37\))
-- \debounce1|Add0~39\ = CARRY((!\debounce1|s_debounceCnt\(19) & !\debounce1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounce1|Add0~37\,
	combout => \debounce1|Add0~38_combout\,
	cout => \debounce1|Add0~39\);

-- Location: LCCOMB_X112_Y42_N28
\debounce1|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[19]~18_combout\ = (\debounce1|s_debounceCnt[9]~0_combout\ & (\debounce1|s_debounceCnt[9]~3_combout\ & ((\debounce1|Add0~38_combout\) # (!\debounce1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt[9]~0_combout\,
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|s_debounceCnt[9]~3_combout\,
	datad => \debounce1|Add0~38_combout\,
	combout => \debounce1|s_debounceCnt[19]~18_combout\);

-- Location: FF_X112_Y42_N29
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

-- Location: LCCOMB_X111_Y42_N18
\debounce1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~40_combout\ = (\debounce1|s_debounceCnt\(20) & ((GND) # (!\debounce1|Add0~39\))) # (!\debounce1|s_debounceCnt\(20) & (\debounce1|Add0~39\ $ (GND)))
-- \debounce1|Add0~41\ = CARRY((\debounce1|s_debounceCnt\(20)) # (!\debounce1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounce1|Add0~39\,
	combout => \debounce1|Add0~40_combout\,
	cout => \debounce1|Add0~41\);

-- Location: LCCOMB_X111_Y42_N26
\debounce1|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[20]~9_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|s_debounceCnt[9]~0_combout\ & (\debounce1|s_debounceCnt[9]~3_combout\ & \debounce1|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_previousIn~q\,
	datab => \debounce1|s_debounceCnt[9]~0_combout\,
	datac => \debounce1|s_debounceCnt[9]~3_combout\,
	datad => \debounce1|Add0~40_combout\,
	combout => \debounce1|s_debounceCnt[20]~9_combout\);

-- Location: FF_X111_Y42_N27
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

-- Location: LCCOMB_X111_Y42_N20
\debounce1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~42_combout\ = (\debounce1|s_debounceCnt\(21) & (\debounce1|Add0~41\ & VCC)) # (!\debounce1|s_debounceCnt\(21) & (!\debounce1|Add0~41\))
-- \debounce1|Add0~43\ = CARRY((!\debounce1|s_debounceCnt\(21) & !\debounce1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(21),
	datad => VCC,
	cin => \debounce1|Add0~41\,
	combout => \debounce1|Add0~42_combout\,
	cout => \debounce1|Add0~43\);

-- Location: LCCOMB_X111_Y42_N22
\debounce1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|Add0~44_combout\ = \debounce1|Add0~43\ $ (\debounce1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounce1|s_debounceCnt\(22),
	cin => \debounce1|Add0~43\,
	combout => \debounce1|Add0~44_combout\);

-- Location: LCCOMB_X111_Y43_N6
\debounce1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~5_combout\ = (!\debounce1|s_debounceCnt\(2) & (!\debounce1|s_debounceCnt\(1) & (!\debounce1|s_debounceCnt\(3) & !\debounce1|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(2),
	datab => \debounce1|s_debounceCnt\(1),
	datac => \debounce1|s_debounceCnt\(3),
	datad => \debounce1|s_debounceCnt\(4),
	combout => \debounce1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X112_Y43_N16
\debounce1|s_debounceCnt[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[9]~2_combout\ = (\debounce1|s_debounceCnt\(5)) # (((\debounce1|s_debounceCnt\(0)) # (!\debounce1|s_pulsedOut~4_combout\)) # (!\debounce1|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(5),
	datab => \debounce1|s_pulsedOut~5_combout\,
	datac => \debounce1|s_debounceCnt\(0),
	datad => \debounce1|s_pulsedOut~4_combout\,
	combout => \debounce1|s_debounceCnt[9]~2_combout\);

-- Location: LCCOMB_X112_Y42_N18
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

-- Location: LCCOMB_X112_Y42_N8
\debounce1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~5_combout\ = (\debounce1|s_debounceCnt\(11) & (\debounce1|s_debounceCnt\(9) & \debounce1|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce1|s_debounceCnt\(11),
	datac => \debounce1|s_debounceCnt\(9),
	datad => \debounce1|LessThan0~4_combout\,
	combout => \debounce1|LessThan0~5_combout\);

-- Location: LCCOMB_X112_Y42_N30
\debounce1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~6_combout\ = (\debounce1|s_debounceCnt\(6) & ((\debounce1|s_debounceCnt\(5)) # ((\debounce1|s_debounceCnt\(0)) # (!\debounce1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(5),
	datab => \debounce1|s_debounceCnt\(6),
	datac => \debounce1|s_debounceCnt\(0),
	datad => \debounce1|s_pulsedOut~5_combout\,
	combout => \debounce1|LessThan0~6_combout\);

-- Location: LCCOMB_X112_Y42_N20
\debounce1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~1_combout\ = (\debounce1|s_debounceCnt\(12)) # ((\debounce1|s_debounceCnt\(13)) # ((\debounce1|s_debounceCnt\(11) & \debounce1|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(12),
	datab => \debounce1|s_debounceCnt\(11),
	datac => \debounce1|s_debounceCnt\(13),
	datad => \debounce1|s_debounceCnt\(10),
	combout => \debounce1|LessThan0~1_combout\);

-- Location: LCCOMB_X112_Y42_N2
\debounce1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~2_combout\ = (\debounce1|s_debounceCnt\(15)) # ((\debounce1|s_debounceCnt\(16)) # ((\debounce1|s_debounceCnt\(14) & \debounce1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(14),
	datab => \debounce1|s_debounceCnt\(15),
	datac => \debounce1|s_debounceCnt\(16),
	datad => \debounce1|LessThan0~1_combout\,
	combout => \debounce1|LessThan0~2_combout\);

-- Location: LCCOMB_X112_Y42_N12
\debounce1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~3_combout\ = (\debounce1|s_debounceCnt\(18) & (\debounce1|s_debounceCnt\(19) & ((\debounce1|s_debounceCnt\(17)) # (\debounce1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(18),
	datab => \debounce1|s_debounceCnt\(17),
	datac => \debounce1|s_debounceCnt\(19),
	datad => \debounce1|LessThan0~2_combout\,
	combout => \debounce1|LessThan0~3_combout\);

-- Location: LCCOMB_X112_Y42_N16
\debounce1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|LessThan0~7_combout\ = (\debounce1|LessThan0~3_combout\) # ((\debounce1|LessThan0~5_combout\ & ((\debounce1|s_debounceCnt\(7)) # (\debounce1|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(7),
	datab => \debounce1|LessThan0~5_combout\,
	datac => \debounce1|LessThan0~6_combout\,
	datad => \debounce1|LessThan0~3_combout\,
	combout => \debounce1|LessThan0~7_combout\);

-- Location: LCCOMB_X112_Y42_N24
\debounce1|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[22]~24_combout\ = (\debounce1|s_debounceCnt\(22) & (\debounce1|LessThan0~0_combout\ & ((!\debounce1|LessThan0~7_combout\)))) # (!\debounce1|s_debounceCnt\(22) & (((\debounce1|s_debounceCnt[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|LessThan0~0_combout\,
	datab => \debounce1|s_debounceCnt\(22),
	datac => \debounce1|s_debounceCnt[9]~2_combout\,
	datad => \debounce1|LessThan0~7_combout\,
	combout => \debounce1|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X112_Y42_N14
\debounce1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[22]~26_combout\ = (\debounce1|s_debounceCnt[22]~25_combout\ & (((\debounce1|Add0~44_combout\ & \debounce1|s_debounceCnt[22]~24_combout\)) # (!\debounce1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_previousIn~q\,
	datab => \debounce1|s_debounceCnt[22]~25_combout\,
	datac => \debounce1|Add0~44_combout\,
	datad => \debounce1|s_debounceCnt[22]~24_combout\,
	combout => \debounce1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X112_Y42_N15
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

-- Location: LCCOMB_X112_Y43_N30
\debounce1|s_debounceCnt[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[9]~3_combout\ = (\debounce1|s_debounceCnt\(22)) # (((\debounce1|s_debounceCnt[9]~2_combout\) # (!\debounce1|s_dirtyIn~q\)) # (!\debounce1|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(22),
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|s_dirtyIn~q\,
	datad => \debounce1|s_debounceCnt[9]~2_combout\,
	combout => \debounce1|s_debounceCnt[9]~3_combout\);

-- Location: LCCOMB_X111_Y42_N24
\debounce1|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[21]~10_combout\ = (\debounce1|s_previousIn~q\ & (\debounce1|s_debounceCnt[9]~0_combout\ & (\debounce1|s_debounceCnt[9]~3_combout\ & \debounce1|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_previousIn~q\,
	datab => \debounce1|s_debounceCnt[9]~0_combout\,
	datac => \debounce1|s_debounceCnt[9]~3_combout\,
	datad => \debounce1|Add0~42_combout\,
	combout => \debounce1|s_debounceCnt[21]~10_combout\);

-- Location: FF_X111_Y42_N25
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

-- Location: LCCOMB_X110_Y42_N16
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

-- Location: LCCOMB_X112_Y42_N10
\debounce1|s_debounceCnt[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt[9]~0_combout\ = (\debounce1|s_dirtyIn~q\ & (((\debounce1|LessThan0~0_combout\ & !\debounce1|LessThan0~7_combout\)) # (!\debounce1|s_debounceCnt\(22))))

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
	combout => \debounce1|s_debounceCnt[9]~0_combout\);

-- Location: LCCOMB_X112_Y43_N14
\debounce1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_debounceCnt~5_combout\ = (\debounce1|s_debounceCnt[9]~0_combout\ & (\debounce1|s_previousIn~q\ & \debounce1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt[9]~0_combout\,
	datab => \debounce1|s_previousIn~q\,
	datad => \debounce1|Add0~32_combout\,
	combout => \debounce1|s_debounceCnt~5_combout\);

-- Location: FF_X112_Y43_N15
\debounce1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce1|s_debounceCnt~5_combout\,
	ena => \debounce1|s_debounceCnt[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce1|s_debounceCnt\(16));

-- Location: LCCOMB_X112_Y43_N22
\debounce1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~0_combout\ = (!\debounce1|s_debounceCnt\(16) & (!\debounce1|s_debounceCnt\(15) & (!\debounce1|s_debounceCnt\(6) & !\debounce1|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(16),
	datab => \debounce1|s_debounceCnt\(15),
	datac => \debounce1|s_debounceCnt\(6),
	datad => \debounce1|s_debounceCnt\(17),
	combout => \debounce1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X112_Y43_N18
\debounce1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~2_combout\ = (!\debounce1|s_debounceCnt\(7) & (!\debounce1|s_debounceCnt\(8) & (!\debounce1|s_debounceCnt\(10) & !\debounce1|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(7),
	datab => \debounce1|s_debounceCnt\(8),
	datac => \debounce1|s_debounceCnt\(10),
	datad => \debounce1|s_debounceCnt\(9),
	combout => \debounce1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X111_Y42_N30
\debounce1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~1_combout\ = (!\debounce1|s_debounceCnt\(20) & (!\debounce1|s_debounceCnt\(21) & (!\debounce1|s_debounceCnt\(12) & !\debounce1|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(20),
	datab => \debounce1|s_debounceCnt\(21),
	datac => \debounce1|s_debounceCnt\(12),
	datad => \debounce1|s_debounceCnt\(13),
	combout => \debounce1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X112_Y42_N22
\debounce1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~3_combout\ = (!\debounce1|s_debounceCnt\(18) & (!\debounce1|s_debounceCnt\(19) & (!\debounce1|s_debounceCnt\(11) & !\debounce1|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_debounceCnt\(18),
	datab => \debounce1|s_debounceCnt\(19),
	datac => \debounce1|s_debounceCnt\(11),
	datad => \debounce1|s_debounceCnt\(14),
	combout => \debounce1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X112_Y43_N2
\debounce1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~4_combout\ = (\debounce1|s_pulsedOut~0_combout\ & (\debounce1|s_pulsedOut~2_combout\ & (\debounce1|s_pulsedOut~1_combout\ & \debounce1|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_pulsedOut~0_combout\,
	datab => \debounce1|s_pulsedOut~2_combout\,
	datac => \debounce1|s_pulsedOut~1_combout\,
	datad => \debounce1|s_pulsedOut~3_combout\,
	combout => \debounce1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X113_Y43_N28
\debounce1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~6_combout\ = (\debounce1|s_dirtyIn~q\ & (\debounce1|s_previousIn~q\ & (\debounce1|s_debounceCnt\(0) & !\debounce1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_dirtyIn~q\,
	datab => \debounce1|s_previousIn~q\,
	datac => \debounce1|s_debounceCnt\(0),
	datad => \debounce1|s_debounceCnt\(22),
	combout => \debounce1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X113_Y43_N4
\debounce1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce1|s_pulsedOut~7_combout\ = (\debounce1|s_pulsedOut~4_combout\ & (\debounce1|s_pulsedOut~6_combout\ & (\debounce1|s_pulsedOut~5_combout\ & !\debounce1|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce1|s_pulsedOut~4_combout\,
	datab => \debounce1|s_pulsedOut~6_combout\,
	datac => \debounce1|s_pulsedOut~5_combout\,
	datad => \debounce1|s_debounceCnt\(5),
	combout => \debounce1|s_pulsedOut~7_combout\);

-- Location: FF_X113_Y43_N5
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

-- Location: LCCOMB_X113_Y55_N26
\fsm|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState~12_combout\ = (\KEY[0]~input_o\ & !\debounce1|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \debounce1|s_pulsedOut~q\,
	combout => \fsm|s_currentState~12_combout\);

-- Location: LCCOMB_X101_Y42_N10
\debounce0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~0_combout\ = \debounce0|s_debounceCnt\(0) $ (VCC)
-- \debounce0|Add0~1\ = CARRY(\debounce0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(0),
	datad => VCC,
	combout => \debounce0|Add0~0_combout\,
	cout => \debounce0|Add0~1\);

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

-- Location: LCCOMB_X102_Y41_N10
\debounce0|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_dirtyIn~0_combout\ = !\SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	combout => \debounce0|s_dirtyIn~0_combout\);

-- Location: FF_X102_Y41_N11
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

-- Location: LCCOMB_X101_Y42_N18
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

-- Location: LCCOMB_X101_Y42_N20
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

-- Location: LCCOMB_X102_Y42_N0
\debounce0|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~27_combout\ = (\debounce0|Add0~10_combout\ & \debounce0|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|Add0~10_combout\,
	datad => \debounce0|s_debounceCnt[12]~4_combout\,
	combout => \debounce0|s_debounceCnt~27_combout\);

-- Location: FF_X102_Y42_N15
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

-- Location: LCCOMB_X102_Y42_N14
\debounce0|s_debounceCnt[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[12]~3_combout\ = (\debounce0|s_debounceCnt\(22)) # (((\debounce0|s_debounceCnt[12]~2_combout\) # (!\debounce0|s_previousIn~q\)) # (!\debounce0|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(22),
	datab => \debounce0|s_dirtyIn~q\,
	datac => \debounce0|s_previousIn~q\,
	datad => \debounce0|s_debounceCnt[12]~2_combout\,
	combout => \debounce0|s_debounceCnt[12]~3_combout\);

-- Location: FF_X102_Y42_N1
\debounce0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~27_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(5));

-- Location: LCCOMB_X101_Y42_N22
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

-- Location: LCCOMB_X101_Y42_N24
\debounce0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~14_combout\ = (\debounce0|s_debounceCnt\(7) & (\debounce0|Add0~13\ & VCC)) # (!\debounce0|s_debounceCnt\(7) & (!\debounce0|Add0~13\))
-- \debounce0|Add0~15\ = CARRY((!\debounce0|s_debounceCnt\(7) & !\debounce0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(7),
	datad => VCC,
	cin => \debounce0|Add0~13\,
	combout => \debounce0|Add0~14_combout\,
	cout => \debounce0|Add0~15\);

-- Location: LCCOMB_X102_Y42_N12
\debounce0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~12_combout\ = (\debounce0|Add0~14_combout\ & \debounce0|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|Add0~14_combout\,
	datad => \debounce0|s_debounceCnt[12]~4_combout\,
	combout => \debounce0|s_debounceCnt~12_combout\);

-- Location: FF_X102_Y42_N13
\debounce0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~12_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(7));

-- Location: LCCOMB_X101_Y42_N26
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

-- Location: LCCOMB_X102_Y42_N18
\debounce0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~13_combout\ = (\debounce0|s_debounceCnt[12]~0_combout\ & ((\debounce0|Add0~16_combout\) # (!\debounce0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_previousIn~q\,
	datac => \debounce0|Add0~16_combout\,
	datad => \debounce0|s_debounceCnt[12]~0_combout\,
	combout => \debounce0|s_debounceCnt~13_combout\);

-- Location: FF_X102_Y42_N19
\debounce0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~13_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(8));

-- Location: LCCOMB_X101_Y42_N28
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

-- Location: LCCOMB_X102_Y42_N20
\debounce0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~14_combout\ = (\debounce0|s_debounceCnt[12]~0_combout\ & ((\debounce0|Add0~18_combout\) # (!\debounce0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_previousIn~q\,
	datac => \debounce0|Add0~18_combout\,
	datad => \debounce0|s_debounceCnt[12]~0_combout\,
	combout => \debounce0|s_debounceCnt~14_combout\);

-- Location: FF_X102_Y42_N21
\debounce0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~14_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(9));

-- Location: LCCOMB_X101_Y42_N30
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

-- Location: LCCOMB_X102_Y42_N30
\debounce0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~15_combout\ = (\debounce0|Add0~20_combout\ & \debounce0|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|Add0~20_combout\,
	datad => \debounce0|s_debounceCnt[12]~4_combout\,
	combout => \debounce0|s_debounceCnt~15_combout\);

-- Location: FF_X102_Y42_N31
\debounce0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~15_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(10));

-- Location: LCCOMB_X101_Y41_N0
\debounce0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~22_combout\ = (\debounce0|s_debounceCnt\(11) & (\debounce0|Add0~21\ & VCC)) # (!\debounce0|s_debounceCnt\(11) & (!\debounce0|Add0~21\))
-- \debounce0|Add0~23\ = CARRY((!\debounce0|s_debounceCnt\(11) & !\debounce0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(11),
	datad => VCC,
	cin => \debounce0|Add0~21\,
	combout => \debounce0|Add0~22_combout\,
	cout => \debounce0|Add0~23\);

-- Location: LCCOMB_X102_Y41_N4
\debounce0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~16_combout\ = (\debounce0|s_debounceCnt[12]~0_combout\ & ((\debounce0|Add0~22_combout\) # (!\debounce0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_previousIn~q\,
	datac => \debounce0|Add0~22_combout\,
	datad => \debounce0|s_debounceCnt[12]~0_combout\,
	combout => \debounce0|s_debounceCnt~16_combout\);

-- Location: FF_X102_Y41_N5
\debounce0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~16_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(11));

-- Location: LCCOMB_X101_Y41_N2
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

-- Location: LCCOMB_X103_Y41_N16
\debounce0|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~8_combout\ = (\debounce0|s_debounceCnt[12]~4_combout\ & \debounce0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|s_debounceCnt[12]~4_combout\,
	datad => \debounce0|Add0~24_combout\,
	combout => \debounce0|s_debounceCnt~8_combout\);

-- Location: FF_X103_Y41_N17
\debounce0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~8_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(12));

-- Location: LCCOMB_X101_Y41_N4
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

-- Location: LCCOMB_X103_Y41_N14
\debounce0|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~9_combout\ = (\debounce0|s_debounceCnt[12]~4_combout\ & \debounce0|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|s_debounceCnt[12]~4_combout\,
	datad => \debounce0|Add0~26_combout\,
	combout => \debounce0|s_debounceCnt~9_combout\);

-- Location: FF_X103_Y41_N15
\debounce0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~9_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(13));

-- Location: LCCOMB_X101_Y41_N6
\debounce0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~28_combout\ = (\debounce0|s_debounceCnt\(14) & ((GND) # (!\debounce0|Add0~27\))) # (!\debounce0|s_debounceCnt\(14) & (\debounce0|Add0~27\ $ (GND)))
-- \debounce0|Add0~29\ = CARRY((\debounce0|s_debounceCnt\(14)) # (!\debounce0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(14),
	datad => VCC,
	cin => \debounce0|Add0~27\,
	combout => \debounce0|Add0~28_combout\,
	cout => \debounce0|Add0~29\);

-- Location: LCCOMB_X102_Y41_N18
\debounce0|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~17_combout\ = (\debounce0|s_debounceCnt[12]~0_combout\ & ((\debounce0|Add0~28_combout\) # (!\debounce0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_previousIn~q\,
	datac => \debounce0|Add0~28_combout\,
	datad => \debounce0|s_debounceCnt[12]~0_combout\,
	combout => \debounce0|s_debounceCnt~17_combout\);

-- Location: FF_X102_Y41_N19
\debounce0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~17_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(14));

-- Location: LCCOMB_X101_Y41_N8
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

-- Location: LCCOMB_X102_Y42_N16
\debounce0|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~5_combout\ = (\debounce0|s_debounceCnt[12]~4_combout\ & \debounce0|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt[12]~4_combout\,
	datad => \debounce0|Add0~30_combout\,
	combout => \debounce0|s_debounceCnt~5_combout\);

-- Location: FF_X102_Y42_N17
\debounce0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~5_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(15));

-- Location: LCCOMB_X101_Y41_N10
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

-- Location: LCCOMB_X102_Y42_N2
\debounce0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~6_combout\ = (\debounce0|Add0~32_combout\ & \debounce0|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|Add0~32_combout\,
	datad => \debounce0|s_debounceCnt[12]~4_combout\,
	combout => \debounce0|s_debounceCnt~6_combout\);

-- Location: FF_X102_Y42_N3
\debounce0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~6_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(16));

-- Location: LCCOMB_X101_Y41_N12
\debounce0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~34_combout\ = (\debounce0|s_debounceCnt\(17) & (\debounce0|Add0~33\ & VCC)) # (!\debounce0|s_debounceCnt\(17) & (!\debounce0|Add0~33\))
-- \debounce0|Add0~35\ = CARRY((!\debounce0|s_debounceCnt\(17) & !\debounce0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(17),
	datad => VCC,
	cin => \debounce0|Add0~33\,
	combout => \debounce0|Add0~34_combout\,
	cout => \debounce0|Add0~35\);

-- Location: LCCOMB_X102_Y42_N28
\debounce0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~7_combout\ = (\debounce0|Add0~34_combout\ & \debounce0|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce0|Add0~34_combout\,
	datad => \debounce0|s_debounceCnt[12]~4_combout\,
	combout => \debounce0|s_debounceCnt~7_combout\);

-- Location: FF_X102_Y42_N29
\debounce0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~7_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(17));

-- Location: LCCOMB_X101_Y41_N14
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

-- Location: LCCOMB_X102_Y41_N20
\debounce0|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[18]~18_combout\ = (\debounce0|s_debounceCnt[12]~3_combout\ & (\debounce0|s_debounceCnt[12]~0_combout\ & ((\debounce0|Add0~36_combout\) # (!\debounce0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|Add0~36_combout\,
	datab => \debounce0|s_previousIn~q\,
	datac => \debounce0|s_debounceCnt[12]~3_combout\,
	datad => \debounce0|s_debounceCnt[12]~0_combout\,
	combout => \debounce0|s_debounceCnt[18]~18_combout\);

-- Location: FF_X102_Y41_N21
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

-- Location: LCCOMB_X101_Y41_N16
\debounce0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~38_combout\ = (\debounce0|s_debounceCnt\(19) & (\debounce0|Add0~37\ & VCC)) # (!\debounce0|s_debounceCnt\(19) & (!\debounce0|Add0~37\))
-- \debounce0|Add0~39\ = CARRY((!\debounce0|s_debounceCnt\(19) & !\debounce0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt\(19),
	datad => VCC,
	cin => \debounce0|Add0~37\,
	combout => \debounce0|Add0~38_combout\,
	cout => \debounce0|Add0~39\);

-- Location: LCCOMB_X102_Y41_N26
\debounce0|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[19]~19_combout\ = (\debounce0|s_debounceCnt[12]~3_combout\ & (\debounce0|s_debounceCnt[12]~0_combout\ & ((\debounce0|Add0~38_combout\) # (!\debounce0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|Add0~38_combout\,
	datab => \debounce0|s_previousIn~q\,
	datac => \debounce0|s_debounceCnt[12]~3_combout\,
	datad => \debounce0|s_debounceCnt[12]~0_combout\,
	combout => \debounce0|s_debounceCnt[19]~19_combout\);

-- Location: FF_X102_Y41_N27
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

-- Location: LCCOMB_X101_Y41_N18
\debounce0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|Add0~40_combout\ = (\debounce0|s_debounceCnt\(20) & ((GND) # (!\debounce0|Add0~39\))) # (!\debounce0|s_debounceCnt\(20) & (\debounce0|Add0~39\ $ (GND)))
-- \debounce0|Add0~41\ = CARRY((\debounce0|s_debounceCnt\(20)) # (!\debounce0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(20),
	datad => VCC,
	cin => \debounce0|Add0~39\,
	combout => \debounce0|Add0~40_combout\,
	cout => \debounce0|Add0~41\);

-- Location: LCCOMB_X103_Y41_N24
\debounce0|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[20]~10_combout\ = (\debounce0|s_debounceCnt[12]~3_combout\ & (\debounce0|s_debounceCnt[12]~4_combout\ & \debounce0|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt[12]~3_combout\,
	datac => \debounce0|s_debounceCnt[12]~4_combout\,
	datad => \debounce0|Add0~40_combout\,
	combout => \debounce0|s_debounceCnt[20]~10_combout\);

-- Location: FF_X103_Y41_N25
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

-- Location: LCCOMB_X101_Y41_N20
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

-- Location: LCCOMB_X103_Y41_N22
\debounce0|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[21]~11_combout\ = (\debounce0|s_debounceCnt[12]~3_combout\ & (\debounce0|s_debounceCnt[12]~4_combout\ & \debounce0|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_debounceCnt[12]~3_combout\,
	datac => \debounce0|s_debounceCnt[12]~4_combout\,
	datad => \debounce0|Add0~42_combout\,
	combout => \debounce0|s_debounceCnt[21]~11_combout\);

-- Location: FF_X103_Y41_N23
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

-- Location: LCCOMB_X102_Y41_N6
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

-- Location: LCCOMB_X102_Y41_N8
\debounce0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~0_combout\ = (\debounce0|s_debounceCnt\(19) & (\debounce0|s_debounceCnt\(14) & (\debounce0|s_debounceCnt\(8) & \debounce0|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(19),
	datab => \debounce0|s_debounceCnt\(14),
	datac => \debounce0|s_debounceCnt\(8),
	datad => \debounce0|s_debounceCnt\(18),
	combout => \debounce0|LessThan0~0_combout\);

-- Location: LCCOMB_X102_Y41_N16
\debounce0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~2_combout\ = (\debounce0|s_debounceCnt\(6) & ((\debounce0|s_debounceCnt\(5)) # ((\debounce0|s_debounceCnt\(0)) # (!\debounce0|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(5),
	datab => \debounce0|s_debounceCnt\(6),
	datac => \debounce0|s_debounceCnt\(0),
	datad => \debounce0|s_pulsedOut~5_combout\,
	combout => \debounce0|LessThan0~2_combout\);

-- Location: LCCOMB_X102_Y41_N22
\debounce0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~3_combout\ = (\debounce0|LessThan0~1_combout\ & (\debounce0|LessThan0~0_combout\ & ((\debounce0|s_debounceCnt\(7)) # (\debounce0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|LessThan0~1_combout\,
	datab => \debounce0|LessThan0~0_combout\,
	datac => \debounce0|s_debounceCnt\(7),
	datad => \debounce0|LessThan0~2_combout\,
	combout => \debounce0|LessThan0~3_combout\);

-- Location: LCCOMB_X101_Y41_N28
\debounce0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~4_combout\ = (\debounce0|s_debounceCnt\(12)) # ((\debounce0|s_debounceCnt\(13)) # ((\debounce0|s_debounceCnt\(11) & \debounce0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(11),
	datab => \debounce0|s_debounceCnt\(10),
	datac => \debounce0|s_debounceCnt\(12),
	datad => \debounce0|s_debounceCnt\(13),
	combout => \debounce0|LessThan0~4_combout\);

-- Location: LCCOMB_X101_Y41_N30
\debounce0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~5_combout\ = (\debounce0|s_debounceCnt\(16)) # ((\debounce0|s_debounceCnt\(15)) # ((\debounce0|s_debounceCnt\(14) & \debounce0|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(16),
	datab => \debounce0|s_debounceCnt\(14),
	datac => \debounce0|s_debounceCnt\(15),
	datad => \debounce0|LessThan0~4_combout\,
	combout => \debounce0|LessThan0~5_combout\);

-- Location: LCCOMB_X101_Y41_N24
\debounce0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~6_combout\ = (\debounce0|s_debounceCnt\(18) & (\debounce0|s_debounceCnt\(19) & ((\debounce0|LessThan0~5_combout\) # (\debounce0|s_debounceCnt\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(18),
	datab => \debounce0|s_debounceCnt\(19),
	datac => \debounce0|LessThan0~5_combout\,
	datad => \debounce0|s_debounceCnt\(17),
	combout => \debounce0|LessThan0~6_combout\);

-- Location: LCCOMB_X102_Y41_N28
\debounce0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|LessThan0~7_combout\ = (\debounce0|s_debounceCnt\(21)) # ((\debounce0|s_debounceCnt\(20)) # ((\debounce0|LessThan0~3_combout\) # (\debounce0|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(21),
	datab => \debounce0|s_debounceCnt\(20),
	datac => \debounce0|LessThan0~3_combout\,
	datad => \debounce0|LessThan0~6_combout\,
	combout => \debounce0|LessThan0~7_combout\);

-- Location: LCCOMB_X102_Y41_N2
\debounce0|s_debounceCnt[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[12]~0_combout\ = (\debounce0|s_dirtyIn~q\ & ((!\debounce0|LessThan0~7_combout\) # (!\debounce0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_dirtyIn~q\,
	datab => \debounce0|s_debounceCnt\(22),
	datad => \debounce0|LessThan0~7_combout\,
	combout => \debounce0|s_debounceCnt[12]~0_combout\);

-- Location: LCCOMB_X102_Y42_N26
\debounce0|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~1_combout\ = (\debounce0|s_debounceCnt[12]~0_combout\ & ((\debounce0|Add0~12_combout\) # (!\debounce0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|s_previousIn~q\,
	datac => \debounce0|Add0~12_combout\,
	datad => \debounce0|s_debounceCnt[12]~0_combout\,
	combout => \debounce0|s_debounceCnt~1_combout\);

-- Location: FF_X102_Y42_N27
\debounce0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~1_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(6));

-- Location: LCCOMB_X102_Y42_N22
\debounce0|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~0_combout\ = (!\debounce0|s_debounceCnt\(6) & (!\debounce0|s_debounceCnt\(16) & (!\debounce0|s_debounceCnt\(15) & !\debounce0|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(6),
	datab => \debounce0|s_debounceCnt\(16),
	datac => \debounce0|s_debounceCnt\(15),
	datad => \debounce0|s_debounceCnt\(17),
	combout => \debounce0|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X102_Y42_N24
\debounce0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~2_combout\ = (!\debounce0|s_debounceCnt\(7) & (!\debounce0|s_debounceCnt\(9) & (!\debounce0|s_debounceCnt\(10) & !\debounce0|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(7),
	datab => \debounce0|s_debounceCnt\(9),
	datac => \debounce0|s_debounceCnt\(10),
	datad => \debounce0|s_debounceCnt\(8),
	combout => \debounce0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X103_Y41_N12
\debounce0|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~1_combout\ = (!\debounce0|s_debounceCnt\(21) & (!\debounce0|s_debounceCnt\(20) & (!\debounce0|s_debounceCnt\(13) & !\debounce0|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(21),
	datab => \debounce0|s_debounceCnt\(20),
	datac => \debounce0|s_debounceCnt\(13),
	datad => \debounce0|s_debounceCnt\(12),
	combout => \debounce0|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X102_Y41_N12
\debounce0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~3_combout\ = (!\debounce0|s_debounceCnt\(19) & (!\debounce0|s_debounceCnt\(18) & (!\debounce0|s_debounceCnt\(11) & !\debounce0|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(19),
	datab => \debounce0|s_debounceCnt\(18),
	datac => \debounce0|s_debounceCnt\(11),
	datad => \debounce0|s_debounceCnt\(14),
	combout => \debounce0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X102_Y42_N10
\debounce0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~4_combout\ = (\debounce0|s_pulsedOut~0_combout\ & (\debounce0|s_pulsedOut~2_combout\ & (\debounce0|s_pulsedOut~1_combout\ & \debounce0|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_pulsedOut~0_combout\,
	datab => \debounce0|s_pulsedOut~2_combout\,
	datac => \debounce0|s_pulsedOut~1_combout\,
	datad => \debounce0|s_pulsedOut~3_combout\,
	combout => \debounce0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X102_Y42_N6
\debounce0|s_debounceCnt[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[12]~2_combout\ = ((\debounce0|s_debounceCnt\(5)) # ((\debounce0|s_debounceCnt\(0)) # (!\debounce0|s_pulsedOut~4_combout\))) # (!\debounce0|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_pulsedOut~5_combout\,
	datab => \debounce0|s_debounceCnt\(5),
	datac => \debounce0|s_debounceCnt\(0),
	datad => \debounce0|s_pulsedOut~4_combout\,
	combout => \debounce0|s_debounceCnt[12]~2_combout\);

-- Location: LCCOMB_X102_Y41_N30
\debounce0|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[22]~25_combout\ = (\debounce0|s_dirtyIn~q\ & ((\debounce0|s_debounceCnt\(22) & ((!\debounce0|LessThan0~7_combout\))) # (!\debounce0|s_debounceCnt\(22) & (\debounce0|s_debounceCnt[12]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_dirtyIn~q\,
	datab => \debounce0|s_debounceCnt\(22),
	datac => \debounce0|s_debounceCnt[12]~2_combout\,
	datad => \debounce0|LessThan0~7_combout\,
	combout => \debounce0|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X101_Y41_N22
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

-- Location: LCCOMB_X102_Y41_N24
\debounce0|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[22]~26_combout\ = (\debounce0|s_previousIn~q\ & (\debounce0|s_debounceCnt[22]~25_combout\ & ((\debounce0|Add0~44_combout\)))) # (!\debounce0|s_previousIn~q\ & (((\debounce0|s_debounceCnt[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt[22]~25_combout\,
	datab => \debounce0|s_debounceCnt[12]~0_combout\,
	datac => \debounce0|s_previousIn~q\,
	datad => \debounce0|Add0~44_combout\,
	combout => \debounce0|s_debounceCnt[22]~26_combout\);

-- Location: FF_X102_Y41_N25
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

-- Location: LCCOMB_X102_Y41_N0
\debounce0|s_debounceCnt[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt[12]~4_combout\ = (\debounce0|s_dirtyIn~q\ & (\debounce0|s_previousIn~q\ & ((!\debounce0|LessThan0~7_combout\) # (!\debounce0|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_dirtyIn~q\,
	datab => \debounce0|s_debounceCnt\(22),
	datac => \debounce0|s_previousIn~q\,
	datad => \debounce0|LessThan0~7_combout\,
	combout => \debounce0|s_debounceCnt[12]~4_combout\);

-- Location: LCCOMB_X102_Y42_N8
\debounce0|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~24_combout\ = (\debounce0|Add0~0_combout\ & \debounce0|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|Add0~0_combout\,
	datad => \debounce0|s_debounceCnt[12]~4_combout\,
	combout => \debounce0|s_debounceCnt~24_combout\);

-- Location: FF_X102_Y42_N9
\debounce0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~24_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(0));

-- Location: LCCOMB_X101_Y42_N12
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

-- Location: LCCOMB_X101_Y42_N8
\debounce0|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~20_combout\ = (\debounce0|Add0~2_combout\ & \debounce0|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|Add0~2_combout\,
	datac => \debounce0|s_debounceCnt[12]~4_combout\,
	combout => \debounce0|s_debounceCnt~20_combout\);

-- Location: FF_X101_Y42_N9
\debounce0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~20_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(1));

-- Location: LCCOMB_X101_Y42_N14
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

-- Location: LCCOMB_X101_Y42_N2
\debounce0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~21_combout\ = (\debounce0|Add0~4_combout\ & \debounce0|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|Add0~4_combout\,
	datac => \debounce0|s_debounceCnt[12]~4_combout\,
	combout => \debounce0|s_debounceCnt~21_combout\);

-- Location: FF_X101_Y42_N3
\debounce0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~21_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(2));

-- Location: LCCOMB_X101_Y42_N16
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

-- Location: LCCOMB_X101_Y42_N4
\debounce0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~22_combout\ = (\debounce0|Add0~6_combout\ & \debounce0|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|Add0~6_combout\,
	datac => \debounce0|s_debounceCnt[12]~4_combout\,
	combout => \debounce0|s_debounceCnt~22_combout\);

-- Location: FF_X101_Y42_N5
\debounce0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~22_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(3));

-- Location: LCCOMB_X101_Y42_N6
\debounce0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_debounceCnt~23_combout\ = (\debounce0|Add0~8_combout\ & \debounce0|s_debounceCnt[12]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce0|Add0~8_combout\,
	datac => \debounce0|s_debounceCnt[12]~4_combout\,
	combout => \debounce0|s_debounceCnt~23_combout\);

-- Location: FF_X101_Y42_N7
\debounce0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debounce0|s_debounceCnt~23_combout\,
	ena => \debounce0|s_debounceCnt[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce0|s_debounceCnt\(4));

-- Location: LCCOMB_X101_Y42_N0
\debounce0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~5_combout\ = (!\debounce0|s_debounceCnt\(4) & (!\debounce0|s_debounceCnt\(1) & (!\debounce0|s_debounceCnt\(3) & !\debounce0|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_debounceCnt\(4),
	datab => \debounce0|s_debounceCnt\(1),
	datac => \debounce0|s_debounceCnt\(3),
	datad => \debounce0|s_debounceCnt\(2),
	combout => \debounce0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X102_Y41_N14
\debounce0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~6_combout\ = (\debounce0|s_dirtyIn~q\ & (\debounce0|s_previousIn~q\ & (\debounce0|s_debounceCnt\(0) & !\debounce0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_dirtyIn~q\,
	datab => \debounce0|s_previousIn~q\,
	datac => \debounce0|s_debounceCnt\(0),
	datad => \debounce0|s_debounceCnt\(22),
	combout => \debounce0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X102_Y42_N4
\debounce0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce0|s_pulsedOut~7_combout\ = (\debounce0|s_pulsedOut~5_combout\ & (!\debounce0|s_debounceCnt\(5) & (\debounce0|s_pulsedOut~6_combout\ & \debounce0|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce0|s_pulsedOut~5_combout\,
	datab => \debounce0|s_debounceCnt\(5),
	datac => \debounce0|s_pulsedOut~6_combout\,
	datad => \debounce0|s_pulsedOut~4_combout\,
	combout => \debounce0|s_pulsedOut~7_combout\);

-- Location: FF_X102_Y42_N5
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

-- Location: LCCOMB_X113_Y55_N20
\fsm|s_nextState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_nextState~0_combout\ = (!\debounce1|s_pulsedOut~q\ & !\debounce0|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce1|s_pulsedOut~q\,
	datad => \debounce0|s_pulsedOut~q\,
	combout => \fsm|s_nextState~0_combout\);

-- Location: LCCOMB_X113_Y55_N12
\fsm|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState~17_combout\ = (\KEY[0]~input_o\ & (!\fsm|s_currentState.E5~q\ & ((\fsm|s_currentState.E0~q\) # (!\fsm|s_nextState~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fsm|s_currentState.E5~q\,
	datac => \fsm|s_currentState.E0~q\,
	datad => \fsm|s_nextState~0_combout\,
	combout => \fsm|s_currentState~17_combout\);

-- Location: FF_X113_Y55_N13
\fsm|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|s_currentState~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.E0~q\);

-- Location: LCCOMB_X113_Y55_N4
\fsm|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState~13_combout\ = (\fsm|s_currentState~12_combout\ & ((\debounce0|s_pulsedOut~q\ & ((!\fsm|s_currentState.E0~q\))) # (!\debounce0|s_pulsedOut~q\ & (\fsm|s_currentState.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState~12_combout\,
	datab => \debounce0|s_pulsedOut~q\,
	datac => \fsm|s_currentState.E1~q\,
	datad => \fsm|s_currentState.E0~q\,
	combout => \fsm|s_currentState~13_combout\);

-- Location: FF_X113_Y55_N5
\fsm|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.E1~q\);

-- Location: LCCOMB_X113_Y55_N22
\fsm|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState~16_combout\ = (\fsm|s_currentState~12_combout\ & ((\debounce0|s_pulsedOut~q\ & (\fsm|s_currentState.E1~q\)) # (!\debounce0|s_pulsedOut~q\ & ((\fsm|s_currentState.E2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState~12_combout\,
	datab => \fsm|s_currentState.E1~q\,
	datac => \fsm|s_currentState.E2~q\,
	datad => \debounce0|s_pulsedOut~q\,
	combout => \fsm|s_currentState~16_combout\);

-- Location: FF_X113_Y55_N23
\fsm|s_currentState.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|s_currentState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.E2~q\);

-- Location: LCCOMB_X113_Y55_N10
\fsm|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState~8_combout\ = (!\debounce1|s_pulsedOut~q\ & ((\debounce0|s_pulsedOut~q\ & (\fsm|s_currentState.E2~q\)) # (!\debounce0|s_pulsedOut~q\ & ((\fsm|s_currentState.E3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E2~q\,
	datab => \fsm|s_currentState.E3~q\,
	datac => \debounce1|s_pulsedOut~q\,
	datad => \debounce0|s_pulsedOut~q\,
	combout => \fsm|s_currentState~8_combout\);

-- Location: LCCOMB_X113_Y55_N24
\fsm|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState~9_combout\ = (\KEY[0]~input_o\ & ((\fsm|s_currentState~8_combout\) # ((!\fsm|s_currentState.E0~q\ & \debounce1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E0~q\,
	datab => \debounce1|s_pulsedOut~q\,
	datac => \KEY[0]~input_o\,
	datad => \fsm|s_currentState~8_combout\,
	combout => \fsm|s_currentState~9_combout\);

-- Location: FF_X113_Y55_N25
\fsm|s_currentState.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|s_currentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.E3~q\);

-- Location: LCCOMB_X113_Y55_N28
\fsm|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState~14_combout\ = (!\debounce1|s_pulsedOut~q\ & ((\debounce0|s_pulsedOut~q\ & ((\fsm|s_currentState.E3~q\))) # (!\debounce0|s_pulsedOut~q\ & (\fsm|s_currentState.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E4~q\,
	datab => \fsm|s_currentState.E3~q\,
	datac => \debounce1|s_pulsedOut~q\,
	datad => \debounce0|s_pulsedOut~q\,
	combout => \fsm|s_currentState~14_combout\);

-- Location: LCCOMB_X113_Y55_N16
\fsm|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState~15_combout\ = (\KEY[0]~input_o\ & ((\fsm|s_currentState~14_combout\) # ((\debounce1|s_pulsedOut~q\ & \fsm|s_currentState.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \debounce1|s_pulsedOut~q\,
	datac => \fsm|s_currentState.E1~q\,
	datad => \fsm|s_currentState~14_combout\,
	combout => \fsm|s_currentState~15_combout\);

-- Location: FF_X113_Y55_N17
\fsm|s_currentState.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|s_currentState~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.E4~q\);

-- Location: LCCOMB_X113_Y55_N14
\fsm|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState~10_combout\ = (\debounce1|s_pulsedOut~q\ & ((\fsm|s_currentState.E2~q\) # (\fsm|s_currentState.E3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E2~q\,
	datab => \fsm|s_currentState.E3~q\,
	datac => \debounce1|s_pulsedOut~q\,
	combout => \fsm|s_currentState~10_combout\);

-- Location: LCCOMB_X113_Y55_N30
\fsm|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|s_currentState~11_combout\ = (\KEY[0]~input_o\ & ((\fsm|s_currentState~10_combout\) # ((\fsm|s_currentState.E4~q\ & !\fsm|s_nextState~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \fsm|s_currentState.E4~q\,
	datac => \fsm|s_currentState~10_combout\,
	datad => \fsm|s_nextState~0_combout\,
	combout => \fsm|s_currentState~11_combout\);

-- Location: FF_X113_Y55_N31
\fsm|s_currentState.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \fsm|s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fsm|s_currentState.E5~q\);

-- Location: LCCOMB_X110_Y55_N6
\toogle_abrir|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~0_combout\ = \toogle_abrir|s_counter\(0) $ (GND)
-- \toogle_abrir|Add0~1\ = CARRY(!\toogle_abrir|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(0),
	datad => VCC,
	combout => \toogle_abrir|Add0~0_combout\,
	cout => \toogle_abrir|Add0~1\);

-- Location: LCCOMB_X111_Y55_N30
\toogle_abrir|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~32_combout\ = (!\toogle_abrir|Add0~0_combout\ & !\fsm|s_currentState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \toogle_abrir|Add0~0_combout\,
	datad => \fsm|s_currentState.E5~q\,
	combout => \toogle_abrir|Add0~32_combout\);

-- Location: FF_X110_Y55_N5
\toogle_abrir|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \toogle_abrir|Add0~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(0));

-- Location: LCCOMB_X110_Y55_N8
\toogle_abrir|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~2_combout\ = (\toogle_abrir|s_counter\(1) & (!\toogle_abrir|Add0~1\)) # (!\toogle_abrir|s_counter\(1) & ((\toogle_abrir|Add0~1\) # (GND)))
-- \toogle_abrir|Add0~3\ = CARRY((!\toogle_abrir|Add0~1\) # (!\toogle_abrir|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(1),
	datad => VCC,
	cin => \toogle_abrir|Add0~1\,
	combout => \toogle_abrir|Add0~2_combout\,
	cout => \toogle_abrir|Add0~3\);

-- Location: LCCOMB_X110_Y55_N4
\toogle_abrir|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~35_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~2_combout\,
	combout => \toogle_abrir|Add0~35_combout\);

-- Location: FF_X110_Y55_N27
\toogle_abrir|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \toogle_abrir|Add0~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(1));

-- Location: LCCOMB_X110_Y55_N10
\toogle_abrir|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~4_combout\ = (\toogle_abrir|s_counter\(2) & (\toogle_abrir|Add0~3\ $ (GND))) # (!\toogle_abrir|s_counter\(2) & (!\toogle_abrir|Add0~3\ & VCC))
-- \toogle_abrir|Add0~5\ = CARRY((\toogle_abrir|s_counter\(2) & !\toogle_abrir|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(2),
	datad => VCC,
	cin => \toogle_abrir|Add0~3\,
	combout => \toogle_abrir|Add0~4_combout\,
	cout => \toogle_abrir|Add0~5\);

-- Location: LCCOMB_X111_Y55_N10
\toogle_abrir|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~34_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~4_combout\,
	combout => \toogle_abrir|Add0~34_combout\);

-- Location: FF_X110_Y55_N21
\toogle_abrir|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \toogle_abrir|Add0~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(2));

-- Location: LCCOMB_X110_Y55_N12
\toogle_abrir|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~6_combout\ = (\toogle_abrir|s_counter\(3) & (!\toogle_abrir|Add0~5\)) # (!\toogle_abrir|s_counter\(3) & ((\toogle_abrir|Add0~5\) # (GND)))
-- \toogle_abrir|Add0~7\ = CARRY((!\toogle_abrir|Add0~5\) # (!\toogle_abrir|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(3),
	datad => VCC,
	cin => \toogle_abrir|Add0~5\,
	combout => \toogle_abrir|Add0~6_combout\,
	cout => \toogle_abrir|Add0~7\);

-- Location: LCCOMB_X111_Y55_N0
\toogle_abrir|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~33_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~6_combout\,
	combout => \toogle_abrir|Add0~33_combout\);

-- Location: FF_X110_Y55_N9
\toogle_abrir|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \toogle_abrir|Add0~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(3));

-- Location: LCCOMB_X110_Y55_N14
\toogle_abrir|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~8_combout\ = (\toogle_abrir|s_counter\(4) & (\toogle_abrir|Add0~7\ $ (GND))) # (!\toogle_abrir|s_counter\(4) & (!\toogle_abrir|Add0~7\ & VCC))
-- \toogle_abrir|Add0~9\ = CARRY((\toogle_abrir|s_counter\(4) & !\toogle_abrir|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(4),
	datad => VCC,
	cin => \toogle_abrir|Add0~7\,
	combout => \toogle_abrir|Add0~8_combout\,
	cout => \toogle_abrir|Add0~9\);

-- Location: LCCOMB_X111_Y55_N20
\toogle_abrir|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~31_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~8_combout\,
	combout => \toogle_abrir|Add0~31_combout\);

-- Location: FF_X110_Y55_N19
\toogle_abrir|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \toogle_abrir|Add0~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(4));

-- Location: LCCOMB_X110_Y55_N16
\toogle_abrir|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~10_combout\ = (\toogle_abrir|s_counter\(5) & (!\toogle_abrir|Add0~9\)) # (!\toogle_abrir|s_counter\(5) & ((\toogle_abrir|Add0~9\) # (GND)))
-- \toogle_abrir|Add0~11\ = CARRY((!\toogle_abrir|Add0~9\) # (!\toogle_abrir|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(5),
	datad => VCC,
	cin => \toogle_abrir|Add0~9\,
	combout => \toogle_abrir|Add0~10_combout\,
	cout => \toogle_abrir|Add0~11\);

-- Location: LCCOMB_X109_Y55_N20
\toogle_abrir|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~30_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~10_combout\,
	combout => \toogle_abrir|Add0~30_combout\);

-- Location: FF_X109_Y55_N21
\toogle_abrir|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(5));

-- Location: LCCOMB_X110_Y55_N18
\toogle_abrir|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~12_combout\ = (\toogle_abrir|s_counter\(6) & (\toogle_abrir|Add0~11\ $ (GND))) # (!\toogle_abrir|s_counter\(6) & (!\toogle_abrir|Add0~11\ & VCC))
-- \toogle_abrir|Add0~13\ = CARRY((\toogle_abrir|s_counter\(6) & !\toogle_abrir|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(6),
	datad => VCC,
	cin => \toogle_abrir|Add0~11\,
	combout => \toogle_abrir|Add0~12_combout\,
	cout => \toogle_abrir|Add0~13\);

-- Location: LCCOMB_X110_Y55_N2
\toogle_abrir|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~29_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.E5~q\,
	datac => \toogle_abrir|Add0~12_combout\,
	combout => \toogle_abrir|Add0~29_combout\);

-- Location: FF_X110_Y55_N3
\toogle_abrir|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(6));

-- Location: LCCOMB_X110_Y55_N20
\toogle_abrir|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~14_combout\ = (\toogle_abrir|s_counter\(7) & (!\toogle_abrir|Add0~13\)) # (!\toogle_abrir|s_counter\(7) & ((\toogle_abrir|Add0~13\) # (GND)))
-- \toogle_abrir|Add0~15\ = CARRY((!\toogle_abrir|Add0~13\) # (!\toogle_abrir|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(7),
	datad => VCC,
	cin => \toogle_abrir|Add0~13\,
	combout => \toogle_abrir|Add0~14_combout\,
	cout => \toogle_abrir|Add0~15\);

-- Location: LCCOMB_X109_Y55_N14
\toogle_abrir|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~28_combout\ = (\toogle_abrir|Add0~14_combout\ & !\fsm|s_currentState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \toogle_abrir|Add0~14_combout\,
	datad => \fsm|s_currentState.E5~q\,
	combout => \toogle_abrir|Add0~28_combout\);

-- Location: FF_X109_Y55_N15
\toogle_abrir|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(7));

-- Location: LCCOMB_X110_Y55_N22
\toogle_abrir|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~16_combout\ = (\toogle_abrir|s_counter\(8) & (\toogle_abrir|Add0~15\ $ (GND))) # (!\toogle_abrir|s_counter\(8) & (!\toogle_abrir|Add0~15\ & VCC))
-- \toogle_abrir|Add0~17\ = CARRY((\toogle_abrir|s_counter\(8) & !\toogle_abrir|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(8),
	datad => VCC,
	cin => \toogle_abrir|Add0~15\,
	combout => \toogle_abrir|Add0~16_combout\,
	cout => \toogle_abrir|Add0~17\);

-- Location: LCCOMB_X110_Y55_N0
\toogle_abrir|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~27_combout\ = (\toogle_abrir|Add0~16_combout\ & !\fsm|s_currentState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \toogle_abrir|Add0~16_combout\,
	datad => \fsm|s_currentState.E5~q\,
	combout => \toogle_abrir|Add0~27_combout\);

-- Location: FF_X110_Y55_N1
\toogle_abrir|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(8));

-- Location: LCCOMB_X110_Y55_N24
\toogle_abrir|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~18_combout\ = (\toogle_abrir|s_counter\(9) & (!\toogle_abrir|Add0~17\)) # (!\toogle_abrir|s_counter\(9) & ((\toogle_abrir|Add0~17\) # (GND)))
-- \toogle_abrir|Add0~19\ = CARRY((!\toogle_abrir|Add0~17\) # (!\toogle_abrir|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(9),
	datad => VCC,
	cin => \toogle_abrir|Add0~17\,
	combout => \toogle_abrir|Add0~18_combout\,
	cout => \toogle_abrir|Add0~19\);

-- Location: LCCOMB_X109_Y55_N30
\toogle_abrir|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~26_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~18_combout\,
	combout => \toogle_abrir|Add0~26_combout\);

-- Location: FF_X109_Y55_N31
\toogle_abrir|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(9));

-- Location: LCCOMB_X110_Y55_N26
\toogle_abrir|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~20_combout\ = (\toogle_abrir|s_counter\(10) & (\toogle_abrir|Add0~19\ $ (GND))) # (!\toogle_abrir|s_counter\(10) & (!\toogle_abrir|Add0~19\ & VCC))
-- \toogle_abrir|Add0~21\ = CARRY((\toogle_abrir|s_counter\(10) & !\toogle_abrir|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(10),
	datad => VCC,
	cin => \toogle_abrir|Add0~19\,
	combout => \toogle_abrir|Add0~20_combout\,
	cout => \toogle_abrir|Add0~21\);

-- Location: LCCOMB_X109_Y55_N16
\toogle_abrir|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~25_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~20_combout\,
	combout => \toogle_abrir|Add0~25_combout\);

-- Location: FF_X109_Y55_N17
\toogle_abrir|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(10));

-- Location: LCCOMB_X110_Y55_N28
\toogle_abrir|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~22_combout\ = (\toogle_abrir|s_counter\(11) & (!\toogle_abrir|Add0~21\)) # (!\toogle_abrir|s_counter\(11) & ((\toogle_abrir|Add0~21\) # (GND)))
-- \toogle_abrir|Add0~23\ = CARRY((!\toogle_abrir|Add0~21\) # (!\toogle_abrir|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(11),
	datad => VCC,
	cin => \toogle_abrir|Add0~21\,
	combout => \toogle_abrir|Add0~22_combout\,
	cout => \toogle_abrir|Add0~23\);

-- Location: LCCOMB_X109_Y55_N18
\toogle_abrir|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~24_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~22_combout\,
	combout => \toogle_abrir|Add0~24_combout\);

-- Location: FF_X109_Y55_N19
\toogle_abrir|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(11));

-- Location: LCCOMB_X110_Y55_N30
\toogle_abrir|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~36_combout\ = (\toogle_abrir|s_counter\(12) & (\toogle_abrir|Add0~23\ $ (GND))) # (!\toogle_abrir|s_counter\(12) & (!\toogle_abrir|Add0~23\ & VCC))
-- \toogle_abrir|Add0~37\ = CARRY((\toogle_abrir|s_counter\(12) & !\toogle_abrir|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(12),
	datad => VCC,
	cin => \toogle_abrir|Add0~23\,
	combout => \toogle_abrir|Add0~36_combout\,
	cout => \toogle_abrir|Add0~37\);

-- Location: LCCOMB_X109_Y55_N26
\toogle_abrir|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~38_combout\ = (\toogle_abrir|Add0~36_combout\ & !\fsm|s_currentState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \toogle_abrir|Add0~36_combout\,
	datad => \fsm|s_currentState.E5~q\,
	combout => \toogle_abrir|Add0~38_combout\);

-- Location: FF_X109_Y55_N27
\toogle_abrir|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(12));

-- Location: LCCOMB_X110_Y54_N0
\toogle_abrir|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~39_combout\ = (\toogle_abrir|s_counter\(13) & (!\toogle_abrir|Add0~37\)) # (!\toogle_abrir|s_counter\(13) & ((\toogle_abrir|Add0~37\) # (GND)))
-- \toogle_abrir|Add0~40\ = CARRY((!\toogle_abrir|Add0~37\) # (!\toogle_abrir|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(13),
	datad => VCC,
	cin => \toogle_abrir|Add0~37\,
	combout => \toogle_abrir|Add0~39_combout\,
	cout => \toogle_abrir|Add0~40\);

-- Location: LCCOMB_X109_Y54_N16
\toogle_abrir|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~41_combout\ = (\toogle_abrir|Add0~39_combout\ & !\fsm|s_currentState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \toogle_abrir|Add0~39_combout\,
	datad => \fsm|s_currentState.E5~q\,
	combout => \toogle_abrir|Add0~41_combout\);

-- Location: FF_X109_Y54_N17
\toogle_abrir|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(13));

-- Location: LCCOMB_X110_Y54_N2
\toogle_abrir|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~42_combout\ = (\toogle_abrir|s_counter\(14) & (\toogle_abrir|Add0~40\ $ (GND))) # (!\toogle_abrir|s_counter\(14) & (!\toogle_abrir|Add0~40\ & VCC))
-- \toogle_abrir|Add0~43\ = CARRY((\toogle_abrir|s_counter\(14) & !\toogle_abrir|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(14),
	datad => VCC,
	cin => \toogle_abrir|Add0~40\,
	combout => \toogle_abrir|Add0~42_combout\,
	cout => \toogle_abrir|Add0~43\);

-- Location: LCCOMB_X109_Y54_N6
\toogle_abrir|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~44_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~42_combout\,
	combout => \toogle_abrir|Add0~44_combout\);

-- Location: FF_X109_Y54_N7
\toogle_abrir|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(14));

-- Location: LCCOMB_X110_Y54_N4
\toogle_abrir|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~45_combout\ = (\toogle_abrir|s_counter\(15) & (!\toogle_abrir|Add0~43\)) # (!\toogle_abrir|s_counter\(15) & ((\toogle_abrir|Add0~43\) # (GND)))
-- \toogle_abrir|Add0~46\ = CARRY((!\toogle_abrir|Add0~43\) # (!\toogle_abrir|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(15),
	datad => VCC,
	cin => \toogle_abrir|Add0~43\,
	combout => \toogle_abrir|Add0~45_combout\,
	cout => \toogle_abrir|Add0~46\);

-- Location: LCCOMB_X109_Y54_N8
\toogle_abrir|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~47_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~45_combout\,
	combout => \toogle_abrir|Add0~47_combout\);

-- Location: FF_X109_Y54_N9
\toogle_abrir|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(15));

-- Location: LCCOMB_X110_Y54_N6
\toogle_abrir|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~48_combout\ = (\toogle_abrir|s_counter\(16) & (\toogle_abrir|Add0~46\ $ (GND))) # (!\toogle_abrir|s_counter\(16) & (!\toogle_abrir|Add0~46\ & VCC))
-- \toogle_abrir|Add0~49\ = CARRY((\toogle_abrir|s_counter\(16) & !\toogle_abrir|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(16),
	datad => VCC,
	cin => \toogle_abrir|Add0~46\,
	combout => \toogle_abrir|Add0~48_combout\,
	cout => \toogle_abrir|Add0~49\);

-- Location: LCCOMB_X109_Y54_N28
\toogle_abrir|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~58_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~48_combout\,
	combout => \toogle_abrir|Add0~58_combout\);

-- Location: FF_X109_Y54_N29
\toogle_abrir|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(16));

-- Location: LCCOMB_X110_Y54_N8
\toogle_abrir|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~50_combout\ = (\toogle_abrir|s_counter\(17) & (!\toogle_abrir|Add0~49\)) # (!\toogle_abrir|s_counter\(17) & ((\toogle_abrir|Add0~49\) # (GND)))
-- \toogle_abrir|Add0~51\ = CARRY((!\toogle_abrir|Add0~49\) # (!\toogle_abrir|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(17),
	datad => VCC,
	cin => \toogle_abrir|Add0~49\,
	combout => \toogle_abrir|Add0~50_combout\,
	cout => \toogle_abrir|Add0~51\);

-- Location: LCCOMB_X109_Y54_N24
\toogle_abrir|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~52_combout\ = (\toogle_abrir|Add0~50_combout\ & !\fsm|s_currentState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \toogle_abrir|Add0~50_combout\,
	datad => \fsm|s_currentState.E5~q\,
	combout => \toogle_abrir|Add0~52_combout\);

-- Location: FF_X109_Y54_N25
\toogle_abrir|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(17));

-- Location: LCCOMB_X110_Y54_N10
\toogle_abrir|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~53_combout\ = (\toogle_abrir|s_counter\(18) & (\toogle_abrir|Add0~51\ $ (GND))) # (!\toogle_abrir|s_counter\(18) & (!\toogle_abrir|Add0~51\ & VCC))
-- \toogle_abrir|Add0~54\ = CARRY((\toogle_abrir|s_counter\(18) & !\toogle_abrir|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(18),
	datad => VCC,
	cin => \toogle_abrir|Add0~51\,
	combout => \toogle_abrir|Add0~53_combout\,
	cout => \toogle_abrir|Add0~54\);

-- Location: LCCOMB_X109_Y54_N22
\toogle_abrir|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~59_combout\ = (\toogle_abrir|Add0~53_combout\ & !\fsm|s_currentState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \toogle_abrir|Add0~53_combout\,
	datad => \fsm|s_currentState.E5~q\,
	combout => \toogle_abrir|Add0~59_combout\);

-- Location: FF_X109_Y54_N23
\toogle_abrir|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(18));

-- Location: LCCOMB_X110_Y54_N12
\toogle_abrir|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~55_combout\ = (\toogle_abrir|s_counter\(19) & (!\toogle_abrir|Add0~54\)) # (!\toogle_abrir|s_counter\(19) & ((\toogle_abrir|Add0~54\) # (GND)))
-- \toogle_abrir|Add0~56\ = CARRY((!\toogle_abrir|Add0~54\) # (!\toogle_abrir|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(19),
	datad => VCC,
	cin => \toogle_abrir|Add0~54\,
	combout => \toogle_abrir|Add0~55_combout\,
	cout => \toogle_abrir|Add0~56\);

-- Location: LCCOMB_X109_Y54_N10
\toogle_abrir|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~57_combout\ = (\toogle_abrir|Add0~55_combout\ & !\fsm|s_currentState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \toogle_abrir|Add0~55_combout\,
	datad => \fsm|s_currentState.E5~q\,
	combout => \toogle_abrir|Add0~57_combout\);

-- Location: FF_X109_Y54_N11
\toogle_abrir|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(19));

-- Location: LCCOMB_X109_Y54_N12
\toogle_abrir|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Equal0~5_combout\ = (\toogle_abrir|s_counter\(19) & (\toogle_abrir|s_counter\(17) & (!\toogle_abrir|s_counter\(18) & !\toogle_abrir|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(19),
	datab => \toogle_abrir|s_counter\(17),
	datac => \toogle_abrir|s_counter\(18),
	datad => \toogle_abrir|s_counter\(16),
	combout => \toogle_abrir|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y54_N14
\toogle_abrir|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~60_combout\ = (\toogle_abrir|s_counter\(20) & (\toogle_abrir|Add0~56\ $ (GND))) # (!\toogle_abrir|s_counter\(20) & (!\toogle_abrir|Add0~56\ & VCC))
-- \toogle_abrir|Add0~61\ = CARRY((\toogle_abrir|s_counter\(20) & !\toogle_abrir|Add0~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(20),
	datad => VCC,
	cin => \toogle_abrir|Add0~56\,
	combout => \toogle_abrir|Add0~60_combout\,
	cout => \toogle_abrir|Add0~61\);

-- Location: LCCOMB_X109_Y54_N26
\toogle_abrir|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~62_combout\ = (\toogle_abrir|Add0~60_combout\ & !\fsm|s_currentState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \toogle_abrir|Add0~60_combout\,
	datad => \fsm|s_currentState.E5~q\,
	combout => \toogle_abrir|Add0~62_combout\);

-- Location: FF_X109_Y54_N27
\toogle_abrir|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(20));

-- Location: LCCOMB_X110_Y54_N16
\toogle_abrir|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~63_combout\ = (\toogle_abrir|s_counter\(21) & (!\toogle_abrir|Add0~61\)) # (!\toogle_abrir|s_counter\(21) & ((\toogle_abrir|Add0~61\) # (GND)))
-- \toogle_abrir|Add0~64\ = CARRY((!\toogle_abrir|Add0~61\) # (!\toogle_abrir|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(21),
	datad => VCC,
	cin => \toogle_abrir|Add0~61\,
	combout => \toogle_abrir|Add0~63_combout\,
	cout => \toogle_abrir|Add0~64\);

-- Location: LCCOMB_X110_Y54_N26
\toogle_abrir|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~65_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~63_combout\,
	combout => \toogle_abrir|Add0~65_combout\);

-- Location: FF_X110_Y54_N27
\toogle_abrir|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(21));

-- Location: LCCOMB_X110_Y54_N18
\toogle_abrir|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~66_combout\ = (\toogle_abrir|s_counter\(22) & (\toogle_abrir|Add0~64\ $ (GND))) # (!\toogle_abrir|s_counter\(22) & (!\toogle_abrir|Add0~64\ & VCC))
-- \toogle_abrir|Add0~67\ = CARRY((\toogle_abrir|s_counter\(22) & !\toogle_abrir|Add0~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(22),
	datad => VCC,
	cin => \toogle_abrir|Add0~64\,
	combout => \toogle_abrir|Add0~66_combout\,
	cout => \toogle_abrir|Add0~67\);

-- Location: LCCOMB_X109_Y54_N20
\toogle_abrir|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~68_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~66_combout\,
	combout => \toogle_abrir|Add0~68_combout\);

-- Location: FF_X109_Y54_N21
\toogle_abrir|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(22));

-- Location: LCCOMB_X110_Y54_N20
\toogle_abrir|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~69_combout\ = (\toogle_abrir|s_counter\(23) & (!\toogle_abrir|Add0~67\)) # (!\toogle_abrir|s_counter\(23) & ((\toogle_abrir|Add0~67\) # (GND)))
-- \toogle_abrir|Add0~70\ = CARRY((!\toogle_abrir|Add0~67\) # (!\toogle_abrir|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \toogle_abrir|s_counter\(23),
	datad => VCC,
	cin => \toogle_abrir|Add0~67\,
	combout => \toogle_abrir|Add0~69_combout\,
	cout => \toogle_abrir|Add0~70\);

-- Location: LCCOMB_X109_Y54_N30
\toogle_abrir|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~71_combout\ = (\toogle_abrir|Add0~69_combout\ & !\fsm|s_currentState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \toogle_abrir|Add0~69_combout\,
	datad => \fsm|s_currentState.E5~q\,
	combout => \toogle_abrir|Add0~71_combout\);

-- Location: FF_X109_Y54_N31
\toogle_abrir|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(23));

-- Location: LCCOMB_X109_Y54_N4
\toogle_abrir|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Equal0~6_combout\ = (\toogle_abrir|s_counter\(20) & (\toogle_abrir|s_counter\(22) & (\toogle_abrir|s_counter\(23) & \toogle_abrir|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(20),
	datab => \toogle_abrir|s_counter\(22),
	datac => \toogle_abrir|s_counter\(23),
	datad => \toogle_abrir|s_counter\(21),
	combout => \toogle_abrir|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y54_N22
\toogle_abrir|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~72_combout\ = (\toogle_abrir|s_counter\(24) & (\toogle_abrir|Add0~70\ $ (GND))) # (!\toogle_abrir|s_counter\(24) & (!\toogle_abrir|Add0~70\ & VCC))
-- \toogle_abrir|Add0~73\ = CARRY((\toogle_abrir|s_counter\(24) & !\toogle_abrir|Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(24),
	datad => VCC,
	cin => \toogle_abrir|Add0~70\,
	combout => \toogle_abrir|Add0~72_combout\,
	cout => \toogle_abrir|Add0~73\);

-- Location: LCCOMB_X110_Y54_N30
\toogle_abrir|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~77_combout\ = (\toogle_abrir|Add0~72_combout\ & !\fsm|s_currentState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \toogle_abrir|Add0~72_combout\,
	datad => \fsm|s_currentState.E5~q\,
	combout => \toogle_abrir|Add0~77_combout\);

-- Location: FF_X110_Y54_N31
\toogle_abrir|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(24));

-- Location: LCCOMB_X110_Y54_N24
\toogle_abrir|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~74_combout\ = \toogle_abrir|Add0~73\ $ (\toogle_abrir|s_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \toogle_abrir|s_counter\(25),
	cin => \toogle_abrir|Add0~73\,
	combout => \toogle_abrir|Add0~74_combout\);

-- Location: LCCOMB_X110_Y54_N28
\toogle_abrir|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Add0~76_combout\ = (!\fsm|s_currentState.E5~q\ & \toogle_abrir|Add0~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E5~q\,
	datad => \toogle_abrir|Add0~74_combout\,
	combout => \toogle_abrir|Add0~76_combout\);

-- Location: FF_X110_Y54_N29
\toogle_abrir|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|s_counter\(25));

-- Location: LCCOMB_X109_Y54_N18
\toogle_abrir|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Equal0~7_combout\ = (\toogle_abrir|Equal0~5_combout\ & (\toogle_abrir|Equal0~6_combout\ & (!\toogle_abrir|s_counter\(24) & \toogle_abrir|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|Equal0~5_combout\,
	datab => \toogle_abrir|Equal0~6_combout\,
	datac => \toogle_abrir|s_counter\(24),
	datad => \toogle_abrir|s_counter\(25),
	combout => \toogle_abrir|Equal0~7_combout\);

-- Location: LCCOMB_X109_Y55_N22
\toogle_abrir|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Equal0~1_combout\ = (!\toogle_abrir|s_counter\(6) & (!\toogle_abrir|s_counter\(4) & (\toogle_abrir|s_counter\(7) & !\toogle_abrir|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(6),
	datab => \toogle_abrir|s_counter\(4),
	datac => \toogle_abrir|s_counter\(7),
	datad => \toogle_abrir|s_counter\(5),
	combout => \toogle_abrir|Equal0~1_combout\);

-- Location: LCCOMB_X109_Y55_N12
\toogle_abrir|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Equal0~2_combout\ = (!\toogle_abrir|s_counter\(1) & (!\toogle_abrir|s_counter\(3) & (!\toogle_abrir|s_counter\(2) & \toogle_abrir|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(1),
	datab => \toogle_abrir|s_counter\(3),
	datac => \toogle_abrir|s_counter\(2),
	datad => \toogle_abrir|s_counter\(0),
	combout => \toogle_abrir|Equal0~2_combout\);

-- Location: LCCOMB_X109_Y54_N14
\toogle_abrir|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Equal0~3_combout\ = (\toogle_abrir|s_counter\(14) & (\toogle_abrir|s_counter\(15) & (\toogle_abrir|s_counter\(12) & \toogle_abrir|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(14),
	datab => \toogle_abrir|s_counter\(15),
	datac => \toogle_abrir|s_counter\(12),
	datad => \toogle_abrir|s_counter\(13),
	combout => \toogle_abrir|Equal0~3_combout\);

-- Location: LCCOMB_X109_Y55_N28
\toogle_abrir|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Equal0~0_combout\ = (!\toogle_abrir|s_counter\(9) & (!\toogle_abrir|s_counter\(10) & (!\toogle_abrir|s_counter\(8) & !\toogle_abrir|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|s_counter\(9),
	datab => \toogle_abrir|s_counter\(10),
	datac => \toogle_abrir|s_counter\(8),
	datad => \toogle_abrir|s_counter\(11),
	combout => \toogle_abrir|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y55_N24
\toogle_abrir|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|Equal0~4_combout\ = (\toogle_abrir|Equal0~1_combout\ & (\toogle_abrir|Equal0~2_combout\ & (\toogle_abrir|Equal0~3_combout\ & \toogle_abrir|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|Equal0~1_combout\,
	datab => \toogle_abrir|Equal0~2_combout\,
	datac => \toogle_abrir|Equal0~3_combout\,
	datad => \toogle_abrir|Equal0~0_combout\,
	combout => \toogle_abrir|Equal0~4_combout\);

-- Location: LCCOMB_X109_Y55_N8
\toogle_abrir|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \toogle_abrir|q~0_combout\ = (\toogle_abrir|Equal0~7_combout\ & (!\toogle_abrir|Equal0~4_combout\ & ((\fsm|s_currentState.E5~q\) # (\toogle_abrir|q~q\)))) # (!\toogle_abrir|Equal0~7_combout\ & ((\fsm|s_currentState.E5~q\) # ((\toogle_abrir|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \toogle_abrir|Equal0~7_combout\,
	datab => \fsm|s_currentState.E5~q\,
	datac => \toogle_abrir|q~q\,
	datad => \toogle_abrir|Equal0~4_combout\,
	combout => \toogle_abrir|q~0_combout\);

-- Location: FF_X109_Y55_N9
\toogle_abrir|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \toogle_abrir|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toogle_abrir|q~q\);

-- Location: LCCOMB_X113_Y55_N6
\fsm|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|WideOr6~0_combout\ = (!\fsm|s_currentState.E3~q\ & (!\fsm|s_currentState.E1~q\ & !\fsm|s_currentState.E5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.E3~q\,
	datac => \fsm|s_currentState.E1~q\,
	datad => \fsm|s_currentState.E5~q\,
	combout => \fsm|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y55_N24
\fsm|currentState[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fsm|currentState\(1) = (\fsm|s_currentState.E3~q\) # (\fsm|s_currentState.E2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm|s_currentState.E3~q\,
	datad => \fsm|s_currentState.E2~q\,
	combout => \fsm|currentState\(1));

-- Location: LCCOMB_X113_Y55_N0
\dec7seg|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7seg|decOut_n~0_combout\ = (!\fsm|currentState\(1) & (\fsm|WideOr6~0_combout\ $ (((!\fsm|s_currentState.E5~q\ & !\fsm|s_currentState.E4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr6~0_combout\,
	datab => \fsm|s_currentState.E5~q\,
	datac => \fsm|currentState\(1),
	datad => \fsm|s_currentState.E4~q\,
	combout => \dec7seg|decOut_n~0_combout\);

-- Location: LCCOMB_X113_Y55_N2
\dec7seg|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7seg|decOut_n~1_combout\ = (\fsm|WideOr6~0_combout\) # ((\fsm|currentState\(1)) # ((!\fsm|s_currentState.E5~q\ & !\fsm|s_currentState.E4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr6~0_combout\,
	datab => \fsm|s_currentState.E5~q\,
	datac => \fsm|currentState\(1),
	datad => \fsm|s_currentState.E4~q\,
	combout => \dec7seg|decOut_n~1_combout\);

-- Location: LCCOMB_X113_Y55_N8
\dec7seg|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7seg|Equal14~0_combout\ = (\fsm|WideOr6~0_combout\ & (!\fsm|s_currentState.E5~q\ & (\fsm|currentState\(1) & !\fsm|s_currentState.E4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|WideOr6~0_combout\,
	datab => \fsm|s_currentState.E5~q\,
	datac => \fsm|currentState\(1),
	datad => \fsm|s_currentState.E4~q\,
	combout => \dec7seg|Equal14~0_combout\);

-- Location: LCCOMB_X114_Y55_N30
\dec7seg|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7seg|decOut_n~2_combout\ = (\fsm|currentState\(1)) # (\fsm|WideOr6~0_combout\ $ (((\fsm|s_currentState.E5~q\) # (\fsm|s_currentState.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E5~q\,
	datab => \fsm|WideOr6~0_combout\,
	datac => \fsm|s_currentState.E4~q\,
	datad => \fsm|currentState\(1),
	combout => \dec7seg|decOut_n~2_combout\);

-- Location: LCCOMB_X114_Y55_N28
\dec7seg|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7seg|decOut_n~3_combout\ = (\fsm|s_currentState.E5~q\ & (((\fsm|currentState\(1))))) # (!\fsm|s_currentState.E5~q\ & ((\fsm|s_currentState.E4~q\ & ((\fsm|currentState\(1)))) # (!\fsm|s_currentState.E4~q\ & (\fsm|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E5~q\,
	datab => \fsm|WideOr6~0_combout\,
	datac => \fsm|s_currentState.E4~q\,
	datad => \fsm|currentState\(1),
	combout => \dec7seg|decOut_n~3_combout\);

-- Location: LCCOMB_X114_Y55_N26
\dec7seg|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7seg|decOut_n~4_combout\ = (!\fsm|s_currentState.E5~q\ & (!\fsm|s_currentState.E4~q\ & ((\fsm|currentState\(1)) # (!\fsm|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E5~q\,
	datab => \fsm|WideOr6~0_combout\,
	datac => \fsm|s_currentState.E4~q\,
	datad => \fsm|currentState\(1),
	combout => \dec7seg|decOut_n~4_combout\);

-- Location: LCCOMB_X114_Y55_N12
\dec7seg|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec7seg|decOut_n~5_combout\ = (\fsm|s_currentState.E5~q\ & ((\fsm|s_currentState.E3~q\) # ((\fsm|s_currentState.E2~q\)))) # (!\fsm|s_currentState.E5~q\ & (\fsm|s_currentState.E4~q\ $ (((!\fsm|s_currentState.E3~q\ & !\fsm|s_currentState.E2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm|s_currentState.E5~q\,
	datab => \fsm|s_currentState.E3~q\,
	datac => \fsm|s_currentState.E4~q\,
	datad => \fsm|s_currentState.E2~q\,
	combout => \dec7seg|decOut_n~5_combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


