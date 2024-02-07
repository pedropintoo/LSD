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

-- DATE "02/28/2023 23:59:59"

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

ENTITY 	ALUDemoSigned IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALUDemoSigned;

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
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUDemoSigned IS
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
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
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
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ : std_logic;
SIGNAL \inst7|s_Unid~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \inst|Add0~7_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13_combout\ : std_logic;
SIGNAL \inst|Add0~15_combout\ : std_logic;
SIGNAL \inst|Add0~11_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Add0~17_combout\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19_combout\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|s_r~0_combout\ : std_logic;
SIGNAL \inst|Add0~21_combout\ : std_logic;
SIGNAL \inst|Add0~23_cout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|cs3a[1]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[0]~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[1]~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[0]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[0]~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[1]~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[2]~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[3]~6_combout\ : std_logic;
SIGNAL \inst|Add0~3_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~33_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[1]~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[2]~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[3]~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[4]~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[3]~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add10_result[2]~4_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[3]~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[4]~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[5]~11\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[6]~12_combout\ : std_logic;
SIGNAL \inst|m[2]~1_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[6]~13\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[7]~14_combout\ : std_logic;
SIGNAL \inst|m[3]~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[5]~10_combout\ : std_logic;
SIGNAL \inst|m[1]~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[4]~8_combout\ : std_logic;
SIGNAL \inst|m[0]~3_combout\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[2]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|diff_signs~combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|quotient[2]~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Add0~35_combout\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|quotient[1]~1_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[1]~2_combout\ : std_logic;
SIGNAL \inst|Add0~37_combout\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~39_combout\ : std_logic;
SIGNAL \inst|Add0~41_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \inst|Mux3~4_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|add6_result[0]~0_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Add0~43_combout\ : std_logic;
SIGNAL \inst5|s_Unid~0_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|s_Unid~1_combout\ : std_logic;
SIGNAL \inst5|Add1~1\ : std_logic;
SIGNAL \inst5|Add1~3\ : std_logic;
SIGNAL \inst5|Add1~5\ : std_logic;
SIGNAL \inst5|Add1~7\ : std_logic;
SIGNAL \inst5|Add1~9\ : std_logic;
SIGNAL \inst5|Add1~11\ : std_logic;
SIGNAL \inst5|Add1~13\ : std_logic;
SIGNAL \inst5|Add1~14_combout\ : std_logic;
SIGNAL \inst5|Add1~12_combout\ : std_logic;
SIGNAL \inst5|Add1~10_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[40]~60_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[39]~62_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[39]~61_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[38]~63_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[37]~65_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[37]~66_combout\ : std_logic;
SIGNAL \inst5|Add1~8_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[36]~68_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[36]~67_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst5|Add1~6_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[45]~75_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[50]~69_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[50]~99_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[49]~109_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[49]~70_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[48]~110_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[48]~71_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[47]~72_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[47]~111_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[46]~74_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[46]~73_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[60]~100_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[60]~77_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[59]~78_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[59]~101_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[58]~79_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[58]~102_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[57]~103_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[57]~80_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[56]~112_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[56]~81_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[55]~82_combout\ : std_logic;
SIGNAL \inst5|Add1~4_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[54]~85_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[65]~113_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[65]~95_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[70]~90_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[69]~105_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[69]~91_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[68]~92_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[68]~106_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[67]~107_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[67]~93_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[66]~108_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[66]~94_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[64]~87_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[64]~86_combout\ : std_logic;
SIGNAL \inst5|Add1~2_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[63]~88_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ : std_logic;
SIGNAL \inst3|decOut_n~7_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ : std_logic;
SIGNAL \inst5|Add1~0_combout\ : std_logic;
SIGNAL \inst3|decOut_n~9_combout\ : std_logic;
SIGNAL \inst3|decOut_n~10_combout\ : std_logic;
SIGNAL \inst5|Add2~0_combout\ : std_logic;
SIGNAL \inst3|decOut_n~4_combout\ : std_logic;
SIGNAL \inst3|decOut_n~5_combout\ : std_logic;
SIGNAL \inst3|decOut_n~6_combout\ : std_logic;
SIGNAL \inst3|decOut_n~8_combout\ : std_logic;
SIGNAL \inst5|Add2~1_combout\ : std_logic;
SIGNAL \inst3|decOut_n~11_combout\ : std_logic;
SIGNAL \inst3|decOut_n~37_combout\ : std_logic;
SIGNAL \inst3|decOut_n~14_combout\ : std_logic;
SIGNAL \inst3|decOut_n~15_combout\ : std_logic;
SIGNAL \inst3|decOut_n~16_combout\ : std_logic;
SIGNAL \inst3|decOut_n~12_combout\ : std_logic;
SIGNAL \inst3|decOut_n~13_combout\ : std_logic;
SIGNAL \inst3|decOut_n~17_combout\ : std_logic;
SIGNAL \inst3|decOut_n~39_combout\ : std_logic;
SIGNAL \inst3|decOut_n~40_combout\ : std_logic;
SIGNAL \inst3|decOut_n~18_combout\ : std_logic;
SIGNAL \inst3|decOut_n~19_combout\ : std_logic;
SIGNAL \inst3|decOut_n~20_combout\ : std_logic;
SIGNAL \inst3|decOut_n~38_combout\ : std_logic;
SIGNAL \inst3|decOut_n~21_combout\ : std_logic;
SIGNAL \inst3|decOut_n~22_combout\ : std_logic;
SIGNAL \inst3|decOut_n~23_combout\ : std_logic;
SIGNAL \inst3|decOut_n~24_combout\ : std_logic;
SIGNAL \inst3|decOut_n~25_combout\ : std_logic;
SIGNAL \inst3|decOut_n~26_combout\ : std_logic;
SIGNAL \inst3|decOut_n~29_combout\ : std_logic;
SIGNAL \inst3|decOut_n~28_combout\ : std_logic;
SIGNAL \inst3|decOut_n~27_combout\ : std_logic;
SIGNAL \inst3|decOut_n~30_combout\ : std_logic;
SIGNAL \inst3|decOut_n~31_combout\ : std_logic;
SIGNAL \inst3|decOut_n~32_combout\ : std_logic;
SIGNAL \inst3|decOut_n~33_combout\ : std_logic;
SIGNAL \inst3|decOut_n~34_combout\ : std_logic;
SIGNAL \inst3|decOut_n~35_combout\ : std_logic;
SIGNAL \inst3|decOut_n~36_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[21]~39_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[20]~40_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[20]~41_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[19]~42_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[19]~66_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[18]~43_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[28]~73_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[27]~46_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[27]~74_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[26]~67_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[26]~47_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[25]~48_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[25]~49_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[24]~50_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[24]~51_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[34]~52_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[34]~68_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[33]~53_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[33]~69_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[32]~75_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[32]~54_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[31]~55_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[40]~70_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[39]~71_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[38]~72_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[38]~61_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[37]~63_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[36]~65_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|StageOut[36]~64_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|_~0_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \inst5|s_Dezen~0_combout\ : std_logic;
SIGNAL \inst5|Add3~0_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|quotient[3]~3_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|quotient[2]~0_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|quotient[1]~1_combout\ : std_logic;
SIGNAL \inst5|Add3~1\ : std_logic;
SIGNAL \inst5|Add3~3\ : std_logic;
SIGNAL \inst5|Add3~5\ : std_logic;
SIGNAL \inst5|Add3~6_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|_~1_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \inst5|Div0|auto_generated|divider|quotient[4]~2_combout\ : std_logic;
SIGNAL \inst5|Add3~7\ : std_logic;
SIGNAL \inst5|Add3~9\ : std_logic;
SIGNAL \inst5|Add3~11\ : std_logic;
SIGNAL \inst5|Add3~12_combout\ : std_logic;
SIGNAL \inst5|Add3~10_combout\ : std_logic;
SIGNAL \inst5|Add3~8_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[45]~55_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[45]~54_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[50]~46_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[49]~47_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[47]~51_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[47]~50_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[46]~53_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[46]~52_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[60]~78_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[60]~56_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[59]~57_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[59]~79_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[58]~58_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[58]~85_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[57]~59_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[56]~60_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[56]~87_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[55]~61_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[55]~62_combout\ : std_logic;
SIGNAL \inst5|Add3~4_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[54]~64_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[54]~63_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[65]~88_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[65]~74_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[64]~65_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[64]~66_combout\ : std_logic;
SIGNAL \inst5|Add3~2_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[63]~67_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[63]~68_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[70]~69_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[70]~80_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[69]~70_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[69]~81_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[68]~82_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[68]~71_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[67]~83_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[67]~72_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[66]~84_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[66]~73_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst5|Add4~2_combout\ : std_logic;
SIGNAL \inst5|Add4~3_combout\ : std_logic;
SIGNAL \inst4|decOut_n~12_combout\ : std_logic;
SIGNAL \inst4|decOut_n~13_combout\ : std_logic;
SIGNAL \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ : std_logic;
SIGNAL \inst5|Add4~4_combout\ : std_logic;
SIGNAL \inst4|decOut_n~40_combout\ : std_logic;
SIGNAL \inst4|decOut_n~14_combout\ : std_logic;
SIGNAL \inst4|decOut_n~15_combout\ : std_logic;
SIGNAL \inst4|decOut_n~16_combout\ : std_logic;
SIGNAL \inst4|decOut_n~17_combout\ : std_logic;
SIGNAL \inst4|decOut_n~18_combout\ : std_logic;
SIGNAL \inst4|decOut_n~19_combout\ : std_logic;
SIGNAL \inst4|decOut_n~41_combout\ : std_logic;
SIGNAL \inst4|decOut_n~20_combout\ : std_logic;
SIGNAL \inst4|decOut_n~42_combout\ : std_logic;
SIGNAL \inst4|decOut_n~22_combout\ : std_logic;
SIGNAL \inst4|decOut_n~21_combout\ : std_logic;
SIGNAL \inst4|decOut_n~23_combout\ : std_logic;
SIGNAL \inst4|decOut_n~48_combout\ : std_logic;
SIGNAL \inst4|decOut_n~49_combout\ : std_logic;
SIGNAL \inst4|decOut_n~25_combout\ : std_logic;
SIGNAL \inst4|decOut_n~24_combout\ : std_logic;
SIGNAL \inst4|decOut_n~26_combout\ : std_logic;
SIGNAL \inst4|decOut_n~27_combout\ : std_logic;
SIGNAL \inst4|decOut_n~29_combout\ : std_logic;
SIGNAL \inst4|decOut_n~30_combout\ : std_logic;
SIGNAL \inst4|decOut_n~28_combout\ : std_logic;
SIGNAL \inst4|decOut_n~43_combout\ : std_logic;
SIGNAL \inst4|decOut_n~46_combout\ : std_logic;
SIGNAL \inst4|decOut_n~47_combout\ : std_logic;
SIGNAL \inst4|decOut_n~32_combout\ : std_logic;
SIGNAL \inst4|decOut_n~31_combout\ : std_logic;
SIGNAL \inst4|decOut_n~33_combout\ : std_logic;
SIGNAL \inst4|decOut_n~34_combout\ : std_logic;
SIGNAL \inst4|decOut_n~35_combout\ : std_logic;
SIGNAL \inst4|decOut_n~36_combout\ : std_logic;
SIGNAL \inst4|decOut_n~45_combout\ : std_logic;
SIGNAL \inst4|decOut_n~38_combout\ : std_logic;
SIGNAL \inst4|decOut_n~44_combout\ : std_logic;
SIGNAL \inst4|decOut_n~37_combout\ : std_logic;
SIGNAL \inst4|decOut_n~39_combout\ : std_logic;
SIGNAL \inst7|Add1~0_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \inst7|s_Unid~1_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ : std_logic;
SIGNAL \inst9|decOut_n~34_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\ : std_logic;
SIGNAL \inst9|decOut_n~19_combout\ : std_logic;
SIGNAL \inst9|decOut_n~20_combout\ : std_logic;
SIGNAL \inst9|decOut_n~18_combout\ : std_logic;
SIGNAL \inst9|decOut_n~21_combout\ : std_logic;
SIGNAL \inst9|decOut_n~36_combout\ : std_logic;
SIGNAL \inst9|decOut_n~22_combout\ : std_logic;
SIGNAL \inst9|decOut_n~35_combout\ : std_logic;
SIGNAL \inst9|decOut_n~37_combout\ : std_logic;
SIGNAL \inst9|decOut_n~24_combout\ : std_logic;
SIGNAL \inst9|decOut_n~25_combout\ : std_logic;
SIGNAL \inst9|decOut_n~26_combout\ : std_logic;
SIGNAL \inst9|decOut_n~23_combout\ : std_logic;
SIGNAL \inst9|decOut_n~27_combout\ : std_logic;
SIGNAL \inst9|decOut_n~38_combout\ : std_logic;
SIGNAL \inst9|decOut_n~28_combout\ : std_logic;
SIGNAL \inst9|decOut_n~29_combout\ : std_logic;
SIGNAL \inst9|decOut_n~30_combout\ : std_logic;
SIGNAL \inst9|decOut_n~31_combout\ : std_logic;
SIGNAL \inst9|decOut_n~32_combout\ : std_logic;
SIGNAL \inst9|decOut_n~39_combout\ : std_logic;
SIGNAL \inst9|decOut_n~33_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst6|Add1~0_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \inst6|s_Unid~0_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ : std_logic;
SIGNAL \inst8|decOut_n~18_combout\ : std_logic;
SIGNAL \inst8|decOut_n~34_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst6|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\ : std_logic;
SIGNAL \inst8|decOut_n~19_combout\ : std_logic;
SIGNAL \inst8|decOut_n~20_combout\ : std_logic;
SIGNAL \inst8|decOut_n~21_combout\ : std_logic;
SIGNAL \inst8|decOut_n~35_combout\ : std_logic;
SIGNAL \inst8|decOut_n~36_combout\ : std_logic;
SIGNAL \inst8|decOut_n~22_combout\ : std_logic;
SIGNAL \inst8|decOut_n~37_combout\ : std_logic;
SIGNAL \inst8|decOut_n~24_combout\ : std_logic;
SIGNAL \inst8|decOut_n~25_combout\ : std_logic;
SIGNAL \inst8|decOut_n~26_combout\ : std_logic;
SIGNAL \inst8|decOut_n~23_combout\ : std_logic;
SIGNAL \inst8|decOut_n~27_combout\ : std_logic;
SIGNAL \inst8|decOut_n~38_combout\ : std_logic;
SIGNAL \inst8|decOut_n~28_combout\ : std_logic;
SIGNAL \inst8|decOut_n~29_combout\ : std_logic;
SIGNAL \inst8|decOut_n~30_combout\ : std_logic;
SIGNAL \inst8|decOut_n~31_combout\ : std_logic;
SIGNAL \inst8|decOut_n~39_combout\ : std_logic;
SIGNAL \inst8|decOut_n~32_combout\ : std_logic;
SIGNAL \inst8|decOut_n~33_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|sel\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|ALT_INV_m[3]~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_decOut_n~11_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_decOut_n~18_combout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_m[3]~0_combout\ <= NOT \inst|m[3]~0_combout\;
\inst3|ALT_INV_decOut_n~11_combout\ <= NOT \inst3|decOut_n~11_combout\;
\inst4|ALT_INV_decOut_n~18_combout\ <= NOT \inst4|decOut_n~18_combout\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
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
	i => \inst3|ALT_INV_decOut_n~11_combout\,
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
	i => \inst3|decOut_n~17_combout\,
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
	i => \inst3|decOut_n~40_combout\,
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
	i => \inst3|decOut_n~20_combout\,
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
	i => \inst3|decOut_n~24_combout\,
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
	i => \inst3|decOut_n~31_combout\,
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
	i => \inst3|decOut_n~36_combout\,
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
	i => \inst4|ALT_INV_decOut_n~18_combout\,
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
	i => \inst4|decOut_n~23_combout\,
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
	i => \inst4|decOut_n~49_combout\,
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
	i => \inst4|decOut_n~27_combout\,
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
	i => \inst4|decOut_n~47_combout\,
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
	i => \inst4|decOut_n~36_combout\,
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
	i => \inst4|decOut_n~39_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_m[3]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|decOut_n~21_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|decOut_n~37_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|decOut_n~24_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|decOut_n~26_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|decOut_n~28_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|decOut_n~31_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|decOut_n~33_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[3]~input_o\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|decOut_n~21_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|decOut_n~37_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|decOut_n~24_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|decOut_n~26_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|decOut_n~28_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|decOut_n~31_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|decOut_n~33_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[7]~input_o\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|m[3]~0_combout\,
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
	i => \inst|m[2]~1_combout\,
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
	i => \inst|m[1]~2_combout\,
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
	i => \inst|m[0]~3_combout\,
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
	i => \inst|Add0~33_combout\,
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
	i => \inst|Add0~35_combout\,
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
	i => \inst|Add0~41_combout\,
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
	i => \inst|Add0~43_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X110_Y15_N18
\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ = (!\SW[1]~input_o\ & (\SW[3]~input_o\ & (!\SW[2]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\);

-- Location: LCCOMB_X109_Y15_N22
\inst7|s_Unid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_Unid~0_combout\ = \SW[2]~input_o\ $ ((((!\SW[1]~input_o\ & !\SW[0]~input_o\)) # (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst7|s_Unid~0_combout\);

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

-- Location: LCCOMB_X109_Y16_N24
\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ = (!\SW[6]~input_o\ & (\SW[7]~input_o\ & (!\SW[5]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\);

-- Location: LCCOMB_X111_Y14_N12
\inst|Mod0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ = ((\SW[2]~input_o\ & ((!\SW[1]~input_o\) # (!\SW[3]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\) # (\SW[1]~input_o\)))) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X111_Y14_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\);

-- Location: LCCOMB_X111_Y14_N18
\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ = \SW[1]~input_o\ $ (((\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\);

-- Location: LCCOMB_X109_Y16_N20
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \SW[6]~input_o\ $ ((((!\SW[5]~input_o\ & !\SW[4]~input_o\)) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Add2~0_combout\);

-- Location: LCCOMB_X108_Y11_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\inst|Add2~0_combout\ $ (GND))) # (!\SW[0]~input_o\ & ((GND) # (!\inst|Add2~0_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((!\inst|Add2~0_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Add2~0_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X108_Y11_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\))) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X108_Y11_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = (\inst7|s_Unid~0_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ $ (GND))) # (!\inst7|s_Unid~0_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ & VCC))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst7|s_Unid~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_Unid~0_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X108_Y11_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X108_Y11_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\)) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datab => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\);

-- Location: LCCOMB_X108_Y11_N20
\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((!\inst|Add2~0_combout\)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & ((!\inst|Add2~0_combout\))) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \inst|Add2~0_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\);

-- Location: LCCOMB_X109_Y14_N24
\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ = \SW[5]~input_o\ $ (((\SW[4]~input_o\ & \SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\);

-- Location: LCCOMB_X108_Y11_N2
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ $ (VCC))) # (!\SW[0]~input_o\ & 
-- ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\) # (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X108_Y11_N4
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\))) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X108_Y11_N6
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\inst7|s_Unid~0_combout\ $ (\inst|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\ $ (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # 
-- (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\inst7|s_Unid~0_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))) # 
-- (!\inst7|s_Unid~0_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_Unid~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X108_Y12_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- !\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\);

-- Location: LCCOMB_X108_Y11_N8
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\ & (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[12]~6_combout\,
	datab => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X108_Y11_N10
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X108_Y11_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[17]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[11]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\);

-- Location: LCCOMB_X108_Y11_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[16]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\);

-- Location: LCCOMB_X108_Y11_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\);

-- Location: LCCOMB_X109_Y11_N10
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[4]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\) # (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X109_Y11_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\))) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X109_Y11_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\inst7|s_Unid~0_combout\ $ (\inst|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\ $ (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # 
-- (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\inst7|s_Unid~0_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))) # 
-- (!\inst7|s_Unid~0_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|s_Unid~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~8_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X109_Y11_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))))) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\))) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X107_Y11_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[18]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\);

-- Location: LCCOMB_X108_Y11_N22
\inst|Mod0|auto_generated|divider|divider|StageOut[18]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\);

-- Location: LCCOMB_X109_Y11_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\) # ((\inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\);

-- Location: LCCOMB_X109_Y11_N20
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X109_Y11_N24
\inst|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~7_combout\ = (\SW[10]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\SW[7]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datac => \SW[10]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \inst|Add0~7_combout\);

-- Location: LCCOMB_X109_Y11_N26
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|Add0~7_combout\) # ((!\SW[10]~input_o\ & (\SW[3]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \inst|Add0~7_combout\,
	combout => \inst|Add0~8_combout\);

-- Location: LCCOMB_X109_Y11_N28
\inst|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~9_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & \SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \SW[10]~input_o\,
	combout => \inst|Add0~9_combout\);

-- Location: LCCOMB_X109_Y11_N6
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|Add0~8_combout\) # ((\inst|Add0~9_combout\ & (\SW[7]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|Add0~9_combout\,
	datac => \SW[7]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\,
	combout => \inst|Add0~10_combout\);

-- Location: LCCOMB_X109_Y14_N10
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (!\SW[10]~input_o\ & \SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[10]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~6_combout\);

