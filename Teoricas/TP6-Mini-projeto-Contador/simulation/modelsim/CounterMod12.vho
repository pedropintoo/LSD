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

-- DATE "04/12/2023 17:55:42"

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

ENTITY 	CounterMod12 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END CounterMod12;

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
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CounterMod12 IS
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
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt|s_value[0]~3_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter[0]~26_combout\ : std_logic;
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
SIGNAL \pulse_gen|LessThan0~7_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~3_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~4_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~2_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~0_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~1_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~5_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~6_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~8_combout\ : std_logic;
SIGNAL \pulse_gen|LessThan0~9_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~0_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~1_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~3_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~4_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~5_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~2_combout\ : std_logic;
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
SIGNAL \pulse_gen|Equal0~6_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~6_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~0_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~2_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~4_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~7_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~36_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~32_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~30_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~28_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~24_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~22_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~16_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~20_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~18_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~10_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~8_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~14_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~12_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~8_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~9_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~26_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~10_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~11_combout\ : std_logic;
SIGNAL \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~34_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~12_combout\ : std_logic;
SIGNAL \pulse_gen|Equal0~13_combout\ : std_logic;
SIGNAL \cnt|s_value[1]~0_combout\ : std_logic;
SIGNAL \cnt|s_value~2_combout\ : std_logic;
SIGNAL \cnt|s_value~1_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ : std_logic;
SIGNAL \unid_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \unid_7seg|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \unid_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \unid_7seg|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \unid_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \unid_7seg|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \unid_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \unid_7seg|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \unid_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \unid_7seg|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \unid_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \unid_7seg|decOut_n[5]~5_combout\ : std_logic;
SIGNAL \unid_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \unid_7seg|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ : std_logic;
SIGNAL \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \dezen_7seg|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \clkDiv|Add0~0_combout\ : std_logic;
SIGNAL \clkDiv|Add0~1\ : std_logic;
SIGNAL \clkDiv|Add0~2_combout\ : std_logic;
SIGNAL \clkDiv|Add0~3\ : std_logic;
SIGNAL \clkDiv|Add0~4_combout\ : std_logic;
SIGNAL \clkDiv|Add0~5\ : std_logic;
SIGNAL \clkDiv|Add0~6_combout\ : std_logic;
SIGNAL \clkDiv|Add0~7\ : std_logic;
SIGNAL \clkDiv|Add0~8_combout\ : std_logic;
SIGNAL \clkDiv|Add0~9\ : std_logic;
SIGNAL \clkDiv|Add0~10_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter~7_combout\ : std_logic;
SIGNAL \clkDiv|Add0~11\ : std_logic;
SIGNAL \clkDiv|Add0~12_combout\ : std_logic;
SIGNAL \clkDiv|Add0~13\ : std_logic;
SIGNAL \clkDiv|Add0~14_combout\ : std_logic;
SIGNAL \clkDiv|Add0~15\ : std_logic;
SIGNAL \clkDiv|Add0~16_combout\ : std_logic;
SIGNAL \clkDiv|Add0~17\ : std_logic;
SIGNAL \clkDiv|Add0~18_combout\ : std_logic;
SIGNAL \clkDiv|Add0~19\ : std_logic;
SIGNAL \clkDiv|Add0~20_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter~6_combout\ : std_logic;
SIGNAL \clkDiv|Add0~21\ : std_logic;
SIGNAL \clkDiv|Add0~22_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter~5_combout\ : std_logic;
SIGNAL \clkDiv|Add0~23\ : std_logic;
SIGNAL \clkDiv|Add0~24_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter~4_combout\ : std_logic;
SIGNAL \clkDiv|Add0~25\ : std_logic;
SIGNAL \clkDiv|Add0~27\ : std_logic;
SIGNAL \clkDiv|Add0~28_combout\ : std_logic;
SIGNAL \clkDiv|Add0~29\ : std_logic;
SIGNAL \clkDiv|Add0~30_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter~10_combout\ : std_logic;
SIGNAL \clkDiv|Add0~31\ : std_logic;
SIGNAL \clkDiv|Add0~32_combout\ : std_logic;
SIGNAL \clkDiv|Add0~33\ : std_logic;
SIGNAL \clkDiv|Add0~34_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter~3_combout\ : std_logic;
SIGNAL \clkDiv|Add0~35\ : std_logic;
SIGNAL \clkDiv|Add0~36_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter~2_combout\ : std_logic;
SIGNAL \clkDiv|Add0~37\ : std_logic;
SIGNAL \clkDiv|Add0~38_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter~1_combout\ : std_logic;
SIGNAL \clkDiv|Add0~39\ : std_logic;
SIGNAL \clkDiv|Add0~40_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter~0_combout\ : std_logic;
SIGNAL \clkDiv|Add0~41\ : std_logic;
SIGNAL \clkDiv|Add0~42_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter~9_combout\ : std_logic;
SIGNAL \clkDiv|Add0~43\ : std_logic;
SIGNAL \clkDiv|Add0~44_combout\ : std_logic;
SIGNAL \clkDiv|Add0~45\ : std_logic;
SIGNAL \clkDiv|Add0~46_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter~8_combout\ : std_logic;
SIGNAL \clkDiv|Equal0~7_combout\ : std_logic;
SIGNAL \clkDiv|Equal0~8_combout\ : std_logic;
SIGNAL \clkDiv|Equal0~5_combout\ : std_logic;
SIGNAL \clkDiv|Equal0~2_combout\ : std_logic;
SIGNAL \clkDiv|Add0~47\ : std_logic;
SIGNAL \clkDiv|Add0~48_combout\ : std_logic;
SIGNAL \clkDiv|Add0~49\ : std_logic;
SIGNAL \clkDiv|Add0~50_combout\ : std_logic;
SIGNAL \clkDiv|Add0~51\ : std_logic;
SIGNAL \clkDiv|Add0~52_combout\ : std_logic;
SIGNAL \clkDiv|Equal0~1_combout\ : std_logic;
SIGNAL \clkDiv|Add0~53\ : std_logic;
SIGNAL \clkDiv|Add0~54_combout\ : std_logic;
SIGNAL \clkDiv|Add0~55\ : std_logic;
SIGNAL \clkDiv|Add0~56_combout\ : std_logic;
SIGNAL \clkDiv|Add0~57\ : std_logic;
SIGNAL \clkDiv|Add0~58_combout\ : std_logic;
SIGNAL \clkDiv|Add0~59\ : std_logic;
SIGNAL \clkDiv|Add0~60_combout\ : std_logic;
SIGNAL \clkDiv|Equal0~0_combout\ : std_logic;
SIGNAL \clkDiv|Equal0~3_combout\ : std_logic;
SIGNAL \clkDiv|Equal0~4_combout\ : std_logic;
SIGNAL \clkDiv|Equal0~6_combout\ : std_logic;
SIGNAL \clkDiv|Equal0~9_combout\ : std_logic;
SIGNAL \clkDiv|Add0~26_combout\ : std_logic;
SIGNAL \clkDiv|s_divCounter~11_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~1_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~0_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~2_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~3_combout\ : std_logic;
SIGNAL \clkDiv|clkOut~q\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \LEDR~2_combout\ : std_logic;
SIGNAL \LEDR~3_combout\ : std_logic;
SIGNAL \pulse_gen|s_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \cnt|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkDiv|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
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
	i => \unid_7seg|decOut_n[0]~0_combout\,
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
	i => \unid_7seg|decOut_n[1]~1_combout\,
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
	i => \unid_7seg|decOut_n[2]~2_combout\,
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
	i => \unid_7seg|decOut_n[3]~3_combout\,
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
	i => \unid_7seg|decOut_n[4]~4_combout\,
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
	i => \unid_7seg|decOut_n[5]~5_combout\,
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
	i => \unid_7seg|decOut_n[6]~6_combout\,
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
	i => \dezen_7seg|decOut_n[0]~0_combout\,
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
	i => \ALT_INV_SW[0]~input_o\,
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
	i => \ALT_INV_SW[0]~input_o\,
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
	i => \dezen_7seg|decOut_n[0]~0_combout\,
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
	i => \dezen_7seg|decOut_n[0]~0_combout\,
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
	i => \dezen_7seg|decOut_n[0]~0_combout\,
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
	i => VCC,
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
	i => \LEDR~0_combout\,
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
	i => \LEDR~1_combout\,
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
	i => \LEDR~2_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

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

-- Location: LCCOMB_X101_Y65_N14
\cnt|s_value[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|s_value[0]~3_combout\ = !\cnt|s_value\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cnt|s_value\(0),
	combout => \cnt|s_value[0]~3_combout\);

