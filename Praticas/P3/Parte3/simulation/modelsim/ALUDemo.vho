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

-- DATE "02/28/2023 17:50:09"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUDemo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(10 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALUDemo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \ALU4|Mux1~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\ : std_logic;
SIGNAL \ALU4|Mux2~2_combout\ : std_logic;
SIGNAL \ALU4|Mux2~3_combout\ : std_logic;
SIGNAL \ALU4|Add0~1_combout\ : std_logic;
SIGNAL \ALU4|Add0~2_combout\ : std_logic;
SIGNAL \ALU4|Add0~4_cout\ : std_logic;
SIGNAL \ALU4|Add0~6\ : std_logic;
SIGNAL \ALU4|Add0~7_combout\ : std_logic;
SIGNAL \ALU4|Mux1~1_combout\ : std_logic;
SIGNAL \ALU4|Mux2~0_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU4|Mux2~1_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \ALU4|Add0~0_combout\ : std_logic;
SIGNAL \ALU4|Add0~8\ : std_logic;
SIGNAL \ALU4|Add0~9_combout\ : std_logic;
SIGNAL \ALU4|Mux1~4_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ : std_logic;
SIGNAL \ALU4|Mux1~5_combout\ : std_logic;
SIGNAL \ALU4|Mux1~2_combout\ : std_logic;
SIGNAL \ALU4|Mux1~3_combout\ : std_logic;
SIGNAL \ALU4|Mux0~2_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \ALU4|Mux0~3_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\ : std_logic;
SIGNAL \ALU4|Add0~11_combout\ : std_logic;
SIGNAL \ALU4|Add0~10\ : std_logic;
SIGNAL \ALU4|Add0~12_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \ALU4|Mux0~0_combout\ : std_logic;
SIGNAL \ALU4|Mux0~1_combout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \ALU4|Mux3~0_combout\ : std_logic;
SIGNAL \ALU4|Mux3~1_combout\ : std_logic;
SIGNAL \ALU4|Mux3~2_combout\ : std_logic;
SIGNAL \ALU4|Add0~5_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \ALU4|Mux3~3_combout\ : std_logic;
SIGNAL \ALU4|Mux3~4_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~1_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~2_combout\ : std_logic;
SIGNAL \inst|decOut_n~3_combout\ : std_logic;
SIGNAL \inst|decOut_n~4_combout\ : std_logic;
SIGNAL \inst|decOut_n~5_combout\ : std_logic;
SIGNAL \inst|decOut_n~6_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~7_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~8_combout\ : std_logic;
SIGNAL \inst|decOut_n~10_combout\ : std_logic;
SIGNAL \inst|decOut_n~11_combout\ : std_logic;
SIGNAL \inst|decOut_n~9_combout\ : std_logic;
SIGNAL \inst|decOut_n~12_combout\ : std_logic;
SIGNAL \inst|decOut_n~13_combout\ : std_logic;
SIGNAL \inst|decOut_n~14_combout\ : std_logic;
SIGNAL \inst|decOut_n~15_combout\ : std_logic;
SIGNAL \inst|decOut_n~16_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst5|decOut_n[6]~5_combout\ : std_logic;
SIGNAL \inst5|decOut_n[6]~3_combout\ : std_logic;
SIGNAL \inst5|decOut_n[6]~32_combout\ : std_logic;
SIGNAL \ALU4|m[3]~11_combout\ : std_logic;
SIGNAL \ALU4|m[1]~9_combout\ : std_logic;
SIGNAL \ALU4|m[2]~10_combout\ : std_logic;
SIGNAL \ALU4|m[0]~8_combout\ : std_logic;
SIGNAL \inst5|decOut_n~20_combout\ : std_logic;
SIGNAL \ALU4|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|decOut_n~21_combout\ : std_logic;
SIGNAL \inst5|decOut_n~22_combout\ : std_logic;
SIGNAL \inst5|decOut_n~23_combout\ : std_logic;
SIGNAL \inst5|decOut_n[4]~24_combout\ : std_logic;
SIGNAL \inst5|decOut_n[3]~15_combout\ : std_logic;
SIGNAL \inst5|decOut_n[3]~13_combout\ : std_logic;
SIGNAL \inst5|decOut_n[3]~33_combout\ : std_logic;
SIGNAL \inst5|decOut_n~25_combout\ : std_logic;
SIGNAL \inst5|decOut_n~26_combout\ : std_logic;
SIGNAL \inst5|decOut_n~27_combout\ : std_logic;
SIGNAL \inst5|decOut_n~28_combout\ : std_logic;
SIGNAL \inst5|decOut_n~29_combout\ : std_logic;
SIGNAL \inst5|decOut_n~30_combout\ : std_logic;
SIGNAL \inst5|decOut_n~31_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALU4|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALU4|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALU4|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALU4|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \ALU4|ALT_INV_m[0]~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
ww_KEY <= KEY;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALU4|ALT_INV_Mux3~4_combout\ <= NOT \ALU4|Mux3~4_combout\;
\ALU4|ALT_INV_m[0]~8_combout\ <= NOT \ALU4|m[0]~8_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[6]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n[3]~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n~12_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n~14_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|decOut_n~16_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n[6]~32_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~22_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n[4]~24_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n[3]~33_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~27_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~29_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|decOut_n~31_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU4|m[3]~11_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU4|m[2]~10_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU4|m[1]~9_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU4|ALT_INV_m[0]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU4|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU4|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU4|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU4|ALT_INV_Mux3~4_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X113_Y18_N8
\ALU4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux1~0_combout\ = (\SW[9]~input_o\ & !\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ALU4|Mux1~0_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

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

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X112_Y18_N28
\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\ & !\SW[6]~input_o\)) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X112_Y17_N0
\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => \SW[2]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X112_Y18_N24
\ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\SW[2]~input_o\) # ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X112_Y18_N26
\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ = (\SW[6]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X112_Y14_N20
\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[5]~input_o\) # (GND)))
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X112_Y14_N22
\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & 
-- (\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\))) # 
-- (!\SW[1]~input_o\ & (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & !\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datad => VCC,
	cin => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X112_Y14_N24
\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ $ (\SW[2]~input_o\ $ (\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & ((!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & (!\SW[2]~input_o\ & !\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X112_Y14_N26
\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X112_Y14_N28
\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[5]~input_o\)))) # (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\);

-- Location: LCCOMB_X112_Y14_N30
\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)) # (!\SW[3]~input_o\ & 
-- ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\);