-- Location: LCCOMB_X108_Y11_N28
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = \SW[7]~input_o\ $ (((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~5_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~14_combout\);

-- Location: LCCOMB_X109_Y11_N8
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\SW[10]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\SW[7]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datac => \SW[10]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X111_Y14_N10
\inst|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~13_combout\ = (!\SW[10]~input_o\ & (\SW[2]~input_o\ $ (\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	combout => \inst|Add0~13_combout\);

-- Location: LCCOMB_X109_Y11_N30
\inst|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~15_combout\ = (\inst|Add0~12_combout\) # ((\inst|Add0~13_combout\) # ((\inst|Add0~14_combout\ & \inst|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~14_combout\,
	datab => \inst|Add0~9_combout\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|Add0~13_combout\,
	combout => \inst|Add0~15_combout\);

-- Location: LCCOMB_X111_Y14_N16
\inst|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~11_combout\ = (!\SW[10]~input_o\ & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[10]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Add0~11_combout\);

-- Location: LCCOMB_X109_Y11_N0
\inst|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~17_combout\ = (\SW[10]~input_o\ & (((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)))) # (!\SW[10]~input_o\ & (\SW[1]~input_o\ $ ((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \inst|Add0~17_combout\);

-- Location: LCCOMB_X109_Y11_N2
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\SW[10]~input_o\ & (!\inst|Add0~17_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ $ (\SW[7]~input_o\)))) # (!\SW[10]~input_o\ & (((\inst|Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datab => \SW[10]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \inst|Add0~17_combout\,
	combout => \inst|Add0~18_combout\);

-- Location: LCCOMB_X109_Y11_N4
\inst|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~19_combout\ = (\inst|Add0~18_combout\) # ((\inst|Add0~9_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~9_combout\,
	datab => \inst|Add0~18_combout\,
	datac => \SW[7]~input_o\,
	datad => \inst|Add0~9_combout\,
	combout => \inst|Add0~19_combout\);

-- Location: LCCOMB_X109_Y14_N28
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (!\SW[10]~input_o\ & \SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|Add0~16_combout\);

-- Location: LCCOMB_X109_Y14_N30
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\SW[10]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[10]~input_o\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~20_combout\);

-- Location: LCCOMB_X109_Y11_N22
\inst|s_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_r~0_combout\ = \SW[7]~input_o\ $ (((\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\SW[4]~input_o\))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|s_r~0_combout\);

-- Location: LCCOMB_X109_Y14_N8
\inst|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~21_combout\ = (\SW[10]~input_o\ & (((\inst|s_r~0_combout\)))) # (!\SW[10]~input_o\ & (\SW[8]~input_o\ $ (((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst|s_r~0_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Add0~21_combout\);

-- Location: LCCOMB_X109_Y14_N14
\inst|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~23_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => VCC,
	cout => \inst|Add0~23_cout\);