-- Location: LCCOMB_X99_Y66_N6
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

-- Location: LCCOMB_X99_Y66_N8
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

-- Location: FF_X99_Y66_N9
\pulse_gen|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[1]~28_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(1));

-- Location: LCCOMB_X99_Y66_N10
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

-- Location: FF_X99_Y66_N11
\pulse_gen|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[2]~30_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(2));

-- Location: LCCOMB_X99_Y66_N12
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

-- Location: FF_X99_Y66_N13
\pulse_gen|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[3]~32_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(3));

-- Location: LCCOMB_X99_Y66_N14
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

-- Location: FF_X99_Y66_N15
\pulse_gen|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[4]~34_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(4));

-- Location: LCCOMB_X99_Y66_N16
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

-- Location: FF_X99_Y66_N17
\pulse_gen|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[5]~36_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(5));

-- Location: LCCOMB_X99_Y66_N18
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

-- Location: FF_X99_Y66_N19
\pulse_gen|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[6]~38_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(6));

-- Location: LCCOMB_X99_Y66_N20
\pulse_gen|s_counter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[7]~40_combout\ = (\pulse_gen|s_counter\(7) & (!\pulse_gen|s_counter[6]~39\)) # (!\pulse_gen|s_counter\(7) & ((\pulse_gen|s_counter[6]~39\) # (GND)))
-- \pulse_gen|s_counter[7]~41\ = CARRY((!\pulse_gen|s_counter[6]~39\) # (!\pulse_gen|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(7),
	datad => VCC,
	cin => \pulse_gen|s_counter[6]~39\,
	combout => \pulse_gen|s_counter[7]~40_combout\,
	cout => \pulse_gen|s_counter[7]~41\);

-- Location: FF_X100_Y66_N5
\pulse_gen|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[7]~40_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(7));

-- Location: LCCOMB_X99_Y66_N22
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

-- Location: FF_X100_Y66_N3
\pulse_gen|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[8]~42_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(8));

-- Location: LCCOMB_X99_Y66_N24
\pulse_gen|s_counter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[9]~44_combout\ = (\pulse_gen|s_counter\(9) & (!\pulse_gen|s_counter[8]~43\)) # (!\pulse_gen|s_counter\(9) & ((\pulse_gen|s_counter[8]~43\) # (GND)))
-- \pulse_gen|s_counter[9]~45\ = CARRY((!\pulse_gen|s_counter[8]~43\) # (!\pulse_gen|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(9),
	datad => VCC,
	cin => \pulse_gen|s_counter[8]~43\,
	combout => \pulse_gen|s_counter[9]~44_combout\,
	cout => \pulse_gen|s_counter[9]~45\);

-- Location: FF_X100_Y66_N9
\pulse_gen|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[9]~44_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(9));

-- Location: LCCOMB_X99_Y66_N26
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

-- Location: FF_X100_Y66_N17
\pulse_gen|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[10]~46_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(10));

-- Location: LCCOMB_X99_Y66_N28
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

-- Location: FF_X100_Y66_N13
\pulse_gen|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[11]~48_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(11));

-- Location: LCCOMB_X99_Y66_N30
\pulse_gen|s_counter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[12]~50_combout\ = (\pulse_gen|s_counter\(12) & (\pulse_gen|s_counter[11]~49\ $ (GND))) # (!\pulse_gen|s_counter\(12) & (!\pulse_gen|s_counter[11]~49\ & VCC))
-- \pulse_gen|s_counter[12]~51\ = CARRY((\pulse_gen|s_counter\(12) & !\pulse_gen|s_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(12),
	datad => VCC,
	cin => \pulse_gen|s_counter[11]~49\,
	combout => \pulse_gen|s_counter[12]~50_combout\,
	cout => \pulse_gen|s_counter[12]~51\);

-- Location: FF_X100_Y66_N11
\pulse_gen|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[12]~50_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(12));

-- Location: LCCOMB_X99_Y65_N0
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

-- Location: FF_X100_Y66_N15
\pulse_gen|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[13]~52_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(13));

-- Location: LCCOMB_X99_Y65_N2
\pulse_gen|s_counter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[14]~54_combout\ = (\pulse_gen|s_counter\(14) & (\pulse_gen|s_counter[13]~53\ $ (GND))) # (!\pulse_gen|s_counter\(14) & (!\pulse_gen|s_counter[13]~53\ & VCC))
-- \pulse_gen|s_counter[14]~55\ = CARRY((\pulse_gen|s_counter\(14) & !\pulse_gen|s_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(14),
	datad => VCC,
	cin => \pulse_gen|s_counter[13]~53\,
	combout => \pulse_gen|s_counter[14]~54_combout\,
	cout => \pulse_gen|s_counter[14]~55\);

-- Location: FF_X100_Y66_N19
\pulse_gen|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pulse_gen|s_counter[14]~54_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(14));

-- Location: LCCOMB_X99_Y65_N4
\pulse_gen|s_counter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|s_counter[15]~56_combout\ = (\pulse_gen|s_counter\(15) & (!\pulse_gen|s_counter[14]~55\)) # (!\pulse_gen|s_counter\(15) & ((\pulse_gen|s_counter[14]~55\) # (GND)))
-- \pulse_gen|s_counter[15]~57\ = CARRY((!\pulse_gen|s_counter[14]~55\) # (!\pulse_gen|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(15),
	datad => VCC,
	cin => \pulse_gen|s_counter[14]~55\,
	combout => \pulse_gen|s_counter[15]~56_combout\,
	cout => \pulse_gen|s_counter[15]~57\);

-- Location: FF_X99_Y65_N5
\pulse_gen|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[15]~56_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(15));

-- Location: LCCOMB_X99_Y65_N6
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

-- Location: FF_X99_Y65_N7
\pulse_gen|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[16]~58_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(16));

-- Location: LCCOMB_X99_Y65_N8
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

-- Location: FF_X99_Y65_N9
\pulse_gen|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[17]~60_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(17));

-- Location: LCCOMB_X99_Y65_N10
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

-- Location: FF_X99_Y65_N11
\pulse_gen|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[18]~62_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(18));

-- Location: LCCOMB_X99_Y65_N12
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

-- Location: FF_X99_Y65_N13
\pulse_gen|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[19]~64_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(19));

-- Location: LCCOMB_X99_Y65_N14
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

-- Location: FF_X99_Y65_N15
\pulse_gen|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[20]~66_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(20));

-- Location: LCCOMB_X99_Y65_N16
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

-- Location: FF_X99_Y65_N17
\pulse_gen|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[21]~68_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(21));

-- Location: LCCOMB_X99_Y65_N18
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

-- Location: FF_X99_Y65_N19
\pulse_gen|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[22]~70_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(22));

-- Location: LCCOMB_X99_Y65_N20
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

-- Location: FF_X99_Y65_N21
\pulse_gen|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[23]~72_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(23));

-- Location: LCCOMB_X99_Y65_N22
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

-- Location: FF_X99_Y65_N23
\pulse_gen|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[24]~74_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(24));

-- Location: LCCOMB_X99_Y65_N24
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

-- Location: FF_X99_Y65_N25
\pulse_gen|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[25]~76_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(25));