-- Location: LCCOMB_X112_Y14_N18
\ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\)) # (!\SW[3]~input_o\ & 
-- ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \SW[3]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X112_Y14_N0
\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[4]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[4]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X112_Y14_N2
\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & 
-- (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\))) # 
-- (!\SW[1]~input_o\ & (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\ & !\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\,
	datad => VCC,
	cin => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X112_Y14_N4
\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ $ (\SW[2]~input_o\ $ (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ & ((!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\ & (!\SW[2]~input_o\ & !\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X112_Y14_N6
\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\SW[3]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & 
-- (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\SW[3]~input_o\ & ((!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\))) # 
-- (!\SW[3]~input_o\ & (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & !\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datad => VCC,
	cin => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X112_Y14_N8
\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X112_Y14_N14
\ALU4|Mod0|auto_generated|divider|divider|StageOut[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~4_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\);

-- Location: LCCOMB_X111_Y18_N26
\ALU4|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux2~2_combout\ = (\SW[1]~input_o\ & ((\SW[5]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[9]~input_o\ & (\SW[5]~input_o\)) # (!\SW[9]~input_o\ & ((!\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|Mux2~2_combout\);

-- Location: LCCOMB_X111_Y18_N28
\ALU4|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux2~3_combout\ = (\ALU4|Mux2~2_combout\ & ((\SW[8]~input_o\) # ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\,
	datac => \ALU4|Mux2~2_combout\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|Mux2~3_combout\);

-- Location: LCCOMB_X112_Y18_N8
\ALU4|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~1_combout\ = \SW[1]~input_o\ $ (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[8]~input_o\,
	combout => \ALU4|Add0~1_combout\);

-- Location: LCCOMB_X111_Y18_N24
\ALU4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~2_combout\ = \SW[8]~input_o\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU4|Add0~2_combout\);

-- Location: LCCOMB_X111_Y18_N10
\ALU4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~4_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => VCC,
	cout => \ALU4|Add0~4_cout\);

-- Location: LCCOMB_X111_Y18_N12
\ALU4|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~5_combout\ = (\ALU4|Add0~2_combout\ & ((\SW[4]~input_o\ & (\ALU4|Add0~4_cout\ & VCC)) # (!\SW[4]~input_o\ & (!\ALU4|Add0~4_cout\)))) # (!\ALU4|Add0~2_combout\ & ((\SW[4]~input_o\ & (!\ALU4|Add0~4_cout\)) # (!\SW[4]~input_o\ & 
-- ((\ALU4|Add0~4_cout\) # (GND)))))
-- \ALU4|Add0~6\ = CARRY((\ALU4|Add0~2_combout\ & (!\SW[4]~input_o\ & !\ALU4|Add0~4_cout\)) # (!\ALU4|Add0~2_combout\ & ((!\ALU4|Add0~4_cout\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Add0~2_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \ALU4|Add0~4_cout\,
	combout => \ALU4|Add0~5_combout\,
	cout => \ALU4|Add0~6\);

-- Location: LCCOMB_X111_Y18_N14
\ALU4|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~7_combout\ = ((\ALU4|Add0~1_combout\ $ (\SW[5]~input_o\ $ (!\ALU4|Add0~6\)))) # (GND)
-- \ALU4|Add0~8\ = CARRY((\ALU4|Add0~1_combout\ & ((\SW[5]~input_o\) # (!\ALU4|Add0~6\))) # (!\ALU4|Add0~1_combout\ & (\SW[5]~input_o\ & !\ALU4|Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Add0~1_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \ALU4|Add0~6\,
	combout => \ALU4|Add0~7_combout\,
	cout => \ALU4|Add0~8\);

-- Location: LCCOMB_X114_Y18_N8
\ALU4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux1~1_combout\ = (\SW[10]~input_o\) # ((\SW[8]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|Mux1~1_combout\);

-- Location: LCCOMB_X111_Y18_N8
\ALU4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux2~0_combout\ = (\ALU4|Mux1~0_combout\ & (((\ALU4|Mux1~1_combout\)))) # (!\ALU4|Mux1~0_combout\ & ((\ALU4|Mux1~1_combout\ & (\ALU4|Mux2~3_combout\)) # (!\ALU4|Mux1~1_combout\ & ((\ALU4|Add0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux1~0_combout\,
	datab => \ALU4|Mux2~3_combout\,
	datac => \ALU4|Add0~7_combout\,
	datad => \ALU4|Mux1~1_combout\,
	combout => \ALU4|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y17_N26
\ALU4|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le3a\(1) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (((\SW[5]~input_o\))))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & (!\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X112_Y17_N20
\ALU4|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le3a\(0) = \SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[4]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X113_Y17_N4
\ALU4|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~0_combout\ = (\ALU4|Mult0|auto_generated|le3a\(0) & (\SW[1]~input_o\ $ (VCC))) # (!\ALU4|Mult0|auto_generated|le3a\(0) & (\SW[1]~input_o\ & VCC))
-- \ALU4|Mult0|auto_generated|op_3~1\ = CARRY((\ALU4|Mult0|auto_generated|le3a\(0) & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|le3a\(0),
	datab => \SW[1]~input_o\,
	datad => VCC,
	combout => \ALU4|Mult0|auto_generated|op_3~0_combout\,
	cout => \ALU4|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X113_Y17_N6
\ALU4|Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~2_combout\ = (\ALU4|Mult0|auto_generated|le3a\(1) & (!\ALU4|Mult0|auto_generated|op_3~1\)) # (!\ALU4|Mult0|auto_generated|le3a\(1) & ((\ALU4|Mult0|auto_generated|op_3~1\) # (GND)))
-- \ALU4|Mult0|auto_generated|op_3~3\ = CARRY((!\ALU4|Mult0|auto_generated|op_3~1\) # (!\ALU4|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_3~1\,
	combout => \ALU4|Mult0|auto_generated|op_3~2_combout\,
	cout => \ALU4|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X112_Y17_N12
\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[5]~input_o\) # (GND)))
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	combout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X112_Y17_N14
\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & (!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & ((\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & 
-- (\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & (!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\))) # 
-- (!\SW[1]~input_o\ & (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\ & !\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	datad => VCC,
	cin => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X112_Y17_N16
\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ $ (\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ & !\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\SW[2]~input_o\ 
-- & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\) # (!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datad => VCC,
	cin => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X112_Y17_N18
\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X113_Y18_N18
\ALU4|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|selnose\(10) = (\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[3]~input_o\,
	combout => \ALU4|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X112_Y18_N6
\ALU4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux2~1_combout\ = (\ALU4|Mux2~0_combout\ & (((!\ALU4|Div0|auto_generated|divider|divider|selnose\(10))) # (!\ALU4|Mux1~0_combout\))) # (!\ALU4|Mux2~0_combout\ & (\ALU4|Mux1~0_combout\ & (\ALU4|Mult0|auto_generated|op_3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux2~0_combout\,
	datab => \ALU4|Mux1~0_combout\,
	datac => \ALU4|Mult0|auto_generated|op_3~2_combout\,
	datad => \ALU4|Div0|auto_generated|divider|divider|selnose\(10),
	combout => \ALU4|Mux2~1_combout\);

-- Location: LCCOMB_X113_Y17_N26
\ALU4|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le4a\(0) = \SW[3]~input_o\ $ (((\SW[2]~input_o\ & ((\SW[1]~input_o\) # (\SW[4]~input_o\))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X114_Y17_N0
\ALU4|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le3a\(2) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (((\SW[6]~input_o\))))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & (!\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X113_Y17_N24
\ALU4|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le4a\(5) = \SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X114_Y17_N18
\ALU4|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_1~0_combout\ = (\ALU4|Mult0|auto_generated|le3a\(2) & (\ALU4|Mult0|auto_generated|le4a\(5) $ (VCC))) # (!\ALU4|Mult0|auto_generated|le3a\(2) & (\ALU4|Mult0|auto_generated|le4a\(5) & VCC))
-- \ALU4|Mult0|auto_generated|op_1~1\ = CARRY((\ALU4|Mult0|auto_generated|le3a\(2) & \ALU4|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|le3a\(2),
	datab => \ALU4|Mult0|auto_generated|le4a\(5),
	datad => VCC,
	combout => \ALU4|Mult0|auto_generated|op_1~0_combout\,
	cout => \ALU4|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X113_Y17_N8
\ALU4|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~4_combout\ = ((\ALU4|Mult0|auto_generated|le4a\(0) $ (\ALU4|Mult0|auto_generated|op_1~0_combout\ $ (!\ALU4|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \ALU4|Mult0|auto_generated|op_3~5\ = CARRY((\ALU4|Mult0|auto_generated|le4a\(0) & ((\ALU4|Mult0|auto_generated|op_1~0_combout\) # (!\ALU4|Mult0|auto_generated|op_3~3\))) # (!\ALU4|Mult0|auto_generated|le4a\(0) & (\ALU4|Mult0|auto_generated|op_1~0_combout\ 
-- & !\ALU4|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|le4a\(0),
	datab => \ALU4|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_3~3\,
	combout => \ALU4|Mult0|auto_generated|op_3~4_combout\,
	cout => \ALU4|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X112_Y18_N4
\ALU4|Mod0|auto_generated|divider|divider|selnose[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((\SW[0]~input_o\ & !\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X112_Y18_N22
\ALU4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~0_combout\ = \SW[8]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \ALU4|Add0~0_combout\);

-- Location: LCCOMB_X111_Y18_N16
\ALU4|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~9_combout\ = (\SW[6]~input_o\ & ((\ALU4|Add0~0_combout\ & (\ALU4|Add0~8\ & VCC)) # (!\ALU4|Add0~0_combout\ & (!\ALU4|Add0~8\)))) # (!\SW[6]~input_o\ & ((\ALU4|Add0~0_combout\ & (!\ALU4|Add0~8\)) # (!\ALU4|Add0~0_combout\ & ((\ALU4|Add0~8\) # 
-- (GND)))))
-- \ALU4|Add0~10\ = CARRY((\SW[6]~input_o\ & (!\ALU4|Add0~0_combout\ & !\ALU4|Add0~8\)) # (!\SW[6]~input_o\ & ((!\ALU4|Add0~8\) # (!\ALU4|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \ALU4|Add0~0_combout\,
	datad => VCC,
	cin => \ALU4|Add0~8\,
	combout => \ALU4|Add0~9_combout\,
	cout => \ALU4|Add0~10\);

-- Location: LCCOMB_X112_Y18_N12
\ALU4|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux1~4_combout\ = (\SW[2]~input_o\ & ((\SW[6]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[9]~input_o\ & ((\SW[6]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|Mux1~4_combout\);

-- Location: LCCOMB_X112_Y14_N16
\ALU4|Mod0|auto_generated|divider|divider|StageOut[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\))) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~3_combout\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\);

-- Location: LCCOMB_X112_Y18_N14
\ALU4|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux1~5_combout\ = (\ALU4|Mux1~4_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\) # ((\SW[8]~input_o\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux1~4_combout\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[14]~6_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|Mux1~5_combout\);

-- Location: LCCOMB_X112_Y18_N18
\ALU4|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux1~2_combout\ = (\ALU4|Mux1~0_combout\ & (((\ALU4|Mux1~1_combout\)))) # (!\ALU4|Mux1~0_combout\ & ((\ALU4|Mux1~1_combout\ & ((\ALU4|Mux1~5_combout\))) # (!\ALU4|Mux1~1_combout\ & (\ALU4|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Add0~9_combout\,
	datab => \ALU4|Mux1~0_combout\,
	datac => \ALU4|Mux1~5_combout\,
	datad => \ALU4|Mux1~1_combout\,
	combout => \ALU4|Mux1~2_combout\);

-- Location: LCCOMB_X112_Y18_N30
\ALU4|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux1~3_combout\ = (\ALU4|Mux1~0_combout\ & ((\ALU4|Mux1~2_combout\ & ((!\ALU4|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\))) # (!\ALU4|Mux1~2_combout\ & (\ALU4|Mult0|auto_generated|op_3~4_combout\)))) # (!\ALU4|Mux1~0_combout\ & 
-- (((\ALU4|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_3~4_combout\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datac => \ALU4|Mux1~0_combout\,
	datad => \ALU4|Mux1~2_combout\,
	combout => \ALU4|Mux1~3_combout\);

-- Location: LCCOMB_X111_Y18_N30
\ALU4|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux0~2_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[7]~input_o\ & ((\SW[9]~input_o\ & (\SW[3]~input_o\)) # (!\SW[9]~input_o\ & ((!\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|Mux0~2_combout\);

-- Location: LCCOMB_X112_Y14_N10
\ALU4|Mod0|auto_generated|divider|divider|StageOut[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X112_Y18_N10
\ALU4|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux0~3_combout\ = (\ALU4|Mux0~2_combout\ & ((\SW[8]~input_o\) # ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \ALU4|Mux0~2_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|Mux0~3_combout\);

-- Location: LCCOMB_X112_Y18_N16
\ALU4|Mod0|auto_generated|divider|divider|selnose[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\ = (!\SW[2]~input_o\ & !\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\);

-- Location: LCCOMB_X111_Y18_N22
\ALU4|Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|selnose\(0) = ((\SW[1]~input_o\) # ((!\SW[7]~input_o\ & \SW[0]~input_o\))) # (!\ALU4|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|selnose[0]~2_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X111_Y18_N2
\ALU4|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~11_combout\ = \SW[8]~input_o\ $ (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \ALU4|Add0~11_combout\);

-- Location: LCCOMB_X111_Y18_N18
\ALU4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~12_combout\ = \ALU4|Add0~11_combout\ $ (\ALU4|Add0~10\ $ (!\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|Add0~11_combout\,
	datad => \SW[7]~input_o\,
	cin => \ALU4|Add0~10\,
	combout => \ALU4|Add0~12_combout\);

-- Location: LCCOMB_X114_Y17_N10
\ALU4|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le3a\(3) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ ((\SW[7]~input_o\)))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X114_Y17_N20
\ALU4|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_1~2_combout\ = (\ALU4|Mult0|auto_generated|le3a\(3) & (!\ALU4|Mult0|auto_generated|op_1~1\)) # (!\ALU4|Mult0|auto_generated|le3a\(3) & ((\ALU4|Mult0|auto_generated|op_1~1\) # (GND)))
-- \ALU4|Mult0|auto_generated|op_1~3\ = CARRY((!\ALU4|Mult0|auto_generated|op_1~1\) # (!\ALU4|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_1~1\,
	combout => \ALU4|Mult0|auto_generated|op_1~2_combout\,
	cout => \ALU4|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X113_Y17_N20
\ALU4|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ = \SW[1]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \ALU4|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X113_Y17_N30
\ALU4|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le4a\(1) = (\ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ & (\ALU4|Mult0|auto_generated|le4a\(5) $ ((\SW[5]~input_o\)))) # (!\ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ & (\ALU4|Mult0|auto_generated|le4a\(5) & 
-- ((!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \ALU4|Mult0|auto_generated|le4a\(5),
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X113_Y17_N10
\ALU4|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~6_combout\ = (\ALU4|Mult0|auto_generated|op_1~2_combout\ & ((\ALU4|Mult0|auto_generated|le4a\(1) & (\ALU4|Mult0|auto_generated|op_3~5\ & VCC)) # (!\ALU4|Mult0|auto_generated|le4a\(1) & 
-- (!\ALU4|Mult0|auto_generated|op_3~5\)))) # (!\ALU4|Mult0|auto_generated|op_1~2_combout\ & ((\ALU4|Mult0|auto_generated|le4a\(1) & (!\ALU4|Mult0|auto_generated|op_3~5\)) # (!\ALU4|Mult0|auto_generated|le4a\(1) & ((\ALU4|Mult0|auto_generated|op_3~5\) # 
-- (GND)))))
-- \ALU4|Mult0|auto_generated|op_3~7\ = CARRY((\ALU4|Mult0|auto_generated|op_1~2_combout\ & (!\ALU4|Mult0|auto_generated|le4a\(1) & !\ALU4|Mult0|auto_generated|op_3~5\)) # (!\ALU4|Mult0|auto_generated|op_1~2_combout\ & ((!\ALU4|Mult0|auto_generated|op_3~5\) 
-- # (!\ALU4|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_1~2_combout\,
	datab => \ALU4|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_3~5\,
	combout => \ALU4|Mult0|auto_generated|op_3~6_combout\,
	cout => \ALU4|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X111_Y18_N4
\ALU4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux0~0_combout\ = (\ALU4|Mux1~0_combout\ & (((\ALU4|Mult0|auto_generated|op_3~6_combout\) # (\ALU4|Mux1~1_combout\)))) # (!\ALU4|Mux1~0_combout\ & (\ALU4|Add0~12_combout\ & ((!\ALU4|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux1~0_combout\,
	datab => \ALU4|Add0~12_combout\,
	datac => \ALU4|Mult0|auto_generated|op_3~6_combout\,
	datad => \ALU4|Mux1~1_combout\,
	combout => \ALU4|Mux0~0_combout\);

-- Location: LCCOMB_X112_Y18_N2
\ALU4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux0~1_combout\ = (\ALU4|Mux0~0_combout\ & (((!\ALU4|Mux1~1_combout\) # (!\ALU4|Mod0|auto_generated|divider|divider|selnose\(0))))) # (!\ALU4|Mux0~0_combout\ & (\ALU4|Mux0~3_combout\ & ((\ALU4|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux0~3_combout\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|selnose\(0),
	datac => \ALU4|Mux0~0_combout\,
	datad => \ALU4|Mux1~1_combout\,
	combout => \ALU4|Mux0~1_combout\);

-- Location: LCCOMB_X112_Y17_N28
\ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\SW[3]~input_o\ & (((\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)))) # (!\SW[3]~input_o\ & 
-- ((\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)) # (!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datad => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X112_Y17_N30
\ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\SW[3]~input_o\ & (((\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\)))) # (!\SW[3]~input_o\ & 
-- ((\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\))) # (!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	combout => \ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X112_Y17_N24
\ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[5]~input_o\)))) # (!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X112_Y17_N2
\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X112_Y17_N4
\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\SW[1]~input_o\ & ((!\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # (!\ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\))) # 
-- (!\SW[1]~input_o\ & (!\ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & !\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datad => VCC,
	cin => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X112_Y17_N6
\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\SW[2]~input_o\ & (\ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & !\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # 
-- (!\SW[2]~input_o\ & ((\ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\) # (!\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datad => VCC,
	cin => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X112_Y17_N8
\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\SW[3]~input_o\ & ((!\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # (!\ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\))) # 
-- (!\SW[3]~input_o\ & (!\ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & !\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datad => VCC,
	cin => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X112_Y17_N10
\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X112_Y14_N12
\ALU4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux3~0_combout\ = (\SW[8]~input_o\ & (((\SW[4]~input_o\)))) # (!\SW[8]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\SW[4]~input_o\))) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \SW[4]~input_o\,
	combout => \ALU4|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y18_N0
\ALU4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux3~1_combout\ = (\SW[9]~input_o\ & (\SW[8]~input_o\)) # (!\SW[9]~input_o\ & (\ALU4|Mux3~0_combout\ & ((\SW[0]~input_o\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \ALU4|Mux3~0_combout\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|Mux3~1_combout\);

-- Location: LCCOMB_X111_Y18_N20
\ALU4|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux3~2_combout\ = (\SW[9]~input_o\ & ((\SW[4]~input_o\ & ((!\SW[0]~input_o\) # (!\ALU4|Mux3~1_combout\))) # (!\SW[4]~input_o\ & ((\SW[0]~input_o\))))) # (!\SW[9]~input_o\ & (\ALU4|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ALU4|Mux3~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU4|Mux3~2_combout\);

-- Location: LCCOMB_X111_Y18_N6
\ALU4|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux3~3_combout\ = (\ALU4|Mux1~0_combout\ & (((\ALU4|Mux1~1_combout\) # (!\ALU4|Mult0|auto_generated|op_3~0_combout\)))) # (!\ALU4|Mux1~0_combout\ & (!\ALU4|Add0~5_combout\ & ((!\ALU4|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Add0~5_combout\,
	datab => \ALU4|Mux1~0_combout\,
	datac => \ALU4|Mult0|auto_generated|op_3~0_combout\,
	datad => \ALU4|Mux1~1_combout\,
	combout => \ALU4|Mux3~3_combout\);

-- Location: LCCOMB_X112_Y18_N20
\ALU4|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux3~4_combout\ = (\ALU4|Mux3~3_combout\ & ((\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # ((!\ALU4|Mux1~1_combout\)))) # (!\ALU4|Mux3~3_combout\ & (((!\ALU4|Mux3~2_combout\ & \ALU4|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \ALU4|Mux3~2_combout\,
	datac => \ALU4|Mux3~3_combout\,
	datad => \ALU4|Mux1~1_combout\,
	combout => \ALU4|Mux3~4_combout\);

-- Location: LCCOMB_X109_Y51_N18
\inst|decOut_n[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~1_combout\ = (\ALU4|Mux2~1_combout\ & (\ALU4|Mux1~3_combout\ & (\ALU4|Mux0~1_combout\ & !\ALU4|Mux3~4_combout\))) # (!\ALU4|Mux2~1_combout\ & (!\ALU4|Mux1~3_combout\ & (!\ALU4|Mux0~1_combout\ & \ALU4|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux2~1_combout\,
	datab => \ALU4|Mux1~3_combout\,
	datac => \ALU4|Mux0~1_combout\,
	datad => \ALU4|Mux3~4_combout\,
	combout => \inst|decOut_n[3]~1_combout\);

-- Location: LCCOMB_X109_Y51_N4
\inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (\ALU4|Mux2~1_combout\ & (\ALU4|Mux1~3_combout\ & (\ALU4|Mux0~1_combout\ & !\ALU4|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux2~1_combout\,
	datab => \ALU4|Mux1~3_combout\,
	datac => \ALU4|Mux0~1_combout\,
	datad => \ALU4|Mux3~4_combout\,
	combout => \inst|Equal7~0_combout\);

-- Location: LCCOMB_X109_Y51_N16
\inst|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~0_combout\ = (\ALU4|Mux0~1_combout\ & (!\ALU4|Mux2~1_combout\ & (\ALU4|Mux1~3_combout\ & \ALU4|Mux3~4_combout\))) # (!\ALU4|Mux0~1_combout\ & (!\ALU4|Mux3~4_combout\ & (\ALU4|Mux2~1_combout\ $ (!\ALU4|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux2~1_combout\,
	datab => \ALU4|Mux1~3_combout\,
	datac => \ALU4|Mux0~1_combout\,
	datad => \ALU4|Mux3~4_combout\,
	combout => \inst|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X109_Y51_N14
\inst|decOut_n[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~2_combout\ = ((\inst|decOut_n[3]~1_combout\ & (!\inst|Equal7~0_combout\)) # (!\inst|decOut_n[3]~1_combout\ & ((\inst|decOut_n[6]~0_combout\)))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst|decOut_n[3]~1_combout\,
	datac => \inst|Equal7~0_combout\,
	datad => \inst|decOut_n[6]~0_combout\,
	combout => \inst|decOut_n[6]~2_combout\);

-- Location: LCCOMB_X109_Y51_N8
\inst|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~3_combout\ = (\ALU4|Mux2~1_combout\ & (!\ALU4|Mux0~1_combout\ & ((!\ALU4|Mux3~4_combout\) # (!\ALU4|Mux1~3_combout\)))) # (!\ALU4|Mux2~1_combout\ & (!\ALU4|Mux3~4_combout\ & (\ALU4|Mux1~3_combout\ $ (!\ALU4|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux2~1_combout\,
	datab => \ALU4|Mux1~3_combout\,
	datac => \ALU4|Mux0~1_combout\,
	datad => \ALU4|Mux3~4_combout\,
	combout => \inst|decOut_n~3_combout\);

-- Location: LCCOMB_X109_Y51_N2
\inst|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~4_combout\ = (\inst|decOut_n~3_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|decOut_n~3_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst|decOut_n~4_combout\);

-- Location: LCCOMB_X109_Y51_N12
\inst|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~5_combout\ = (\ALU4|Mux2~1_combout\ & (((\ALU4|Mux0~1_combout\) # (\ALU4|Mux3~4_combout\)))) # (!\ALU4|Mux2~1_combout\ & ((\ALU4|Mux1~3_combout\ & (\ALU4|Mux0~1_combout\)) # (!\ALU4|Mux1~3_combout\ & ((\ALU4|Mux3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux2~1_combout\,
	datab => \ALU4|Mux1~3_combout\,
	datac => \ALU4|Mux0~1_combout\,
	datad => \ALU4|Mux3~4_combout\,
	combout => \inst|decOut_n~5_combout\);

-- Location: LCCOMB_X109_Y51_N6
\inst|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~6_combout\ = (!\KEY[0]~input_o\) # (!\inst|decOut_n~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n~5_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst|decOut_n~6_combout\);

-- Location: LCCOMB_X109_Y51_N24
\inst|decOut_n[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~7_combout\ = (\ALU4|Mux2~1_combout\ & ((\ALU4|Mux1~3_combout\ & ((\ALU4|Mux0~1_combout\) # (\ALU4|Mux3~4_combout\))) # (!\ALU4|Mux1~3_combout\ & ((!\ALU4|Mux3~4_combout\) # (!\ALU4|Mux0~1_combout\))))) # (!\ALU4|Mux2~1_combout\ & 
-- ((\ALU4|Mux0~1_combout\) # (\ALU4|Mux1~3_combout\ $ (\ALU4|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux2~1_combout\,
	datab => \ALU4|Mux1~3_combout\,
	datac => \ALU4|Mux0~1_combout\,
	datad => \ALU4|Mux3~4_combout\,
	combout => \inst|decOut_n[3]~7_combout\);

-- Location: LCCOMB_X109_Y51_N26
\inst|decOut_n[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~8_combout\ = ((\inst|decOut_n[3]~1_combout\ & ((\inst|Equal7~0_combout\))) # (!\inst|decOut_n[3]~1_combout\ & (!\inst|decOut_n[3]~7_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst|decOut_n[3]~7_combout\,
	datac => \inst|Equal7~0_combout\,
	datad => \inst|decOut_n[3]~1_combout\,
	combout => \inst|decOut_n[3]~8_combout\);

-- Location: LCCOMB_X109_Y51_N22
\inst|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~10_combout\ = (!\ALU4|Mux2~1_combout\ & !\ALU4|Mux3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU4|Mux2~1_combout\,
	datad => \ALU4|Mux3~4_combout\,
	combout => \inst|decOut_n~10_combout\);

-- Location: LCCOMB_X109_Y51_N0
\inst|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~11_combout\ = (\KEY[0]~input_o\ & ((\inst|decOut_n~10_combout\) # ((!\ALU4|Mux0~1_combout\) # (!\ALU4|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n~10_combout\,
	datab => \ALU4|Mux1~3_combout\,
	datac => \ALU4|Mux0~1_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst|decOut_n~11_combout\);

-- Location: LCCOMB_X109_Y51_N20
\inst|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~9_combout\ = (\ALU4|Mux2~1_combout\ & (!\ALU4|Mux1~3_combout\ & (!\ALU4|Mux0~1_combout\ & \ALU4|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux2~1_combout\,
	datab => \ALU4|Mux1~3_combout\,
	datac => \ALU4|Mux0~1_combout\,
	datad => \ALU4|Mux3~4_combout\,
	combout => \inst|decOut_n~9_combout\);

-- Location: LCCOMB_X109_Y51_N10
\inst|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~12_combout\ = (\inst|decOut_n~9_combout\) # (!\inst|decOut_n~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n~11_combout\,
	datad => \inst|decOut_n~9_combout\,
	combout => \inst|decOut_n~12_combout\);

-- Location: LCCOMB_X109_Y51_N28
\inst|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~13_combout\ = (\ALU4|Mux1~3_combout\ & (!\ALU4|Mux0~1_combout\ & (\ALU4|Mux2~1_combout\ $ (!\ALU4|Mux3~4_combout\)))) # (!\ALU4|Mux1~3_combout\ & (\ALU4|Mux2~1_combout\ & (\ALU4|Mux0~1_combout\ & !\ALU4|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux2~1_combout\,
	datab => \ALU4|Mux1~3_combout\,
	datac => \ALU4|Mux0~1_combout\,
	datad => \ALU4|Mux3~4_combout\,
	combout => \inst|decOut_n~13_combout\);

-- Location: LCCOMB_X109_Y51_N30
\inst|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~14_combout\ = (\inst|decOut_n~13_combout\) # (!\inst|decOut_n~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n~11_combout\,
	datad => \inst|decOut_n~13_combout\,
	combout => \inst|decOut_n~14_combout\);

-- Location: LCCOMB_X112_Y18_N0
\inst|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~15_combout\ = (\ALU4|Mux1~3_combout\ & (!\ALU4|Mux2~1_combout\ & (\ALU4|Mux3~4_combout\ $ (\ALU4|Mux0~1_combout\)))) # (!\ALU4|Mux1~3_combout\ & (!\ALU4|Mux3~4_combout\ & (\ALU4|Mux2~1_combout\ $ (!\ALU4|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux2~1_combout\,
	datab => \ALU4|Mux3~4_combout\,
	datac => \ALU4|Mux1~3_combout\,
	datad => \ALU4|Mux0~1_combout\,
	combout => \inst|decOut_n~15_combout\);

-- Location: LCCOMB_X109_Y33_N16
\inst|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~16_combout\ = (\inst|decOut_n~15_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n~15_combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst|decOut_n~16_combout\);

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

-- Location: LCCOMB_X114_Y17_N16
\ALU4|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le5a\(3) = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X114_Y17_N30
\ALU4|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le5a\(2) = (\SW[6]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X114_Y17_N4
\ALU4|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le4a\(4) = (\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X114_Y17_N2
\ALU4|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le5a\(1) = (\SW[5]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X114_Y17_N8
\ALU4|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le4a\(3) = (\ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\ALU4|Mult0|auto_generated|le4a\(5) $ (\SW[7]~input_o\)))) # (!\ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[6]~input_o\ & 
-- (\ALU4|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \ALU4|Mult0|auto_generated|le4a\(5),
	datac => \SW[7]~input_o\,
	datad => \ALU4|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \ALU4|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X114_Y17_N12
\ALU4|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le3a\(4) = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X114_Y17_N14
\ALU4|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le4a\(2) = (\ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SW[6]~input_o\ $ ((\ALU4|Mult0|auto_generated|le4a\(5))))) # (!\ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ & (((\ALU4|Mult0|auto_generated|le4a\(5) & 
-- !\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \ALU4|Mult0|auto_generated|le4a\(5),
	datac => \SW[5]~input_o\,
	datad => \ALU4|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \ALU4|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X114_Y17_N22
\ALU4|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_1~4_combout\ = ((\ALU4|Mult0|auto_generated|le3a\(4) $ (\ALU4|Mult0|auto_generated|le4a\(2) $ (!\ALU4|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \ALU4|Mult0|auto_generated|op_1~5\ = CARRY((\ALU4|Mult0|auto_generated|le3a\(4) & ((\ALU4|Mult0|auto_generated|le4a\(2)) # (!\ALU4|Mult0|auto_generated|op_1~3\))) # (!\ALU4|Mult0|auto_generated|le3a\(4) & (\ALU4|Mult0|auto_generated|le4a\(2) & 
-- !\ALU4|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|le3a\(4),
	datab => \ALU4|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_1~3\,
	combout => \ALU4|Mult0|auto_generated|op_1~4_combout\,
	cout => \ALU4|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X114_Y17_N24
\ALU4|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_1~6_combout\ = (\ALU4|Mult0|auto_generated|le5a\(1) & ((\ALU4|Mult0|auto_generated|le4a\(3) & (\ALU4|Mult0|auto_generated|op_1~5\ & VCC)) # (!\ALU4|Mult0|auto_generated|le4a\(3) & (!\ALU4|Mult0|auto_generated|op_1~5\)))) # 
-- (!\ALU4|Mult0|auto_generated|le5a\(1) & ((\ALU4|Mult0|auto_generated|le4a\(3) & (!\ALU4|Mult0|auto_generated|op_1~5\)) # (!\ALU4|Mult0|auto_generated|le4a\(3) & ((\ALU4|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \ALU4|Mult0|auto_generated|op_1~7\ = CARRY((\ALU4|Mult0|auto_generated|le5a\(1) & (!\ALU4|Mult0|auto_generated|le4a\(3) & !\ALU4|Mult0|auto_generated|op_1~5\)) # (!\ALU4|Mult0|auto_generated|le5a\(1) & ((!\ALU4|Mult0|auto_generated|op_1~5\) # 
-- (!\ALU4|Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|le5a\(1),
	datab => \ALU4|Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_1~5\,
	combout => \ALU4|Mult0|auto_generated|op_1~6_combout\,
	cout => \ALU4|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X114_Y17_N26
\ALU4|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_1~8_combout\ = ((\ALU4|Mult0|auto_generated|le5a\(2) $ (\ALU4|Mult0|auto_generated|le4a\(4) $ (!\ALU4|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \ALU4|Mult0|auto_generated|op_1~9\ = CARRY((\ALU4|Mult0|auto_generated|le5a\(2) & ((\ALU4|Mult0|auto_generated|le4a\(4)) # (!\ALU4|Mult0|auto_generated|op_1~7\))) # (!\ALU4|Mult0|auto_generated|le5a\(2) & (\ALU4|Mult0|auto_generated|le4a\(4) & 
-- !\ALU4|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|le5a\(2),
	datab => \ALU4|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_1~7\,
	combout => \ALU4|Mult0|auto_generated|op_1~8_combout\,
	cout => \ALU4|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X114_Y17_N28
\ALU4|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_1~10_combout\ = \ALU4|Mult0|auto_generated|le4a\(5) $ (\ALU4|Mult0|auto_generated|op_1~9\ $ (!\ALU4|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|Mult0|auto_generated|le4a\(5),
	datad => \ALU4|Mult0|auto_generated|le5a\(3),
	cin => \ALU4|Mult0|auto_generated|op_1~9\,
	combout => \ALU4|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X112_Y17_N22
\ALU4|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le5a\(0) = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X113_Y17_N12
\ALU4|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~8_combout\ = ((\ALU4|Mult0|auto_generated|le5a\(0) $ (\ALU4|Mult0|auto_generated|op_1~4_combout\ $ (!\ALU4|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \ALU4|Mult0|auto_generated|op_3~9\ = CARRY((\ALU4|Mult0|auto_generated|le5a\(0) & ((\ALU4|Mult0|auto_generated|op_1~4_combout\) # (!\ALU4|Mult0|auto_generated|op_3~7\))) # (!\ALU4|Mult0|auto_generated|le5a\(0) & (\ALU4|Mult0|auto_generated|op_1~4_combout\ 
-- & !\ALU4|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|le5a\(0),
	datab => \ALU4|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_3~7\,
	combout => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	cout => \ALU4|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X113_Y17_N14
\ALU4|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~10_combout\ = (\ALU4|Mult0|auto_generated|op_1~6_combout\ & ((\SW[1]~input_o\ & (\ALU4|Mult0|auto_generated|op_3~9\ & VCC)) # (!\SW[1]~input_o\ & (!\ALU4|Mult0|auto_generated|op_3~9\)))) # 
-- (!\ALU4|Mult0|auto_generated|op_1~6_combout\ & ((\SW[1]~input_o\ & (!\ALU4|Mult0|auto_generated|op_3~9\)) # (!\SW[1]~input_o\ & ((\ALU4|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \ALU4|Mult0|auto_generated|op_3~11\ = CARRY((\ALU4|Mult0|auto_generated|op_1~6_combout\ & (!\SW[1]~input_o\ & !\ALU4|Mult0|auto_generated|op_3~9\)) # (!\ALU4|Mult0|auto_generated|op_1~6_combout\ & ((!\ALU4|Mult0|auto_generated|op_3~9\) # 
-- (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_1~6_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_3~9\,
	combout => \ALU4|Mult0|auto_generated|op_3~10_combout\,
	cout => \ALU4|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X113_Y17_N16
\ALU4|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~12_combout\ = ((\ALU4|Mult0|auto_generated|op_1~8_combout\ $ (\SW[1]~input_o\ $ (!\ALU4|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \ALU4|Mult0|auto_generated|op_3~13\ = CARRY((\ALU4|Mult0|auto_generated|op_1~8_combout\ & ((\SW[1]~input_o\) # (!\ALU4|Mult0|auto_generated|op_3~11\))) # (!\ALU4|Mult0|auto_generated|op_1~8_combout\ & (\SW[1]~input_o\ & 
-- !\ALU4|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_1~8_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_3~11\,
	combout => \ALU4|Mult0|auto_generated|op_3~12_combout\,
	cout => \ALU4|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X113_Y17_N18
\ALU4|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~14_combout\ = \SW[1]~input_o\ $ (\ALU4|Mult0|auto_generated|op_3~13\ $ (!\ALU4|Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \ALU4|Mult0|auto_generated|op_1~10_combout\,
	cin => \ALU4|Mult0|auto_generated|op_3~13\,
	combout => \ALU4|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X114_Y18_N6
\inst5|decOut_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[6]~5_combout\ = (\ALU4|Mult0|auto_generated|op_3~8_combout\ & (!\ALU4|Mult0|auto_generated|op_3~14_combout\ & (\ALU4|Mult0|auto_generated|op_3~10_combout\ $ (!\ALU4|Mult0|auto_generated|op_3~12_combout\)))) # 
-- (!\ALU4|Mult0|auto_generated|op_3~8_combout\ & (!\ALU4|Mult0|auto_generated|op_3~10_combout\ & (\ALU4|Mult0|auto_generated|op_3~14_combout\ $ (!\ALU4|Mult0|auto_generated|op_3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_3~14_combout\,
	datab => \ALU4|Mult0|auto_generated|op_3~10_combout\,
	datac => \ALU4|Mult0|auto_generated|op_3~12_combout\,
	datad => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst5|decOut_n[6]~5_combout\);

-- Location: LCCOMB_X114_Y18_N24
\inst5|decOut_n[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[6]~3_combout\ = (\inst5|decOut_n[6]~5_combout\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \inst5|decOut_n[6]~5_combout\,
	combout => \inst5|decOut_n[6]~3_combout\);

-- Location: LCCOMB_X114_Y18_N26
\inst5|decOut_n[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[6]~32_combout\ = (\SW[10]~input_o\) # ((\inst5|decOut_n[6]~3_combout\) # ((\SW[8]~input_o\) # (!\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst5|decOut_n[6]~3_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst5|decOut_n[6]~32_combout\);

-- Location: LCCOMB_X111_Y19_N12
\ALU4|m[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|m[3]~11_combout\ = (\SW[9]~input_o\ & (!\SW[8]~input_o\ & (\ALU4|Mult0|auto_generated|op_3~14_combout\ & !\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \ALU4|Mult0|auto_generated|op_3~14_combout\,
	datad => \SW[10]~input_o\,
	combout => \ALU4|m[3]~11_combout\);

-- Location: LCCOMB_X111_Y19_N0
\ALU4|m[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|m[1]~9_combout\ = (\ALU4|Mult0|auto_generated|op_3~10_combout\ & (!\SW[8]~input_o\ & (\SW[9]~input_o\ & !\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_3~10_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ALU4|m[1]~9_combout\);

-- Location: LCCOMB_X111_Y19_N2
\ALU4|m[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|m[2]~10_combout\ = (\SW[9]~input_o\ & (!\SW[8]~input_o\ & (\ALU4|Mult0|auto_generated|op_3~12_combout\ & !\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \ALU4|Mult0|auto_generated|op_3~12_combout\,
	datad => \SW[10]~input_o\,
	combout => \ALU4|m[2]~10_combout\);

-- Location: LCCOMB_X111_Y19_N6
\ALU4|m[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|m[0]~8_combout\ = ((\SW[8]~input_o\) # ((\SW[10]~input_o\) # (!\SW[9]~input_o\))) # (!\ALU4|Mult0|auto_generated|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ALU4|m[0]~8_combout\);

-- Location: LCCOMB_X111_Y19_N10
\inst5|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~20_combout\ = (\ALU4|m[3]~11_combout\ & (!\ALU4|m[1]~9_combout\ & (\ALU4|m[2]~10_combout\ & !\ALU4|m[0]~8_combout\))) # (!\ALU4|m[3]~11_combout\ & (!\ALU4|m[2]~10_combout\ & (\ALU4|m[1]~9_combout\ $ (!\ALU4|m[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|m[3]~11_combout\,
	datab => \ALU4|m[1]~9_combout\,
	datac => \ALU4|m[2]~10_combout\,
	datad => \ALU4|m[0]~8_combout\,
	combout => \inst5|decOut_n~20_combout\);

-- Location: LCCOMB_X111_Y19_N8
\ALU4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Equal0~0_combout\ = (\SW[9]~input_o\ & (!\SW[8]~input_o\ & !\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \ALU4|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y19_N28
\inst5|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~21_combout\ = (\ALU4|Mult0|auto_generated|op_3~10_combout\ & (\ALU4|Equal0~0_combout\ & (!\ALU4|Mult0|auto_generated|op_3~14_combout\ & \ALU4|Mult0|auto_generated|op_3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_3~10_combout\,
	datab => \ALU4|Equal0~0_combout\,
	datac => \ALU4|Mult0|auto_generated|op_3~14_combout\,
	datad => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst5|decOut_n~21_combout\);

-- Location: LCCOMB_X111_Y19_N22
\inst5|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~22_combout\ = (\inst5|decOut_n~20_combout\) # ((\inst5|decOut_n~21_combout\) # (!\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n~20_combout\,
	datab => \inst5|decOut_n~21_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst5|decOut_n~22_combout\);

-- Location: LCCOMB_X114_Y18_N10
\inst5|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~23_combout\ = (\ALU4|Mult0|auto_generated|op_3~10_combout\ & (!\ALU4|Mult0|auto_generated|op_3~14_combout\ & ((\ALU4|Mult0|auto_generated|op_3~8_combout\)))) # (!\ALU4|Mult0|auto_generated|op_3~10_combout\ & 
-- ((\ALU4|Mult0|auto_generated|op_3~12_combout\ & (!\ALU4|Mult0|auto_generated|op_3~14_combout\)) # (!\ALU4|Mult0|auto_generated|op_3~12_combout\ & ((\ALU4|Mult0|auto_generated|op_3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_3~14_combout\,
	datab => \ALU4|Mult0|auto_generated|op_3~10_combout\,
	datac => \ALU4|Mult0|auto_generated|op_3~12_combout\,
	datad => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst5|decOut_n~23_combout\);

-- Location: LCCOMB_X114_Y18_N4
\inst5|decOut_n[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[4]~24_combout\ = ((\ALU4|Equal0~0_combout\ & \inst5|decOut_n~23_combout\)) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Equal0~0_combout\,
	datac => \KEY[1]~input_o\,
	datad => \inst5|decOut_n~23_combout\,
	combout => \inst5|decOut_n[4]~24_combout\);

-- Location: LCCOMB_X114_Y18_N12
\inst5|decOut_n[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[3]~15_combout\ = (\ALU4|Mult0|auto_generated|op_3~10_combout\ & ((\ALU4|Mult0|auto_generated|op_3~12_combout\ & ((\ALU4|Mult0|auto_generated|op_3~8_combout\))) # (!\ALU4|Mult0|auto_generated|op_3~12_combout\ & 
-- (\ALU4|Mult0|auto_generated|op_3~14_combout\ & !\ALU4|Mult0|auto_generated|op_3~8_combout\)))) # (!\ALU4|Mult0|auto_generated|op_3~10_combout\ & (!\ALU4|Mult0|auto_generated|op_3~14_combout\ & (\ALU4|Mult0|auto_generated|op_3~12_combout\ $ 
-- (\ALU4|Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_3~14_combout\,
	datab => \ALU4|Mult0|auto_generated|op_3~10_combout\,
	datac => \ALU4|Mult0|auto_generated|op_3~12_combout\,
	datad => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst5|decOut_n[3]~15_combout\);

-- Location: LCCOMB_X114_Y18_N22
\inst5|decOut_n[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[3]~13_combout\ = (\inst5|decOut_n[3]~15_combout\ & !\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n[3]~15_combout\,
	datac => \SW[10]~input_o\,
	combout => \inst5|decOut_n[3]~13_combout\);

-- Location: LCCOMB_X114_Y18_N0
\inst5|decOut_n[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[3]~33_combout\ = ((\inst5|decOut_n[3]~13_combout\ & (!\SW[8]~input_o\ & \SW[9]~input_o\))) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n[3]~13_combout\,
	datab => \SW[8]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst5|decOut_n[3]~33_combout\);

-- Location: LCCOMB_X111_Y19_N16
\inst5|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~25_combout\ = (\ALU4|m[3]~11_combout\ & (\ALU4|m[2]~10_combout\ & ((\ALU4|m[1]~9_combout\) # (\ALU4|m[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|m[3]~11_combout\,
	datab => \ALU4|m[1]~9_combout\,
	datac => \ALU4|m[2]~10_combout\,
	datad => \ALU4|m[0]~8_combout\,
	combout => \inst5|decOut_n~25_combout\);

-- Location: LCCOMB_X111_Y19_N26
\inst5|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~26_combout\ = (!\ALU4|Mult0|auto_generated|op_3~14_combout\ & (\ALU4|m[1]~9_combout\ & (!\ALU4|m[2]~10_combout\ & !\ALU4|Mult0|auto_generated|op_3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_3~14_combout\,
	datab => \ALU4|m[1]~9_combout\,
	datac => \ALU4|m[2]~10_combout\,
	datad => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst5|decOut_n~26_combout\);

-- Location: LCCOMB_X111_Y19_N4
\inst5|decOut_n~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~27_combout\ = (\inst5|decOut_n~25_combout\) # ((\inst5|decOut_n~26_combout\) # (!\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|decOut_n~25_combout\,
	datac => \inst5|decOut_n~26_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst5|decOut_n~27_combout\);

-- Location: LCCOMB_X111_Y19_N30
\inst5|decOut_n~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~28_combout\ = (\ALU4|m[3]~11_combout\ & ((\ALU4|m[1]~9_combout\ & (!\ALU4|m[2]~10_combout\)) # (!\ALU4|m[1]~9_combout\ & (\ALU4|m[2]~10_combout\ & !\ALU4|m[0]~8_combout\)))) # (!\ALU4|m[3]~11_combout\ & (\ALU4|m[2]~10_combout\ & 
-- (\ALU4|m[1]~9_combout\ $ (\ALU4|m[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|m[3]~11_combout\,
	datab => \ALU4|m[1]~9_combout\,
	datac => \ALU4|m[2]~10_combout\,
	datad => \ALU4|m[0]~8_combout\,
	combout => \inst5|decOut_n~28_combout\);

-- Location: LCCOMB_X111_Y19_N24
\inst5|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~29_combout\ = ((\ALU4|m[2]~10_combout\ & ((!\inst5|decOut_n~28_combout\))) # (!\ALU4|m[2]~10_combout\ & (\ALU4|Mult0|auto_generated|op_3~8_combout\ & \inst5|decOut_n~28_combout\))) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	datab => \ALU4|m[2]~10_combout\,
	datac => \inst5|decOut_n~28_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst5|decOut_n~29_combout\);

-- Location: LCCOMB_X111_Y19_N18
\inst5|decOut_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~30_combout\ = (\ALU4|m[3]~11_combout\ & (!\ALU4|m[0]~8_combout\ & (\ALU4|m[1]~9_combout\ $ (\ALU4|m[2]~10_combout\)))) # (!\ALU4|m[3]~11_combout\ & (!\ALU4|m[1]~9_combout\ & (\ALU4|m[2]~10_combout\ $ (!\ALU4|m[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|m[3]~11_combout\,
	datab => \ALU4|m[1]~9_combout\,
	datac => \ALU4|m[2]~10_combout\,
	datad => \ALU4|m[0]~8_combout\,
	combout => \inst5|decOut_n~30_combout\);

-- Location: LCCOMB_X111_Y19_N20
\inst5|decOut_n~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~31_combout\ = (\inst5|decOut_n~30_combout\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|decOut_n~30_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst5|decOut_n~31_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