-- Location: LCCOMB_X109_Y14_N16
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|Add0~20_combout\ & ((\inst|Add0~21_combout\ & (\inst|Add0~23_cout\ & VCC)) # (!\inst|Add0~21_combout\ & (!\inst|Add0~23_cout\)))) # (!\inst|Add0~20_combout\ & ((\inst|Add0~21_combout\ & (!\inst|Add0~23_cout\)) # 
-- (!\inst|Add0~21_combout\ & ((\inst|Add0~23_cout\) # (GND)))))
-- \inst|Add0~25\ = CARRY((\inst|Add0~20_combout\ & (!\inst|Add0~21_combout\ & !\inst|Add0~23_cout\)) # (!\inst|Add0~20_combout\ & ((!\inst|Add0~23_cout\) # (!\inst|Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~20_combout\,
	datab => \inst|Add0~21_combout\,
	datad => VCC,
	cin => \inst|Add0~23_cout\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X109_Y14_N18
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = ((\inst|Add0~19_combout\ $ (\inst|Add0~16_combout\ $ (!\inst|Add0~25\)))) # (GND)
-- \inst|Add0~27\ = CARRY((\inst|Add0~19_combout\ & ((\inst|Add0~16_combout\) # (!\inst|Add0~25\))) # (!\inst|Add0~19_combout\ & (\inst|Add0~16_combout\ & !\inst|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~19_combout\,
	datab => \inst|Add0~16_combout\,
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X109_Y14_N20
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|Add0~15_combout\ & ((\inst|Add0~11_combout\ & (\inst|Add0~27\ & VCC)) # (!\inst|Add0~11_combout\ & (!\inst|Add0~27\)))) # (!\inst|Add0~15_combout\ & ((\inst|Add0~11_combout\ & (!\inst|Add0~27\)) # (!\inst|Add0~11_combout\ & 
-- ((\inst|Add0~27\) # (GND)))))
-- \inst|Add0~29\ = CARRY((\inst|Add0~15_combout\ & (!\inst|Add0~11_combout\ & !\inst|Add0~27\)) # (!\inst|Add0~15_combout\ & ((!\inst|Add0~27\) # (!\inst|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~15_combout\,
	datab => \inst|Add0~11_combout\,
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X109_Y14_N22
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = \inst|Add0~10_combout\ $ (\inst|Add0~29\ $ (!\inst|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datad => \inst|Add0~6_combout\,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\);

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

-- Location: LCCOMB_X109_Y15_N16
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (!\SW[9]~input_o\ & ((!\SW[8]~input_o\) # (!\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Add0~32_combout\);

-- Location: LCCOMB_X109_Y15_N12
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\SW[3]~input_o\ & ((!\SW[7]~input_o\) # (!\SW[8]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~44_combout\);

-- Location: LCCOMB_X112_Y15_N12
\inst|Div0|auto_generated|divider|divider|add_sub_0|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\);

-- Location: LCCOMB_X112_Y15_N10
\inst|Div0|auto_generated|divider|divider|sel[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|sel\(0) = (\SW[3]~input_o\ & (((!\SW[0]~input_o\) # (!\SW[1]~input_o\)) # (!\SW[2]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|sel\(0));

-- Location: LCCOMB_X112_Y15_N6
\inst|Div0|auto_generated|divider|divider|sel[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|sel\(1) = (\SW[3]~input_o\ & (((!\SW[1]~input_o\ & !\SW[0]~input_o\)) # (!\SW[2]~input_o\))) # (!\SW[3]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|sel\(1));

-- Location: LCCOMB_X112_Y15_N16
\inst|Div0|auto_generated|divider|divider|StageOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|sel\(1)) # 
-- ((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|sel\(1),
	datab => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datac => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LCCOMB_X109_Y16_N26
\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ = \SW[6]~input_o\ $ (((\SW[7]~input_o\ & ((\SW[5]~input_o\) # (\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\);

-- Location: LCCOMB_X112_Y15_N26
\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & 
-- ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # (!\SW[0]~input_o\)))) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\) # 
-- ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datac => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\);

-- Location: LCCOMB_X110_Y15_N16
\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ = \SW[2]~input_o\ $ (((\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\);

-- Location: LCCOMB_X112_Y15_N4
\inst|Div0|auto_generated|divider|divider|add_sub_1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\);

-- Location: LCCOMB_X112_Y15_N30
\inst|Div0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|sel\(1)) # 
-- (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ $ (\inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|sel\(1),
	datab => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X112_Y15_N8
\inst|Div0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ = \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ $ (((\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & (\SW[0]~input_o\ & 
-- !\inst|Div0|auto_generated|divider|divider|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|sel\(1),
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: LCCOMB_X110_Y15_N4
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ $ (VCC))) # (!\SW[0]~input_o\ & 
-- ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\) # (GND)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X110_Y15_N6
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X110_Y15_N8
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ $ (\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X110_Y15_N10
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X110_Y15_N12
\inst|Div0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\))) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\);

-- Location: LCCOMB_X110_Y15_N14
\inst|Div0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)))) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X110_Y15_N0
\inst|Div0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\)) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X110_Y15_N22
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X110_Y15_N24
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\))) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X110_Y15_N26
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & (\inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X110_Y15_N28
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)) # (!\inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datab => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X110_Y15_N30
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X112_Y15_N18
\inst|Div0|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|op_1~0_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ $ (VCC)
-- \inst|Div0|auto_generated|divider|op_1~1\ = CARRY(\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \inst|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X112_Y15_N20
\inst|Div0|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|op_1~2_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (((!\inst|Div0|auto_generated|divider|op_1~1\)))) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & 
-- ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (!\inst|Div0|auto_generated|divider|op_1~1\)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Div0|auto_generated|divider|op_1~1\) 
-- # (GND)))))
-- \inst|Div0|auto_generated|divider|op_1~3\ = CARRY(((!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)) # (!\inst|Div0|auto_generated|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|op_1~1\,
	combout => \inst|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \inst|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X112_Y15_N22
\inst|Div0|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|op_1~4_combout\ = (\inst|Div0|auto_generated|divider|op_1~3\ & (((\inst|Div0|auto_generated|divider|divider|sel\(1)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))) # 
-- (!\inst|Div0|auto_generated|divider|op_1~3\ & ((((\inst|Div0|auto_generated|divider|divider|sel\(1)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))))
-- \inst|Div0|auto_generated|divider|op_1~5\ = CARRY((!\inst|Div0|auto_generated|divider|op_1~3\ & ((\inst|Div0|auto_generated|divider|divider|sel\(1)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|sel\(1),
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|op_1~3\,
	combout => \inst|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \inst|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X112_Y15_N24
\inst|Div0|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|op_1~6_combout\ = \inst|Div0|auto_generated|divider|op_1~5\ $ (((\inst|Div0|auto_generated|divider|divider|sel\(0)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|sel\(0),
	cin => \inst|Div0|auto_generated|divider|op_1~5\,
	combout => \inst|Div0|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X109_Y16_N2
\inst|Mult0|auto_generated|cs3a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|cs3a[1]~0_combout\ = \SW[1]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|cs3a[1]~0_combout\);

-- Location: LCCOMB_X109_Y16_N0
\inst|Mult0|auto_generated|le2a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(1) = (\SW[4]~input_o\ & (\SW[1]~input_o\ & (\SW[2]~input_o\))) # (!\SW[4]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(1));

-- Location: LCCOMB_X109_Y16_N6
\inst|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(1) = (\inst|Mult0|auto_generated|le2a\(1)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[5]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Mult0|auto_generated|le2a\(1),
	combout => \inst|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X109_Y18_N18
\inst|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(3) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[7]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[6]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X109_Y18_N20
\inst|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(2) = (\SW[0]~input_o\ & ((\SW[6]~input_o\ $ (\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[5]~input_o\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X109_Y18_N22
\inst|Mult0|auto_generated|add10_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[0]~0_combout\ = (\SW[3]~input_o\ & (\inst|Mult0|auto_generated|le5a\(2) $ (VCC))) # (!\SW[3]~input_o\ & (\inst|Mult0|auto_generated|le5a\(2) & VCC))
-- \inst|Mult0|auto_generated|add10_result[0]~1\ = CARRY((\SW[3]~input_o\ & \inst|Mult0|auto_generated|le5a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|add10_result[0]~0_combout\,
	cout => \inst|Mult0|auto_generated|add10_result[0]~1\);

-- Location: LCCOMB_X109_Y18_N24
\inst|Mult0|auto_generated|add10_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[1]~2_combout\ = (\inst|Mult0|auto_generated|le5a\(3) & (!\inst|Mult0|auto_generated|add10_result[0]~1\)) # (!\inst|Mult0|auto_generated|le5a\(3) & ((\inst|Mult0|auto_generated|add10_result[0]~1\) # (GND)))
-- \inst|Mult0|auto_generated|add10_result[1]~3\ = CARRY((!\inst|Mult0|auto_generated|add10_result[0]~1\) # (!\inst|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|le5a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add10_result[0]~1\,
	combout => \inst|Mult0|auto_generated|add10_result[1]~2_combout\,
	cout => \inst|Mult0|auto_generated|add10_result[1]~3\);

-- Location: LCCOMB_X109_Y16_N10
\inst|Mult0|auto_generated|le2a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(0) = (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(0));

-- Location: LCCOMB_X109_Y16_N16
\inst|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(0) = (\inst|Mult0|auto_generated|le2a\(0)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le2a\(0),
	datab => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X109_Y14_N12
\inst|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(1) = (\SW[0]~input_o\ & (\SW[5]~input_o\ $ ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X109_Y14_N6
\inst|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(0) = \SW[1]~input_o\ $ (((\SW[4]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X109_Y18_N2
\inst|Mult0|auto_generated|add6_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[0]~0_combout\ = (\inst|Mult0|auto_generated|le5a\(0) & (\SW[1]~input_o\ $ (VCC))) # (!\inst|Mult0|auto_generated|le5a\(0) & (\SW[1]~input_o\ & VCC))
-- \inst|Mult0|auto_generated|add6_result[0]~1\ = CARRY((\inst|Mult0|auto_generated|le5a\(0) & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le5a\(0),
	datab => \SW[1]~input_o\,
	datad => VCC,
	combout => \inst|Mult0|auto_generated|add6_result[0]~0_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[0]~1\);

-- Location: LCCOMB_X109_Y18_N4
\inst|Mult0|auto_generated|add6_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[1]~2_combout\ = (\inst|Mult0|auto_generated|le5a\(1) & (!\inst|Mult0|auto_generated|add6_result[0]~1\)) # (!\inst|Mult0|auto_generated|le5a\(1) & ((\inst|Mult0|auto_generated|add6_result[0]~1\) # (GND)))
-- \inst|Mult0|auto_generated|add6_result[1]~3\ = CARRY((!\inst|Mult0|auto_generated|add6_result[0]~1\) # (!\inst|Mult0|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[0]~1\,
	combout => \inst|Mult0|auto_generated|add6_result[1]~2_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[1]~3\);

-- Location: LCCOMB_X109_Y18_N6
\inst|Mult0|auto_generated|add6_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[2]~4_combout\ = ((\inst|Mult0|auto_generated|add10_result[0]~0_combout\ $ (\inst|Mult0|auto_generated|le4a\(0) $ (!\inst|Mult0|auto_generated|add6_result[1]~3\)))) # (GND)
-- \inst|Mult0|auto_generated|add6_result[2]~5\ = CARRY((\inst|Mult0|auto_generated|add10_result[0]~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(0)) # (!\inst|Mult0|auto_generated|add6_result[1]~3\))) # 
-- (!\inst|Mult0|auto_generated|add10_result[0]~0_combout\ & (\inst|Mult0|auto_generated|le4a\(0) & !\inst|Mult0|auto_generated|add6_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add10_result[0]~0_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[1]~3\,
	combout => \inst|Mult0|auto_generated|add6_result[2]~4_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[2]~5\);

-- Location: LCCOMB_X109_Y18_N8
\inst|Mult0|auto_generated|add6_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[3]~6_combout\ = (\inst|Mult0|auto_generated|le4a\(1) & ((\inst|Mult0|auto_generated|add10_result[1]~2_combout\ & (\inst|Mult0|auto_generated|add6_result[2]~5\ & VCC)) # 
-- (!\inst|Mult0|auto_generated|add10_result[1]~2_combout\ & (!\inst|Mult0|auto_generated|add6_result[2]~5\)))) # (!\inst|Mult0|auto_generated|le4a\(1) & ((\inst|Mult0|auto_generated|add10_result[1]~2_combout\ & 
-- (!\inst|Mult0|auto_generated|add6_result[2]~5\)) # (!\inst|Mult0|auto_generated|add10_result[1]~2_combout\ & ((\inst|Mult0|auto_generated|add6_result[2]~5\) # (GND)))))
-- \inst|Mult0|auto_generated|add6_result[3]~7\ = CARRY((\inst|Mult0|auto_generated|le4a\(1) & (!\inst|Mult0|auto_generated|add10_result[1]~2_combout\ & !\inst|Mult0|auto_generated|add6_result[2]~5\)) # (!\inst|Mult0|auto_generated|le4a\(1) & 
-- ((!\inst|Mult0|auto_generated|add6_result[2]~5\) # (!\inst|Mult0|auto_generated|add10_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(1),
	datab => \inst|Mult0|auto_generated|add10_result[1]~2_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[2]~5\,
	combout => \inst|Mult0|auto_generated|add6_result[3]~6_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[3]~7\);

-- Location: LCCOMB_X112_Y15_N2
\inst|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~3_combout\ = (\SW[8]~input_o\ & (\inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ & ((!\inst|Div0|auto_generated|divider|divider|sel\(0))))) # (!\SW[8]~input_o\ & (((\inst|Mult0|auto_generated|add6_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[3]~6_combout\,
	datac => \SW[8]~input_o\,
	datad => \inst|Div0|auto_generated|divider|divider|sel\(0),
	combout => \inst|Add0~3_combout\);

-- Location: LCCOMB_X109_Y15_N10
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|Add0~44_combout\ & ((\SW[8]~input_o\ & (\inst|Div0|auto_generated|divider|op_1~6_combout\)) # (!\SW[8]~input_o\ & ((\inst|Add0~3_combout\))))) # (!\inst|Add0~44_combout\ & (((\inst|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~44_combout\,
	datab => \inst|Div0|auto_generated|divider|op_1~6_combout\,
	datac => \inst|Add0~3_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst|Add0~4_combout\);

-- Location: LCCOMB_X109_Y15_N4
\inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~5_combout\ = (\SW[9]~input_o\ & ((\SW[10]~input_o\ & ((\inst|Add0~44_combout\))) # (!\SW[10]~input_o\ & (\inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \SW[9]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \inst|Add0~44_combout\,
	combout => \inst|Add0~5_combout\);

-- Location: LCCOMB_X111_Y14_N0
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (!\SW[10]~input_o\) # (!\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y15_N24
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (!\inst|Mux1~0_combout\ & (\SW[3]~input_o\ & (!\SW[9]~input_o\ & \SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Add0~2_combout\);

-- Location: LCCOMB_X109_Y15_N2
\inst|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~33_combout\ = (\inst|Add0~5_combout\) # ((\inst|Add0~2_combout\) # ((\inst|Add0~30_combout\ & \inst|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~30_combout\,
	datab => \inst|Add0~32_combout\,
	datac => \inst|Add0~5_combout\,
	datad => \inst|Add0~2_combout\,
	combout => \inst|Add0~33_combout\);

-- Location: LCCOMB_X109_Y15_N28
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\SW[10]~input_o\ & (\SW[9]~input_o\ & !\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y18_N0
\inst|Mult0|auto_generated|le5a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(4) = (\SW[7]~input_o\ & (\SW[0]~input_o\ & !\SW[1]~input_o\)) # (!\SW[7]~input_o\ & ((\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(4));

-- Location: LCCOMB_X109_Y18_N26
\inst|Mult0|auto_generated|add10_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[2]~4_combout\ = (\inst|Mult0|auto_generated|le5a\(4) & (\inst|Mult0|auto_generated|add10_result[1]~3\ $ (GND))) # (!\inst|Mult0|auto_generated|le5a\(4) & ((GND) # (!\inst|Mult0|auto_generated|add10_result[1]~3\)))
-- \inst|Mult0|auto_generated|add10_result[2]~5\ = CARRY((!\inst|Mult0|auto_generated|add10_result[1]~3\) # (!\inst|Mult0|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|le5a\(4),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add10_result[1]~3\,
	combout => \inst|Mult0|auto_generated|add10_result[2]~4_combout\,
	cout => \inst|Mult0|auto_generated|add10_result[2]~5\);

-- Location: LCCOMB_X109_Y18_N28
\inst|Mult0|auto_generated|add10_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[3]~6_combout\ = !\inst|Mult0|auto_generated|add10_result[2]~5\
-- \inst|Mult0|auto_generated|add10_result[3]~7\ = CARRY(!\inst|Mult0|auto_generated|add10_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add10_result[2]~5\,
	combout => \inst|Mult0|auto_generated|add10_result[3]~6_combout\,
	cout => \inst|Mult0|auto_generated|add10_result[3]~7\);

-- Location: LCCOMB_X109_Y18_N30
\inst|Mult0|auto_generated|add10_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add10_result[4]~8_combout\ = !\inst|Mult0|auto_generated|add10_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mult0|auto_generated|add10_result[3]~7\,
	combout => \inst|Mult0|auto_generated|add10_result[4]~8_combout\);

-- Location: LCCOMB_X109_Y16_N18
\inst|Mult0|auto_generated|le2a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(4) = (\SW[7]~input_o\ & (\SW[1]~input_o\ & ((\SW[2]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(4));

-- Location: LCCOMB_X109_Y16_N12
\inst|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(4) = (\inst|Mult0|auto_generated|le2a\(4)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|Mult0|auto_generated|le2a\(4),
	datac => \SW[7]~input_o\,
	datad => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \inst|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X109_Y16_N28
\inst|Mult0|auto_generated|le2a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(3) = (\SW[6]~input_o\ & (\SW[2]~input_o\ & ((\SW[1]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(3));

-- Location: LCCOMB_X109_Y16_N14
\inst|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(3) = (\inst|Mult0|auto_generated|le2a\(3)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|Mult0|auto_generated|le2a\(3),
	datac => \SW[7]~input_o\,
	datad => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \inst|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X109_Y16_N30
\inst|Mult0|auto_generated|le2a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le2a\(2) = (\SW[5]~input_o\ & (\SW[2]~input_o\ & ((\SW[1]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le2a\(2));

-- Location: LCCOMB_X109_Y16_N4
\inst|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(2) = (\inst|Mult0|auto_generated|le2a\(2)) # ((\inst|Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le2a\(2),
	datab => \inst|Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X109_Y18_N10
\inst|Mult0|auto_generated|add6_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[4]~8_combout\ = ((\inst|Mult0|auto_generated|add10_result[2]~4_combout\ $ (\inst|Mult0|auto_generated|le4a\(2) $ (!\inst|Mult0|auto_generated|add6_result[3]~7\)))) # (GND)
-- \inst|Mult0|auto_generated|add6_result[4]~9\ = CARRY((\inst|Mult0|auto_generated|add10_result[2]~4_combout\ & ((\inst|Mult0|auto_generated|le4a\(2)) # (!\inst|Mult0|auto_generated|add6_result[3]~7\))) # 
-- (!\inst|Mult0|auto_generated|add10_result[2]~4_combout\ & (\inst|Mult0|auto_generated|le4a\(2) & !\inst|Mult0|auto_generated|add6_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add10_result[2]~4_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[3]~7\,
	combout => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[4]~9\);

-- Location: LCCOMB_X109_Y18_N12
\inst|Mult0|auto_generated|add6_result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[5]~10_combout\ = (\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & (\inst|Mult0|auto_generated|add6_result[4]~9\ & VCC)) # 
-- (!\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & (!\inst|Mult0|auto_generated|add6_result[4]~9\)))) # (!\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & 
-- (!\inst|Mult0|auto_generated|add6_result[4]~9\)) # (!\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & ((\inst|Mult0|auto_generated|add6_result[4]~9\) # (GND)))))
-- \inst|Mult0|auto_generated|add6_result[5]~11\ = CARRY((\inst|Mult0|auto_generated|le4a\(3) & (!\inst|Mult0|auto_generated|add10_result[3]~6_combout\ & !\inst|Mult0|auto_generated|add6_result[4]~9\)) # (!\inst|Mult0|auto_generated|le4a\(3) & 
-- ((!\inst|Mult0|auto_generated|add6_result[4]~9\) # (!\inst|Mult0|auto_generated|add10_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(3),
	datab => \inst|Mult0|auto_generated|add10_result[3]~6_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[4]~9\,
	combout => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[5]~11\);

-- Location: LCCOMB_X109_Y18_N14
\inst|Mult0|auto_generated|add6_result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[6]~12_combout\ = ((\inst|Mult0|auto_generated|add10_result[4]~8_combout\ $ (\inst|Mult0|auto_generated|le4a\(4) $ (\inst|Mult0|auto_generated|add6_result[5]~11\)))) # (GND)
-- \inst|Mult0|auto_generated|add6_result[6]~13\ = CARRY((\inst|Mult0|auto_generated|add10_result[4]~8_combout\ & ((!\inst|Mult0|auto_generated|add6_result[5]~11\) # (!\inst|Mult0|auto_generated|le4a\(4)))) # 
-- (!\inst|Mult0|auto_generated|add10_result[4]~8_combout\ & (!\inst|Mult0|auto_generated|le4a\(4) & !\inst|Mult0|auto_generated|add6_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add10_result[4]~8_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|add6_result[5]~11\,
	combout => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	cout => \inst|Mult0|auto_generated|add6_result[6]~13\);

-- Location: LCCOMB_X96_Y48_N2
\inst|m[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[2]~1_combout\ = (\inst|Equal0~0_combout\ & ((\inst|Mult0|auto_generated|add6_result[6]~12_combout\))) # (!\inst|Equal0~0_combout\ & (\inst|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~33_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Mult0|auto_generated|add6_result[6]~12_combout\,
	combout => \inst|m[2]~1_combout\);

-- Location: LCCOMB_X109_Y18_N16
\inst|Mult0|auto_generated|add6_result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|add6_result[7]~14_combout\ = !\inst|Mult0|auto_generated|add6_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mult0|auto_generated|add6_result[6]~13\,
	combout => \inst|Mult0|auto_generated|add6_result[7]~14_combout\);

-- Location: LCCOMB_X96_Y48_N0
\inst|m[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[3]~0_combout\ = (\inst|Equal0~0_combout\ & ((\inst|Mult0|auto_generated|add6_result[7]~14_combout\))) # (!\inst|Equal0~0_combout\ & (\inst|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~33_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Mult0|auto_generated|add6_result[7]~14_combout\,
	combout => \inst|m[3]~0_combout\);

-- Location: LCCOMB_X96_Y48_N12
\inst|m[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[1]~2_combout\ = (\inst|Equal0~0_combout\ & ((\inst|Mult0|auto_generated|add6_result[5]~10_combout\))) # (!\inst|Equal0~0_combout\ & (\inst|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~33_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \inst|m[1]~2_combout\);

-- Location: LCCOMB_X96_Y48_N14
\inst|m[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[0]~3_combout\ = (\inst|Equal0~0_combout\ & ((\inst|Mult0|auto_generated|add6_result[4]~8_combout\))) # (!\inst|Equal0~0_combout\ & (\inst|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~33_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Mult0|auto_generated|add6_result[4]~8_combout\,
	combout => \inst|m[0]~3_combout\);

-- Location: LCCOMB_X111_Y14_N24
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|Mux1~0_combout\ & (((\inst|Add0~28_combout\)))) # (!\inst|Mux1~0_combout\ & (\SW[2]~input_o\ & ((\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|Mux1~0_combout\,
	datac => \inst|Add0~28_combout\,
	datad => \SW[6]~input_o\,
	combout => \inst|Add0~34_combout\);

-- Location: LCCOMB_X112_Y15_N0
\inst|Div0|auto_generated|divider|diff_signs\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|diff_signs~combout\ = \SW[3]~input_o\ $ (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Div0|auto_generated|divider|diff_signs~combout\);

-- Location: LCCOMB_X112_Y15_N28
\inst|Div0|auto_generated|divider|quotient[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|quotient[2]~0_combout\ = (\inst|Div0|auto_generated|divider|diff_signs~combout\ & (((\inst|Div0|auto_generated|divider|op_1~4_combout\)))) # (!\inst|Div0|auto_generated|divider|diff_signs~combout\ & 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & ((!\inst|Div0|auto_generated|divider|divider|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datab => \inst|Div0|auto_generated|divider|diff_signs~combout\,
	datac => \inst|Div0|auto_generated|divider|op_1~4_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|sel\(1),
	combout => \inst|Div0|auto_generated|divider|quotient[2]~0_combout\);

-- Location: LCCOMB_X111_Y14_N28
\inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\SW[8]~input_o\ & (((\SW[10]~input_o\) # (\inst|Div0|auto_generated|divider|quotient[2]~0_combout\)))) # (!\SW[8]~input_o\ & (\inst|Mult0|auto_generated|add6_result[2]~4_combout\ & (!\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|add6_result[2]~4_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \inst|Div0|auto_generated|divider|quotient[2]~0_combout\,
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X111_Y14_N6
\inst|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = (\SW[10]~input_o\ & ((\SW[2]~input_o\ & ((!\SW[6]~input_o\) # (!\inst|Mux1~1_combout\))) # (!\SW[2]~input_o\ & ((\SW[6]~input_o\))))) # (!\SW[10]~input_o\ & (((\inst|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|Mux1~1_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \inst|Mux1~2_combout\);

-- Location: LCCOMB_X111_Y14_N26
\inst|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~35_combout\ = (\SW[9]~input_o\ & ((\inst|Mux1~2_combout\))) # (!\SW[9]~input_o\ & (\inst|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~34_combout\,
	datac => \SW[9]~input_o\,
	datad => \inst|Mux1~2_combout\,
	combout => \inst|Add0~35_combout\);

-- Location: LCCOMB_X109_Y15_N6
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\SW[10]~input_o\ & (!\SW[9]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Add0~36_combout\);

-- Location: LCCOMB_X112_Y15_N14
\inst|Div0|auto_generated|divider|quotient[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|quotient[1]~1_combout\ = (\inst|Div0|auto_generated|divider|diff_signs~combout\ & (((\inst|Div0|auto_generated|divider|op_1~2_combout\)))) # (!\inst|Div0|auto_generated|divider|diff_signs~combout\ & 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	datab => \inst|Div0|auto_generated|divider|diff_signs~combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \inst|Div0|auto_generated|divider|op_1~2_combout\,
	combout => \inst|Div0|auto_generated|divider|quotient[1]~1_combout\);

-- Location: LCCOMB_X109_Y15_N0
\inst|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~37_combout\ = (\SW[10]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[10]~input_o\ & ((\SW[8]~input_o\ & (\inst|Div0|auto_generated|divider|quotient[1]~1_combout\)) # (!\SW[8]~input_o\ & ((\inst|Mult0|auto_generated|add6_result[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datac => \inst|Mult0|auto_generated|add6_result[1]~2_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst|Add0~37_combout\);

-- Location: LCCOMB_X109_Y15_N26
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\SW[9]~input_o\ & (((\inst|Add0~37_combout\)))) # (!\SW[9]~input_o\ & (\inst|Mux1~0_combout\ & ((\inst|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst|Add0~37_combout\,
	datac => \SW[9]~input_o\,
	datad => \inst|Add0~26_combout\,
	combout => \inst|Add0~38_combout\);

-- Location: LCCOMB_X109_Y15_N14
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|Add0~38_combout\) # ((\inst|Add0~36_combout\ & (\SW[5]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~36_combout\,
	datab => \SW[5]~input_o\,
	datac => \inst|Add0~38_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|Add0~40_combout\);

-- Location: LCCOMB_X109_Y15_N20
\inst|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~39_combout\ = (\SW[5]~input_o\ & ((\SW[1]~input_o\ & (!\inst|Add0~36_combout\)) # (!\SW[1]~input_o\ & ((!\inst|Add0~38_combout\))))) # (!\SW[5]~input_o\ & ((\inst|Add0~38_combout\ $ (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~36_combout\,
	datab => \SW[5]~input_o\,
	datac => \inst|Add0~38_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|Add0~39_combout\);

-- Location: LCCOMB_X109_Y15_N8
\inst|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~41_combout\ = \inst|Add0~40_combout\ $ (((\SW[10]~input_o\ & (\SW[9]~input_o\ & \inst|Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst|Add0~40_combout\,
	datac => \SW[9]~input_o\,
	datad => \inst|Add0~39_combout\,
	combout => \inst|Add0~41_combout\);

-- Location: LCCOMB_X109_Y15_N30
\inst|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~4_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\SW[3]~input_o\ $ (!\SW[7]~input_o\)) # (!\inst|Div0|auto_generated|divider|op_1~0_combout\))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (!\inst|Div0|auto_generated|divider|op_1~0_combout\ & (\SW[3]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datab => \inst|Div0|auto_generated|divider|op_1~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst|Mux3~4_combout\);

-- Location: LCCOMB_X109_Y14_N26
\inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = (\SW[10]~input_o\ & ((\SW[4]~input_o\ & ((!\SW[0]~input_o\) # (!\SW[8]~input_o\))) # (!\SW[4]~input_o\ & ((\SW[0]~input_o\))))) # (!\SW[10]~input_o\ & (\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mux3~2_combout\);

-- Location: LCCOMB_X109_Y14_N4
\inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = (\SW[10]~input_o\ & (((\inst|Mux3~2_combout\)))) # (!\SW[10]~input_o\ & ((\inst|Mux3~2_combout\ & (!\inst|Mux3~4_combout\)) # (!\inst|Mux3~2_combout\ & ((\inst|Mult0|auto_generated|add6_result[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~4_combout\,
	datab => \inst|Mult0|auto_generated|add6_result[0]~0_combout\,
	datac => \SW[10]~input_o\,
	datad => \inst|Mux3~2_combout\,
	combout => \inst|Mux3~3_combout\);

-- Location: LCCOMB_X109_Y14_N0
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\SW[9]~input_o\ & (\inst|Mux3~3_combout\)) # (!\SW[9]~input_o\ & (((\inst|Mux1~0_combout\ & \inst|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst|Mux3~3_combout\,
	datac => \inst|Mux1~0_combout\,
	datad => \inst|Add0~24_combout\,
	combout => \inst|Add0~42_combout\);

-- Location: LCCOMB_X109_Y14_N2
\inst|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~43_combout\ = (\inst|Add0~42_combout\) # ((\inst|Add0~36_combout\ & (\SW[4]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~36_combout\,
	datab => \inst|Add0~42_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Add0~43_combout\);

-- Location: LCCOMB_X96_Y48_N8
\inst5|s_Unid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_Unid~0_combout\ = \inst|Add0~43_combout\ $ (((\inst|Equal0~0_combout\ & ((\inst|Mult0|auto_generated|add6_result[7]~14_combout\))) # (!\inst|Equal0~0_combout\ & (\inst|Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~43_combout\,
	datab => \inst|Add0~33_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Mult0|auto_generated|add6_result[7]~14_combout\,
	combout => \inst5|s_Unid~0_combout\);

-- Location: LCCOMB_X96_Y48_N16
\inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = (\inst5|s_Unid~0_combout\ & (\inst|m[3]~0_combout\ $ (VCC))) # (!\inst5|s_Unid~0_combout\ & (\inst|m[3]~0_combout\ & VCC))
-- \inst5|Add0~1\ = CARRY((\inst5|s_Unid~0_combout\ & \inst|m[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_Unid~0_combout\,
	datab => \inst|m[3]~0_combout\,
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X96_Y48_N18
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|Add0~1\ & (\inst|Add0~41_combout\ $ ((!\inst|m[3]~0_combout\)))) # (!\inst5|Add0~1\ & ((\inst|Add0~41_combout\ $ (\inst|m[3]~0_combout\)) # (GND)))
-- \inst5|Add0~3\ = CARRY((\inst|Add0~41_combout\ $ (!\inst|m[3]~0_combout\)) # (!\inst5|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~41_combout\,
	datab => \inst|m[3]~0_combout\,
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X96_Y48_N20
\inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|Add0~3\ & ((\inst|Add0~35_combout\ $ (\inst|m[3]~0_combout\)))) # (!\inst5|Add0~3\ & (\inst|Add0~35_combout\ $ (\inst|m[3]~0_combout\ $ (VCC))))
-- \inst5|Add0~5\ = CARRY((!\inst5|Add0~3\ & (\inst|Add0~35_combout\ $ (\inst|m[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~35_combout\,
	datab => \inst|m[3]~0_combout\,
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X96_Y48_N22
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|Add0~5\ & (\inst|Add0~33_combout\ $ ((!\inst|m[3]~0_combout\)))) # (!\inst5|Add0~5\ & ((\inst|Add0~33_combout\ $ (\inst|m[3]~0_combout\)) # (GND)))
-- \inst5|Add0~7\ = CARRY((\inst|Add0~33_combout\ $ (!\inst|m[3]~0_combout\)) # (!\inst5|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~33_combout\,
	datab => \inst|m[3]~0_combout\,
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X96_Y48_N24
\inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|Add0~7\ & ((\inst|m[0]~3_combout\ $ (\inst|m[3]~0_combout\)))) # (!\inst5|Add0~7\ & (\inst|m[0]~3_combout\ $ (\inst|m[3]~0_combout\ $ (VCC))))
-- \inst5|Add0~9\ = CARRY((!\inst5|Add0~7\ & (\inst|m[0]~3_combout\ $ (\inst|m[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|m[0]~3_combout\,
	datab => \inst|m[3]~0_combout\,
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X96_Y48_N26
\inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|Add0~9\ & (\inst|m[1]~2_combout\ $ ((!\inst|m[3]~0_combout\)))) # (!\inst5|Add0~9\ & ((\inst|m[1]~2_combout\ $ (\inst|m[3]~0_combout\)) # (GND)))
-- \inst5|Add0~11\ = CARRY((\inst|m[1]~2_combout\ $ (!\inst|m[3]~0_combout\)) # (!\inst5|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|m[1]~2_combout\,
	datab => \inst|m[3]~0_combout\,
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X96_Y48_N28
\inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|Add0~11\ & ((\inst|m[2]~1_combout\ $ (\inst|m[3]~0_combout\)))) # (!\inst5|Add0~11\ & (\inst|m[2]~1_combout\ $ (\inst|m[3]~0_combout\ $ (VCC))))
-- \inst5|Add0~13\ = CARRY((!\inst5|Add0~11\ & (\inst|m[2]~1_combout\ $ (\inst|m[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|m[2]~1_combout\,
	datab => \inst|m[3]~0_combout\,
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X96_Y48_N30
\inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = \inst5|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\);

-- Location: LCCOMB_X95_Y48_N24
\inst5|s_Unid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_Unid~1_combout\ = \inst5|Add0~14_combout\ $ (\inst5|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Add0~0_combout\,
	combout => \inst5|s_Unid~1_combout\);

-- Location: LCCOMB_X95_Y48_N4
\inst5|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~0_combout\ = (\inst5|Add0~14_combout\ & (\inst5|s_Unid~1_combout\ $ (VCC))) # (!\inst5|Add0~14_combout\ & (\inst5|s_Unid~1_combout\ & VCC))
-- \inst5|Add1~1\ = CARRY((\inst5|Add0~14_combout\ & \inst5|s_Unid~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|s_Unid~1_combout\,
	datad => VCC,
	combout => \inst5|Add1~0_combout\,
	cout => \inst5|Add1~1\);

-- Location: LCCOMB_X95_Y48_N6
\inst5|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~2_combout\ = (\inst5|Add1~1\ & (\inst5|Add0~14_combout\ $ ((!\inst5|Add0~2_combout\)))) # (!\inst5|Add1~1\ & ((\inst5|Add0~14_combout\ $ (\inst5|Add0~2_combout\)) # (GND)))
-- \inst5|Add1~3\ = CARRY((\inst5|Add0~14_combout\ $ (!\inst5|Add0~2_combout\)) # (!\inst5|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Add0~2_combout\,
	datad => VCC,
	cin => \inst5|Add1~1\,
	combout => \inst5|Add1~2_combout\,
	cout => \inst5|Add1~3\);

-- Location: LCCOMB_X95_Y48_N8
\inst5|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~4_combout\ = (\inst5|Add1~3\ & ((\inst5|Add0~4_combout\ $ (\inst5|Add0~14_combout\)))) # (!\inst5|Add1~3\ & (\inst5|Add0~4_combout\ $ (\inst5|Add0~14_combout\ $ (VCC))))
-- \inst5|Add1~5\ = CARRY((!\inst5|Add1~3\ & (\inst5|Add0~4_combout\ $ (\inst5|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~4_combout\,
	datab => \inst5|Add0~14_combout\,
	datad => VCC,
	cin => \inst5|Add1~3\,
	combout => \inst5|Add1~4_combout\,
	cout => \inst5|Add1~5\);

-- Location: LCCOMB_X95_Y48_N10
\inst5|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~6_combout\ = (\inst5|Add1~5\ & (\inst5|Add0~14_combout\ $ ((!\inst5|Add0~6_combout\)))) # (!\inst5|Add1~5\ & ((\inst5|Add0~14_combout\ $ (\inst5|Add0~6_combout\)) # (GND)))
-- \inst5|Add1~7\ = CARRY((\inst5|Add0~14_combout\ $ (!\inst5|Add0~6_combout\)) # (!\inst5|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Add0~6_combout\,
	datad => VCC,
	cin => \inst5|Add1~5\,
	combout => \inst5|Add1~6_combout\,
	cout => \inst5|Add1~7\);

-- Location: LCCOMB_X95_Y48_N12
\inst5|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~8_combout\ = (\inst5|Add1~7\ & ((\inst5|Add0~14_combout\ $ (\inst5|Add0~8_combout\)))) # (!\inst5|Add1~7\ & (\inst5|Add0~14_combout\ $ (\inst5|Add0~8_combout\ $ (VCC))))
-- \inst5|Add1~9\ = CARRY((!\inst5|Add1~7\ & (\inst5|Add0~14_combout\ $ (\inst5|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Add0~8_combout\,
	datad => VCC,
	cin => \inst5|Add1~7\,
	combout => \inst5|Add1~8_combout\,
	cout => \inst5|Add1~9\);

-- Location: LCCOMB_X95_Y48_N14
\inst5|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~10_combout\ = (\inst5|Add1~9\ & (\inst5|Add0~14_combout\ $ ((!\inst5|Add0~10_combout\)))) # (!\inst5|Add1~9\ & ((\inst5|Add0~14_combout\ $ (\inst5|Add0~10_combout\)) # (GND)))
-- \inst5|Add1~11\ = CARRY((\inst5|Add0~14_combout\ $ (!\inst5|Add0~10_combout\)) # (!\inst5|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Add0~10_combout\,
	datad => VCC,
	cin => \inst5|Add1~9\,
	combout => \inst5|Add1~10_combout\,
	cout => \inst5|Add1~11\);

-- Location: LCCOMB_X95_Y48_N16
\inst5|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~12_combout\ = (\inst5|Add1~11\ & ((\inst5|Add0~14_combout\ $ (\inst5|Add0~12_combout\)))) # (!\inst5|Add1~11\ & (\inst5|Add0~14_combout\ $ (\inst5|Add0~12_combout\ $ (VCC))))
-- \inst5|Add1~13\ = CARRY((!\inst5|Add1~11\ & (\inst5|Add0~14_combout\ $ (\inst5|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Add0~12_combout\,
	datad => VCC,
	cin => \inst5|Add1~11\,
	combout => \inst5|Add1~12_combout\,
	cout => \inst5|Add1~13\);

-- Location: LCCOMB_X95_Y48_N18
\inst5|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add1~14_combout\ = \inst5|Add1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Add1~13\,
	combout => \inst5|Add1~14_combout\);

-- Location: LCCOMB_X88_Y50_N14
\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \inst5|Add1~10_combout\ $ (VCC)
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\inst5|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add1~10_combout\,
	datad => VCC,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X88_Y50_N16
\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst5|Add1~12_combout\ & (\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\inst5|Add1~12_combout\ & 
-- (!\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst5|Add1~12_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~12_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X88_Y50_N18
\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst5|Add1~14_combout\ & (\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\inst5|Add1~14_combout\ & 
-- (!\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\inst5|Add1~14_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~14_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X88_Y50_N20
\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = !\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY(!\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X88_Y50_N22
\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X87_Y50_N24
\inst5|Mod0|auto_generated|divider|divider|StageOut[40]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[40]~60_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[40]~60_combout\);

-- Location: LCCOMB_X87_Y50_N26
\inst5|Mod0|auto_generated|divider|divider|StageOut[39]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[39]~62_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[39]~62_combout\);

-- Location: LCCOMB_X88_Y50_N0
\inst5|Mod0|auto_generated|divider|divider|StageOut[39]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[39]~61_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst5|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst5|Add1~14_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[39]~61_combout\);

-- Location: LCCOMB_X87_Y50_N28
\inst5|Mod0|auto_generated|divider|divider|StageOut[38]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\);

-- Location: LCCOMB_X88_Y50_N10
\inst5|Mod0|auto_generated|divider|divider|StageOut[38]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[38]~63_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst5|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst5|Add1~12_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[38]~63_combout\);

-- Location: LCCOMB_X88_Y50_N4
\inst5|Mod0|auto_generated|divider|divider|StageOut[37]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[37]~65_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst5|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst5|Add1~10_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[37]~65_combout\);

-- Location: LCCOMB_X87_Y50_N30
\inst5|Mod0|auto_generated|divider|divider|StageOut[37]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[37]~66_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[37]~66_combout\);

-- Location: LCCOMB_X87_Y50_N22
\inst5|Mod0|auto_generated|divider|divider|StageOut[36]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[36]~68_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst5|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst5|Add1~8_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[36]~68_combout\);

-- Location: LCCOMB_X87_Y50_N8
\inst5|Mod0|auto_generated|divider|divider|StageOut[36]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[36]~67_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst5|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst5|Add1~8_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[36]~67_combout\);

-- Location: LCCOMB_X87_Y50_N10
\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst5|Mod0|auto_generated|divider|divider|StageOut[36]~68_combout\) # (\inst5|Mod0|auto_generated|divider|divider|StageOut[36]~67_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst5|Mod0|auto_generated|divider|divider|StageOut[36]~68_combout\) # (\inst5|Mod0|auto_generated|divider|divider|StageOut[36]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[36]~68_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[36]~67_combout\,
	datad => VCC,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X87_Y50_N12
\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[37]~65_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[37]~66_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[37]~65_combout\ & 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[37]~66_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|StageOut[37]~65_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[37]~66_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[37]~65_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[37]~66_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X87_Y50_N14
\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[38]~63_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst5|Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[38]~63_combout\)))))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[38]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[38]~64_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[38]~63_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X87_Y50_N16
\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[39]~62_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[39]~61_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[39]~62_combout\ & 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[39]~61_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|StageOut[39]~62_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[39]~61_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[39]~62_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[39]~61_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X87_Y50_N18
\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[40]~60_combout\ & ((GND) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[40]~60_combout\ & (\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst5|Mod0|auto_generated|divider|divider|StageOut[40]~60_combout\) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[40]~60_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X87_Y50_N20
\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X89_Y50_N30
\inst5|Mod0|auto_generated|divider|divider|StageOut[45]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Add1~6_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\);

-- Location: LCCOMB_X89_Y50_N22
\inst5|Mod0|auto_generated|divider|divider|StageOut[45]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[45]~75_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Add1~6_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[45]~75_combout\);

-- Location: LCCOMB_X89_Y50_N8
\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst5|Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\) # (\inst5|Mod0|auto_generated|divider|divider|StageOut[45]~75_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst5|Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\) # (\inst5|Mod0|auto_generated|divider|divider|StageOut[45]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[45]~75_combout\,
	datad => VCC,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X89_Y50_N24
\inst5|Mod0|auto_generated|divider|divider|StageOut[50]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[50]~69_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[50]~69_combout\);

-- Location: LCCOMB_X88_Y50_N28
\inst5|Mod0|auto_generated|divider|divider|StageOut[50]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[50]~99_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[50]~99_combout\);

-- Location: LCCOMB_X88_Y50_N2
\inst5|Mod0|auto_generated|divider|divider|StageOut[49]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[49]~109_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst5|Add1~14_combout\)) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Add1~14_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[49]~109_combout\);

-- Location: LCCOMB_X88_Y50_N30
\inst5|Mod0|auto_generated|divider|divider|StageOut[49]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[49]~70_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[49]~70_combout\);

-- Location: LCCOMB_X88_Y50_N12
\inst5|Mod0|auto_generated|divider|divider|StageOut[48]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[48]~110_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst5|Add1~12_combout\)) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~12_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[48]~110_combout\);

-- Location: LCCOMB_X89_Y50_N26
\inst5|Mod0|auto_generated|divider|divider|StageOut[48]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[48]~71_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[48]~71_combout\);

-- Location: LCCOMB_X88_Y50_N8
\inst5|Mod0|auto_generated|divider|divider|StageOut[47]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[47]~72_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[47]~72_combout\);

-- Location: LCCOMB_X88_Y50_N6
\inst5|Mod0|auto_generated|divider|divider|StageOut[47]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[47]~111_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\inst5|Add1~10_combout\))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst5|Add1~10_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[47]~111_combout\);

-- Location: LCCOMB_X88_Y50_N26
\inst5|Mod0|auto_generated|divider|divider|StageOut[46]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[46]~74_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[46]~74_combout\);

-- Location: LCCOMB_X89_Y50_N28
\inst5|Mod0|auto_generated|divider|divider|StageOut[46]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[46]~73_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst5|Add1~8_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[46]~73_combout\);

-- Location: LCCOMB_X89_Y50_N10
\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[46]~74_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[46]~73_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[46]~74_combout\ & 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[46]~73_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|StageOut[46]~74_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[46]~73_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[46]~74_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[46]~73_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X89_Y50_N12
\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[47]~72_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[47]~111_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst5|Mod0|auto_generated|divider|divider|StageOut[47]~72_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[47]~111_combout\)))))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[47]~72_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[47]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[47]~72_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[47]~111_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X89_Y50_N14
\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[48]~110_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[48]~71_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[48]~110_combout\ & 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[48]~71_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|StageOut[48]~110_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[48]~71_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[48]~110_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[48]~71_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X89_Y50_N16
\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\inst5|Mod0|auto_generated|divider|divider|StageOut[49]~109_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[49]~70_combout\))))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[49]~109_combout\) # 
-- ((\inst5|Mod0|auto_generated|divider|divider|StageOut[49]~70_combout\) # (GND))))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst5|Mod0|auto_generated|divider|divider|StageOut[49]~109_combout\) # ((\inst5|Mod0|auto_generated|divider|divider|StageOut[49]~70_combout\) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[49]~109_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[49]~70_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X89_Y50_N18
\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[50]~69_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[50]~99_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[50]~69_combout\ & 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[50]~99_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|StageOut[50]~69_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[50]~99_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[50]~69_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[50]~99_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X89_Y50_N20
\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X89_Y50_N2
\inst5|Mod0|auto_generated|divider|divider|StageOut[60]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[60]~100_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[50]~99_combout\) # 
-- ((!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[50]~99_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[60]~100_combout\);

-- Location: LCCOMB_X90_Y50_N8
\inst5|Mod0|auto_generated|divider|divider|StageOut[60]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[60]~77_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[60]~77_combout\);

-- Location: LCCOMB_X89_Y50_N0
\inst5|Mod0|auto_generated|divider|divider|StageOut[59]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[59]~78_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[59]~78_combout\);

-- Location: LCCOMB_X89_Y50_N4
\inst5|Mod0|auto_generated|divider|divider|StageOut[59]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[59]~101_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[49]~109_combout\) # 
-- ((!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[49]~109_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[59]~101_combout\);

-- Location: LCCOMB_X90_Y50_N10
\inst5|Mod0|auto_generated|divider|divider|StageOut[58]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[58]~79_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[58]~79_combout\);

-- Location: LCCOMB_X89_Y50_N6
\inst5|Mod0|auto_generated|divider|divider|StageOut[58]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[58]~102_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[48]~110_combout\) # 
-- ((!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[48]~110_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[58]~102_combout\);

-- Location: LCCOMB_X88_Y50_N24
\inst5|Mod0|auto_generated|divider|divider|StageOut[57]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[57]~103_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[47]~111_combout\) # 
-- ((!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[47]~111_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[57]~103_combout\);

-- Location: LCCOMB_X90_Y50_N4
\inst5|Mod0|auto_generated|divider|divider|StageOut[57]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[57]~80_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[57]~80_combout\);

-- Location: LCCOMB_X87_Y50_N0
\inst5|Mod0|auto_generated|divider|divider|StageOut[56]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[56]~112_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\inst5|Add1~8_combout\))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Add1~8_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[56]~112_combout\);

-- Location: LCCOMB_X91_Y50_N16
\inst5|Mod0|auto_generated|divider|divider|StageOut[56]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[56]~81_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[56]~81_combout\);

-- Location: LCCOMB_X90_Y50_N6
\inst5|Mod0|auto_generated|divider|divider|StageOut[55]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\);

-- Location: LCCOMB_X91_Y50_N18
\inst5|Mod0|auto_generated|divider|divider|StageOut[55]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[55]~82_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Add1~6_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[55]~82_combout\);

-- Location: LCCOMB_X91_Y50_N20
\inst5|Mod0|auto_generated|divider|divider|StageOut[54]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Add1~4_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\);

-- Location: LCCOMB_X91_Y50_N22
\inst5|Mod0|auto_generated|divider|divider|StageOut[54]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[54]~85_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Add1~4_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[54]~85_combout\);

-- Location: LCCOMB_X90_Y50_N14
\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst5|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\) # (\inst5|Mod0|auto_generated|divider|divider|StageOut[54]~85_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst5|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\) # (\inst5|Mod0|auto_generated|divider|divider|StageOut[54]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[54]~85_combout\,
	datad => VCC,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X90_Y50_N16
\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[55]~82_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\ & 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[55]~82_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[55]~82_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[55]~83_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[55]~82_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X90_Y50_N18
\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[56]~112_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[56]~81_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst5|Mod0|auto_generated|divider|divider|StageOut[56]~112_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[56]~81_combout\)))))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[56]~112_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[56]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[56]~112_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[56]~81_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X90_Y50_N20
\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[57]~103_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[57]~80_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[57]~103_combout\ & 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[57]~80_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|StageOut[57]~103_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[57]~80_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[57]~103_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[57]~80_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X90_Y50_N22
\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\inst5|Mod0|auto_generated|divider|divider|StageOut[58]~79_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[58]~102_combout\))))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[58]~79_combout\) # 
-- ((\inst5|Mod0|auto_generated|divider|divider|StageOut[58]~102_combout\) # (GND))))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\inst5|Mod0|auto_generated|divider|divider|StageOut[58]~79_combout\) # ((\inst5|Mod0|auto_generated|divider|divider|StageOut[58]~102_combout\) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[58]~79_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[58]~102_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X90_Y50_N24
\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[59]~78_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[59]~101_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[59]~78_combout\ & 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[59]~101_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|StageOut[59]~78_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[59]~101_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[59]~78_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[59]~101_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X90_Y50_N26
\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\inst5|Mod0|auto_generated|divider|divider|StageOut[60]~100_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[60]~77_combout\))))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[60]~100_combout\) # 
-- ((\inst5|Mod0|auto_generated|divider|divider|StageOut[60]~77_combout\) # (GND))))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\inst5|Mod0|auto_generated|divider|divider|StageOut[60]~100_combout\) # ((\inst5|Mod0|auto_generated|divider|divider|StageOut[60]~77_combout\) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[60]~100_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[60]~77_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X90_Y50_N28
\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X91_Y50_N14
\inst5|Mod0|auto_generated|divider|divider|StageOut[65]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[65]~113_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\inst5|Add1~6_combout\))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Add1~6_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[65]~113_combout\);

-- Location: LCCOMB_X91_Y50_N24
\inst5|Mod0|auto_generated|divider|divider|StageOut[65]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[65]~95_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[65]~95_combout\);

-- Location: LCCOMB_X91_Y50_N0
\inst5|Mod0|auto_generated|divider|divider|StageOut[70]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[70]~90_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[70]~90_combout\);

-- Location: LCCOMB_X90_Y50_N2
\inst5|Mod0|auto_generated|divider|divider|StageOut[70]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[60]~100_combout\) # 
-- ((\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[60]~100_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\);

-- Location: LCCOMB_X90_Y50_N12
\inst5|Mod0|auto_generated|divider|divider|StageOut[69]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[69]~105_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[59]~101_combout\) # 
-- ((\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[59]~101_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[69]~105_combout\);

-- Location: LCCOMB_X90_Y50_N0
\inst5|Mod0|auto_generated|divider|divider|StageOut[69]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[69]~91_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[69]~91_combout\);

-- Location: LCCOMB_X91_Y50_N26
\inst5|Mod0|auto_generated|divider|divider|StageOut[68]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[68]~92_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[68]~92_combout\);

-- Location: LCCOMB_X90_Y50_N30
\inst5|Mod0|auto_generated|divider|divider|StageOut[68]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[68]~106_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[58]~102_combout\) # 
-- ((\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[58]~102_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[68]~106_combout\);

-- Location: LCCOMB_X91_Y50_N10
\inst5|Mod0|auto_generated|divider|divider|StageOut[67]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[67]~107_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[57]~103_combout\) # 
-- ((!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[57]~103_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[67]~107_combout\);

-- Location: LCCOMB_X91_Y50_N28
\inst5|Mod0|auto_generated|divider|divider|StageOut[67]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[67]~93_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[67]~93_combout\);

-- Location: LCCOMB_X91_Y50_N4
\inst5|Mod0|auto_generated|divider|divider|StageOut[66]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[66]~108_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[56]~112_combout\) # 
-- ((!\inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[56]~112_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[66]~108_combout\);

-- Location: LCCOMB_X91_Y50_N30
\inst5|Mod0|auto_generated|divider|divider|StageOut[66]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[66]~94_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[66]~94_combout\);

-- Location: LCCOMB_X91_Y50_N2
\inst5|Mod0|auto_generated|divider|divider|StageOut[64]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[64]~87_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[64]~87_combout\);

-- Location: LCCOMB_X91_Y50_N8
\inst5|Mod0|auto_generated|divider|divider|StageOut[64]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[64]~86_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst5|Add1~4_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[64]~86_combout\);

-- Location: LCCOMB_X91_Y50_N12
\inst5|Mod0|auto_generated|divider|divider|StageOut[63]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[63]~88_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Add1~2_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[63]~88_combout\);

-- Location: LCCOMB_X91_Y50_N6
\inst5|Mod0|auto_generated|divider|divider|StageOut[63]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Add1~2_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\);

-- Location: LCCOMB_X92_Y50_N14
\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\inst5|Mod0|auto_generated|divider|divider|StageOut[63]~88_combout\) # (\inst5|Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\inst5|Mod0|auto_generated|divider|divider|StageOut[63]~88_combout\) # (\inst5|Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[63]~88_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[63]~89_combout\,
	datad => VCC,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X92_Y50_N16
\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[64]~87_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[64]~86_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[64]~87_combout\ & 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[64]~86_combout\)))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|StageOut[64]~87_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[64]~86_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[64]~87_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[64]~86_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X92_Y50_N18
\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[65]~113_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[65]~95_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\inst5|Mod0|auto_generated|divider|divider|StageOut[65]~113_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[65]~95_combout\)))))
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[65]~113_combout\) # 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[65]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[65]~113_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[65]~95_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X92_Y50_N20
\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|StageOut[66]~108_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[66]~94_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[66]~108_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[66]~94_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X92_Y50_N22
\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ = CARRY((\inst5|Mod0|auto_generated|divider|divider|StageOut[67]~107_combout\) # ((\inst5|Mod0|auto_generated|divider|divider|StageOut[67]~93_combout\) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[67]~107_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[67]~93_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\);

-- Location: LCCOMB_X92_Y50_N24
\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|StageOut[68]~92_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[68]~106_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[68]~92_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[68]~106_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\);