-- Location: LCCOMB_X98_Y65_N6
\pulse_gen|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~7_combout\ = (((!\pulse_gen|s_counter\(21)) # (!\pulse_gen|s_counter\(20))) # (!\pulse_gen|s_counter\(22))) # (!\pulse_gen|s_counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(23),
	datab => \pulse_gen|s_counter\(22),
	datac => \pulse_gen|s_counter\(20),
	datad => \pulse_gen|s_counter\(21),
	combout => \pulse_gen|LessThan0~7_combout\);

-- Location: LCCOMB_X99_Y66_N0
\pulse_gen|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~3_combout\ = (((!\pulse_gen|s_counter\(6)) # (!\pulse_gen|s_counter\(4))) # (!\pulse_gen|s_counter\(5))) # (!\pulse_gen|s_counter\(3))

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
	combout => \pulse_gen|LessThan0~3_combout\);

-- Location: LCCOMB_X99_Y66_N2
\pulse_gen|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~4_combout\ = ((!\pulse_gen|s_counter\(0)) # (!\pulse_gen|s_counter\(1))) # (!\pulse_gen|s_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(2),
	datac => \pulse_gen|s_counter\(1),
	datad => \pulse_gen|s_counter\(0),
	combout => \pulse_gen|LessThan0~4_combout\);

-- Location: LCCOMB_X100_Y66_N10
\pulse_gen|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~2_combout\ = (((!\pulse_gen|s_counter\(15)) # (!\pulse_gen|s_counter\(12))) # (!\pulse_gen|s_counter\(14))) # (!\pulse_gen|s_counter\(13))

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
	combout => \pulse_gen|LessThan0~2_combout\);

-- Location: LCCOMB_X100_Y66_N2
\pulse_gen|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~0_combout\ = (!\pulse_gen|s_counter\(11) & (!\pulse_gen|s_counter\(9) & (!\pulse_gen|s_counter\(8) & !\pulse_gen|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(11),
	datab => \pulse_gen|s_counter\(9),
	datac => \pulse_gen|s_counter\(8),
	datad => \pulse_gen|s_counter\(10),
	combout => \pulse_gen|LessThan0~0_combout\);

-- Location: LCCOMB_X100_Y66_N4
\pulse_gen|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~1_combout\ = (\pulse_gen|LessThan0~0_combout\ & !\pulse_gen|s_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|LessThan0~0_combout\,
	datac => \pulse_gen|s_counter\(7),
	combout => \pulse_gen|LessThan0~1_combout\);

-- Location: LCCOMB_X99_Y66_N4
\pulse_gen|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~5_combout\ = (\pulse_gen|LessThan0~2_combout\) # ((\pulse_gen|LessThan0~1_combout\ & ((\pulse_gen|LessThan0~3_combout\) # (\pulse_gen|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|LessThan0~3_combout\,
	datab => \pulse_gen|LessThan0~4_combout\,
	datac => \pulse_gen|LessThan0~2_combout\,
	datad => \pulse_gen|LessThan0~1_combout\,
	combout => \pulse_gen|LessThan0~5_combout\);

-- Location: LCCOMB_X98_Y66_N12
\pulse_gen|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~6_combout\ = (!\pulse_gen|s_counter\(18) & (((!\pulse_gen|s_counter\(16) & \pulse_gen|LessThan0~5_combout\)) # (!\pulse_gen|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(17),
	datab => \pulse_gen|s_counter\(18),
	datac => \pulse_gen|s_counter\(16),
	datad => \pulse_gen|LessThan0~5_combout\,
	combout => \pulse_gen|LessThan0~6_combout\);

-- Location: LCCOMB_X98_Y66_N18
\pulse_gen|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~8_combout\ = (!\pulse_gen|s_counter\(24) & (((\pulse_gen|LessThan0~7_combout\) # (\pulse_gen|LessThan0~6_combout\)) # (!\pulse_gen|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(19),
	datab => \pulse_gen|s_counter\(24),
	datac => \pulse_gen|LessThan0~7_combout\,
	datad => \pulse_gen|LessThan0~6_combout\,
	combout => \pulse_gen|LessThan0~8_combout\);

-- Location: LCCOMB_X98_Y66_N16
\pulse_gen|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|LessThan0~9_combout\ = (\pulse_gen|s_counter\(25) & !\pulse_gen|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulse_gen|s_counter\(25),
	datad => \pulse_gen|LessThan0~8_combout\,
	combout => \pulse_gen|LessThan0~9_combout\);

-- Location: FF_X99_Y66_N7
\pulse_gen|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulse_gen|s_counter[0]~26_combout\,
	sclr => \pulse_gen|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_gen|s_counter\(0));

-- Location: LCCOMB_X98_Y66_N28
\pulse_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~0_combout\ = (!\pulse_gen|s_counter\(5) & (!\pulse_gen|s_counter\(4) & (!\pulse_gen|s_counter\(3) & !\pulse_gen|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(5),
	datab => \pulse_gen|s_counter\(4),
	datac => \pulse_gen|s_counter\(3),
	datad => \pulse_gen|s_counter\(6),
	combout => \pulse_gen|Equal0~0_combout\);

-- Location: LCCOMB_X98_Y66_N30
\pulse_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~1_combout\ = (!\pulse_gen|s_counter\(0) & (!\pulse_gen|s_counter\(2) & (!\pulse_gen|s_counter\(1) & \pulse_gen|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(0),
	datab => \pulse_gen|s_counter\(2),
	datac => \pulse_gen|s_counter\(1),
	datad => \pulse_gen|Equal0~0_combout\,
	combout => \pulse_gen|Equal0~1_combout\);

-- Location: LCCOMB_X99_Y65_N28
\pulse_gen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~3_combout\ = (!\pulse_gen|s_counter\(19) & (!\pulse_gen|s_counter\(21) & (!\pulse_gen|s_counter\(20) & !\pulse_gen|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(19),
	datab => \pulse_gen|s_counter\(21),
	datac => \pulse_gen|s_counter\(20),
	datad => \pulse_gen|s_counter\(18),
	combout => \pulse_gen|Equal0~3_combout\);

-- Location: LCCOMB_X98_Y65_N24
\pulse_gen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~4_combout\ = (!\pulse_gen|s_counter\(24) & (\pulse_gen|Equal0~3_combout\ & (!\pulse_gen|s_counter\(23) & !\pulse_gen|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(24),
	datab => \pulse_gen|Equal0~3_combout\,
	datac => \pulse_gen|s_counter\(23),
	datad => \pulse_gen|s_counter\(22),
	combout => \pulse_gen|Equal0~4_combout\);

-- Location: LCCOMB_X99_Y65_N26
\pulse_gen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~5_combout\ = (!\pulse_gen|s_counter\(12) & (!\pulse_gen|s_counter\(25) & (!\pulse_gen|s_counter\(13) & \pulse_gen|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(12),
	datab => \pulse_gen|s_counter\(25),
	datac => \pulse_gen|s_counter\(13),
	datad => \pulse_gen|Equal0~4_combout\,
	combout => \pulse_gen|Equal0~5_combout\);

-- Location: LCCOMB_X99_Y65_N30
\pulse_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~2_combout\ = (!\pulse_gen|s_counter\(14) & (!\pulse_gen|s_counter\(15) & (!\pulse_gen|s_counter\(17) & !\pulse_gen|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|s_counter\(14),
	datab => \pulse_gen|s_counter\(15),
	datac => \pulse_gen|s_counter\(17),
	datad => \pulse_gen|s_counter\(16),
	combout => \pulse_gen|Equal0~2_combout\);

-- Location: LCCOMB_X100_Y66_N12
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~0_combout\ = \pulse_gen|s_counter\(7) $ (VCC)
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~1\ = CARRY(\pulse_gen|s_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(7),
	datad => VCC,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~0_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~1\);

-- Location: LCCOMB_X100_Y66_N14
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

-- Location: LCCOMB_X100_Y66_N16
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

-- Location: LCCOMB_X100_Y66_N18
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

-- Location: LCCOMB_X100_Y66_N20
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

-- Location: LCCOMB_X100_Y66_N22
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

-- Location: LCCOMB_X100_Y66_N24
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~12_combout\ = (\pulse_gen|s_counter\(13) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~11\ $ (GND))) # (!\pulse_gen|s_counter\(13) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~11\ & VCC))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~13\ = CARRY((\pulse_gen|s_counter\(13) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(13),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~11\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~12_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~13\);

-- Location: LCCOMB_X100_Y66_N26
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

-- Location: LCCOMB_X100_Y66_N28
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

-- Location: LCCOMB_X100_Y66_N30
\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~18_combout\ = (\pulse_gen|s_counter\(16) & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~17\ & VCC)) # (!\pulse_gen|s_counter\(16) & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~17\))
-- \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~19\ = CARRY((!\pulse_gen|s_counter\(16) & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulse_gen|s_counter\(16),
	datad => VCC,
	cin => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~17\,
	combout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~18_combout\,
	cout => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~19\);

-- Location: LCCOMB_X100_Y65_N0
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

-- Location: LCCOMB_X100_Y65_N2
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

-- Location: LCCOMB_X100_Y65_N4
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

-- Location: LCCOMB_X100_Y65_N6
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

-- Location: LCCOMB_X100_Y65_N8
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

-- Location: LCCOMB_X100_Y65_N10
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

-- Location: LCCOMB_X100_Y65_N12
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

-- Location: LCCOMB_X100_Y65_N14
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

-- Location: LCCOMB_X100_Y65_N16
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

-- Location: LCCOMB_X100_Y65_N18
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

-- Location: LCCOMB_X100_Y65_N28
\pulse_gen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~6_combout\ = (\pulse_gen|Equal0~5_combout\ & (\pulse_gen|Equal0~2_combout\ & (\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[26]~38_combout\ & \pulse_gen|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Equal0~5_combout\,
	datab => \pulse_gen|Equal0~2_combout\,
	datac => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[26]~38_combout\,
	datad => \pulse_gen|LessThan0~1_combout\,
	combout => \pulse_gen|Equal0~6_combout\);

-- Location: LCCOMB_X100_Y66_N0
\pulse_gen|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~7_combout\ = (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~6_combout\ & (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~0_combout\ & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~2_combout\ & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[10]~6_combout\,
	datab => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[7]~0_combout\,
	datac => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[8]~2_combout\,
	datad => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[9]~4_combout\,
	combout => \pulse_gen|Equal0~7_combout\);

-- Location: LCCOMB_X100_Y66_N6
\pulse_gen|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~8_combout\ = (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~10_combout\ & (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~8_combout\ & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~14_combout\ & !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[12]~10_combout\,
	datab => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[11]~8_combout\,
	datac => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[14]~14_combout\,
	datad => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[13]~12_combout\,
	combout => \pulse_gen|Equal0~8_combout\);

-- Location: LCCOMB_X100_Y65_N22
\pulse_gen|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~9_combout\ = (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~16_combout\ & (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~20_combout\ & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~18_combout\ & \pulse_gen|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[15]~16_combout\,
	datab => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[17]~20_combout\,
	datac => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[16]~18_combout\,
	datad => \pulse_gen|Equal0~8_combout\,
	combout => \pulse_gen|Equal0~9_combout\);

-- Location: LCCOMB_X100_Y65_N20
\pulse_gen|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~10_combout\ = (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~24_combout\ & (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~22_combout\ & (\pulse_gen|Equal0~9_combout\ & 
-- !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[19]~24_combout\,
	datab => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[18]~22_combout\,
	datac => \pulse_gen|Equal0~9_combout\,
	datad => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[20]~26_combout\,
	combout => \pulse_gen|Equal0~10_combout\);

-- Location: LCCOMB_X100_Y65_N26
\pulse_gen|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~11_combout\ = (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~32_combout\ & (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~30_combout\ & 
-- (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~28_combout\ & \pulse_gen|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[23]~32_combout\,
	datab => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[22]~30_combout\,
	datac => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[21]~28_combout\,
	datad => \pulse_gen|Equal0~10_combout\,
	combout => \pulse_gen|Equal0~11_combout\);

-- Location: LCCOMB_X100_Y65_N24
\pulse_gen|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~12_combout\ = (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[26]~38_combout\ & (!\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~36_combout\ & (\pulse_gen|Equal0~11_combout\ & 
-- !\pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[26]~38_combout\,
	datab => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[25]~36_combout\,
	datac => \pulse_gen|Equal0~11_combout\,
	datad => \pulse_gen|Mod0|auto_generated|divider|divider|add_sub_25_result_int[24]~34_combout\,
	combout => \pulse_gen|Equal0~12_combout\);

-- Location: LCCOMB_X100_Y65_N30
\pulse_gen|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_gen|Equal0~13_combout\ = (\pulse_gen|Equal0~1_combout\ & ((\pulse_gen|Equal0~6_combout\) # ((\pulse_gen|Equal0~7_combout\ & \pulse_gen|Equal0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_gen|Equal0~1_combout\,
	datab => \pulse_gen|Equal0~6_combout\,
	datac => \pulse_gen|Equal0~7_combout\,
	datad => \pulse_gen|Equal0~12_combout\,
	combout => \pulse_gen|Equal0~13_combout\);

-- Location: FF_X100_Y65_N11
\cnt|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \cnt|s_value[0]~3_combout\,
	sload => VCC,
	ena => \pulse_gen|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|s_value\(0));

-- Location: LCCOMB_X101_Y65_N24
\cnt|s_value[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|s_value[1]~0_combout\ = \cnt|s_value\(1) $ (((\cnt|s_value\(0) & \pulse_gen|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_value\(0),
	datac => \cnt|s_value\(1),
	datad => \pulse_gen|Equal0~13_combout\,
	combout => \cnt|s_value[1]~0_combout\);

-- Location: FF_X101_Y65_N25
\cnt|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \cnt|s_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|s_value\(1));

-- Location: LCCOMB_X101_Y65_N0
\cnt|s_value~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|s_value~2_combout\ = (\cnt|s_value\(0) & ((\cnt|s_value\(1) & (!\cnt|s_value\(2) & !\cnt|s_value\(3))) # (!\cnt|s_value\(1) & (\cnt|s_value\(2))))) # (!\cnt|s_value\(0) & (((\cnt|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_value\(0),
	datab => \cnt|s_value\(1),
	datac => \cnt|s_value\(2),
	datad => \cnt|s_value\(3),
	combout => \cnt|s_value~2_combout\);

-- Location: FF_X100_Y65_N5
\cnt|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \cnt|s_value~2_combout\,
	sload => VCC,
	ena => \pulse_gen|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|s_value\(2));

-- Location: LCCOMB_X101_Y65_N30
\cnt|s_value~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt|s_value~1_combout\ = (\cnt|s_value\(0) & ((\cnt|s_value\(1) & (\cnt|s_value\(2) & !\cnt|s_value\(3))) # (!\cnt|s_value\(1) & ((\cnt|s_value\(3)))))) # (!\cnt|s_value\(0) & (((\cnt|s_value\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_value\(0),
	datab => \cnt|s_value\(1),
	datac => \cnt|s_value\(2),
	datad => \cnt|s_value\(3),
	combout => \cnt|s_value~1_combout\);

-- Location: FF_X100_Y65_N15
\cnt|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \cnt|s_value~1_combout\,
	sload => VCC,
	ena => \pulse_gen|Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|s_value\(3));

-- Location: LCCOMB_X101_Y65_N6
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \cnt|s_value\(1) $ (VCC)
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\cnt|s_value\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt|s_value\(1),
	datad => VCC,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X101_Y65_N8
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\cnt|s_value\(2) & (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\cnt|s_value\(2) & 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\cnt|s_value\(2) & !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_value\(2),
	datad => VCC,
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X101_Y65_N10
\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\cnt|s_value\(3) & (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\cnt|s_value\(3) & 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\cnt|s_value\(3) & !\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_value\(3),
	datad => VCC,
	cin => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X101_Y65_N12
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

-- Location: LCCOMB_X101_Y65_N2
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\cnt|s_value\(3))) # 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \cnt|s_value\(3),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\);

-- Location: LCCOMB_X101_Y65_N28
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\cnt|s_value\(2))) # 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_value\(2),
	datac => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\);

-- Location: LCCOMB_X101_Y65_N26
\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\cnt|s_value\(1))) # 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \cnt|s_value\(1),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\);

-- Location: LCCOMB_X105_Y62_N28
\unid_7seg|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux6~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\cnt|s_value\(0) & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (\cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \cnt|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \unid_7seg|Mux6~0_combout\);

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

-- Location: LCCOMB_X105_Y62_N30
\unid_7seg|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|decOut_n[0]~0_combout\ = (\unid_7seg|Mux6~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unid_7seg|Mux6~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \unid_7seg|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X105_Y62_N24
\unid_7seg|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux5~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & ((\cnt|s_value\(0) & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\))) # (!\cnt|s_value\(0) & 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\cnt|s_value\(0) $ 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \cnt|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \unid_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X105_Y62_N22
\unid_7seg|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|decOut_n[1]~1_combout\ = (\unid_7seg|Mux5~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unid_7seg|Mux5~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \unid_7seg|decOut_n[1]~1_combout\);

-- Location: LCCOMB_X105_Y62_N20
\unid_7seg|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux4~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\) # 
-- (!\cnt|s_value\(0))))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (!\cnt|s_value\(0) & 
-- \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \cnt|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \unid_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X105_Y62_N14
\unid_7seg|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|decOut_n[2]~2_combout\ = (\unid_7seg|Mux4~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unid_7seg|Mux4~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \unid_7seg|decOut_n[2]~2_combout\);

-- Location: LCCOMB_X105_Y62_N8
\unid_7seg|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux3~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\cnt|s_value\(0)))) # 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & !\cnt|s_value\(0))))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (\cnt|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \cnt|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \unid_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X105_Y62_N6
\unid_7seg|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|decOut_n[3]~3_combout\ = (\unid_7seg|Mux3~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unid_7seg|Mux3~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \unid_7seg|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X105_Y62_N16
\unid_7seg|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux2~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & ((\cnt|s_value\(0))))) # 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)) # 
-- (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\cnt|s_value\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \cnt|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \unid_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X105_Y62_N10
\unid_7seg|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|decOut_n[4]~4_combout\ = (\unid_7seg|Mux2~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unid_7seg|Mux2~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \unid_7seg|decOut_n[4]~4_combout\);

-- Location: LCCOMB_X105_Y62_N12
\unid_7seg|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux1~0_combout\ = (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\cnt|s_value\(0) & (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ $ 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\)))) # (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (!\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & ((\cnt|s_value\(0)) # 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \cnt|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \unid_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X105_Y62_N26
\unid_7seg|decOut_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|decOut_n[5]~5_combout\ = (\unid_7seg|Mux1~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unid_7seg|Mux1~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \unid_7seg|decOut_n[5]~5_combout\);

-- Location: LCCOMB_X105_Y62_N4
\unid_7seg|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|Mux0~0_combout\ = (\cnt|s_value\(0) & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\)))) # (!\cnt|s_value\(0) & ((\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\) # (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ $ 
-- (\bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \cnt|s_value\(0),
	datad => \bin_to_BCD|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \unid_7seg|Mux0~0_combout\);

-- Location: LCCOMB_X105_Y62_N18
\unid_7seg|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \unid_7seg|decOut_n[6]~6_combout\ = (!\SW[0]~input_o\) # (!\unid_7seg|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unid_7seg|Mux0~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \unid_7seg|decOut_n[6]~6_combout\);

-- Location: LCCOMB_X101_Y65_N16
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ = CARRY(\cnt|s_value\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt|s_value\(1),
	datad => VCC,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\);

-- Location: LCCOMB_X101_Y65_N18
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ = CARRY((!\cnt|s_value\(2) & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_value\(2),
	datad => VCC,
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\);

-- Location: LCCOMB_X101_Y65_N20
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ = CARRY((\cnt|s_value\(3) & !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|s_value\(3),
	datad => VCC,
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\,
	cout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\);

-- Location: LCCOMB_X101_Y65_N22
\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\,
	combout => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X113_Y42_N4
\dezen_7seg|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dezen_7seg|decOut_n[0]~0_combout\ = (!\bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \bin_to_BCD|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \dezen_7seg|decOut_n[0]~0_combout\);

-- Location: LCCOMB_X107_Y66_N2
\clkDiv|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~0_combout\ = \clkDiv|s_divCounter\(0) $ (VCC)
-- \clkDiv|Add0~1\ = CARRY(\clkDiv|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(0),
	datad => VCC,
	combout => \clkDiv|Add0~0_combout\,
	cout => \clkDiv|Add0~1\);

-- Location: FF_X107_Y66_N3
\clkDiv|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(0));

-- Location: LCCOMB_X107_Y66_N4
\clkDiv|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~2_combout\ = (\clkDiv|s_divCounter\(1) & (!\clkDiv|Add0~1\)) # (!\clkDiv|s_divCounter\(1) & ((\clkDiv|Add0~1\) # (GND)))
-- \clkDiv|Add0~3\ = CARRY((!\clkDiv|Add0~1\) # (!\clkDiv|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(1),
	datad => VCC,
	cin => \clkDiv|Add0~1\,
	combout => \clkDiv|Add0~2_combout\,
	cout => \clkDiv|Add0~3\);

-- Location: FF_X107_Y66_N5
\clkDiv|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(1));

-- Location: LCCOMB_X107_Y66_N6
\clkDiv|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~4_combout\ = (\clkDiv|s_divCounter\(2) & (\clkDiv|Add0~3\ $ (GND))) # (!\clkDiv|s_divCounter\(2) & (!\clkDiv|Add0~3\ & VCC))
-- \clkDiv|Add0~5\ = CARRY((\clkDiv|s_divCounter\(2) & !\clkDiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(2),
	datad => VCC,
	cin => \clkDiv|Add0~3\,
	combout => \clkDiv|Add0~4_combout\,
	cout => \clkDiv|Add0~5\);

-- Location: FF_X107_Y66_N7
\clkDiv|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(2));

-- Location: LCCOMB_X107_Y66_N8
\clkDiv|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~6_combout\ = (\clkDiv|s_divCounter\(3) & (!\clkDiv|Add0~5\)) # (!\clkDiv|s_divCounter\(3) & ((\clkDiv|Add0~5\) # (GND)))
-- \clkDiv|Add0~7\ = CARRY((!\clkDiv|Add0~5\) # (!\clkDiv|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(3),
	datad => VCC,
	cin => \clkDiv|Add0~5\,
	combout => \clkDiv|Add0~6_combout\,
	cout => \clkDiv|Add0~7\);

-- Location: FF_X107_Y66_N9
\clkDiv|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(3));

-- Location: LCCOMB_X107_Y66_N10
\clkDiv|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~8_combout\ = (\clkDiv|s_divCounter\(4) & (\clkDiv|Add0~7\ $ (GND))) # (!\clkDiv|s_divCounter\(4) & (!\clkDiv|Add0~7\ & VCC))
-- \clkDiv|Add0~9\ = CARRY((\clkDiv|s_divCounter\(4) & !\clkDiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(4),
	datad => VCC,
	cin => \clkDiv|Add0~7\,
	combout => \clkDiv|Add0~8_combout\,
	cout => \clkDiv|Add0~9\);

-- Location: FF_X107_Y66_N11
\clkDiv|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(4));

-- Location: LCCOMB_X107_Y66_N12
\clkDiv|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~10_combout\ = (\clkDiv|s_divCounter\(5) & (!\clkDiv|Add0~9\)) # (!\clkDiv|s_divCounter\(5) & ((\clkDiv|Add0~9\) # (GND)))
-- \clkDiv|Add0~11\ = CARRY((!\clkDiv|Add0~9\) # (!\clkDiv|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(5),
	datad => VCC,
	cin => \clkDiv|Add0~9\,
	combout => \clkDiv|Add0~10_combout\,
	cout => \clkDiv|Add0~11\);

-- Location: LCCOMB_X107_Y66_N0
\clkDiv|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter~7_combout\ = (\clkDiv|Add0~10_combout\ & !\clkDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|Add0~10_combout\,
	datad => \clkDiv|Equal0~9_combout\,
	combout => \clkDiv|s_divCounter~7_combout\);

-- Location: FF_X107_Y66_N1
\clkDiv|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(5));

-- Location: LCCOMB_X107_Y66_N14
\clkDiv|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~12_combout\ = (\clkDiv|s_divCounter\(6) & (\clkDiv|Add0~11\ $ (GND))) # (!\clkDiv|s_divCounter\(6) & (!\clkDiv|Add0~11\ & VCC))
-- \clkDiv|Add0~13\ = CARRY((\clkDiv|s_divCounter\(6) & !\clkDiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(6),
	datad => VCC,
	cin => \clkDiv|Add0~11\,
	combout => \clkDiv|Add0~12_combout\,
	cout => \clkDiv|Add0~13\);

-- Location: FF_X107_Y66_N15
\clkDiv|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(6));

-- Location: LCCOMB_X107_Y66_N16
\clkDiv|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~14_combout\ = (\clkDiv|s_divCounter\(7) & (!\clkDiv|Add0~13\)) # (!\clkDiv|s_divCounter\(7) & ((\clkDiv|Add0~13\) # (GND)))
-- \clkDiv|Add0~15\ = CARRY((!\clkDiv|Add0~13\) # (!\clkDiv|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(7),
	datad => VCC,
	cin => \clkDiv|Add0~13\,
	combout => \clkDiv|Add0~14_combout\,
	cout => \clkDiv|Add0~15\);

-- Location: FF_X107_Y66_N17
\clkDiv|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(7));

-- Location: LCCOMB_X107_Y66_N18
\clkDiv|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~16_combout\ = (\clkDiv|s_divCounter\(8) & (\clkDiv|Add0~15\ $ (GND))) # (!\clkDiv|s_divCounter\(8) & (!\clkDiv|Add0~15\ & VCC))
-- \clkDiv|Add0~17\ = CARRY((\clkDiv|s_divCounter\(8) & !\clkDiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(8),
	datad => VCC,
	cin => \clkDiv|Add0~15\,
	combout => \clkDiv|Add0~16_combout\,
	cout => \clkDiv|Add0~17\);

-- Location: FF_X107_Y66_N19
\clkDiv|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(8));

-- Location: LCCOMB_X107_Y66_N20
\clkDiv|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~18_combout\ = (\clkDiv|s_divCounter\(9) & (!\clkDiv|Add0~17\)) # (!\clkDiv|s_divCounter\(9) & ((\clkDiv|Add0~17\) # (GND)))
-- \clkDiv|Add0~19\ = CARRY((!\clkDiv|Add0~17\) # (!\clkDiv|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(9),
	datad => VCC,
	cin => \clkDiv|Add0~17\,
	combout => \clkDiv|Add0~18_combout\,
	cout => \clkDiv|Add0~19\);

-- Location: FF_X107_Y66_N21
\clkDiv|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(9));

-- Location: LCCOMB_X107_Y66_N22
\clkDiv|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~20_combout\ = (\clkDiv|s_divCounter\(10) & (\clkDiv|Add0~19\ $ (GND))) # (!\clkDiv|s_divCounter\(10) & (!\clkDiv|Add0~19\ & VCC))
-- \clkDiv|Add0~21\ = CARRY((\clkDiv|s_divCounter\(10) & !\clkDiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(10),
	datad => VCC,
	cin => \clkDiv|Add0~19\,
	combout => \clkDiv|Add0~20_combout\,
	cout => \clkDiv|Add0~21\);

-- Location: LCCOMB_X108_Y65_N10
\clkDiv|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter~6_combout\ = (\clkDiv|Add0~20_combout\ & !\clkDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDiv|Add0~20_combout\,
	datad => \clkDiv|Equal0~9_combout\,
	combout => \clkDiv|s_divCounter~6_combout\);

-- Location: FF_X108_Y65_N11
\clkDiv|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(10));

-- Location: LCCOMB_X107_Y66_N24
\clkDiv|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~22_combout\ = (\clkDiv|s_divCounter\(11) & (!\clkDiv|Add0~21\)) # (!\clkDiv|s_divCounter\(11) & ((\clkDiv|Add0~21\) # (GND)))
-- \clkDiv|Add0~23\ = CARRY((!\clkDiv|Add0~21\) # (!\clkDiv|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(11),
	datad => VCC,
	cin => \clkDiv|Add0~21\,
	combout => \clkDiv|Add0~22_combout\,
	cout => \clkDiv|Add0~23\);

-- Location: LCCOMB_X108_Y65_N20
\clkDiv|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter~5_combout\ = (\clkDiv|Add0~22_combout\ & !\clkDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDiv|Add0~22_combout\,
	datad => \clkDiv|Equal0~9_combout\,
	combout => \clkDiv|s_divCounter~5_combout\);

-- Location: FF_X108_Y65_N21
\clkDiv|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(11));

-- Location: LCCOMB_X107_Y66_N26
\clkDiv|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~24_combout\ = (\clkDiv|s_divCounter\(12) & (\clkDiv|Add0~23\ $ (GND))) # (!\clkDiv|s_divCounter\(12) & (!\clkDiv|Add0~23\ & VCC))
-- \clkDiv|Add0~25\ = CARRY((\clkDiv|s_divCounter\(12) & !\clkDiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(12),
	datad => VCC,
	cin => \clkDiv|Add0~23\,
	combout => \clkDiv|Add0~24_combout\,
	cout => \clkDiv|Add0~25\);

-- Location: LCCOMB_X108_Y65_N0
\clkDiv|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter~4_combout\ = (\clkDiv|Add0~24_combout\ & !\clkDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDiv|Add0~24_combout\,
	datad => \clkDiv|Equal0~9_combout\,
	combout => \clkDiv|s_divCounter~4_combout\);

-- Location: FF_X108_Y65_N1
\clkDiv|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(12));

-- Location: LCCOMB_X107_Y66_N28
\clkDiv|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~26_combout\ = (\clkDiv|s_divCounter\(13) & (!\clkDiv|Add0~25\)) # (!\clkDiv|s_divCounter\(13) & ((\clkDiv|Add0~25\) # (GND)))
-- \clkDiv|Add0~27\ = CARRY((!\clkDiv|Add0~25\) # (!\clkDiv|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(13),
	datad => VCC,
	cin => \clkDiv|Add0~25\,
	combout => \clkDiv|Add0~26_combout\,
	cout => \clkDiv|Add0~27\);

-- Location: LCCOMB_X107_Y66_N30
\clkDiv|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~28_combout\ = (\clkDiv|s_divCounter\(14) & (\clkDiv|Add0~27\ $ (GND))) # (!\clkDiv|s_divCounter\(14) & (!\clkDiv|Add0~27\ & VCC))
-- \clkDiv|Add0~29\ = CARRY((\clkDiv|s_divCounter\(14) & !\clkDiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(14),
	datad => VCC,
	cin => \clkDiv|Add0~27\,
	combout => \clkDiv|Add0~28_combout\,
	cout => \clkDiv|Add0~29\);

-- Location: FF_X107_Y66_N31
\clkDiv|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(14));

-- Location: LCCOMB_X107_Y65_N0
\clkDiv|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~30_combout\ = (\clkDiv|s_divCounter\(15) & (!\clkDiv|Add0~29\)) # (!\clkDiv|s_divCounter\(15) & ((\clkDiv|Add0~29\) # (GND)))
-- \clkDiv|Add0~31\ = CARRY((!\clkDiv|Add0~29\) # (!\clkDiv|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(15),
	datad => VCC,
	cin => \clkDiv|Add0~29\,
	combout => \clkDiv|Add0~30_combout\,
	cout => \clkDiv|Add0~31\);

-- Location: LCCOMB_X106_Y65_N24
\clkDiv|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter~10_combout\ = (\clkDiv|Add0~30_combout\ & !\clkDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDiv|Add0~30_combout\,
	datad => \clkDiv|Equal0~9_combout\,
	combout => \clkDiv|s_divCounter~10_combout\);

-- Location: FF_X106_Y65_N25
\clkDiv|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(15));

-- Location: LCCOMB_X107_Y65_N2
\clkDiv|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~32_combout\ = (\clkDiv|s_divCounter\(16) & (\clkDiv|Add0~31\ $ (GND))) # (!\clkDiv|s_divCounter\(16) & (!\clkDiv|Add0~31\ & VCC))
-- \clkDiv|Add0~33\ = CARRY((\clkDiv|s_divCounter\(16) & !\clkDiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(16),
	datad => VCC,
	cin => \clkDiv|Add0~31\,
	combout => \clkDiv|Add0~32_combout\,
	cout => \clkDiv|Add0~33\);

-- Location: FF_X107_Y65_N3
\clkDiv|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(16));

-- Location: LCCOMB_X107_Y65_N4
\clkDiv|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~34_combout\ = (\clkDiv|s_divCounter\(17) & (!\clkDiv|Add0~33\)) # (!\clkDiv|s_divCounter\(17) & ((\clkDiv|Add0~33\) # (GND)))
-- \clkDiv|Add0~35\ = CARRY((!\clkDiv|Add0~33\) # (!\clkDiv|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(17),
	datad => VCC,
	cin => \clkDiv|Add0~33\,
	combout => \clkDiv|Add0~34_combout\,
	cout => \clkDiv|Add0~35\);

-- Location: LCCOMB_X108_Y65_N6
\clkDiv|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter~3_combout\ = (\clkDiv|Add0~34_combout\ & !\clkDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDiv|Add0~34_combout\,
	datad => \clkDiv|Equal0~9_combout\,
	combout => \clkDiv|s_divCounter~3_combout\);

-- Location: FF_X108_Y65_N7
\clkDiv|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(17));

-- Location: LCCOMB_X107_Y65_N6
\clkDiv|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~36_combout\ = (\clkDiv|s_divCounter\(18) & (\clkDiv|Add0~35\ $ (GND))) # (!\clkDiv|s_divCounter\(18) & (!\clkDiv|Add0~35\ & VCC))
-- \clkDiv|Add0~37\ = CARRY((\clkDiv|s_divCounter\(18) & !\clkDiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(18),
	datad => VCC,
	cin => \clkDiv|Add0~35\,
	combout => \clkDiv|Add0~36_combout\,
	cout => \clkDiv|Add0~37\);

-- Location: LCCOMB_X108_Y65_N12
\clkDiv|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter~2_combout\ = (!\clkDiv|Equal0~9_combout\ & \clkDiv|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDiv|Equal0~9_combout\,
	datad => \clkDiv|Add0~36_combout\,
	combout => \clkDiv|s_divCounter~2_combout\);

-- Location: FF_X108_Y65_N13
\clkDiv|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(18));

-- Location: LCCOMB_X107_Y65_N8
\clkDiv|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~38_combout\ = (\clkDiv|s_divCounter\(19) & (!\clkDiv|Add0~37\)) # (!\clkDiv|s_divCounter\(19) & ((\clkDiv|Add0~37\) # (GND)))
-- \clkDiv|Add0~39\ = CARRY((!\clkDiv|Add0~37\) # (!\clkDiv|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(19),
	datad => VCC,
	cin => \clkDiv|Add0~37\,
	combout => \clkDiv|Add0~38_combout\,
	cout => \clkDiv|Add0~39\);

-- Location: LCCOMB_X108_Y65_N22
\clkDiv|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter~1_combout\ = (!\clkDiv|Equal0~9_combout\ & \clkDiv|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDiv|Equal0~9_combout\,
	datad => \clkDiv|Add0~38_combout\,
	combout => \clkDiv|s_divCounter~1_combout\);

-- Location: FF_X108_Y65_N23
\clkDiv|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(19));

-- Location: LCCOMB_X107_Y65_N10
\clkDiv|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~40_combout\ = (\clkDiv|s_divCounter\(20) & (\clkDiv|Add0~39\ $ (GND))) # (!\clkDiv|s_divCounter\(20) & (!\clkDiv|Add0~39\ & VCC))
-- \clkDiv|Add0~41\ = CARRY((\clkDiv|s_divCounter\(20) & !\clkDiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(20),
	datad => VCC,
	cin => \clkDiv|Add0~39\,
	combout => \clkDiv|Add0~40_combout\,
	cout => \clkDiv|Add0~41\);

-- Location: LCCOMB_X108_Y65_N14
\clkDiv|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter~0_combout\ = (!\clkDiv|Equal0~9_combout\ & \clkDiv|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDiv|Equal0~9_combout\,
	datad => \clkDiv|Add0~40_combout\,
	combout => \clkDiv|s_divCounter~0_combout\);

-- Location: FF_X108_Y65_N15
\clkDiv|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(20));

-- Location: LCCOMB_X107_Y65_N12
\clkDiv|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~42_combout\ = (\clkDiv|s_divCounter\(21) & (!\clkDiv|Add0~41\)) # (!\clkDiv|s_divCounter\(21) & ((\clkDiv|Add0~41\) # (GND)))
-- \clkDiv|Add0~43\ = CARRY((!\clkDiv|Add0~41\) # (!\clkDiv|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(21),
	datad => VCC,
	cin => \clkDiv|Add0~41\,
	combout => \clkDiv|Add0~42_combout\,
	cout => \clkDiv|Add0~43\);

-- Location: LCCOMB_X106_Y65_N16
\clkDiv|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter~9_combout\ = (\clkDiv|Add0~42_combout\ & !\clkDiv|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDiv|Add0~42_combout\,
	datad => \clkDiv|Equal0~9_combout\,
	combout => \clkDiv|s_divCounter~9_combout\);

-- Location: FF_X106_Y65_N17
\clkDiv|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(21));

-- Location: LCCOMB_X107_Y65_N14
\clkDiv|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~44_combout\ = (\clkDiv|s_divCounter\(22) & (\clkDiv|Add0~43\ $ (GND))) # (!\clkDiv|s_divCounter\(22) & (!\clkDiv|Add0~43\ & VCC))
-- \clkDiv|Add0~45\ = CARRY((\clkDiv|s_divCounter\(22) & !\clkDiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(22),
	datad => VCC,
	cin => \clkDiv|Add0~43\,
	combout => \clkDiv|Add0~44_combout\,
	cout => \clkDiv|Add0~45\);

-- Location: FF_X107_Y65_N15
\clkDiv|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(22));

-- Location: LCCOMB_X107_Y65_N16
\clkDiv|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~46_combout\ = (\clkDiv|s_divCounter\(23) & (!\clkDiv|Add0~45\)) # (!\clkDiv|s_divCounter\(23) & ((\clkDiv|Add0~45\) # (GND)))
-- \clkDiv|Add0~47\ = CARRY((!\clkDiv|Add0~45\) # (!\clkDiv|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(23),
	datad => VCC,
	cin => \clkDiv|Add0~45\,
	combout => \clkDiv|Add0~46_combout\,
	cout => \clkDiv|Add0~47\);

-- Location: LCCOMB_X106_Y65_N26
\clkDiv|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter~8_combout\ = (!\clkDiv|Equal0~9_combout\ & \clkDiv|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|Equal0~9_combout\,
	datad => \clkDiv|Add0~46_combout\,
	combout => \clkDiv|s_divCounter~8_combout\);

-- Location: FF_X106_Y65_N27
\clkDiv|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(23));

-- Location: LCCOMB_X106_Y65_N4
\clkDiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Equal0~7_combout\ = (\clkDiv|s_divCounter\(23) & (\clkDiv|s_divCounter\(21) & (!\clkDiv|s_divCounter\(22) & !\clkDiv|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(23),
	datab => \clkDiv|s_divCounter\(21),
	datac => \clkDiv|s_divCounter\(22),
	datad => \clkDiv|s_divCounter\(16),
	combout => \clkDiv|Equal0~7_combout\);

-- Location: LCCOMB_X106_Y65_N22
\clkDiv|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Equal0~8_combout\ = (\clkDiv|s_divCounter\(13) & (\clkDiv|s_divCounter\(15) & (!\clkDiv|s_divCounter\(14) & !\clkDiv|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(13),
	datab => \clkDiv|s_divCounter\(15),
	datac => \clkDiv|s_divCounter\(14),
	datad => \clkDiv|s_divCounter\(9),
	combout => \clkDiv|Equal0~8_combout\);

-- Location: LCCOMB_X106_Y66_N24
\clkDiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Equal0~5_combout\ = (\clkDiv|s_divCounter\(3) & (!\clkDiv|s_divCounter\(5) & (!\clkDiv|s_divCounter\(6) & \clkDiv|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(3),
	datab => \clkDiv|s_divCounter\(5),
	datac => \clkDiv|s_divCounter\(6),
	datad => \clkDiv|s_divCounter\(2),
	combout => \clkDiv|Equal0~5_combout\);

-- Location: LCCOMB_X108_Y65_N30
\clkDiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Equal0~2_combout\ = (\clkDiv|s_divCounter\(18) & (\clkDiv|s_divCounter\(12) & (\clkDiv|s_divCounter\(19) & \clkDiv|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(18),
	datab => \clkDiv|s_divCounter\(12),
	datac => \clkDiv|s_divCounter\(19),
	datad => \clkDiv|s_divCounter\(17),
	combout => \clkDiv|Equal0~2_combout\);

-- Location: LCCOMB_X107_Y65_N18
\clkDiv|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~48_combout\ = (\clkDiv|s_divCounter\(24) & (\clkDiv|Add0~47\ $ (GND))) # (!\clkDiv|s_divCounter\(24) & (!\clkDiv|Add0~47\ & VCC))
-- \clkDiv|Add0~49\ = CARRY((\clkDiv|s_divCounter\(24) & !\clkDiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(24),
	datad => VCC,
	cin => \clkDiv|Add0~47\,
	combout => \clkDiv|Add0~48_combout\,
	cout => \clkDiv|Add0~49\);

-- Location: FF_X107_Y65_N19
\clkDiv|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(24));

-- Location: LCCOMB_X107_Y65_N20
\clkDiv|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~50_combout\ = (\clkDiv|s_divCounter\(25) & (!\clkDiv|Add0~49\)) # (!\clkDiv|s_divCounter\(25) & ((\clkDiv|Add0~49\) # (GND)))
-- \clkDiv|Add0~51\ = CARRY((!\clkDiv|Add0~49\) # (!\clkDiv|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(25),
	datad => VCC,
	cin => \clkDiv|Add0~49\,
	combout => \clkDiv|Add0~50_combout\,
	cout => \clkDiv|Add0~51\);

-- Location: FF_X107_Y65_N21
\clkDiv|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(25));

-- Location: LCCOMB_X107_Y65_N22
\clkDiv|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~52_combout\ = (\clkDiv|s_divCounter\(26) & (\clkDiv|Add0~51\ $ (GND))) # (!\clkDiv|s_divCounter\(26) & (!\clkDiv|Add0~51\ & VCC))
-- \clkDiv|Add0~53\ = CARRY((\clkDiv|s_divCounter\(26) & !\clkDiv|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(26),
	datad => VCC,
	cin => \clkDiv|Add0~51\,
	combout => \clkDiv|Add0~52_combout\,
	cout => \clkDiv|Add0~53\);

-- Location: FF_X107_Y65_N23
\clkDiv|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(26));

-- Location: LCCOMB_X108_Y65_N28
\clkDiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Equal0~1_combout\ = (!\clkDiv|s_divCounter\(26) & (!\clkDiv|s_divCounter\(25) & (\clkDiv|s_divCounter\(20) & !\clkDiv|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(26),
	datab => \clkDiv|s_divCounter\(25),
	datac => \clkDiv|s_divCounter\(20),
	datad => \clkDiv|s_divCounter\(24),
	combout => \clkDiv|Equal0~1_combout\);

-- Location: LCCOMB_X107_Y65_N24
\clkDiv|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~54_combout\ = (\clkDiv|s_divCounter\(27) & (!\clkDiv|Add0~53\)) # (!\clkDiv|s_divCounter\(27) & ((\clkDiv|Add0~53\) # (GND)))
-- \clkDiv|Add0~55\ = CARRY((!\clkDiv|Add0~53\) # (!\clkDiv|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(27),
	datad => VCC,
	cin => \clkDiv|Add0~53\,
	combout => \clkDiv|Add0~54_combout\,
	cout => \clkDiv|Add0~55\);

-- Location: FF_X107_Y65_N25
\clkDiv|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(27));

-- Location: LCCOMB_X107_Y65_N26
\clkDiv|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~56_combout\ = (\clkDiv|s_divCounter\(28) & (\clkDiv|Add0~55\ $ (GND))) # (!\clkDiv|s_divCounter\(28) & (!\clkDiv|Add0~55\ & VCC))
-- \clkDiv|Add0~57\ = CARRY((\clkDiv|s_divCounter\(28) & !\clkDiv|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(28),
	datad => VCC,
	cin => \clkDiv|Add0~55\,
	combout => \clkDiv|Add0~56_combout\,
	cout => \clkDiv|Add0~57\);

-- Location: FF_X107_Y65_N27
\clkDiv|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(28));

-- Location: LCCOMB_X107_Y65_N28
\clkDiv|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~58_combout\ = (\clkDiv|s_divCounter\(29) & (!\clkDiv|Add0~57\)) # (!\clkDiv|s_divCounter\(29) & ((\clkDiv|Add0~57\) # (GND)))
-- \clkDiv|Add0~59\ = CARRY((!\clkDiv|Add0~57\) # (!\clkDiv|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|s_divCounter\(29),
	datad => VCC,
	cin => \clkDiv|Add0~57\,
	combout => \clkDiv|Add0~58_combout\,
	cout => \clkDiv|Add0~59\);

-- Location: FF_X107_Y65_N29
\clkDiv|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(29));

-- Location: LCCOMB_X107_Y65_N30
\clkDiv|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Add0~60_combout\ = \clkDiv|s_divCounter\(30) $ (!\clkDiv|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(30),
	cin => \clkDiv|Add0~59\,
	combout => \clkDiv|Add0~60_combout\);

-- Location: FF_X107_Y65_N31
\clkDiv|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(30));

-- Location: LCCOMB_X108_Y65_N8
\clkDiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Equal0~0_combout\ = (!\clkDiv|s_divCounter\(27) & (!\clkDiv|s_divCounter\(29) & (!\clkDiv|s_divCounter\(28) & !\clkDiv|s_divCounter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(27),
	datab => \clkDiv|s_divCounter\(29),
	datac => \clkDiv|s_divCounter\(28),
	datad => \clkDiv|s_divCounter\(30),
	combout => \clkDiv|Equal0~0_combout\);

-- Location: LCCOMB_X108_Y65_N24
\clkDiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Equal0~3_combout\ = (\clkDiv|s_divCounter\(10) & (\clkDiv|s_divCounter\(11) & (!\clkDiv|s_divCounter\(7) & !\clkDiv|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(10),
	datab => \clkDiv|s_divCounter\(11),
	datac => \clkDiv|s_divCounter\(7),
	datad => \clkDiv|s_divCounter\(8),
	combout => \clkDiv|Equal0~3_combout\);

-- Location: LCCOMB_X108_Y65_N26
\clkDiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Equal0~4_combout\ = (\clkDiv|Equal0~2_combout\ & (\clkDiv|Equal0~1_combout\ & (\clkDiv|Equal0~0_combout\ & \clkDiv|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|Equal0~2_combout\,
	datab => \clkDiv|Equal0~1_combout\,
	datac => \clkDiv|Equal0~0_combout\,
	datad => \clkDiv|Equal0~3_combout\,
	combout => \clkDiv|Equal0~4_combout\);

-- Location: LCCOMB_X106_Y65_N28
\clkDiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Equal0~6_combout\ = (\clkDiv|s_divCounter\(1) & (\clkDiv|s_divCounter\(0) & (\clkDiv|Equal0~5_combout\ & \clkDiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(1),
	datab => \clkDiv|s_divCounter\(0),
	datac => \clkDiv|Equal0~5_combout\,
	datad => \clkDiv|Equal0~4_combout\,
	combout => \clkDiv|Equal0~6_combout\);

-- Location: LCCOMB_X106_Y65_N0
\clkDiv|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|Equal0~9_combout\ = (\clkDiv|s_divCounter\(4) & (\clkDiv|Equal0~7_combout\ & (\clkDiv|Equal0~8_combout\ & \clkDiv|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(4),
	datab => \clkDiv|Equal0~7_combout\,
	datac => \clkDiv|Equal0~8_combout\,
	datad => \clkDiv|Equal0~6_combout\,
	combout => \clkDiv|Equal0~9_combout\);

-- Location: LCCOMB_X106_Y65_N2
\clkDiv|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|s_divCounter~11_combout\ = (!\clkDiv|Equal0~9_combout\ & \clkDiv|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDiv|Equal0~9_combout\,
	datad => \clkDiv|Add0~26_combout\,
	combout => \clkDiv|s_divCounter~11_combout\);

-- Location: FF_X106_Y65_N3
\clkDiv|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|s_divCounter\(13));

-- Location: LCCOMB_X106_Y65_N20
\clkDiv|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~1_combout\ = (!\clkDiv|s_divCounter\(13) & (!\clkDiv|s_divCounter\(15) & (\clkDiv|s_divCounter\(14) & \clkDiv|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(13),
	datab => \clkDiv|s_divCounter\(15),
	datac => \clkDiv|s_divCounter\(14),
	datad => \clkDiv|s_divCounter\(9),
	combout => \clkDiv|clkOut~1_combout\);

-- Location: LCCOMB_X106_Y65_N18
\clkDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~0_combout\ = (!\clkDiv|s_divCounter\(23) & (!\clkDiv|s_divCounter\(21) & (\clkDiv|s_divCounter\(22) & \clkDiv|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|s_divCounter\(23),
	datab => \clkDiv|s_divCounter\(21),
	datac => \clkDiv|s_divCounter\(22),
	datad => \clkDiv|s_divCounter\(16),
	combout => \clkDiv|clkOut~0_combout\);

-- Location: LCCOMB_X106_Y65_N30
\clkDiv|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~2_combout\ = (\clkDiv|clkOut~1_combout\ & (!\clkDiv|s_divCounter\(4) & \clkDiv|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|clkOut~1_combout\,
	datac => \clkDiv|s_divCounter\(4),
	datad => \clkDiv|clkOut~0_combout\,
	combout => \clkDiv|clkOut~2_combout\);

-- Location: LCCOMB_X106_Y65_N8
\clkDiv|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDiv|clkOut~3_combout\ = (!\clkDiv|Equal0~9_combout\ & ((\clkDiv|clkOut~q\) # ((\clkDiv|clkOut~2_combout\ & \clkDiv|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|clkOut~2_combout\,
	datab => \clkDiv|Equal0~6_combout\,
	datac => \clkDiv|clkOut~q\,
	datad => \clkDiv|Equal0~9_combout\,
	combout => \clkDiv|clkOut~3_combout\);

-- Location: FF_X106_Y65_N9
\clkDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDiv|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDiv|clkOut~q\);

-- Location: LCCOMB_X101_Y65_N4
\LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\clkDiv|clkOut~q\ & \cnt|s_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDiv|clkOut~q\,
	datad => \cnt|s_value\(0),
	combout => \LEDR~0_combout\);

-- Location: LCCOMB_X101_Y69_N4
\LEDR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = (\cnt|s_value\(1) & \clkDiv|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt|s_value\(1),
	datad => \clkDiv|clkOut~q\,
	combout => \LEDR~1_combout\);

-- Location: LCCOMB_X101_Y69_N6
\LEDR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~2_combout\ = (\cnt|s_value\(2) & \clkDiv|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt|s_value\(2),
	datad => \clkDiv|clkOut~q\,
	combout => \LEDR~2_combout\);

-- Location: LCCOMB_X106_Y65_N14
\LEDR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR~3_combout\ = (\clkDiv|clkOut~q\ & \cnt|s_value\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDiv|clkOut~q\,
	datad => \cnt|s_value\(3),
	combout => \LEDR~3_combout\);

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

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;
END structure;