-- Location: LCCOMB_X92_Y50_N26
\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\ = CARRY((\inst5|Mod0|auto_generated|divider|divider|StageOut[69]~105_combout\) # ((\inst5|Mod0|auto_generated|divider|divider|StageOut[69]~91_combout\) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[69]~105_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[69]~91_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\);

-- Location: LCCOMB_X92_Y50_N28
\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\ = CARRY((!\inst5|Mod0|auto_generated|divider|divider|StageOut[70]~90_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[70]~90_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[70]~104_combout\,
	datad => VCC,
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\,
	cout => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\);

-- Location: LCCOMB_X92_Y50_N30
\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ = \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\);

-- Location: LCCOMB_X92_Y50_N4
\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[65]~113_combout\) # 
-- ((\inst5|Mod0|auto_generated|divider|divider|StageOut[65]~95_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (((\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[65]~113_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[65]~95_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\);

-- Location: LCCOMB_X92_Y50_N0
\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[64]~86_combout\) # 
-- ((\inst5|Mod0|auto_generated|divider|divider|StageOut[64]~87_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (((\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[64]~86_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|StageOut[64]~87_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\);

-- Location: LCCOMB_X95_Y50_N30
\inst3|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~7_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ $ (\inst5|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	combout => \inst3|decOut_n~7_combout\);

-- Location: LCCOMB_X92_Y50_N2
\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ = (\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\inst5|Add1~2_combout\))) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \inst5|Add1~2_combout\,
	combout => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\);

-- Location: LCCOMB_X95_Y50_N26
\inst3|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~9_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & (((\inst5|Add1~0_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & 
-- ((\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\) # ((!\inst5|Add0~14_combout\ & \inst5|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Add1~0_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	combout => \inst3|decOut_n~9_combout\);

-- Location: LCCOMB_X95_Y50_N4
\inst3|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~10_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & (\inst3|decOut_n~7_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & \inst3|decOut_n~9_combout\))) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & (((!\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & !\inst3|decOut_n~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~7_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datad => \inst3|decOut_n~9_combout\,
	combout => \inst3|decOut_n~10_combout\);

-- Location: LCCOMB_X95_Y50_N16
\inst5|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add2~0_combout\ = ((\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\) # (\inst5|Add1~0_combout\)) # (!\inst5|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datac => \inst5|Add1~0_combout\,
	combout => \inst5|Add2~0_combout\);

-- Location: LCCOMB_X95_Y50_N18
\inst3|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~4_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & (!\inst5|Add0~14_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ $ (!\inst5|Add2~0_combout\)))) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & (\inst5|Add0~14_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ $ (\inst5|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Add2~0_combout\,
	combout => \inst3|decOut_n~4_combout\);

-- Location: LCCOMB_X95_Y51_N24
\inst3|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~5_combout\ = (\inst5|Add1~0_combout\ & \inst3|decOut_n~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~0_combout\,
	datad => \inst3|decOut_n~4_combout\,
	combout => \inst3|decOut_n~5_combout\);

-- Location: LCCOMB_X95_Y50_N28
\inst3|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~6_combout\ = (\inst5|Add0~14_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ $ (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\)) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\))) # (!\inst5|Add0~14_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\) # (\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ $ 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	combout => \inst3|decOut_n~6_combout\);

-- Location: LCCOMB_X95_Y50_N0
\inst3|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~8_combout\ = (\inst5|Add1~0_combout\ & (((\inst3|decOut_n~6_combout\)))) # (!\inst5|Add1~0_combout\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\)) # (!\inst3|decOut_n~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~7_combout\,
	datab => \inst5|Add1~0_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datad => \inst3|decOut_n~6_combout\,
	combout => \inst3|decOut_n~8_combout\);

-- Location: LCCOMB_X95_Y51_N10
\inst5|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add2~1_combout\ = \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ $ (((\inst5|Add0~14_combout\ & \inst5|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Add1~0_combout\,
	combout => \inst5|Add2~1_combout\);

-- Location: LCCOMB_X95_Y51_N20
\inst3|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~11_combout\ = (\inst3|decOut_n~10_combout\ & (\inst3|decOut_n~5_combout\ & ((\inst5|Add2~1_combout\)))) # (!\inst3|decOut_n~10_combout\ & (((\inst3|decOut_n~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~10_combout\,
	datab => \inst3|decOut_n~5_combout\,
	datac => \inst3|decOut_n~8_combout\,
	datad => \inst5|Add2~1_combout\,
	combout => \inst3|decOut_n~11_combout\);

-- Location: LCCOMB_X95_Y50_N2
\inst3|decOut_n~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~37_combout\ = (\inst5|Add1~0_combout\ & (\inst3|decOut_n~4_combout\ & (\inst5|Add0~14_combout\ $ (!\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datac => \inst5|Add1~0_combout\,
	datad => \inst3|decOut_n~4_combout\,
	combout => \inst3|decOut_n~37_combout\);

-- Location: LCCOMB_X92_Y50_N6
\inst3|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~14_combout\ = (!\inst5|Add1~0_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((!\inst5|Add1~2_combout\))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- (!\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \inst5|Add1~2_combout\,
	datad => \inst5|Add1~0_combout\,
	combout => \inst3|decOut_n~14_combout\);

-- Location: LCCOMB_X96_Y50_N12
\inst3|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~15_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (((\inst5|Add0~14_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & ((\inst3|decOut_n~37_combout\) # 
-- ((!\inst3|decOut_n~14_combout\ & !\inst5|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~37_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datac => \inst3|decOut_n~14_combout\,
	datad => \inst5|Add0~14_combout\,
	combout => \inst3|decOut_n~15_combout\);

-- Location: LCCOMB_X96_Y50_N22
\inst3|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~16_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (\inst5|Add1~0_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & !\inst3|decOut_n~15_combout\))) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (((\inst3|decOut_n~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~0_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datad => \inst3|decOut_n~15_combout\,
	combout => \inst3|decOut_n~16_combout\);

-- Location: LCCOMB_X96_Y50_N8
\inst3|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~12_combout\ = (\inst5|Add0~14_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\))) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & (\inst5|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~0_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datad => \inst5|Add0~14_combout\,
	combout => \inst3|decOut_n~12_combout\);

-- Location: LCCOMB_X96_Y50_N2
\inst3|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~13_combout\ = (\inst3|decOut_n~12_combout\) # ((\inst3|decOut_n~37_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & !\inst5|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~37_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datac => \inst3|decOut_n~12_combout\,
	datad => \inst5|Add0~14_combout\,
	combout => \inst3|decOut_n~13_combout\);

-- Location: LCCOMB_X96_Y50_N0
\inst3|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~17_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & ((\inst3|decOut_n~13_combout\))) # (!\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & (\inst3|decOut_n~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~16_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datad => \inst3|decOut_n~13_combout\,
	combout => \inst3|decOut_n~17_combout\);

-- Location: LCCOMB_X95_Y50_N14
\inst3|decOut_n~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~39_combout\ = (\inst5|Add0~14_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\) # ((\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & 
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\)))) # (!\inst5|Add0~14_combout\ & (((!\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & !\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\)) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	combout => \inst3|decOut_n~39_combout\);

-- Location: LCCOMB_X96_Y50_N14
\inst3|decOut_n~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~40_combout\ = (\inst3|decOut_n~39_combout\ & ((\inst5|Add1~0_combout\) # ((\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & !\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~0_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datad => \inst3|decOut_n~39_combout\,
	combout => \inst3|decOut_n~40_combout\);

-- Location: LCCOMB_X95_Y50_N22
\inst3|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~18_combout\ = (\inst5|Add0~14_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ $ 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\)))) # (!\inst5|Add0~14_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & 
-- !\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\)) # (!\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & 
-- \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datad => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	combout => \inst3|decOut_n~18_combout\);

-- Location: LCCOMB_X95_Y50_N24
\inst3|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~19_combout\ = (!\inst3|decOut_n~10_combout\ & ((\inst5|Add1~0_combout\ & ((!\inst3|decOut_n~6_combout\))) # (!\inst5|Add1~0_combout\ & (\inst3|decOut_n~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~18_combout\,
	datab => \inst3|decOut_n~6_combout\,
	datac => \inst3|decOut_n~10_combout\,
	datad => \inst5|Add1~0_combout\,
	combout => \inst3|decOut_n~19_combout\);

-- Location: LCCOMB_X95_Y51_N6
\inst3|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~20_combout\ = (\inst3|decOut_n~19_combout\) # ((\inst3|decOut_n~10_combout\ & (\inst3|decOut_n~5_combout\ & \inst5|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~10_combout\,
	datab => \inst3|decOut_n~5_combout\,
	datac => \inst3|decOut_n~19_combout\,
	datad => \inst5|Add2~1_combout\,
	combout => \inst3|decOut_n~20_combout\);

-- Location: LCCOMB_X95_Y50_N12
\inst3|decOut_n~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~38_combout\ = (\inst3|decOut_n~4_combout\ & ((\inst5|Add0~14_combout\ $ (\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\)) # (!\inst5|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datac => \inst5|Add1~0_combout\,
	datad => \inst3|decOut_n~4_combout\,
	combout => \inst3|decOut_n~38_combout\);

-- Location: LCCOMB_X95_Y50_N10
\inst3|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~21_combout\ = (!\inst5|Add1~0_combout\ & ((\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\)) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & \inst3|decOut_n~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~0_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datad => \inst3|decOut_n~38_combout\,
	combout => \inst3|decOut_n~21_combout\);

-- Location: LCCOMB_X95_Y50_N20
\inst3|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~22_combout\ = (\inst5|Add0~14_combout\ & (\inst3|decOut_n~21_combout\)) # (!\inst5|Add0~14_combout\ & (((\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & \inst3|decOut_n~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~21_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst3|decOut_n~38_combout\,
	combout => \inst3|decOut_n~22_combout\);

-- Location: LCCOMB_X95_Y51_N8
\inst3|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~23_combout\ = (\inst5|Add1~0_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & (\inst5|Add0~14_combout\ & \inst3|decOut_n~4_combout\))) # (!\inst5|Add1~0_combout\ & ((\inst3|decOut_n~4_combout\) # 
-- ((\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & !\inst5|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~0_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst3|decOut_n~4_combout\,
	combout => \inst3|decOut_n~23_combout\);

-- Location: LCCOMB_X95_Y50_N6
\inst3|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~24_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (\inst3|decOut_n~22_combout\)) # (!\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & 
-- (((!\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & \inst3|decOut_n~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datab => \inst3|decOut_n~22_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datad => \inst3|decOut_n~23_combout\,
	combout => \inst3|decOut_n~24_combout\);

-- Location: LCCOMB_X96_Y50_N26
\inst3|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~25_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & ((\inst5|Add1~0_combout\) # (\inst5|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~0_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datad => \inst5|Add0~14_combout\,
	combout => \inst3|decOut_n~25_combout\);

-- Location: LCCOMB_X96_Y50_N4
\inst3|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~26_combout\ = (\inst3|decOut_n~25_combout\) # ((\inst3|decOut_n~38_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & !\inst5|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~38_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datac => \inst3|decOut_n~25_combout\,
	datad => \inst5|Add0~14_combout\,
	combout => \inst3|decOut_n~26_combout\);

-- Location: LCCOMB_X95_Y50_N8
\inst3|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~29_combout\ = (!\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & ((\inst5|Add1~0_combout\) # (\inst3|decOut_n~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add1~0_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datad => \inst3|decOut_n~4_combout\,
	combout => \inst3|decOut_n~29_combout\);

-- Location: LCCOMB_X96_Y50_N30
\inst3|decOut_n~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~28_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (((\inst5|Add0~14_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (\inst3|decOut_n~38_combout\ & 
-- ((\inst3|decOut_n~14_combout\) # (\inst5|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~38_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datac => \inst3|decOut_n~14_combout\,
	datad => \inst5|Add0~14_combout\,
	combout => \inst3|decOut_n~28_combout\);

-- Location: LCCOMB_X92_Y50_N8
\inst3|decOut_n~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~27_combout\ = \inst5|Add1~0_combout\ $ (((\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\inst5|Add1~2_combout\))) # (!\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- (\inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \inst5|Add1~2_combout\,
	datad => \inst5|Add1~0_combout\,
	combout => \inst3|decOut_n~27_combout\);

-- Location: LCCOMB_X96_Y50_N16
\inst3|decOut_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~30_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & ((\inst3|decOut_n~28_combout\ & (\inst3|decOut_n~29_combout\)) # (!\inst3|decOut_n~28_combout\ & ((\inst3|decOut_n~27_combout\))))) # 
-- (!\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (((\inst3|decOut_n~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~29_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datac => \inst3|decOut_n~28_combout\,
	datad => \inst3|decOut_n~27_combout\,
	combout => \inst3|decOut_n~30_combout\);

-- Location: LCCOMB_X96_Y50_N18
\inst3|decOut_n~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~31_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & (\inst3|decOut_n~26_combout\)) # (!\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & ((\inst3|decOut_n~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|decOut_n~26_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datad => \inst3|decOut_n~30_combout\,
	combout => \inst3|decOut_n~31_combout\);

-- Location: LCCOMB_X96_Y50_N20
\inst3|decOut_n~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~32_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (((\inst3|decOut_n~37_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (\inst5|Add1~0_combout\ & 
-- (\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~0_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datad => \inst3|decOut_n~37_combout\,
	combout => \inst3|decOut_n~32_combout\);

-- Location: LCCOMB_X96_Y50_N6
\inst3|decOut_n~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~33_combout\ = (\inst5|Add0~14_combout\ & (!\inst3|decOut_n~27_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\))) # (!\inst5|Add0~14_combout\ & (((\inst3|decOut_n~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~27_combout\,
	datab => \inst5|Add0~14_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datad => \inst3|decOut_n~32_combout\,
	combout => \inst3|decOut_n~33_combout\);

-- Location: LCCOMB_X96_Y50_N24
\inst3|decOut_n~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~34_combout\ = (\inst5|Add1~0_combout\ & (!\inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\ & (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ $ (!\inst5|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add1~0_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[73]~97_combout\,
	datad => \inst5|Add0~14_combout\,
	combout => \inst3|decOut_n~34_combout\);

-- Location: LCCOMB_X96_Y50_N10
\inst3|decOut_n~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~35_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & (((\inst3|decOut_n~14_combout\ & !\inst5|Add0~14_combout\)))) # (!\inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\ & 
-- (\inst3|decOut_n~37_combout\ & ((\inst5|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~37_combout\,
	datab => \inst5|Mod0|auto_generated|divider|divider|StageOut[74]~96_combout\,
	datac => \inst3|decOut_n~14_combout\,
	datad => \inst5|Add0~14_combout\,
	combout => \inst3|decOut_n~35_combout\);

-- Location: LCCOMB_X96_Y50_N28
\inst3|decOut_n~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|decOut_n~36_combout\ = (\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & (\inst3|decOut_n~33_combout\)) # (!\inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\ & (((\inst3|decOut_n~34_combout\) # 
-- (\inst3|decOut_n~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|decOut_n~33_combout\,
	datab => \inst3|decOut_n~34_combout\,
	datac => \inst5|Mod0|auto_generated|divider|divider|StageOut[75]~98_combout\,
	datad => \inst3|decOut_n~35_combout\,
	combout => \inst3|decOut_n~36_combout\);

-- Location: LCCOMB_X95_Y48_N26
\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ = (\inst5|Add0~14_combout\ & (!\inst5|Add0~2_combout\ & (!\inst5|Add0~4_combout\ & !\inst5|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Add0~2_combout\,
	datac => \inst5|Add0~4_combout\,
	datad => \inst5|Add0~0_combout\,
	combout => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\);

-- Location: LCCOMB_X95_Y48_N28
\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ = (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((\inst5|Add0~6_combout\ & (!\inst5|Add0~14_combout\ & \inst5|Add0~8_combout\)) # (!\inst5|Add0~6_combout\ & 
-- (\inst5|Add0~14_combout\ & !\inst5|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datab => \inst5|Add0~6_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Add0~8_combout\,
	combout => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\);

-- Location: LCCOMB_X95_Y48_N22
\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ = (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & ((\inst5|Add0~10_combout\ & (!\inst5|Add0~14_combout\ & \inst5|Add0~12_combout\)) # (!\inst5|Add0~10_combout\ & 
-- (\inst5|Add0~14_combout\ & !\inst5|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~10_combout\,
	datab => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Add0~12_combout\,
	combout => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\);

-- Location: LCCOMB_X96_Y48_N10
\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ = \inst5|Add0~12_combout\ $ (((\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & (\inst5|Add0~10_combout\)) # 
-- (!\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & ((\inst5|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~10_combout\,
	datab => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Add0~12_combout\,
	combout => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\);

-- Location: LCCOMB_X96_Y48_N4
\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ = \inst5|Add0~10_combout\ $ (\inst5|Add0~14_combout\ $ (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~10_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	combout => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\);

-- Location: LCCOMB_X98_Y48_N0
\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ $ (VCC)
-- \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\,
	datad => VCC,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X98_Y48_N2
\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & (\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & (!\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X98_Y48_N4
\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & (\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & (!\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X98_Y48_N6
\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X98_Y48_N10
\inst5|Div0|auto_generated|divider|divider|StageOut[21]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[21]~39_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[21]~39_combout\);

-- Location: LCCOMB_X98_Y48_N16
\inst5|Div0|auto_generated|divider|divider|StageOut[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\ = (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\);

-- Location: LCCOMB_X98_Y48_N12
\inst5|Div0|auto_generated|divider|divider|StageOut[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[20]~40_combout\ = (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[20]~40_combout\);

-- Location: LCCOMB_X98_Y44_N24
\inst5|Div0|auto_generated|divider|divider|StageOut[20]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[20]~41_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[20]~41_combout\);

-- Location: LCCOMB_X98_Y48_N30
\inst5|Div0|auto_generated|divider|divider|StageOut[19]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[19]~42_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[19]~42_combout\);

-- Location: LCCOMB_X96_Y48_N6
\inst5|Div0|auto_generated|divider|divider|StageOut[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[19]~66_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst5|Add0~10_combout\ $ (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ $ 
-- (\inst5|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~10_combout\,
	datab => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[19]~66_combout\);

-- Location: LCCOMB_X95_Y48_N0
\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ = \inst5|Add0~8_combout\ $ (((\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & (\inst5|Add0~6_combout\)) # 
-- (!\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((\inst5|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datab => \inst5|Add0~6_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Add0~8_combout\,
	combout => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\);

-- Location: LCCOMB_X98_Y48_N8
\inst5|Div0|auto_generated|divider|divider|StageOut[18]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[18]~43_combout\ = (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[18]~43_combout\);

-- Location: LCCOMB_X98_Y48_N28
\inst5|Div0|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\ = (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X98_Y48_N18
\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst5|Div0|auto_generated|divider|divider|StageOut[18]~43_combout\) # (\inst5|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\)))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst5|Div0|auto_generated|divider|divider|StageOut[18]~43_combout\) # (\inst5|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[18]~43_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datad => VCC,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X98_Y48_N20
\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst5|Div0|auto_generated|divider|divider|StageOut[19]~42_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[19]~66_combout\)))) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[19]~42_combout\ & 
-- (!\inst5|Div0|auto_generated|divider|divider|StageOut[19]~66_combout\)))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst5|Div0|auto_generated|divider|divider|StageOut[19]~42_combout\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[19]~66_combout\ & 
-- !\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[19]~42_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[19]~66_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X98_Y48_N22
\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst5|Div0|auto_generated|divider|divider|StageOut[20]~40_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[20]~41_combout\)))) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst5|Div0|auto_generated|divider|divider|StageOut[20]~40_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[20]~41_combout\)))))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst5|Div0|auto_generated|divider|divider|StageOut[20]~40_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[20]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[20]~40_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[20]~41_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X98_Y48_N24
\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst5|Div0|auto_generated|divider|divider|StageOut[21]~39_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\)))) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[21]~39_combout\ & 
-- (!\inst5|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\)))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst5|Div0|auto_generated|divider|divider|StageOut[21]~39_combout\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\ & 
-- !\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[21]~39_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[21]~38_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X98_Y48_N26
\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X97_Y48_N0
\inst5|Div0|auto_generated|divider|divider|StageOut[28]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\ = (!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\);

-- Location: LCCOMB_X98_Y48_N14
\inst5|Div0|auto_generated|divider|divider|StageOut[28]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[28]~73_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\)) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[28]~73_combout\);

-- Location: LCCOMB_X98_Y44_N2
\inst5|Div0|auto_generated|divider|divider|StageOut[27]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[27]~46_combout\ = (!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[27]~46_combout\);

-- Location: LCCOMB_X98_Y44_N6
\inst5|Div0|auto_generated|divider|divider|StageOut[27]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[27]~74_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\)) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[27]~74_combout\);

-- Location: LCCOMB_X97_Y48_N6
\inst5|Div0|auto_generated|divider|divider|StageOut[26]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[26]~67_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst5|Div0|auto_generated|divider|divider|StageOut[19]~66_combout\) # 
-- ((!\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[19]~66_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[26]~67_combout\);

-- Location: LCCOMB_X97_Y48_N18
\inst5|Div0|auto_generated|divider|divider|StageOut[26]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[26]~47_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[26]~47_combout\);

-- Location: LCCOMB_X97_Y48_N12
\inst5|Div0|auto_generated|divider|divider|StageOut[25]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[25]~48_combout\ = (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[25]~48_combout\);

-- Location: LCCOMB_X97_Y48_N14
\inst5|Div0|auto_generated|divider|divider|StageOut[25]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[25]~49_combout\ = (!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[25]~49_combout\);

-- Location: LCCOMB_X97_Y48_N16
\inst5|Div0|auto_generated|divider|divider|StageOut[24]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[24]~50_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst5|Add0~6_combout\ $ (\inst5|Add0~14_combout\ $ 
-- (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~6_combout\,
	datab => \inst5|Add0~14_combout\,
	datac => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[24]~50_combout\);

-- Location: LCCOMB_X97_Y48_N2
\inst5|Div0|auto_generated|divider|divider|StageOut[24]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[24]~51_combout\ = (!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst5|Add0~6_combout\ $ (\inst5|Add0~14_combout\ $ 
-- (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~6_combout\,
	datab => \inst5|Add0~14_combout\,
	datac => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[24]~51_combout\);

-- Location: LCCOMB_X97_Y48_N20
\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst5|Div0|auto_generated|divider|divider|StageOut[24]~50_combout\) # (\inst5|Div0|auto_generated|divider|divider|StageOut[24]~51_combout\)))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst5|Div0|auto_generated|divider|divider|StageOut[24]~50_combout\) # (\inst5|Div0|auto_generated|divider|divider|StageOut[24]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[24]~50_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[24]~51_combout\,
	datad => VCC,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X97_Y48_N22
\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst5|Div0|auto_generated|divider|divider|StageOut[25]~48_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[25]~49_combout\)))) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[25]~48_combout\ & 
-- (!\inst5|Div0|auto_generated|divider|divider|StageOut[25]~49_combout\)))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst5|Div0|auto_generated|divider|divider|StageOut[25]~48_combout\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[25]~49_combout\ & 
-- !\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[25]~48_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[25]~49_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X97_Y48_N24
\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst5|Div0|auto_generated|divider|divider|StageOut[26]~67_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[26]~47_combout\)))) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst5|Div0|auto_generated|divider|divider|StageOut[26]~67_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[26]~47_combout\)))))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst5|Div0|auto_generated|divider|divider|StageOut[26]~67_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[26]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[26]~67_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[26]~47_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X97_Y48_N26
\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst5|Div0|auto_generated|divider|divider|StageOut[27]~46_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[27]~74_combout\)))) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[27]~46_combout\ & 
-- (!\inst5|Div0|auto_generated|divider|divider|StageOut[27]~74_combout\)))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst5|Div0|auto_generated|divider|divider|StageOut[27]~46_combout\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[27]~74_combout\ & 
-- !\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[27]~46_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[27]~74_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X97_Y48_N28
\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\inst5|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\) # ((\inst5|Div0|auto_generated|divider|divider|StageOut[28]~73_combout\) # 
-- (!\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[28]~45_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[28]~73_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X97_Y48_N30
\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X97_Y48_N4
\inst5|Div0|auto_generated|divider|divider|StageOut[34]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[34]~52_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[34]~52_combout\);

-- Location: LCCOMB_X98_Y44_N4
\inst5|Div0|auto_generated|divider|divider|StageOut[34]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[34]~68_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst5|Div0|auto_generated|divider|divider|StageOut[27]~74_combout\) # 
-- ((!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[27]~74_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[34]~68_combout\);

-- Location: LCCOMB_X97_Y46_N12
\inst5|Div0|auto_generated|divider|divider|StageOut[33]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[33]~53_combout\ = (!\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[33]~53_combout\);

-- Location: LCCOMB_X97_Y48_N8
\inst5|Div0|auto_generated|divider|divider|StageOut[33]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[33]~69_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst5|Div0|auto_generated|divider|divider|StageOut[26]~67_combout\) # 
-- ((!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|StageOut[26]~67_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[33]~69_combout\);

-- Location: LCCOMB_X97_Y48_N10
\inst5|Div0|auto_generated|divider|divider|StageOut[32]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[32]~75_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\)) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[32]~75_combout\);

-- Location: LCCOMB_X97_Y46_N22
\inst5|Div0|auto_generated|divider|divider|StageOut[32]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[32]~54_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[32]~54_combout\);

-- Location: LCCOMB_X97_Y46_N26
\inst5|Div0|auto_generated|divider|divider|StageOut[31]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\ = (!\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\);

-- Location: LCCOMB_X97_Y46_N24
\inst5|Div0|auto_generated|divider|divider|StageOut[31]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[31]~55_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst5|Add0~14_combout\ $ (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ $ 
-- (\inst5|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst5|Add0~6_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[31]~55_combout\);

-- Location: LCCOMB_X95_Y48_N2
\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\ = \inst5|Add0~4_combout\ $ (((\inst5|Add0~14_combout\ & ((\inst5|Add0~2_combout\) # (\inst5|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Add0~2_combout\,
	datac => \inst5|Add0~4_combout\,
	datad => \inst5|Add0~0_combout\,
	combout => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\);

-- Location: LCCOMB_X97_Y46_N14
\inst5|Div0|auto_generated|divider|divider|StageOut[30]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\ = (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\);

-- Location: LCCOMB_X97_Y46_N20
\inst5|Div0|auto_generated|divider|divider|StageOut[30]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\ = (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\);

-- Location: LCCOMB_X97_Y46_N0
\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst5|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\) # (\inst5|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\)))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst5|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\) # (\inst5|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[30]~58_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[30]~57_combout\,
	datad => VCC,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X97_Y46_N2
\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst5|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[31]~55_combout\)))) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\ & 
-- (!\inst5|Div0|auto_generated|divider|divider|StageOut[31]~55_combout\)))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst5|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[31]~55_combout\ & 
-- !\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[31]~56_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[31]~55_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X97_Y46_N4
\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst5|Div0|auto_generated|divider|divider|StageOut[32]~75_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[32]~54_combout\)))) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst5|Div0|auto_generated|divider|divider|StageOut[32]~75_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[32]~54_combout\)))))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst5|Div0|auto_generated|divider|divider|StageOut[32]~75_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[32]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[32]~75_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[32]~54_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X97_Y46_N6
\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst5|Div0|auto_generated|divider|divider|StageOut[33]~53_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[33]~69_combout\)))) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[33]~53_combout\ & 
-- (!\inst5|Div0|auto_generated|divider|divider|StageOut[33]~69_combout\)))
-- \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst5|Div0|auto_generated|divider|divider|StageOut[33]~53_combout\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[33]~69_combout\ & 
-- !\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[33]~53_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[33]~69_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X97_Y46_N8
\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\inst5|Div0|auto_generated|divider|divider|StageOut[34]~52_combout\) # ((\inst5|Div0|auto_generated|divider|divider|StageOut[34]~68_combout\) # 
-- (!\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[34]~52_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[34]~68_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X97_Y46_N10
\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\);

-- Location: LCCOMB_X97_Y46_N16
\inst5|Div0|auto_generated|divider|divider|StageOut[40]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\);

-- Location: LCCOMB_X97_Y46_N18
\inst5|Div0|auto_generated|divider|divider|StageOut[40]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[40]~70_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\inst5|Div0|auto_generated|divider|divider|StageOut[33]~69_combout\) # 
-- ((\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[33]~69_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[40]~70_combout\);

-- Location: LCCOMB_X97_Y46_N28
\inst5|Div0|auto_generated|divider|divider|StageOut[39]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[39]~71_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\inst5|Div0|auto_generated|divider|divider|StageOut[32]~75_combout\) # 
-- ((\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[32]~75_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[39]~71_combout\);

-- Location: LCCOMB_X98_Y46_N0
\inst5|Div0|auto_generated|divider|divider|StageOut[39]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\);

-- Location: LCCOMB_X97_Y46_N30
\inst5|Div0|auto_generated|divider|divider|StageOut[38]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[38]~72_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\inst5|Div0|auto_generated|divider|divider|StageOut[31]~55_combout\) # 
-- ((\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[31]~55_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[38]~72_combout\);

-- Location: LCCOMB_X98_Y46_N2
\inst5|Div0|auto_generated|divider|divider|StageOut[38]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[38]~61_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[38]~61_combout\);

-- Location: LCCOMB_X98_Y46_N30
\inst5|Div0|auto_generated|divider|divider|StageOut[37]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[37]~63_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[37]~63_combout\);

-- Location: LCCOMB_X98_Y46_N28
\inst5|Div0|auto_generated|divider|divider|StageOut[37]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ = (\inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\ & \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\);

-- Location: LCCOMB_X98_Y46_N10
\inst5|Div0|auto_generated|divider|divider|StageOut[36]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[36]~65_combout\ = (!\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\inst5|Add0~2_combout\ $ (((\inst5|Add0~0_combout\ & \inst5|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~2_combout\,
	datab => \inst5|Add0~0_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[36]~65_combout\);

-- Location: LCCOMB_X98_Y46_N8
\inst5|Div0|auto_generated|divider|divider|StageOut[36]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|StageOut[36]~64_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\inst5|Add0~2_combout\ $ (((\inst5|Add0~0_combout\ & \inst5|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~2_combout\,
	datab => \inst5|Add0~0_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|divider|StageOut[36]~64_combout\);

-- Location: LCCOMB_X98_Y46_N16
\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst5|Div0|auto_generated|divider|divider|StageOut[36]~65_combout\) # (\inst5|Div0|auto_generated|divider|divider|StageOut[36]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[36]~65_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[36]~64_combout\,
	datad => VCC,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X98_Y46_N18
\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst5|Div0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ & 
-- !\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[37]~62_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X98_Y46_N20
\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst5|Div0|auto_generated|divider|divider|StageOut[38]~72_combout\) # 
-- (\inst5|Div0|auto_generated|divider|divider|StageOut[38]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[38]~72_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[38]~61_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X98_Y46_N22
\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst5|Div0|auto_generated|divider|divider|StageOut[39]~71_combout\ & (!\inst5|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ & 
-- !\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[39]~71_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[39]~60_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X98_Y46_N24
\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst5|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\) # ((\inst5|Div0|auto_generated|divider|divider|StageOut[40]~70_combout\) # 
-- (!\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|StageOut[40]~59_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|StageOut[40]~70_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X98_Y46_N26
\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = !\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	combout => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\);

-- Location: LCCOMB_X98_Y44_N8
\inst5|Div0|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|op_1~0_combout\ = \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ $ (VCC)
-- \inst5|Div0|auto_generated|divider|op_1~1\ = CARRY(\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => VCC,
	combout => \inst5|Div0|auto_generated|divider|op_1~0_combout\,
	cout => \inst5|Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X98_Y44_N10
\inst5|Div0|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|op_1~2_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (!\inst5|Div0|auto_generated|divider|op_1~1\)) # 
-- (!\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\inst5|Div0|auto_generated|divider|op_1~1\) # (GND)))
-- \inst5|Div0|auto_generated|divider|op_1~3\ = CARRY((!\inst5|Div0|auto_generated|divider|op_1~1\) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|op_1~1\,
	combout => \inst5|Div0|auto_generated|divider|op_1~2_combout\,
	cout => \inst5|Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X98_Y44_N12
\inst5|Div0|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|op_1~4_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst5|Div0|auto_generated|divider|op_1~3\ $ (GND))) # 
-- (!\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (!\inst5|Div0|auto_generated|divider|op_1~3\ & VCC))
-- \inst5|Div0|auto_generated|divider|op_1~5\ = CARRY((\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\inst5|Div0|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|op_1~3\,
	combout => \inst5|Div0|auto_generated|divider|op_1~4_combout\,
	cout => \inst5|Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X98_Y44_N14
\inst5|Div0|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|op_1~6_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst5|Div0|auto_generated|divider|op_1~5\)) # 
-- (!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst5|Div0|auto_generated|divider|op_1~5\) # (GND)))
-- \inst5|Div0|auto_generated|divider|op_1~7\ = CARRY((!\inst5|Div0|auto_generated|divider|op_1~5\) # (!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|op_1~5\,
	combout => \inst5|Div0|auto_generated|divider|op_1~6_combout\,
	cout => \inst5|Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X98_Y44_N16
\inst5|Div0|auto_generated|divider|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|op_1~8_combout\ = (\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst5|Div0|auto_generated|divider|op_1~7\ $ (GND))) # 
-- (!\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst5|Div0|auto_generated|divider|op_1~7\ & VCC))
-- \inst5|Div0|auto_generated|divider|op_1~9\ = CARRY((\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst5|Div0|auto_generated|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|op_1~7\,
	combout => \inst5|Div0|auto_generated|divider|op_1~8_combout\,
	cout => \inst5|Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X98_Y44_N18
\inst5|Div0|auto_generated|divider|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|op_1~10_combout\ = !\inst5|Div0|auto_generated|divider|op_1~9\
-- \inst5|Div0|auto_generated|divider|op_1~11\ = CARRY(!\inst5|Div0|auto_generated|divider|op_1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst5|Div0|auto_generated|divider|op_1~9\,
	combout => \inst5|Div0|auto_generated|divider|op_1~10_combout\,
	cout => \inst5|Div0|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X98_Y44_N20
\inst5|Div0|auto_generated|divider|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|op_1~12_combout\ = \inst5|Div0|auto_generated|divider|op_1~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Div0|auto_generated|divider|op_1~11\,
	combout => \inst5|Div0|auto_generated|divider|op_1~12_combout\);

-- Location: LCCOMB_X100_Y42_N24
\inst5|Div0|auto_generated|divider|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|_~0_combout\ = (\inst5|Add0~14_combout\ & \inst5|Div0|auto_generated|divider|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~14_combout\,
	datad => \inst5|Div0|auto_generated|divider|op_1~12_combout\,
	combout => \inst5|Div0|auto_generated|divider|_~0_combout\);

-- Location: LCCOMB_X98_Y44_N28
\inst5|s_Dezen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_Dezen~0_combout\ = (\inst5|Add0~14_combout\ & (\inst5|Div0|auto_generated|divider|op_1~0_combout\ $ (((\inst5|Div0|auto_generated|divider|op_1~12_combout\))))) # (!\inst5|Add0~14_combout\ & 
-- (((!\inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Div0|auto_generated|divider|op_1~0_combout\,
	datac => \inst5|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \inst5|Div0|auto_generated|divider|op_1~12_combout\,
	combout => \inst5|s_Dezen~0_combout\);

-- Location: LCCOMB_X98_Y42_N18
\inst5|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~0_combout\ = (\inst5|Div0|auto_generated|divider|_~0_combout\ & (\inst5|s_Dezen~0_combout\ $ (VCC))) # (!\inst5|Div0|auto_generated|divider|_~0_combout\ & (\inst5|s_Dezen~0_combout\ & VCC))
-- \inst5|Add3~1\ = CARRY((\inst5|Div0|auto_generated|divider|_~0_combout\ & \inst5|s_Dezen~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datab => \inst5|s_Dezen~0_combout\,
	datad => VCC,
	combout => \inst5|Add3~0_combout\,
	cout => \inst5|Add3~1\);

-- Location: LCCOMB_X98_Y44_N26
\inst5|Div0|auto_generated|divider|quotient[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|quotient[3]~3_combout\ = (\inst5|Add0~14_combout\ & (\inst5|Div0|auto_generated|divider|op_1~6_combout\)) # (!\inst5|Add0~14_combout\ & ((!\inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datac => \inst5|Div0|auto_generated|divider|op_1~6_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst5|Div0|auto_generated|divider|quotient[3]~3_combout\);

-- Location: LCCOMB_X98_Y44_N22
\inst5|Div0|auto_generated|divider|quotient[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|quotient[2]~0_combout\ = (\inst5|Add0~14_combout\ & ((\inst5|Div0|auto_generated|divider|op_1~4_combout\))) # (!\inst5|Add0~14_combout\ & (!\inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst5|Div0|auto_generated|divider|op_1~4_combout\,
	combout => \inst5|Div0|auto_generated|divider|quotient[2]~0_combout\);

-- Location: LCCOMB_X98_Y44_N30
\inst5|Div0|auto_generated|divider|quotient[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|quotient[1]~1_combout\ = (\inst5|Add0~14_combout\ & ((\inst5|Div0|auto_generated|divider|op_1~2_combout\))) # (!\inst5|Add0~14_combout\ & (!\inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \inst5|Div0|auto_generated|divider|op_1~2_combout\,
	combout => \inst5|Div0|auto_generated|divider|quotient[1]~1_combout\);

-- Location: LCCOMB_X98_Y42_N20
\inst5|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~2_combout\ = (\inst5|Add3~1\ & (\inst5|Div0|auto_generated|divider|_~0_combout\ $ ((!\inst5|Div0|auto_generated|divider|quotient[1]~1_combout\)))) # (!\inst5|Add3~1\ & ((\inst5|Div0|auto_generated|divider|_~0_combout\ $ 
-- (\inst5|Div0|auto_generated|divider|quotient[1]~1_combout\)) # (GND)))
-- \inst5|Add3~3\ = CARRY((\inst5|Div0|auto_generated|divider|_~0_combout\ $ (!\inst5|Div0|auto_generated|divider|quotient[1]~1_combout\)) # (!\inst5|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datab => \inst5|Div0|auto_generated|divider|quotient[1]~1_combout\,
	datad => VCC,
	cin => \inst5|Add3~1\,
	combout => \inst5|Add3~2_combout\,
	cout => \inst5|Add3~3\);

-- Location: LCCOMB_X98_Y42_N22
\inst5|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~4_combout\ = (\inst5|Add3~3\ & ((\inst5|Div0|auto_generated|divider|_~0_combout\ $ (\inst5|Div0|auto_generated|divider|quotient[2]~0_combout\)))) # (!\inst5|Add3~3\ & (\inst5|Div0|auto_generated|divider|_~0_combout\ $ 
-- (\inst5|Div0|auto_generated|divider|quotient[2]~0_combout\ $ (VCC))))
-- \inst5|Add3~5\ = CARRY((!\inst5|Add3~3\ & (\inst5|Div0|auto_generated|divider|_~0_combout\ $ (\inst5|Div0|auto_generated|divider|quotient[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datab => \inst5|Div0|auto_generated|divider|quotient[2]~0_combout\,
	datad => VCC,
	cin => \inst5|Add3~3\,
	combout => \inst5|Add3~4_combout\,
	cout => \inst5|Add3~5\);

-- Location: LCCOMB_X98_Y42_N24
\inst5|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~6_combout\ = (\inst5|Add3~5\ & (\inst5|Div0|auto_generated|divider|_~0_combout\ $ ((!\inst5|Div0|auto_generated|divider|quotient[3]~3_combout\)))) # (!\inst5|Add3~5\ & ((\inst5|Div0|auto_generated|divider|_~0_combout\ $ 
-- (\inst5|Div0|auto_generated|divider|quotient[3]~3_combout\)) # (GND)))
-- \inst5|Add3~7\ = CARRY((\inst5|Div0|auto_generated|divider|_~0_combout\ $ (!\inst5|Div0|auto_generated|divider|quotient[3]~3_combout\)) # (!\inst5|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datab => \inst5|Div0|auto_generated|divider|quotient[3]~3_combout\,
	datad => VCC,
	cin => \inst5|Add3~5\,
	combout => \inst5|Add3~6_combout\,
	cout => \inst5|Add3~7\);

-- Location: LCCOMB_X99_Y42_N0
\inst5|Div0|auto_generated|divider|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|_~1_combout\ = (\inst5|Add0~14_combout\ & \inst5|Div0|auto_generated|divider|op_1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~14_combout\,
	datac => \inst5|Div0|auto_generated|divider|op_1~10_combout\,
	combout => \inst5|Div0|auto_generated|divider|_~1_combout\);

-- Location: LCCOMB_X98_Y44_N0
\inst5|Div0|auto_generated|divider|quotient[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Div0|auto_generated|divider|quotient[4]~2_combout\ = (\inst5|Add0~14_combout\ & (\inst5|Div0|auto_generated|divider|op_1~8_combout\)) # (!\inst5|Add0~14_combout\ & ((!\inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Div0|auto_generated|divider|op_1~8_combout\,
	datad => \inst5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst5|Div0|auto_generated|divider|quotient[4]~2_combout\);

-- Location: LCCOMB_X98_Y42_N26
\inst5|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~8_combout\ = (\inst5|Add3~7\ & ((\inst5|Div0|auto_generated|divider|_~0_combout\ $ (\inst5|Div0|auto_generated|divider|quotient[4]~2_combout\)))) # (!\inst5|Add3~7\ & (\inst5|Div0|auto_generated|divider|_~0_combout\ $ 
-- (\inst5|Div0|auto_generated|divider|quotient[4]~2_combout\ $ (VCC))))
-- \inst5|Add3~9\ = CARRY((!\inst5|Add3~7\ & (\inst5|Div0|auto_generated|divider|_~0_combout\ $ (\inst5|Div0|auto_generated|divider|quotient[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datab => \inst5|Div0|auto_generated|divider|quotient[4]~2_combout\,
	datad => VCC,
	cin => \inst5|Add3~7\,
	combout => \inst5|Add3~8_combout\,
	cout => \inst5|Add3~9\);

-- Location: LCCOMB_X98_Y42_N28
\inst5|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~10_combout\ = (\inst5|Add3~9\ & (\inst5|Div0|auto_generated|divider|_~0_combout\ $ ((!\inst5|Div0|auto_generated|divider|_~1_combout\)))) # (!\inst5|Add3~9\ & ((\inst5|Div0|auto_generated|divider|_~0_combout\ $ 
-- (\inst5|Div0|auto_generated|divider|_~1_combout\)) # (GND)))
-- \inst5|Add3~11\ = CARRY((\inst5|Div0|auto_generated|divider|_~0_combout\ $ (!\inst5|Div0|auto_generated|divider|_~1_combout\)) # (!\inst5|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datab => \inst5|Div0|auto_generated|divider|_~1_combout\,
	datad => VCC,
	cin => \inst5|Add3~9\,
	combout => \inst5|Add3~10_combout\,
	cout => \inst5|Add3~11\);

-- Location: LCCOMB_X98_Y42_N30
\inst5|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add3~12_combout\ = !\inst5|Add3~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Add3~11\,
	combout => \inst5|Add3~12_combout\);

-- Location: LCCOMB_X98_Y40_N6
\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \inst5|Add3~8_combout\ $ (VCC)
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\inst5|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~8_combout\,
	datad => VCC,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X98_Y40_N8
\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst5|Add3~10_combout\ & (\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!\inst5|Add3~10_combout\ & 
-- (!\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst5|Add3~10_combout\ & !\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~10_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X98_Y40_N10
\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst5|Add3~12_combout\ & (\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!\inst5|Add3~12_combout\ & 
-- (!\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\inst5|Add3~12_combout\ & !\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add3~12_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X98_Y40_N12
\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = !\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY(!\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X98_Y40_N14
\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY(!\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X98_Y40_N16
\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X97_Y40_N0
\inst5|Mod1|auto_generated|divider|divider|StageOut[45]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[45]~55_combout\ = (\inst5|Add3~6_combout\ & !\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add3~6_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[45]~55_combout\);

-- Location: LCCOMB_X97_Y40_N8
\inst5|Mod1|auto_generated|divider|divider|StageOut[45]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[45]~54_combout\ = (\inst5|Add3~6_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add3~6_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[45]~54_combout\);

-- Location: LCCOMB_X97_Y40_N10
\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst5|Mod1|auto_generated|divider|divider|StageOut[45]~55_combout\) # (\inst5|Mod1|auto_generated|divider|divider|StageOut[45]~54_combout\)))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst5|Mod1|auto_generated|divider|divider|StageOut[45]~55_combout\) # (\inst5|Mod1|auto_generated|divider|divider|StageOut[45]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[45]~55_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[45]~54_combout\,
	datad => VCC,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X97_Y40_N24
\inst5|Mod1|auto_generated|divider|divider|StageOut[50]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[50]~46_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[50]~46_combout\);

-- Location: LCCOMB_X97_Y40_N26
\inst5|Mod1|auto_generated|divider|divider|StageOut[49]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[49]~47_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[49]~47_combout\);

-- Location: LCCOMB_X98_Y40_N24
\inst5|Mod1|auto_generated|divider|divider|StageOut[48]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst5|Add3~12_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\);

-- Location: LCCOMB_X97_Y40_N28
\inst5|Mod1|auto_generated|divider|divider|StageOut[48]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\);

-- Location: LCCOMB_X98_Y40_N20
\inst5|Mod1|auto_generated|divider|divider|StageOut[47]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[47]~51_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[47]~51_combout\);

-- Location: LCCOMB_X98_Y40_N26
\inst5|Mod1|auto_generated|divider|divider|StageOut[47]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[47]~50_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Add3~10_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[47]~50_combout\);

-- Location: LCCOMB_X97_Y40_N30
\inst5|Mod1|auto_generated|divider|divider|StageOut[46]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[46]~53_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[46]~53_combout\);

-- Location: LCCOMB_X98_Y40_N18
\inst5|Mod1|auto_generated|divider|divider|StageOut[46]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[46]~52_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst5|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst5|Add3~8_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[46]~52_combout\);

-- Location: LCCOMB_X97_Y40_N12
\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst5|Mod1|auto_generated|divider|divider|StageOut[46]~53_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[46]~52_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[46]~53_combout\ & 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[46]~52_combout\)))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|StageOut[46]~53_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[46]~52_combout\ & 
-- !\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[46]~53_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[46]~52_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X97_Y40_N14
\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst5|Mod1|auto_generated|divider|divider|StageOut[47]~51_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[47]~50_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst5|Mod1|auto_generated|divider|divider|StageOut[47]~51_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[47]~50_combout\)))))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[47]~51_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[47]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[47]~51_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[47]~50_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X97_Y40_N16
\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst5|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\ & 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\)))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\ & 
-- !\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[48]~48_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[48]~49_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X97_Y40_N18
\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[49]~47_combout\ & ((GND) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[49]~47_combout\ & (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst5|Mod1|auto_generated|divider|divider|StageOut[49]~47_combout\) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[49]~47_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X97_Y40_N20
\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[50]~46_combout\ & (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & VCC)) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[50]~46_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|StageOut[50]~46_combout\ & !\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[50]~46_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X97_Y40_N22
\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X98_Y40_N0
\inst5|Mod1|auto_generated|divider|divider|StageOut[60]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[60]~78_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[60]~78_combout\);

-- Location: LCCOMB_X97_Y42_N8
\inst5|Mod1|auto_generated|divider|divider|StageOut[60]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[60]~56_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[60]~56_combout\);

-- Location: LCCOMB_X98_Y40_N28
\inst5|Mod1|auto_generated|divider|divider|StageOut[59]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[59]~57_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[59]~57_combout\);

-- Location: LCCOMB_X97_Y40_N2
\inst5|Mod1|auto_generated|divider|divider|StageOut[59]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[59]~79_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & 
-- !\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[59]~79_combout\);

-- Location: LCCOMB_X98_Y41_N8
\inst5|Mod1|auto_generated|divider|divider|StageOut[58]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[58]~58_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[58]~58_combout\);

-- Location: LCCOMB_X98_Y40_N2
\inst5|Mod1|auto_generated|divider|divider|StageOut[58]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[58]~85_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\inst5|Add3~12_combout\))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst5|Add3~12_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[58]~85_combout\);

-- Location: LCCOMB_X98_Y40_N4
\inst5|Mod1|auto_generated|divider|divider|StageOut[57]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\inst5|Add3~10_combout\))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst5|Add3~10_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\);

-- Location: LCCOMB_X97_Y41_N8
\inst5|Mod1|auto_generated|divider|divider|StageOut[57]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[57]~59_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[57]~59_combout\);

-- Location: LCCOMB_X97_Y42_N26
\inst5|Mod1|auto_generated|divider|divider|StageOut[56]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[56]~60_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[56]~60_combout\);

-- Location: LCCOMB_X98_Y40_N30
\inst5|Mod1|auto_generated|divider|divider|StageOut[56]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[56]~87_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\inst5|Add3~8_combout\)) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Add3~8_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[56]~87_combout\);

-- Location: LCCOMB_X98_Y41_N2
\inst5|Mod1|auto_generated|divider|divider|StageOut[55]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[55]~61_combout\ = (\inst5|Add3~6_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~6_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[55]~61_combout\);

-- Location: LCCOMB_X98_Y40_N22
\inst5|Mod1|auto_generated|divider|divider|StageOut[55]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[55]~62_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[55]~62_combout\);

-- Location: LCCOMB_X97_Y42_N22
\inst5|Mod1|auto_generated|divider|divider|StageOut[54]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[54]~64_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Add3~4_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[54]~64_combout\);

-- Location: LCCOMB_X97_Y42_N28
\inst5|Mod1|auto_generated|divider|divider|StageOut[54]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[54]~63_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Add3~4_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[54]~63_combout\);

-- Location: LCCOMB_X98_Y41_N12
\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst5|Mod1|auto_generated|divider|divider|StageOut[54]~64_combout\) # (\inst5|Mod1|auto_generated|divider|divider|StageOut[54]~63_combout\)))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst5|Mod1|auto_generated|divider|divider|StageOut[54]~64_combout\) # (\inst5|Mod1|auto_generated|divider|divider|StageOut[54]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[54]~64_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[54]~63_combout\,
	datad => VCC,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X98_Y41_N14
\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst5|Mod1|auto_generated|divider|divider|StageOut[55]~61_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[55]~62_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[55]~61_combout\ & 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[55]~62_combout\)))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|StageOut[55]~61_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[55]~62_combout\ & 
-- !\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[55]~61_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[55]~62_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X98_Y41_N16
\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst5|Mod1|auto_generated|divider|divider|StageOut[56]~60_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[56]~87_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst5|Mod1|auto_generated|divider|divider|StageOut[56]~60_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[56]~87_combout\)))))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[56]~60_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[56]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[56]~60_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[56]~87_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X98_Y41_N18
\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\inst5|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[57]~59_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[57]~59_combout\)))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[57]~59_combout\ & 
-- !\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[57]~59_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X98_Y41_N20
\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\inst5|Mod1|auto_generated|divider|divider|StageOut[58]~58_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[58]~85_combout\))))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[58]~58_combout\) # 
-- ((\inst5|Mod1|auto_generated|divider|divider|StageOut[58]~85_combout\) # (GND))))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\inst5|Mod1|auto_generated|divider|divider|StageOut[58]~58_combout\) # ((\inst5|Mod1|auto_generated|divider|divider|StageOut[58]~85_combout\) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[58]~58_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[58]~85_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X98_Y41_N22
\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\inst5|Mod1|auto_generated|divider|divider|StageOut[59]~57_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[59]~79_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[59]~57_combout\ & 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[59]~79_combout\)))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|StageOut[59]~57_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[59]~79_combout\ & 
-- !\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[59]~57_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[59]~79_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X98_Y41_N24
\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\inst5|Mod1|auto_generated|divider|divider|StageOut[60]~78_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[60]~56_combout\))))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[60]~78_combout\) # 
-- ((\inst5|Mod1|auto_generated|divider|divider|StageOut[60]~56_combout\) # (GND))))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\inst5|Mod1|auto_generated|divider|divider|StageOut[60]~78_combout\) # ((\inst5|Mod1|auto_generated|divider|divider|StageOut[60]~56_combout\) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[60]~78_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[60]~56_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X98_Y41_N26
\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X97_Y40_N6
\inst5|Mod1|auto_generated|divider|divider|StageOut[65]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[65]~88_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\inst5|Add3~6_combout\))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \inst5|Add3~6_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[65]~88_combout\);

-- Location: LCCOMB_X97_Y41_N6
\inst5|Mod1|auto_generated|divider|divider|StageOut[65]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[65]~74_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[65]~74_combout\);

-- Location: LCCOMB_X98_Y42_N16
\inst5|Mod1|auto_generated|divider|divider|StageOut[64]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[64]~65_combout\ = (\inst5|Add3~4_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add3~4_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[64]~65_combout\);

-- Location: LCCOMB_X97_Y41_N10
\inst5|Mod1|auto_generated|divider|divider|StageOut[64]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[64]~66_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[64]~66_combout\);

-- Location: LCCOMB_X97_Y42_N24
\inst5|Mod1|auto_generated|divider|divider|StageOut[63]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[63]~67_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst5|Add3~2_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[63]~67_combout\);

-- Location: LCCOMB_X97_Y42_N18
\inst5|Mod1|auto_generated|divider|divider|StageOut[63]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[63]~68_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst5|Add3~2_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[63]~68_combout\);

-- Location: LCCOMB_X97_Y41_N14
\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\inst5|Mod1|auto_generated|divider|divider|StageOut[63]~67_combout\) # (\inst5|Mod1|auto_generated|divider|divider|StageOut[63]~68_combout\)))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\inst5|Mod1|auto_generated|divider|divider|StageOut[63]~67_combout\) # (\inst5|Mod1|auto_generated|divider|divider|StageOut[63]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[63]~67_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[63]~68_combout\,
	datad => VCC,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X97_Y41_N16
\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\inst5|Mod1|auto_generated|divider|divider|StageOut[64]~65_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[64]~66_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[64]~65_combout\ & 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[64]~66_combout\)))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|StageOut[64]~65_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[64]~66_combout\ & 
-- !\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[64]~65_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[64]~66_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X97_Y41_N18
\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\inst5|Mod1|auto_generated|divider|divider|StageOut[65]~74_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[65]~88_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\inst5|Mod1|auto_generated|divider|divider|StageOut[65]~74_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[65]~88_combout\)))))
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[65]~74_combout\) # 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[65]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[65]~74_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[65]~88_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X98_Y41_N4
\inst5|Mod1|auto_generated|divider|divider|StageOut[70]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[70]~69_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[70]~69_combout\);

-- Location: LCCOMB_X97_Y42_N0
\inst5|Mod1|auto_generated|divider|divider|StageOut[70]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[70]~80_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[60]~78_combout\) # 
-- ((!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|StageOut[60]~78_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[70]~80_combout\);

-- Location: LCCOMB_X98_Y41_N6
\inst5|Mod1|auto_generated|divider|divider|StageOut[69]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[69]~70_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[69]~70_combout\);

-- Location: LCCOMB_X97_Y40_N4
\inst5|Mod1|auto_generated|divider|divider|StageOut[69]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[69]~81_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[59]~79_combout\) # 
-- ((!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[59]~79_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[69]~81_combout\);

-- Location: LCCOMB_X98_Y41_N28
\inst5|Mod1|auto_generated|divider|divider|StageOut[68]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[68]~82_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[58]~85_combout\) # 
-- ((!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[58]~85_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[68]~82_combout\);

-- Location: LCCOMB_X98_Y41_N0
\inst5|Mod1|auto_generated|divider|divider|StageOut[68]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[68]~71_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[68]~71_combout\);

-- Location: LCCOMB_X97_Y41_N12
\inst5|Mod1|auto_generated|divider|divider|StageOut[67]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[67]~83_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\) # 
-- ((\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[57]~86_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[67]~83_combout\);

-- Location: LCCOMB_X98_Y41_N10
\inst5|Mod1|auto_generated|divider|divider|StageOut[67]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[67]~72_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[67]~72_combout\);

-- Location: LCCOMB_X97_Y42_N2
\inst5|Mod1|auto_generated|divider|divider|StageOut[66]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[66]~84_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[56]~87_combout\) # 
-- ((!\inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|StageOut[56]~87_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[66]~84_combout\);

-- Location: LCCOMB_X97_Y41_N4
\inst5|Mod1|auto_generated|divider|divider|StageOut[66]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[66]~73_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[66]~73_combout\);

-- Location: LCCOMB_X97_Y41_N20
\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|StageOut[66]~84_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[66]~73_combout\ & 
-- !\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[66]~84_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[66]~73_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X97_Y41_N22
\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ = CARRY((\inst5|Mod1|auto_generated|divider|divider|StageOut[67]~83_combout\) # ((\inst5|Mod1|auto_generated|divider|divider|StageOut[67]~72_combout\) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[67]~83_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[67]~72_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\);

-- Location: LCCOMB_X97_Y41_N24
\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|StageOut[68]~82_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[68]~71_combout\ & 
-- !\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[68]~82_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[68]~71_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\);

-- Location: LCCOMB_X97_Y41_N26
\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\ = CARRY((\inst5|Mod1|auto_generated|divider|divider|StageOut[69]~70_combout\) # ((\inst5|Mod1|auto_generated|divider|divider|StageOut[69]~81_combout\) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[69]~70_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[69]~81_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~11_cout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\);

-- Location: LCCOMB_X97_Y41_N28
\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\ = CARRY((!\inst5|Mod1|auto_generated|divider|divider|StageOut[70]~69_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[70]~80_combout\ & 
-- !\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[70]~69_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[70]~80_combout\,
	datad => VCC,
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~13_cout\,
	cout => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\);

-- Location: LCCOMB_X97_Y41_N30
\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ = \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~15_cout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\);

-- Location: LCCOMB_X97_Y41_N2
\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[65]~88_combout\) # 
-- ((\inst5|Mod1|auto_generated|divider|divider|StageOut[65]~74_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (((\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[65]~88_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|StageOut[65]~74_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\);

-- Location: LCCOMB_X97_Y41_N0
\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[64]~66_combout\) # 
-- ((\inst5|Mod1|auto_generated|divider|divider|StageOut[64]~65_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (((\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[64]~66_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|StageOut[64]~65_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\);

-- Location: LCCOMB_X100_Y42_N10
\inst5|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add4~2_combout\ = (\inst5|Add0~14_combout\ & (!\inst5|Add3~0_combout\ & \inst5|Div0|auto_generated|divider|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~14_combout\,
	datac => \inst5|Add3~0_combout\,
	datad => \inst5|Div0|auto_generated|divider|op_1~12_combout\,
	combout => \inst5|Add4~2_combout\);

-- Location: LCCOMB_X97_Y42_N12
\inst5|Add4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add4~3_combout\ = ((\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\inst5|Add3~2_combout\))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- (\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))) # (!\inst5|Add4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \inst5|Add3~2_combout\,
	datad => \inst5|Add4~2_combout\,
	combout => \inst5|Add4~3_combout\);

-- Location: LCCOMB_X98_Y42_N2
\inst4|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~12_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & (!\inst5|Div0|auto_generated|divider|_~0_combout\ & (\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ $ (!\inst5|Add4~3_combout\)))) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & (\inst5|Div0|auto_generated|divider|_~0_combout\ & (\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ $ (\inst5|Add4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datad => \inst5|Add4~3_combout\,
	combout => \inst4|decOut_n~12_combout\);

-- Location: LCCOMB_X99_Y42_N18
\inst4|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~13_combout\ = (\inst5|Add3~0_combout\ & \inst4|decOut_n~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add3~0_combout\,
	datad => \inst4|decOut_n~12_combout\,
	combout => \inst4|decOut_n~13_combout\);

-- Location: LCCOMB_X97_Y42_N14
\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ = (\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\inst5|Add3~2_combout\))) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \inst5|Add3~2_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\);

-- Location: LCCOMB_X99_Y42_N24
\inst5|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add4~4_combout\ = \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ $ (((\inst5|Add0~14_combout\ & (\inst5|Div0|auto_generated|divider|op_1~12_combout\ & \inst5|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~14_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datac => \inst5|Div0|auto_generated|divider|op_1~12_combout\,
	datad => \inst5|Add3~0_combout\,
	combout => \inst5|Add4~4_combout\);

-- Location: LCCOMB_X99_Y42_N10
\inst4|decOut_n~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~40_combout\ = \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ $ (((\inst5|Div0|auto_generated|divider|op_1~12_combout\ & \inst5|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|op_1~12_combout\,
	datab => \inst5|Add0~14_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	combout => \inst4|decOut_n~40_combout\);

-- Location: LCCOMB_X99_Y42_N4
\inst4|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~14_combout\ = (\inst4|decOut_n~40_combout\ & (((\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\) # (\inst5|Add3~0_combout\)) # (!\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\))) # 
-- (!\inst4|decOut_n~40_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ $ (\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\)) # (!\inst5|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~40_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datad => \inst5|Add3~0_combout\,
	combout => \inst4|decOut_n~14_combout\);

-- Location: LCCOMB_X97_Y42_N16
\inst4|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~15_combout\ = (\inst5|Add3~0_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\inst5|Add3~2_combout\))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- (\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \inst5|Add3~2_combout\,
	datad => \inst5|Add3~0_combout\,
	combout => \inst4|decOut_n~15_combout\);

-- Location: LCCOMB_X100_Y42_N28
\inst4|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~16_combout\ = (!\inst5|Div0|auto_generated|divider|_~0_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & ((\inst4|decOut_n~15_combout\))) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & (\inst5|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~0_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst4|decOut_n~15_combout\,
	datad => \inst5|Div0|auto_generated|divider|_~0_combout\,
	combout => \inst4|decOut_n~16_combout\);

-- Location: LCCOMB_X100_Y42_N22
\inst4|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~17_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & (((\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & \inst4|decOut_n~16_combout\)))) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & !\inst4|decOut_n~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	datad => \inst4|decOut_n~16_combout\,
	combout => \inst4|decOut_n~17_combout\);

-- Location: LCCOMB_X99_Y42_N14
\inst4|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~18_combout\ = (\inst4|decOut_n~17_combout\ & (\inst4|decOut_n~13_combout\ & (\inst5|Add4~4_combout\))) # (!\inst4|decOut_n~17_combout\ & (((\inst4|decOut_n~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~13_combout\,
	datab => \inst5|Add4~4_combout\,
	datac => \inst4|decOut_n~14_combout\,
	datad => \inst4|decOut_n~17_combout\,
	combout => \inst4|decOut_n~18_combout\);

-- Location: LCCOMB_X99_Y42_N8
\inst4|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~19_combout\ = (\inst4|decOut_n~12_combout\ & (\inst5|Add3~0_combout\ & (\inst5|Div0|auto_generated|divider|_~0_combout\ $ (!\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~12_combout\,
	datab => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datad => \inst5|Add3~0_combout\,
	combout => \inst4|decOut_n~19_combout\);

-- Location: LCCOMB_X100_Y42_N20
\inst4|decOut_n~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~41_combout\ = (\inst5|Add0~14_combout\ & ((\inst5|Div0|auto_generated|divider|op_1~12_combout\ & (\inst5|Add3~0_combout\)) # (!\inst5|Div0|auto_generated|divider|op_1~12_combout\ & ((\inst4|decOut_n~15_combout\))))) # 
-- (!\inst5|Add0~14_combout\ & (((\inst4|decOut_n~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~0_combout\,
	datab => \inst5|Add0~14_combout\,
	datac => \inst4|decOut_n~15_combout\,
	datad => \inst5|Div0|auto_generated|divider|op_1~12_combout\,
	combout => \inst4|decOut_n~41_combout\);

-- Location: LCCOMB_X97_Y42_N10
\inst4|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~20_combout\ = (!\inst5|Add3~0_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((!\inst5|Add3~2_combout\))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- (!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \inst5|Add3~2_combout\,
	datad => \inst5|Add3~0_combout\,
	combout => \inst4|decOut_n~20_combout\);

-- Location: LCCOMB_X100_Y42_N30
\inst4|decOut_n~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~42_combout\ = (\inst5|Div0|auto_generated|divider|op_1~12_combout\ & ((\inst5|Add0~14_combout\ & (\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\)) # (!\inst5|Add0~14_combout\ & ((\inst4|decOut_n~20_combout\))))) # 
-- (!\inst5|Div0|auto_generated|divider|op_1~12_combout\ & (((\inst4|decOut_n~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datab => \inst5|Div0|auto_generated|divider|op_1~12_combout\,
	datac => \inst5|Add0~14_combout\,
	datad => \inst4|decOut_n~20_combout\,
	combout => \inst4|decOut_n~42_combout\);

-- Location: LCCOMB_X100_Y42_N26
\inst4|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~22_combout\ = (\inst4|decOut_n~42_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ $ (\inst5|Div0|auto_generated|divider|_~0_combout\)) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\))) # (!\inst4|decOut_n~42_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ $ (\inst5|Div0|auto_generated|divider|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~42_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	datad => \inst5|Div0|auto_generated|divider|_~0_combout\,
	combout => \inst4|decOut_n~22_combout\);

-- Location: LCCOMB_X100_Y42_N0
\inst4|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~21_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & (((!\inst4|decOut_n~42_combout\ & \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\)) # 
-- (!\inst5|Div0|auto_generated|divider|_~0_combout\))) # (!\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & ((\inst4|decOut_n~42_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\)) # 
-- (!\inst4|decOut_n~42_combout\ & ((\inst5|Div0|auto_generated|divider|_~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~42_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	datad => \inst5|Div0|auto_generated|divider|_~0_combout\,
	combout => \inst4|decOut_n~21_combout\);

-- Location: LCCOMB_X100_Y42_N4
\inst4|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~23_combout\ = (\inst4|decOut_n~22_combout\ & (\inst4|decOut_n~19_combout\ & ((\inst4|decOut_n~21_combout\)))) # (!\inst4|decOut_n~22_combout\ & (((\inst4|decOut_n~41_combout\) # (!\inst4|decOut_n~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~19_combout\,
	datab => \inst4|decOut_n~41_combout\,
	datac => \inst4|decOut_n~22_combout\,
	datad => \inst4|decOut_n~21_combout\,
	combout => \inst4|decOut_n~23_combout\);

-- Location: LCCOMB_X98_Y42_N8
\inst4|decOut_n~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~48_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & ((\inst5|Div0|auto_generated|divider|_~0_combout\) # ((!\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & 
-- !\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & (((\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & 
-- \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\)) # (!\inst5|Div0|auto_generated|divider|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	combout => \inst4|decOut_n~48_combout\);

-- Location: LCCOMB_X99_Y42_N30
\inst4|decOut_n~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~49_combout\ = (\inst4|decOut_n~48_combout\ & ((\inst5|Add3~0_combout\) # ((!\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ & \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~48_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datad => \inst5|Add3~0_combout\,
	combout => \inst4|decOut_n~49_combout\);

-- Location: LCCOMB_X99_Y42_N28
\inst4|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~25_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ $ (\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\)) # 
-- (!\inst5|Div0|auto_generated|divider|_~0_combout\))) # (!\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & ((\inst5|Div0|auto_generated|divider|_~0_combout\) # (\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ $ 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datad => \inst5|Div0|auto_generated|divider|_~0_combout\,
	combout => \inst4|decOut_n~25_combout\);

-- Location: LCCOMB_X99_Y42_N2
\inst4|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~24_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & (!\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ & 
-- \inst5|Div0|auto_generated|divider|_~0_combout\)) # (!\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & (\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ & !\inst5|Div0|auto_generated|divider|_~0_combout\)))) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & (\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & (\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ $ 
-- (!\inst5|Div0|auto_generated|divider|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datad => \inst5|Div0|auto_generated|divider|_~0_combout\,
	combout => \inst4|decOut_n~24_combout\);

-- Location: LCCOMB_X99_Y42_N6
\inst4|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~26_combout\ = (!\inst4|decOut_n~17_combout\ & ((\inst5|Add3~0_combout\ & (!\inst4|decOut_n~25_combout\)) # (!\inst5|Add3~0_combout\ & ((\inst4|decOut_n~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add3~0_combout\,
	datab => \inst4|decOut_n~25_combout\,
	datac => \inst4|decOut_n~24_combout\,
	datad => \inst4|decOut_n~17_combout\,
	combout => \inst4|decOut_n~26_combout\);

-- Location: LCCOMB_X99_Y42_N16
\inst4|decOut_n~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~27_combout\ = (\inst4|decOut_n~26_combout\) # ((\inst5|Add4~4_combout\ & (\inst4|decOut_n~13_combout\ & \inst4|decOut_n~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~26_combout\,
	datab => \inst5|Add4~4_combout\,
	datac => \inst4|decOut_n~13_combout\,
	datad => \inst4|decOut_n~17_combout\,
	combout => \inst4|decOut_n~27_combout\);

-- Location: LCCOMB_X98_Y42_N14
\inst4|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~29_combout\ = (\inst4|decOut_n~12_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ $ (\inst5|Div0|auto_generated|divider|_~0_combout\)) # (!\inst5|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datab => \inst5|Add3~0_combout\,
	datac => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datad => \inst4|decOut_n~12_combout\,
	combout => \inst4|decOut_n~29_combout\);

-- Location: LCCOMB_X98_Y42_N0
\inst4|decOut_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~30_combout\ = (!\inst5|Add3~0_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ & ((\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\))) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ & (\inst4|decOut_n~29_combout\ & !\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datab => \inst5|Add3~0_combout\,
	datac => \inst4|decOut_n~29_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	combout => \inst4|decOut_n~30_combout\);

-- Location: LCCOMB_X98_Y42_N12
\inst4|decOut_n~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~28_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ & (!\inst5|Add3~0_combout\ & ((\inst4|decOut_n~12_combout\) # (!\inst5|Div0|auto_generated|divider|_~0_combout\)))) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ & (\inst4|decOut_n~12_combout\ & ((\inst5|Div0|auto_generated|divider|_~0_combout\) # (!\inst5|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datab => \inst5|Add3~0_combout\,
	datac => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datad => \inst4|decOut_n~12_combout\,
	combout => \inst4|decOut_n~28_combout\);

-- Location: LCCOMB_X99_Y42_N20
\inst4|decOut_n~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~43_combout\ = (\inst4|decOut_n~29_combout\ & (\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & ((!\inst5|Add0~14_combout\) # (!\inst5|Div0|auto_generated|divider|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~29_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst5|Div0|auto_generated|divider|op_1~12_combout\,
	datad => \inst5|Add0~14_combout\,
	combout => \inst4|decOut_n~43_combout\);

-- Location: LCCOMB_X98_Y42_N4
\inst4|decOut_n~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~46_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & (((\inst4|decOut_n~43_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & (\inst4|decOut_n~28_combout\ & 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~28_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst4|decOut_n~43_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	combout => \inst4|decOut_n~46_combout\);

-- Location: LCCOMB_X98_Y42_N6
\inst4|decOut_n~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~47_combout\ = (\inst4|decOut_n~46_combout\) # ((\inst5|Div0|auto_generated|divider|_~0_combout\ & (\inst4|decOut_n~30_combout\ & \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datab => \inst4|decOut_n~30_combout\,
	datac => \inst4|decOut_n~46_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	combout => \inst4|decOut_n~47_combout\);

-- Location: LCCOMB_X99_Y42_N26
\inst4|decOut_n~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~32_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & (((\inst5|Div0|auto_generated|divider|_~0_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & 
-- (\inst4|decOut_n~29_combout\ & ((\inst4|decOut_n~20_combout\) # (\inst5|Div0|auto_generated|divider|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~29_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst4|decOut_n~20_combout\,
	datad => \inst5|Div0|auto_generated|divider|_~0_combout\,
	combout => \inst4|decOut_n~32_combout\);

-- Location: LCCOMB_X97_Y42_N4
\inst4|decOut_n~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~31_combout\ = \inst5|Add3~0_combout\ $ (((\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\inst5|Add3~2_combout\))) # (!\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- (\inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datac => \inst5|Add3~2_combout\,
	datad => \inst5|Add3~0_combout\,
	combout => \inst4|decOut_n~31_combout\);

-- Location: LCCOMB_X99_Y42_N12
\inst4|decOut_n~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~33_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ & ((\inst5|Add3~0_combout\) # (\inst4|decOut_n~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add3~0_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datad => \inst4|decOut_n~12_combout\,
	combout => \inst4|decOut_n~33_combout\);

-- Location: LCCOMB_X99_Y42_N22
\inst4|decOut_n~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~34_combout\ = (\inst4|decOut_n~32_combout\ & (((\inst4|decOut_n~33_combout\)) # (!\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\))) # (!\inst4|decOut_n~32_combout\ & 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & (\inst4|decOut_n~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~32_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst4|decOut_n~31_combout\,
	datad => \inst4|decOut_n~33_combout\,
	combout => \inst4|decOut_n~34_combout\);

-- Location: LCCOMB_X97_Y42_N6
\inst4|decOut_n~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~35_combout\ = (!\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & (\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\ & ((\inst5|Div0|auto_generated|divider|_~0_combout\) # (\inst5|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Div0|auto_generated|divider|_~0_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	datad => \inst5|Add3~0_combout\,
	combout => \inst4|decOut_n~35_combout\);

-- Location: LCCOMB_X98_Y42_N10
\inst4|decOut_n~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~36_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & (((\inst4|decOut_n~43_combout\) # (\inst4|decOut_n~35_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & 
-- (\inst4|decOut_n~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	datab => \inst4|decOut_n~34_combout\,
	datac => \inst4|decOut_n~43_combout\,
	datad => \inst4|decOut_n~35_combout\,
	combout => \inst4|decOut_n~36_combout\);

-- Location: LCCOMB_X100_Y42_N2
\inst4|decOut_n~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~45_combout\ = (\inst5|Add0~14_combout\ & ((\inst5|Div0|auto_generated|divider|op_1~12_combout\ & ((\inst4|decOut_n~31_combout\))) # (!\inst5|Div0|auto_generated|divider|op_1~12_combout\ & (\inst4|decOut_n~20_combout\)))) # 
-- (!\inst5|Add0~14_combout\ & (\inst4|decOut_n~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~20_combout\,
	datab => \inst5|Add0~14_combout\,
	datac => \inst4|decOut_n~31_combout\,
	datad => \inst5|Div0|auto_generated|divider|op_1~12_combout\,
	combout => \inst4|decOut_n~45_combout\);

-- Location: LCCOMB_X100_Y42_N16
\inst4|decOut_n~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~38_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & ((\inst4|decOut_n~45_combout\ & ((!\inst5|Div0|auto_generated|divider|_~0_combout\))) # (!\inst4|decOut_n~45_combout\ & 
-- (\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\)))) # (!\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & (((!\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & 
-- \inst5|Div0|auto_generated|divider|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~45_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	datad => \inst5|Div0|auto_generated|divider|_~0_combout\,
	combout => \inst4|decOut_n~38_combout\);

-- Location: LCCOMB_X100_Y42_N8
\inst4|decOut_n~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~44_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & (((\inst5|Add0~14_combout\ & \inst5|Div0|auto_generated|divider|op_1~12_combout\)))) # 
-- (!\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & (\inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\ & ((!\inst5|Div0|auto_generated|divider|op_1~12_combout\) # (!\inst5|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mod1|auto_generated|divider|divider|StageOut[74]~75_combout\,
	datab => \inst5|Add0~14_combout\,
	datac => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	datad => \inst5|Div0|auto_generated|divider|op_1~12_combout\,
	combout => \inst4|decOut_n~44_combout\);

-- Location: LCCOMB_X100_Y42_N6
\inst4|decOut_n~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~37_combout\ = (\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & (\inst4|decOut_n~15_combout\)) # (!\inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\ & (((\inst5|Add3~0_combout\ & 
-- !\inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~15_combout\,
	datab => \inst5|Mod1|auto_generated|divider|divider|StageOut[75]~76_combout\,
	datac => \inst5|Add3~0_combout\,
	datad => \inst5|Mod1|auto_generated|divider|divider|StageOut[73]~77_combout\,
	combout => \inst4|decOut_n~37_combout\);

-- Location: LCCOMB_X100_Y42_N18
\inst4|decOut_n~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|decOut_n~39_combout\ = (\inst4|decOut_n~38_combout\ & ((\inst4|decOut_n~19_combout\) # ((\inst4|decOut_n~44_combout\)))) # (!\inst4|decOut_n~38_combout\ & (((!\inst4|decOut_n~44_combout\ & \inst4|decOut_n~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|decOut_n~19_combout\,
	datab => \inst4|decOut_n~38_combout\,
	datac => \inst4|decOut_n~44_combout\,
	datad => \inst4|decOut_n~37_combout\,
	combout => \inst4|decOut_n~39_combout\);

-- Location: LCCOMB_X110_Y15_N2
\inst7|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~0_combout\ = (\SW[1]~input_o\) # (((\SW[2]~input_o\) # (\SW[0]~input_o\)) # (!\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst7|Add1~0_combout\);

-- Location: LCCOMB_X102_Y8_N14
\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ $ (VCC)
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datad => VCC,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X102_Y8_N16
\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X102_Y8_N18
\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst7|Add1~0_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC)) # (!\inst7|Add1~0_combout\ & 
-- (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND)))
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst7|Add1~0_combout\ & !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~0_combout\,
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X102_Y8_N20
\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X102_Y8_N22
\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X102_Y8_N6
\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\);

-- Location: LCCOMB_X102_Y8_N26
\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\)) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LCCOMB_X109_Y15_N18
\inst7|s_Unid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|s_Unid~1_combout\ = (\SW[0]~input_o\) # ((!\SW[1]~input_o\ & (\SW[3]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst7|s_Unid~1_combout\);

-- Location: LCCOMB_X102_Y8_N8
\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = \inst7|s_Unid~1_combout\ $ (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|s_Unid~1_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X102_Y8_N28
\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\SW[0]~input_o\))) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\);

-- Location: LCCOMB_X92_Y4_N14
\inst9|decOut_n~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~34_combout\ = (!\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~34_combout\);

-- Location: LCCOMB_X102_Y8_N24
\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\inst7|Add1~0_combout\))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst7|Add1~0_combout\,
	combout => \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\);

-- Location: LCCOMB_X92_Y4_N26
\inst9|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~19_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- ((!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~19_combout\);

-- Location: LCCOMB_X92_Y4_N4
\inst9|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~20_combout\ = (!\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\inst9|decOut_n~19_combout\ & !\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \inst9|decOut_n~19_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \inst9|decOut_n~20_combout\);

-- Location: LCCOMB_X92_Y4_N16
\inst9|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~18_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ $ 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ $ (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~18_combout\);

-- Location: LCCOMB_X92_Y4_N30
\inst9|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~21_combout\ = (\inst9|decOut_n~20_combout\ & (!\inst9|decOut_n~34_combout\)) # (!\inst9|decOut_n~20_combout\ & ((\inst9|decOut_n~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|decOut_n~34_combout\,
	datac => \inst9|decOut_n~20_combout\,
	datad => \inst9|decOut_n~18_combout\,
	combout => \inst9|decOut_n~21_combout\);

-- Location: LCCOMB_X92_Y4_N18
\inst9|decOut_n~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~36_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & !\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \inst9|decOut_n~36_combout\);

-- Location: LCCOMB_X92_Y4_N0
\inst9|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~22_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (((!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- ((\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & ((!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- ((\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \inst9|decOut_n~22_combout\);

-- Location: LCCOMB_X92_Y4_N8
\inst9|decOut_n~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~35_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~35_combout\);

-- Location: LCCOMB_X92_Y4_N12
\inst9|decOut_n~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~37_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (((\inst9|decOut_n~22_combout\ & \inst9|decOut_n~35_combout\)))) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & 
-- (\inst9|decOut_n~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|decOut_n~36_combout\,
	datab => \inst9|decOut_n~22_combout\,
	datac => \inst9|decOut_n~35_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~37_combout\);

-- Location: LCCOMB_X92_Y4_N20
\inst9|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~24_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\)) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\))))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & 
-- (((\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & !\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~24_combout\);

-- Location: LCCOMB_X92_Y4_N6
\inst9|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~25_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ $ 
-- (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\)))) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & 
-- ((!\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~25_combout\);

-- Location: LCCOMB_X92_Y4_N24
\inst9|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~26_combout\ = (\inst9|decOut_n~20_combout\ & (\inst9|decOut_n~34_combout\)) # (!\inst9|decOut_n~20_combout\ & ((\inst9|decOut_n~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|decOut_n~20_combout\,
	datac => \inst9|decOut_n~34_combout\,
	datad => \inst9|decOut_n~25_combout\,
	combout => \inst9|decOut_n~26_combout\);

-- Location: LCCOMB_X92_Y4_N10
\inst9|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~23_combout\ = (\inst9|decOut_n~22_combout\ & \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|decOut_n~22_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~23_combout\);

-- Location: LCCOMB_X92_Y4_N2
\inst9|decOut_n~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~27_combout\ = (!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & !\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~27_combout\);

-- Location: LCCOMB_X92_Y4_N22
\inst9|decOut_n~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~38_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\)) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ $ 
-- (\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~38_combout\);

-- Location: LCCOMB_X92_Y4_N28
\inst9|decOut_n~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~28_combout\ = (\inst9|decOut_n~27_combout\ & (((\inst9|decOut_n~38_combout\) # (\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\)))) # (!\inst9|decOut_n~27_combout\ & (\inst9|decOut_n~23_combout\ & 
-- (\inst9|decOut_n~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|decOut_n~23_combout\,
	datab => \inst9|decOut_n~27_combout\,
	datac => \inst9|decOut_n~38_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	combout => \inst9|decOut_n~28_combout\);

-- Location: LCCOMB_X102_Y8_N10
\inst9|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~29_combout\ = (\inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & ((\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- !\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\)) # (!\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~29_combout\);

-- Location: LCCOMB_X102_Y8_N4
\inst9|decOut_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~30_combout\ = (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & 
-- !\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)) # (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ $ 
-- (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst9|decOut_n~30_combout\);

-- Location: LCCOMB_X102_Y8_N0
\inst9|decOut_n~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~31_combout\ = (\inst9|decOut_n~29_combout\) # ((\inst9|decOut_n~30_combout\ & (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|decOut_n~29_combout\,
	datab => \inst9|decOut_n~30_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~31_combout\);

-- Location: LCCOMB_X102_Y8_N2
\inst9|decOut_n~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~32_combout\ = (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & 
-- (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ $ (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst9|decOut_n~32_combout\);

-- Location: LCCOMB_X102_Y8_N30
\inst9|decOut_n~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~39_combout\ = \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ $ (((\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\SW[0]~input_o\))) # 
-- (!\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datab => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \inst7|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst9|decOut_n~39_combout\);

-- Location: LCCOMB_X102_Y8_N12
\inst9|decOut_n~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|decOut_n~33_combout\ = (\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & (((\inst9|decOut_n~32_combout\)))) # (!\inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\ & 
-- (!\inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((\inst9|decOut_n~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \inst9|decOut_n~32_combout\,
	datac => \inst9|decOut_n~39_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_den|result_tmp[3]~2_combout\,
	combout => \inst9|decOut_n~33_combout\);

-- Location: LCCOMB_X83_Y4_N4
\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ $ (VCC)
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	datad => VCC,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X83_Y4_N6
\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ & (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # 
-- (!\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => VCC,
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X109_Y16_N22
\inst6|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~0_combout\ = (\SW[6]~input_o\) # (((\SW[5]~input_o\) # (\SW[4]~input_o\)) # (!\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst6|Add1~0_combout\);

-- Location: LCCOMB_X83_Y4_N8
\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst6|Add1~0_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC)) # (!\inst6|Add1~0_combout\ & 
-- (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND)))
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst6|Add1~0_combout\ & !\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add1~0_combout\,
	datad => VCC,
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X83_Y4_N10
\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X83_Y4_N12
\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X83_Y4_N18
\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\))) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LCCOMB_X109_Y16_N8
\inst6|s_Unid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|s_Unid~0_combout\ = (\SW[4]~input_o\) # ((!\SW[6]~input_o\ & (\SW[7]~input_o\ & !\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst6|s_Unid~0_combout\);

-- Location: LCCOMB_X83_Y4_N0
\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ $ (\inst6|s_Unid~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datad => \inst6|s_Unid~0_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X83_Y4_N14
\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\SW[4]~input_o\))) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\);

-- Location: LCCOMB_X83_Y4_N24
\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\))) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\);

-- Location: LCCOMB_X82_Y4_N16
\inst8|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~18_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (!\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & (\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ $ 
-- (!\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\)))) # (!\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ $ (!\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	combout => \inst8|decOut_n~18_combout\);

-- Location: LCCOMB_X82_Y4_N14
\inst8|decOut_n~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~34_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- !\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	combout => \inst8|decOut_n~34_combout\);

-- Location: LCCOMB_X83_Y4_N2
\inst6|Mod0|auto_generated|divider|divider|StageOut[23]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst6|Add1~0_combout\)) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst6|Add1~0_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst6|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\);

-- Location: LCCOMB_X83_Y4_N28
\inst8|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~19_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\))) # (!\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- ((!\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\) # (!\inst6|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	combout => \inst8|decOut_n~19_combout\);

-- Location: LCCOMB_X82_Y4_N18
\inst8|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~20_combout\ = (\inst8|decOut_n~19_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & !\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|decOut_n~19_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	combout => \inst8|decOut_n~20_combout\);

-- Location: LCCOMB_X82_Y4_N4
\inst8|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~21_combout\ = (\inst8|decOut_n~20_combout\ & ((!\inst8|decOut_n~34_combout\))) # (!\inst8|decOut_n~20_combout\ & (\inst8|decOut_n~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|decOut_n~18_combout\,
	datac => \inst8|decOut_n~34_combout\,
	datad => \inst8|decOut_n~20_combout\,
	combout => \inst8|decOut_n~21_combout\);

-- Location: LCCOMB_X82_Y4_N0
\inst8|decOut_n~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~35_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	combout => \inst8|decOut_n~35_combout\);

-- Location: LCCOMB_X82_Y4_N26
\inst8|decOut_n~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~36_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\)) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\) # (\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	combout => \inst8|decOut_n~36_combout\);

-- Location: LCCOMB_X83_Y4_N22
\inst8|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~22_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\)) # (!\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- ((\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\)) # (!\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & 
-- ((\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\) # (!\inst6|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\,
	combout => \inst8|decOut_n~22_combout\);

-- Location: LCCOMB_X82_Y4_N12
\inst8|decOut_n~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~37_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & (\inst8|decOut_n~35_combout\ & ((\inst8|decOut_n~22_combout\)))) # (!\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & 
-- (((\inst8|decOut_n~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \inst8|decOut_n~35_combout\,
	datac => \inst8|decOut_n~36_combout\,
	datad => \inst8|decOut_n~22_combout\,
	combout => \inst8|decOut_n~37_combout\);

-- Location: LCCOMB_X82_Y4_N24
\inst8|decOut_n~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~24_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\))) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\)))) # (!\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & 
-- (!\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & (\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	combout => \inst8|decOut_n~24_combout\);

-- Location: LCCOMB_X82_Y4_N10
\inst8|decOut_n~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~25_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & (\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\))) # (!\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & (\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ $ 
-- (((!\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\) # (!\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	combout => \inst8|decOut_n~25_combout\);

-- Location: LCCOMB_X82_Y4_N28
\inst8|decOut_n~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~26_combout\ = (\inst8|decOut_n~20_combout\ & (\inst8|decOut_n~34_combout\)) # (!\inst8|decOut_n~20_combout\ & ((\inst8|decOut_n~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|decOut_n~20_combout\,
	datac => \inst8|decOut_n~34_combout\,
	datad => \inst8|decOut_n~25_combout\,
	combout => \inst8|decOut_n~26_combout\);

-- Location: LCCOMB_X82_Y4_N22
\inst8|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~23_combout\ = (\inst8|decOut_n~22_combout\ & \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|decOut_n~22_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	combout => \inst8|decOut_n~23_combout\);

-- Location: LCCOMB_X82_Y4_N30
\inst8|decOut_n~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~27_combout\ = (!\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & !\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	combout => \inst8|decOut_n~27_combout\);

-- Location: LCCOMB_X82_Y4_N6
\inst8|decOut_n~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~38_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- !\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\)) # (!\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ $ 
-- (\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	combout => \inst8|decOut_n~38_combout\);

-- Location: LCCOMB_X82_Y4_N8
\inst8|decOut_n~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~28_combout\ = (\inst8|decOut_n~27_combout\ & (((\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\) # (\inst8|decOut_n~38_combout\)))) # (!\inst8|decOut_n~27_combout\ & (\inst8|decOut_n~23_combout\ & 
-- ((\inst8|decOut_n~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|decOut_n~23_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \inst8|decOut_n~27_combout\,
	datad => \inst8|decOut_n~38_combout\,
	combout => \inst8|decOut_n~28_combout\);

-- Location: LCCOMB_X82_Y4_N2
\inst8|decOut_n~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~29_combout\ = (\inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & ((\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & ((!\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\))) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (!\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	combout => \inst8|decOut_n~29_combout\);

-- Location: LCCOMB_X83_Y4_N16
\inst8|decOut_n~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~30_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)) # (!\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ $ 
-- (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \inst8|decOut_n~30_combout\);

-- Location: LCCOMB_X82_Y4_N20
\inst8|decOut_n~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~31_combout\ = (\inst8|decOut_n~29_combout\) # ((\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst8|decOut_n~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \inst8|decOut_n~29_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst8|decOut_n~30_combout\,
	combout => \inst8|decOut_n~31_combout\);

-- Location: LCCOMB_X83_Y4_N30
\inst8|decOut_n~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~39_combout\ = \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ $ (((\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\SW[4]~input_o\))) # 
-- (!\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst6|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \inst8|decOut_n~39_combout\);

-- Location: LCCOMB_X83_Y4_N26
\inst8|decOut_n~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~32_combout\ = (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & (!\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ $ (\inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst6|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst8|decOut_n~32_combout\);

-- Location: LCCOMB_X83_Y4_N20
\inst8|decOut_n~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|decOut_n~33_combout\ = (\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & (((\inst8|decOut_n~32_combout\)))) # (!\inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & (\inst8|decOut_n~39_combout\ & 
-- (!\inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|decOut_n~39_combout\,
	datab => \inst6|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \inst8|decOut_n~32_combout\,
	datad => \inst|Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	combout => \inst8|decOut_n~33_combout\);

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

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


