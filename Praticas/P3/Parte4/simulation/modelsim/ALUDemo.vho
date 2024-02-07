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

-- DATE "02/28/2023 22:02:19"

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
	KEY : IN std_logic_vector(2 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
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
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
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
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \ALU4|m[3]~2_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \ALU4|m[2]~3_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \ALU4|m[1]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~9\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~11\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~13\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~14_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~15\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~12_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[183]~80_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~10_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[182]~81_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[181]~82_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[180]~83_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[179]~84_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[179]~85_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[178]~86_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[178]~87_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[177]~88_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[177]~89_combout\ : std_logic;
SIGNAL \ALU4|Equal0~0_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_2~18_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[176]~91_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[176]~90_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~11\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~13\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~15\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~17\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~19\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \ALU4|Mux0~2_combout\ : std_logic;
SIGNAL \ALU4|Mux0~3_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\ : std_logic;
SIGNAL \ALU4|Mux3~0_combout\ : std_logic;
SIGNAL \ALU4|Equal0~1_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \ALU4|Add0~0_combout\ : std_logic;
SIGNAL \ALU4|Add0~1_combout\ : std_logic;
SIGNAL \ALU4|Add0~2_combout\ : std_logic;
SIGNAL \ALU4|Add0~3_combout\ : std_logic;
SIGNAL \ALU4|Add0~5_cout\ : std_logic;
SIGNAL \ALU4|Add0~7\ : std_logic;
SIGNAL \ALU4|Add0~9\ : std_logic;
SIGNAL \ALU4|Add0~11\ : std_logic;
SIGNAL \ALU4|Add0~12_combout\ : std_logic;
SIGNAL \ALU4|Mux0~0_combout\ : std_logic;
SIGNAL \ALU4|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[192]~103_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[192]~102_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~18_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~16_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[201]~93_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[201]~92_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[200]~139_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~14_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[200]~94_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~12_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[199]~95_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[199]~140_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[198]~141_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[198]~96_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[197]~97_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[197]~142_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[196]~98_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[196]~163_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[195]~99_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[195]~164_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[194]~165_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[194]~100_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[193]~101_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[193]~143_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~9\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~11\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~13\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~15\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~17\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~19\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~21\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~23\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~22_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~20_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[219]~105_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[219]~104_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~18_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[218]~106_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[218]~144_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~16_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[217]~107_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[217]~145_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~14_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[216]~108_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[216]~146_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[215]~147_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~12_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[215]~109_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[214]~148_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[214]~110_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[213]~149_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[213]~111_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[212]~150_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[212]~112_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[211]~113_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[211]~151_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[210]~114_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[210]~152_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[209]~116_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[209]~115_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\ : std_logic;
SIGNAL \ALU4|Mux1~2_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\ : std_logic;
SIGNAL \ALU4|Mux1~3_combout\ : std_logic;
SIGNAL \ALU4|Add0~10_combout\ : std_logic;
SIGNAL \ALU4|Mux1~0_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \ALU4|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[208]~117_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[208]~118_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~27\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[226]~166_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[226]~119_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[225]~120_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[225]~121_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\ : std_logic;
SIGNAL \ALU4|Mux2~2_combout\ : std_logic;
SIGNAL \ALU4|Mux2~3_combout\ : std_logic;
SIGNAL \ALU4|Add0~8_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \ALU4|Mux2~0_combout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU4|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[224]~122_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[224]~123_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[237]~124_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[237]~125_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[236]~126_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[236]~153_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[235]~154_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[235]~127_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[234]~128_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[234]~155_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[233]~156_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[233]~129_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[232]~157_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[232]~130_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[231]~131_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[231]~158_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[230]~132_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[230]~159_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[229]~133_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[229]~160_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[228]~134_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[228]~161_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[227]~135_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[227]~162_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~15_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~17_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~19_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~21_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~23_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~25_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~27_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~29_cout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ : std_logic;
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
SIGNAL \ALU4|Mux3~1_combout\ : std_logic;
SIGNAL \ALU4|Mux3~2_combout\ : std_logic;
SIGNAL \ALU4|Mux3~3_combout\ : std_logic;
SIGNAL \ALU4|Add0~6_combout\ : std_logic;
SIGNAL \ALU4|Mux3~4_combout\ : std_logic;
SIGNAL \ALU4|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \ALU4|Mux3~5_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst|decOut_n[3]~4_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~1_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~2_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst|decOut_n[6]~5_combout\ : std_logic;
SIGNAL \inst|decOut_n~6_combout\ : std_logic;
SIGNAL \inst|decOut_n~7_combout\ : std_logic;
SIGNAL \inst|decOut_n~8_combout\ : std_logic;
SIGNAL \inst|decOut_n~9_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~10_combout\ : std_logic;
SIGNAL \inst|decOut_n[3]~11_combout\ : std_logic;
SIGNAL \inst|decOut_n~13_combout\ : std_logic;
SIGNAL \inst|decOut_n~12_combout\ : std_logic;
SIGNAL \inst|decOut_n~14_combout\ : std_logic;
SIGNAL \inst|decOut_n~15_combout\ : std_logic;
SIGNAL \inst|decOut_n~16_combout\ : std_logic;
SIGNAL \inst|decOut_n~17_combout\ : std_logic;
SIGNAL \inst|decOut_n~18_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[55]~39_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[55]~38_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[58]~32_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[58]~33_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[57]~34_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[57]~35_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[56]~37_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[56]~36_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[63]~61_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[63]~40_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[62]~62_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[61]~42_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[61]~57_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[60]~44_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[60]~43_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[67]~59_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[68]~45_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[68]~58_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[67]~46_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[66]~48_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[66]~47_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[65]~49_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[65]~50_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[73]~60_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[73]~51_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[72]~63_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[72]~52_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[71]~54_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[71]~53_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[70]~55_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[70]~56_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~28_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~11\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~13\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~15\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~17\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~19\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~21\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~23\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~22_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~20_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[235]~4_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~18_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[234]~5_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~16_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[233]~6_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[232]~7_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[231]~8_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[230]~9_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[229]~10_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[228]~11_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[227]~12_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[227]~13_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[226]~14_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[226]~15_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[225]~0_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[225]~1_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_5~26_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[224]~3_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[224]~2_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~11_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~13_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~15_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~17_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~19_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~21_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~23_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~25_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|decOut_n[6]~1_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst5|decOut_n[6]~2_combout\ : std_logic;
SIGNAL \inst5|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst5|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst5|decOut_n[3]~4_combout\ : std_logic;
SIGNAL \inst5|decOut_n[6]~5_combout\ : std_logic;
SIGNAL \inst5|decOut_n~6_combout\ : std_logic;
SIGNAL \inst5|decOut_n~7_combout\ : std_logic;
SIGNAL \inst5|decOut_n~8_combout\ : std_logic;
SIGNAL \inst5|decOut_n~9_combout\ : std_logic;
SIGNAL \inst5|decOut_n[3]~10_combout\ : std_logic;
SIGNAL \inst5|decOut_n[3]~11_combout\ : std_logic;
SIGNAL \inst5|decOut_n~12_combout\ : std_logic;
SIGNAL \inst5|decOut_n~13_combout\ : std_logic;
SIGNAL \inst5|decOut_n~14_combout\ : std_logic;
SIGNAL \inst5|decOut_n~15_combout\ : std_logic;
SIGNAL \inst5|decOut_n~16_combout\ : std_logic;
SIGNAL \inst5|decOut_n~17_combout\ : std_logic;
SIGNAL \ALU4|m[0]~5_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~1\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~3\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~5\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~7\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~9\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[7]~11_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \inst6|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[118]~0_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[118]~1_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[117]~3_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[117]~2_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[116]~4_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[116]~5_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[115]~6_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[115]~7_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[114]~9_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[114]~8_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~14_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[113]~11_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[113]~10_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~1_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~3_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~5_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~7_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~9_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[7]~11_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst6|decOut_n~1_combout\ : std_logic;
SIGNAL \inst6|decOut_n~2_combout\ : std_logic;
SIGNAL \inst6|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst6|decOut_n~4_combout\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~11_cout\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~13_cout\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ : std_logic;
SIGNAL \inadadadadadst|decOut_n~0_combout\ : std_logic;
SIGNAL \inadadadadadst|decOut_n~1_combout\ : std_logic;
SIGNAL \inadadadadadst|decOut_n~2_combout\ : std_logic;
SIGNAL \inadadadadadst|decOut_n~3_combout\ : std_logic;
SIGNAL \inadadadadadst|decOut_n~4_combout\ : std_logic;
SIGNAL \inadadadadadst|decOut_n~5_combout\ : std_logic;
SIGNAL \inadadadadadst|decOut_n~6_combout\ : std_logic;
SIGNAL \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\ : std_logic;
SIGNAL \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ : std_logic;
SIGNAL \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\ : std_logic;
SIGNAL \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\ : std_logic;
SIGNAL \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|op_6~7_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|op_6~11_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|op_6~13_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ : std_logic;
SIGNAL \instasdadadsad|decOut_n~0_combout\ : std_logic;
SIGNAL \instasdadadsad|decOut_n~1_combout\ : std_logic;
SIGNAL \instasdadadsad|decOut_n~2_combout\ : std_logic;
SIGNAL \instasdadadsad|decOut_n~3_combout\ : std_logic;
SIGNAL \instasdadadsad|decOut_n~4_combout\ : std_logic;
SIGNAL \instasdadadsad|decOut_n~5_combout\ : std_logic;
SIGNAL \instasdadadsad|decOut_n~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ : std_logic;
SIGNAL \ALU4|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALU4|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALU4|Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALU4|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALU4|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \inst6|ALT_INV_decOut_n~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[5]~8_combout\ : std_logic;
SIGNAL \instasdadasd3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[5]~8_combout\ : std_logic;

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
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\inst6|ALT_INV_decOut_n~2_combout\ <= NOT \inst6|decOut_n~2_combout\;
\inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[5]~8_combout\ <= NOT \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\;
\instasdadasd3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[5]~8_combout\ <= NOT \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\;
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
	i => \inst|decOut_n[6]~5_combout\,
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
	i => \inst|decOut_n~7_combout\,
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
	i => \inst|decOut_n~9_combout\,
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
	i => \inst|decOut_n[3]~11_combout\,
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
	i => \inst|decOut_n~14_combout\,
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
	i => \inst|decOut_n~16_combout\,
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
	i => \inst|decOut_n~18_combout\,
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
	i => \inst5|decOut_n[6]~5_combout\,
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
	i => \inst5|decOut_n~7_combout\,
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
	i => \inst5|decOut_n~9_combout\,
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
	i => \inst5|decOut_n[3]~11_combout\,
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
	i => \inst5|decOut_n~13_combout\,
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
	i => \inst5|decOut_n~15_combout\,
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
	i => \inst5|decOut_n~17_combout\,
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
	i => \inst6|decOut_n[6]~0_combout\,
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
	i => \inst6|decOut_n~1_combout\,
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
	i => \inst6|ALT_INV_decOut_n~2_combout\,
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
	i => \inst6|decOut_n[3]~3_combout\,
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
	i => \inst6|decOut_n~4_combout\,
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
	i => \ALT_INV_KEY[2]~input_o\,
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
	i => \inst6|decOut_n[3]~3_combout\,
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
	i => \inadadadadadst|decOut_n~0_combout\,
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
	i => \inadadadadadst|decOut_n~1_combout\,
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
	i => \inadadadadadst|decOut_n~2_combout\,
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
	i => \inadadadadadst|decOut_n~3_combout\,
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
	i => \inadadadadadst|decOut_n~4_combout\,
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
	i => \inadadadadadst|decOut_n~5_combout\,
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
	i => \inadadadadadst|decOut_n~6_combout\,
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
	i => VCC,
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
	i => \instasdadasd3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[5]~8_combout\,
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
	i => \instasdadasd3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[5]~8_combout\,
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
	i => \instasdadasd3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[5]~8_combout\,
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
	i => GND,
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
	i => GND,
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
	i => \instasdadasd3|Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[5]~8_combout\,
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
	i => \instasdadadsad|decOut_n~0_combout\,
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
	i => \instasdadadsad|decOut_n~1_combout\,
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
	i => \instasdadadsad|decOut_n~2_combout\,
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
	i => \instasdadadsad|decOut_n~3_combout\,
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
	i => \instasdadadsad|decOut_n~4_combout\,
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
	i => \instasdadadsad|decOut_n~5_combout\,
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
	i => \instasdadadsad|decOut_n~6_combout\,
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
	i => VCC,
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
	i => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[5]~8_combout\,
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
	i => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[5]~8_combout\,
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
	i => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[5]~8_combout\,
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
	i => GND,
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
	i => GND,
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
	i => \inst2|Div0|auto_generated|divider|divider|ALT_INV_add_sub_15_result_int[5]~8_combout\,
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
	i => \ALU4|m[3]~2_combout\,
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
	i => \ALU4|m[2]~3_combout\,
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
	i => \ALU4|m[1]~4_combout\,
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
	i => \ALU4|m[0]~5_combout\,
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
	i => \ALU4|Mux1~1_combout\,
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
	i => \ALU4|Mux3~5_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X112_Y15_N0
\ALU4|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le4a\(5) = \SW[3]~input_o\ $ (((\SW[2]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le4a\(5));

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

-- Location: LCCOMB_X111_Y15_N0
\ALU4|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le5a\(3) = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le5a\(3));

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

-- Location: LCCOMB_X112_Y15_N6
\ALU4|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le5a\(2) = (\SW[6]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X111_Y15_N18
\ALU4|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le4a\(4) = (\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X112_Y15_N8
\ALU4|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ = \SW[2]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \ALU4|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X112_Y15_N26
\ALU4|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le4a\(3) = (\ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ & (\ALU4|Mult0|auto_generated|le4a\(5) $ (((\SW[7]~input_o\))))) # (!\ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ & (\ALU4|Mult0|auto_generated|le4a\(5) & 
-- (!\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \ALU4|Mult0|auto_generated|le4a\(5),
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le4a\(3));

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

-- Location: LCCOMB_X110_Y15_N6
\ALU4|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le5a\(1) = (\SW[5]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X112_Y15_N24
\ALU4|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le4a\(2) = (\ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\ALU4|Mult0|auto_generated|le4a\(5) $ (\SW[6]~input_o\)))) # (!\ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[5]~input_o\ & 
-- (\ALU4|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ALU4|Mult0|auto_generated|le4a\(5),
	datac => \SW[6]~input_o\,
	datad => \ALU4|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \ALU4|Mult0|auto_generated|le4a\(2));

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

-- Location: LCCOMB_X112_Y15_N12
\ALU4|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le3a\(4) = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X112_Y15_N2
\ALU4|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le3a\(3) = (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (((\SW[7]~input_o\))))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & (!\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X112_Y15_N28
\ALU4|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le3a\(2) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[5]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X111_Y15_N20
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

-- Location: LCCOMB_X111_Y15_N22
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

-- Location: LCCOMB_X111_Y15_N24
\ALU4|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_1~4_combout\ = ((\ALU4|Mult0|auto_generated|le4a\(2) $ (\ALU4|Mult0|auto_generated|le3a\(4) $ (!\ALU4|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \ALU4|Mult0|auto_generated|op_1~5\ = CARRY((\ALU4|Mult0|auto_generated|le4a\(2) & ((\ALU4|Mult0|auto_generated|le3a\(4)) # (!\ALU4|Mult0|auto_generated|op_1~3\))) # (!\ALU4|Mult0|auto_generated|le4a\(2) & (\ALU4|Mult0|auto_generated|le3a\(4) & 
-- !\ALU4|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|le4a\(2),
	datab => \ALU4|Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_1~3\,
	combout => \ALU4|Mult0|auto_generated|op_1~4_combout\,
	cout => \ALU4|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X111_Y15_N26
\ALU4|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_1~6_combout\ = (\ALU4|Mult0|auto_generated|le4a\(3) & ((\ALU4|Mult0|auto_generated|le5a\(1) & (\ALU4|Mult0|auto_generated|op_1~5\ & VCC)) # (!\ALU4|Mult0|auto_generated|le5a\(1) & (!\ALU4|Mult0|auto_generated|op_1~5\)))) # 
-- (!\ALU4|Mult0|auto_generated|le4a\(3) & ((\ALU4|Mult0|auto_generated|le5a\(1) & (!\ALU4|Mult0|auto_generated|op_1~5\)) # (!\ALU4|Mult0|auto_generated|le5a\(1) & ((\ALU4|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \ALU4|Mult0|auto_generated|op_1~7\ = CARRY((\ALU4|Mult0|auto_generated|le4a\(3) & (!\ALU4|Mult0|auto_generated|le5a\(1) & !\ALU4|Mult0|auto_generated|op_1~5\)) # (!\ALU4|Mult0|auto_generated|le4a\(3) & ((!\ALU4|Mult0|auto_generated|op_1~5\) # 
-- (!\ALU4|Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|le4a\(3),
	datab => \ALU4|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_1~5\,
	combout => \ALU4|Mult0|auto_generated|op_1~6_combout\,
	cout => \ALU4|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X111_Y15_N28
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

-- Location: LCCOMB_X111_Y15_N30
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

-- Location: LCCOMB_X114_Y15_N0
\ALU4|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le5a\(0) = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X112_Y15_N30
\ALU4|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le4a\(1) = (\ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SW[5]~input_o\ $ ((\ALU4|Mult0|auto_generated|le4a\(5))))) # (!\ALU4|Mult0|auto_generated|cs2a[1]~0_combout\ & (((\ALU4|Mult0|auto_generated|le4a\(5) & 
-- !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ALU4|Mult0|auto_generated|le4a\(5),
	datac => \SW[4]~input_o\,
	datad => \ALU4|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \ALU4|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X114_Y15_N26
\ALU4|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le4a\(0) = \SW[3]~input_o\ $ (((\SW[1]~input_o\ & ((\SW[2]~input_o\) # (\SW[4]~input_o\))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X114_Y15_N28
\ALU4|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le3a\(1) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[4]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X114_Y15_N30
\ALU4|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|le3a\(0) = \SW[1]~input_o\ $ (((\SW[0]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ALU4|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X111_Y15_N2
\ALU4|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~0_combout\ = (\SW[1]~input_o\ & (\ALU4|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\SW[1]~input_o\ & (\ALU4|Mult0|auto_generated|le3a\(0) & VCC))
-- \ALU4|Mult0|auto_generated|op_3~1\ = CARRY((\SW[1]~input_o\ & \ALU4|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU4|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \ALU4|Mult0|auto_generated|op_3~0_combout\,
	cout => \ALU4|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X111_Y15_N4
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

-- Location: LCCOMB_X111_Y15_N6
\ALU4|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~4_combout\ = ((\ALU4|Mult0|auto_generated|op_1~0_combout\ $ (\ALU4|Mult0|auto_generated|le4a\(0) $ (!\ALU4|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \ALU4|Mult0|auto_generated|op_3~5\ = CARRY((\ALU4|Mult0|auto_generated|op_1~0_combout\ & ((\ALU4|Mult0|auto_generated|le4a\(0)) # (!\ALU4|Mult0|auto_generated|op_3~3\))) # (!\ALU4|Mult0|auto_generated|op_1~0_combout\ & (\ALU4|Mult0|auto_generated|le4a\(0) 
-- & !\ALU4|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_1~0_combout\,
	datab => \ALU4|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_3~3\,
	combout => \ALU4|Mult0|auto_generated|op_3~4_combout\,
	cout => \ALU4|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X111_Y15_N8
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

-- Location: LCCOMB_X111_Y15_N10
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

-- Location: LCCOMB_X111_Y15_N12
\ALU4|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~10_combout\ = (\SW[1]~input_o\ & ((\ALU4|Mult0|auto_generated|op_1~6_combout\ & (\ALU4|Mult0|auto_generated|op_3~9\ & VCC)) # (!\ALU4|Mult0|auto_generated|op_1~6_combout\ & (!\ALU4|Mult0|auto_generated|op_3~9\)))) # 
-- (!\SW[1]~input_o\ & ((\ALU4|Mult0|auto_generated|op_1~6_combout\ & (!\ALU4|Mult0|auto_generated|op_3~9\)) # (!\ALU4|Mult0|auto_generated|op_1~6_combout\ & ((\ALU4|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \ALU4|Mult0|auto_generated|op_3~11\ = CARRY((\SW[1]~input_o\ & (!\ALU4|Mult0|auto_generated|op_1~6_combout\ & !\ALU4|Mult0|auto_generated|op_3~9\)) # (!\SW[1]~input_o\ & ((!\ALU4|Mult0|auto_generated|op_3~9\) # 
-- (!\ALU4|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU4|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_3~9\,
	combout => \ALU4|Mult0|auto_generated|op_3~10_combout\,
	cout => \ALU4|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X111_Y15_N14
\ALU4|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~12_combout\ = ((\SW[1]~input_o\ $ (\ALU4|Mult0|auto_generated|op_1~8_combout\ $ (!\ALU4|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \ALU4|Mult0|auto_generated|op_3~13\ = CARRY((\SW[1]~input_o\ & ((\ALU4|Mult0|auto_generated|op_1~8_combout\) # (!\ALU4|Mult0|auto_generated|op_3~11\))) # (!\SW[1]~input_o\ & (\ALU4|Mult0|auto_generated|op_1~8_combout\ & 
-- !\ALU4|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU4|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \ALU4|Mult0|auto_generated|op_3~11\,
	combout => \ALU4|Mult0|auto_generated|op_3~12_combout\,
	cout => \ALU4|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X111_Y15_N16
\ALU4|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mult0|auto_generated|op_3~14_combout\ = \ALU4|Mult0|auto_generated|op_1~10_combout\ $ (\ALU4|Mult0|auto_generated|op_3~13\ $ (!\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_1~10_combout\,
	datad => \SW[1]~input_o\,
	cin => \ALU4|Mult0|auto_generated|op_3~13\,
	combout => \ALU4|Mult0|auto_generated|op_3~14_combout\);

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

-- Location: LCCOMB_X110_Y16_N8
\ALU4|m[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|m[3]~2_combout\ = (\SW[9]~input_o\ & (!\SW[10]~input_o\ & (\ALU4|Mult0|auto_generated|op_3~14_combout\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \ALU4|Mult0|auto_generated|op_3~14_combout\,
	datad => \SW[8]~input_o\,
	combout => \ALU4|m[3]~2_combout\);

-- Location: LCCOMB_X110_Y16_N26
\ALU4|m[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|m[2]~3_combout\ = (\ALU4|Mult0|auto_generated|op_3~12_combout\ & (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_3~12_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|m[2]~3_combout\);

-- Location: LCCOMB_X110_Y16_N4
\ALU4|m[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|m[1]~4_combout\ = (\SW[9]~input_o\ & (\ALU4|Mult0|auto_generated|op_3~10_combout\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ALU4|Mult0|auto_generated|op_3~10_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU4|m[1]~4_combout\);

-- Location: LCCOMB_X107_Y34_N4
\inst1|Mod0|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_2~0_combout\ = \ALU4|m[1]~4_combout\ $ (VCC)
-- \inst1|Mod0|auto_generated|divider|divider|op_2~1\ = CARRY(\ALU4|m[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|m[1]~4_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X107_Y34_N6
\inst1|Mod0|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_2~2_combout\ = (\ALU4|m[2]~3_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_2~1\ & VCC)) # (!\ALU4|m[2]~3_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|op_2~1\))
-- \inst1|Mod0|auto_generated|divider|divider|op_2~3\ = CARRY((!\ALU4|m[2]~3_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|m[2]~3_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_2~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X107_Y34_N8
\inst1|Mod0|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_2~4_combout\ = (\ALU4|m[3]~2_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_2~3\ $ (GND))) # (!\ALU4|m[3]~2_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|op_2~3\ & VCC))
-- \inst1|Mod0|auto_generated|divider|divider|op_2~5\ = CARRY((\ALU4|m[3]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|m[3]~2_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_2~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X107_Y34_N10
\inst1|Mod0|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_2~6_combout\ = !\inst1|Mod0|auto_generated|divider|divider|op_2~5\
-- \inst1|Mod0|auto_generated|divider|divider|op_2~7\ = CARRY(!\inst1|Mod0|auto_generated|divider|divider|op_2~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_2~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X107_Y34_N12
\inst1|Mod0|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_2~8_combout\ = \inst1|Mod0|auto_generated|divider|divider|op_2~7\ $ (GND)
-- \inst1|Mod0|auto_generated|divider|divider|op_2~9\ = CARRY(!\inst1|Mod0|auto_generated|divider|divider|op_2~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_2~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_2~9\);

-- Location: LCCOMB_X107_Y34_N14
\inst1|Mod0|auto_generated|divider|divider|op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_2~10_combout\ = !\inst1|Mod0|auto_generated|divider|divider|op_2~9\
-- \inst1|Mod0|auto_generated|divider|divider|op_2~11\ = CARRY(!\inst1|Mod0|auto_generated|divider|divider|op_2~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_2~9\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_2~10_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_2~11\);

-- Location: LCCOMB_X107_Y34_N16
\inst1|Mod0|auto_generated|divider|divider|op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_2~12_combout\ = \inst1|Mod0|auto_generated|divider|divider|op_2~11\ $ (GND)
-- \inst1|Mod0|auto_generated|divider|divider|op_2~13\ = CARRY(!\inst1|Mod0|auto_generated|divider|divider|op_2~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_2~11\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_2~12_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_2~13\);

-- Location: LCCOMB_X107_Y34_N18
\inst1|Mod0|auto_generated|divider|divider|op_2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_2~14_combout\ = !\inst1|Mod0|auto_generated|divider|divider|op_2~13\
-- \inst1|Mod0|auto_generated|divider|divider|op_2~15\ = CARRY(!\inst1|Mod0|auto_generated|divider|divider|op_2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_2~13\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_2~14_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_2~15\);

-- Location: LCCOMB_X107_Y34_N20
\inst1|Mod0|auto_generated|divider|divider|op_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ = \inst1|Mod0|auto_generated|divider|divider|op_2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|op_2~15\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\);

-- Location: LCCOMB_X107_Y34_N24
\inst1|Mod0|auto_generated|divider|divider|StageOut[183]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[183]~80_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[183]~80_combout\);

-- Location: LCCOMB_X108_Y33_N18
\inst1|Mod0|auto_generated|divider|divider|StageOut[182]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[182]~81_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_2~10_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_2~10_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[182]~81_combout\);

-- Location: LCCOMB_X108_Y33_N20
\inst1|Mod0|auto_generated|divider|divider|StageOut[181]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[181]~82_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[181]~82_combout\);

-- Location: LCCOMB_X108_Y33_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[180]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[180]~83_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[180]~83_combout\);

-- Location: LCCOMB_X107_Y34_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[179]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[179]~84_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & \ALU4|m[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \ALU4|m[3]~2_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[179]~84_combout\);

-- Location: LCCOMB_X107_Y33_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[179]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[179]~85_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[179]~85_combout\);

-- Location: LCCOMB_X107_Y34_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[178]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[178]~86_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & \ALU4|m[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datac => \ALU4|m[2]~3_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[178]~86_combout\);

-- Location: LCCOMB_X107_Y33_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[178]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[178]~87_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_2~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[178]~87_combout\);

-- Location: LCCOMB_X107_Y33_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[177]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[177]~88_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & \ALU4|m[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \ALU4|m[1]~4_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[177]~88_combout\);

-- Location: LCCOMB_X107_Y33_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[177]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[177]~89_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[177]~89_combout\);

-- Location: LCCOMB_X110_Y16_N14
\ALU4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Equal0~0_combout\ = (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|Equal0~0_combout\);

-- Location: LCCOMB_X108_Y33_N24
\inst1|Mod0|auto_generated|divider|divider|op_2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_2~18_combout\ = (\ALU4|Equal0~0_combout\ & \ALU4|Mult0|auto_generated|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU4|Equal0~0_combout\,
	datad => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_2~18_combout\);

-- Location: LCCOMB_X108_Y33_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[176]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[176]~91_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~18_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[176]~91_combout\);

-- Location: LCCOMB_X108_Y33_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[176]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[176]~90_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & (\ALU4|Equal0~0_combout\ & \ALU4|Mult0|auto_generated|op_3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datac => \ALU4|Equal0~0_combout\,
	datad => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[176]~90_combout\);

-- Location: LCCOMB_X107_Y33_N4
\inst1|Mod0|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_3~0_combout\ = (((\inst1|Mod0|auto_generated|divider|divider|StageOut[176]~91_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[176]~90_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_3~1\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[176]~91_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[176]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[176]~91_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[176]~90_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X107_Y33_N6
\inst1|Mod0|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_3~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[177]~88_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[177]~89_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_3~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[177]~88_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[177]~89_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_3~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[177]~88_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[177]~89_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[177]~88_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[177]~89_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_3~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X107_Y33_N8
\inst1|Mod0|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_3~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~3\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[178]~86_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[178]~87_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_3~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[178]~86_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[178]~87_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|op_3~5\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|op_3~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[178]~86_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[178]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[178]~86_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[178]~87_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_3~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X107_Y33_N10
\inst1|Mod0|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_3~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~5\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[179]~84_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[179]~85_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_3~5\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[179]~84_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[179]~85_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_3~7\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[179]~84_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[179]~85_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[179]~84_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[179]~85_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_3~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X107_Y33_N12
\inst1|Mod0|auto_generated|divider|divider|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_3~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[180]~83_combout\ & ((GND) # (!\inst1|Mod0|auto_generated|divider|divider|op_3~7\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[180]~83_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_3~7\ $ (GND)))
-- \inst1|Mod0|auto_generated|divider|divider|op_3~9\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[180]~83_combout\) # (!\inst1|Mod0|auto_generated|divider|divider|op_3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[180]~83_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_3~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_3~8_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X107_Y33_N14
\inst1|Mod0|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_3~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[181]~82_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_3~9\ & VCC)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[181]~82_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|op_3~9\))
-- \inst1|Mod0|auto_generated|divider|divider|op_3~11\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[181]~82_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[181]~82_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_3~9\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_3~11\);

-- Location: LCCOMB_X107_Y33_N16
\inst1|Mod0|auto_generated|divider|divider|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_3~12_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[182]~81_combout\ & ((GND) # (!\inst1|Mod0|auto_generated|divider|divider|op_3~11\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[182]~81_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_3~11\ $ (GND)))
-- \inst1|Mod0|auto_generated|divider|divider|op_3~13\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[182]~81_combout\) # (!\inst1|Mod0|auto_generated|divider|divider|op_3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[182]~81_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_3~11\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_3~12_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_3~13\);

-- Location: LCCOMB_X107_Y33_N18
\inst1|Mod0|auto_generated|divider|divider|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_3~14_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[183]~80_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_3~13\ & VCC)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[183]~80_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|op_3~13\))
-- \inst1|Mod0|auto_generated|divider|divider|op_3~15\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[183]~80_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[183]~80_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_3~13\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_3~14_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_3~15\);

-- Location: LCCOMB_X107_Y33_N20
\inst1|Mod0|auto_generated|divider|divider|op_3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_3~16_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~15\ & ((((\inst1|Mod0|auto_generated|divider|divider|op_2~14_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\))))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_3~15\ & (((\inst1|Mod0|auto_generated|divider|divider|op_2~14_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\)) # (GND)))
-- \inst1|Mod0|auto_generated|divider|divider|op_3~17\ = CARRY(((\inst1|Mod0|auto_generated|divider|divider|op_2~14_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\)) # (!\inst1|Mod0|auto_generated|divider|divider|op_3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_2~14_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_3~15\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_3~16_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_3~17\);

-- Location: LCCOMB_X107_Y33_N22
\inst1|Mod0|auto_generated|divider|divider|op_3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_3~18_combout\ = !\inst1|Mod0|auto_generated|divider|divider|op_3~17\
-- \inst1|Mod0|auto_generated|divider|divider|op_3~19\ = CARRY(!\inst1|Mod0|auto_generated|divider|divider|op_3~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_3~17\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_3~18_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_3~19\);

-- Location: LCCOMB_X107_Y33_N24
\inst1|Mod0|auto_generated|divider|divider|op_3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ = \inst1|Mod0|auto_generated|divider|divider|op_3~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|op_3~19\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\);

-- Location: LCCOMB_X112_Y15_N10
\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (\SW[1]~input_o\ & (!\SW[6]~input_o\ & \SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\);

-- Location: LCCOMB_X112_Y15_N4
\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\SW[7]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\) # ((\SW[3]~input_o\) # (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X110_Y15_N24
\ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\SW[2]~input_o\) # ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X110_Y15_N10
\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ = (\SW[6]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datad => \SW[6]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: LCCOMB_X111_Y16_N12
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

-- Location: LCCOMB_X111_Y16_N14
\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & 
-- ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\SW[1]~input_o\ & !\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\) # (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X111_Y16_N16
\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\SW[2]~input_o\ 
-- & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X111_Y16_N18
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

-- Location: LCCOMB_X111_Y16_N24
\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\SW[3]~input_o\ & (((\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)))) # (!\SW[3]~input_o\ & 
-- ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\))) # (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\);

-- Location: LCCOMB_X111_Y16_N20
\ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\SW[3]~input_o\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\SW[3]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ 
-- & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X111_Y16_N30
\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[5]~input_o\)))) # (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[3]~input_o\ & (\ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X111_Y16_N2
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

-- Location: LCCOMB_X111_Y16_N4
\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\ & (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\ & 
-- ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (\SW[1]~input_o\ & !\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\) # (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X111_Y16_N6
\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ $ (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ & !\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # (!\SW[2]~input_o\ 
-- & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\) # (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datad => VCC,
	cin => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X111_Y16_N8
\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\SW[3]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & 
-- (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\SW[3]~input_o\ & ((!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\))) # 
-- (!\SW[3]~input_o\ & (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & !\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datad => VCC,
	cin => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X111_Y16_N10
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

-- Location: LCCOMB_X111_Y16_N0
\ALU4|Mod0|auto_generated|divider|divider|StageOut[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X110_Y15_N4
\ALU4|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux0~2_combout\ = (\SW[3]~input_o\ & ((\SW[9]~input_o\ $ (\SW[7]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[9]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU4|Mux0~2_combout\);

-- Location: LCCOMB_X110_Y15_N22
\ALU4|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux0~3_combout\ = (\ALU4|Mux0~2_combout\ & ((\SW[9]~input_o\) # ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\) # (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datac => \ALU4|Mux0~2_combout\,
	datad => \SW[8]~input_o\,
	combout => \ALU4|Mux0~3_combout\);

-- Location: LCCOMB_X110_Y15_N30
\ALU4|Mod0|auto_generated|divider|divider|selnose[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\ = (!\SW[2]~input_o\ & !\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\);

-- Location: LCCOMB_X110_Y15_N16
\ALU4|Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|selnose\(0) = ((\SW[1]~input_o\) # ((!\SW[7]~input_o\ & \SW[0]~input_o\))) # (!\ALU4|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X110_Y16_N16
\ALU4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux3~0_combout\ = (\SW[10]~input_o\) # ((\SW[8]~input_o\ & \SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y16_N2
\ALU4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Equal0~1_combout\ = (!\SW[10]~input_o\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|Equal0~1_combout\);

-- Location: LCCOMB_X110_Y14_N8
\ALU4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~0_combout\ = \SW[8]~input_o\ $ (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \ALU4|Add0~0_combout\);

-- Location: LCCOMB_X110_Y14_N10
\ALU4|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~1_combout\ = \SW[8]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \ALU4|Add0~1_combout\);

-- Location: LCCOMB_X110_Y14_N4
\ALU4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~2_combout\ = \SW[1]~input_o\ $ (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[8]~input_o\,
	combout => \ALU4|Add0~2_combout\);

-- Location: LCCOMB_X110_Y14_N6
\ALU4|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~3_combout\ = \SW[8]~input_o\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \ALU4|Add0~3_combout\);

-- Location: LCCOMB_X110_Y14_N14
\ALU4|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~5_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datad => VCC,
	cout => \ALU4|Add0~5_cout\);

-- Location: LCCOMB_X110_Y14_N16
\ALU4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~6_combout\ = (\ALU4|Add0~3_combout\ & ((\SW[4]~input_o\ & (\ALU4|Add0~5_cout\ & VCC)) # (!\SW[4]~input_o\ & (!\ALU4|Add0~5_cout\)))) # (!\ALU4|Add0~3_combout\ & ((\SW[4]~input_o\ & (!\ALU4|Add0~5_cout\)) # (!\SW[4]~input_o\ & 
-- ((\ALU4|Add0~5_cout\) # (GND)))))
-- \ALU4|Add0~7\ = CARRY((\ALU4|Add0~3_combout\ & (!\SW[4]~input_o\ & !\ALU4|Add0~5_cout\)) # (!\ALU4|Add0~3_combout\ & ((!\ALU4|Add0~5_cout\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Add0~3_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \ALU4|Add0~5_cout\,
	combout => \ALU4|Add0~6_combout\,
	cout => \ALU4|Add0~7\);

-- Location: LCCOMB_X110_Y14_N18
\ALU4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~8_combout\ = ((\SW[5]~input_o\ $ (\ALU4|Add0~2_combout\ $ (!\ALU4|Add0~7\)))) # (GND)
-- \ALU4|Add0~9\ = CARRY((\SW[5]~input_o\ & ((\ALU4|Add0~2_combout\) # (!\ALU4|Add0~7\))) # (!\SW[5]~input_o\ & (\ALU4|Add0~2_combout\ & !\ALU4|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ALU4|Add0~2_combout\,
	datad => VCC,
	cin => \ALU4|Add0~7\,
	combout => \ALU4|Add0~8_combout\,
	cout => \ALU4|Add0~9\);

-- Location: LCCOMB_X110_Y14_N20
\ALU4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~10_combout\ = (\SW[6]~input_o\ & ((\ALU4|Add0~1_combout\ & (\ALU4|Add0~9\ & VCC)) # (!\ALU4|Add0~1_combout\ & (!\ALU4|Add0~9\)))) # (!\SW[6]~input_o\ & ((\ALU4|Add0~1_combout\ & (!\ALU4|Add0~9\)) # (!\ALU4|Add0~1_combout\ & ((\ALU4|Add0~9\) # 
-- (GND)))))
-- \ALU4|Add0~11\ = CARRY((\SW[6]~input_o\ & (!\ALU4|Add0~1_combout\ & !\ALU4|Add0~9\)) # (!\SW[6]~input_o\ & ((!\ALU4|Add0~9\) # (!\ALU4|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \ALU4|Add0~1_combout\,
	datad => VCC,
	cin => \ALU4|Add0~9\,
	combout => \ALU4|Add0~10_combout\,
	cout => \ALU4|Add0~11\);

-- Location: LCCOMB_X110_Y14_N22
\ALU4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Add0~12_combout\ = \ALU4|Add0~0_combout\ $ (\ALU4|Add0~11\ $ (!\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|Add0~0_combout\,
	datad => \SW[7]~input_o\,
	cin => \ALU4|Add0~11\,
	combout => \ALU4|Add0~12_combout\);

-- Location: LCCOMB_X110_Y15_N12
\ALU4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux0~0_combout\ = (\ALU4|Equal0~1_combout\ & ((\ALU4|Mux3~0_combout\) # ((\ALU4|Mult0|auto_generated|op_3~6_combout\)))) # (!\ALU4|Equal0~1_combout\ & (!\ALU4|Mux3~0_combout\ & ((\ALU4|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Equal0~1_combout\,
	datab => \ALU4|Mux3~0_combout\,
	datac => \ALU4|Mult0|auto_generated|op_3~6_combout\,
	datad => \ALU4|Add0~12_combout\,
	combout => \ALU4|Mux0~0_combout\);

-- Location: LCCOMB_X110_Y15_N18
\ALU4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux0~1_combout\ = (\ALU4|Mux3~0_combout\ & ((\ALU4|Mux0~0_combout\ & ((!\ALU4|Mod0|auto_generated|divider|divider|selnose\(0)))) # (!\ALU4|Mux0~0_combout\ & (\ALU4|Mux0~3_combout\)))) # (!\ALU4|Mux3~0_combout\ & (((\ALU4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux0~3_combout\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|selnose\(0),
	datac => \ALU4|Mux3~0_combout\,
	datad => \ALU4|Mux0~0_combout\,
	combout => \ALU4|Mux0~1_combout\);

-- Location: LCCOMB_X108_Y35_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[192]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[192]~103_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & \ALU4|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \ALU4|Mux0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[192]~103_combout\);

-- Location: LCCOMB_X108_Y35_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[192]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[192]~102_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & \ALU4|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \ALU4|Mux0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[192]~102_combout\);

-- Location: LCCOMB_X108_Y35_N6
\inst1|Mod0|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~0_combout\ = (((\inst1|Mod0|auto_generated|divider|divider|StageOut[192]~103_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[192]~102_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_4~1\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[192]~103_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[192]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[192]~103_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[192]~102_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X107_Y35_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[201]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[201]~93_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~16_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_3~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[201]~93_combout\);

-- Location: LCCOMB_X107_Y34_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[201]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[201]~92_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|op_2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[201]~92_combout\);

-- Location: LCCOMB_X108_Y34_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[200]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[200]~139_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_2~12_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[200]~139_combout\);

-- Location: LCCOMB_X108_Y34_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[200]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[200]~94_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~14_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~14_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[200]~94_combout\);

-- Location: LCCOMB_X108_Y33_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[199]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[199]~95_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~12_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[199]~95_combout\);

-- Location: LCCOMB_X108_Y33_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[199]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[199]~140_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_2~10_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_2~10_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[199]~140_combout\);

-- Location: LCCOMB_X108_Y33_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[198]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[198]~141_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|op_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[198]~141_combout\);

-- Location: LCCOMB_X108_Y33_N22
\inst1|Mod0|auto_generated|divider|divider|StageOut[198]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[198]~96_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[198]~96_combout\);

-- Location: LCCOMB_X107_Y35_N18
\inst1|Mod0|auto_generated|divider|divider|StageOut[197]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[197]~97_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~8_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[197]~97_combout\);

-- Location: LCCOMB_X108_Y33_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[197]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[197]~142_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|op_2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[197]~142_combout\);

-- Location: LCCOMB_X107_Y35_N12
\inst1|Mod0|auto_generated|divider|divider|StageOut[196]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[196]~98_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[196]~98_combout\);

-- Location: LCCOMB_X107_Y34_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[196]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[196]~163_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & (\ALU4|m[3]~2_combout\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|m[3]~2_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[196]~163_combout\);

-- Location: LCCOMB_X108_Y34_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[195]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[195]~99_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~4_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_3~4_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[195]~99_combout\);

-- Location: LCCOMB_X107_Y34_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[195]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[195]~164_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & ((\ALU4|m[2]~3_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \ALU4|m[2]~3_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[195]~164_combout\);

-- Location: LCCOMB_X107_Y34_N22
\inst1|Mod0|auto_generated|divider|divider|StageOut[194]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[194]~165_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & (\ALU4|m[1]~4_combout\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|m[1]~4_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[194]~165_combout\);

-- Location: LCCOMB_X108_Y35_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[194]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[194]~100_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_3~2_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[194]~100_combout\);

-- Location: LCCOMB_X108_Y33_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[193]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[193]~101_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~0_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[193]~101_combout\);

-- Location: LCCOMB_X108_Y33_N16
\inst1|Mod0|auto_generated|divider|divider|StageOut[193]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[193]~143_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[176]~90_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[176]~90_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_2~18_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[193]~143_combout\);

-- Location: LCCOMB_X108_Y35_N8
\inst1|Mod0|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[193]~101_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[193]~143_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_4~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[193]~101_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[193]~143_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_4~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[193]~101_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[193]~143_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[193]~101_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[193]~143_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_4~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X108_Y35_N10
\inst1|Mod0|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~3\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[194]~165_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[194]~100_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_4~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[194]~165_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[194]~100_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|op_4~5\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|op_4~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[194]~165_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[194]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[194]~165_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[194]~100_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_4~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X108_Y35_N12
\inst1|Mod0|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~5\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[195]~99_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[195]~164_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_4~5\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[195]~99_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[195]~164_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_4~7\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[195]~99_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[195]~164_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[195]~99_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[195]~164_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_4~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X108_Y35_N14
\inst1|Mod0|auto_generated|divider|divider|op_4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~7\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[196]~98_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[196]~163_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|op_4~7\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[196]~98_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[196]~163_combout\) # (GND))))
-- \inst1|Mod0|auto_generated|divider|divider|op_4~9\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[196]~98_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[196]~163_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[196]~98_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[196]~163_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_4~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~8_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_4~9\);

-- Location: LCCOMB_X108_Y35_N16
\inst1|Mod0|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~9\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[197]~97_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[197]~142_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_4~9\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[197]~97_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[197]~142_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_4~11\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[197]~97_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[197]~142_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[197]~97_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[197]~142_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_4~9\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~10_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_4~11\);

-- Location: LCCOMB_X108_Y35_N18
\inst1|Mod0|auto_generated|divider|divider|op_4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~12_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~11\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[198]~141_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[198]~96_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|op_4~11\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[198]~141_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[198]~96_combout\) # (GND))))
-- \inst1|Mod0|auto_generated|divider|divider|op_4~13\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[198]~141_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[198]~96_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[198]~141_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[198]~96_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_4~11\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_4~13\);

-- Location: LCCOMB_X108_Y35_N20
\inst1|Mod0|auto_generated|divider|divider|op_4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~14_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~13\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[199]~95_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[199]~140_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_4~13\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[199]~95_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[199]~140_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_4~15\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[199]~95_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[199]~140_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[199]~95_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[199]~140_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_4~13\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~14_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_4~15\);

-- Location: LCCOMB_X108_Y35_N22
\inst1|Mod0|auto_generated|divider|divider|op_4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~16_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~15\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[200]~139_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[200]~94_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|op_4~15\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[200]~139_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[200]~94_combout\) # (GND))))
-- \inst1|Mod0|auto_generated|divider|divider|op_4~17\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[200]~139_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[200]~94_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[200]~139_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[200]~94_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_4~15\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~16_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_4~17\);

-- Location: LCCOMB_X108_Y35_N24
\inst1|Mod0|auto_generated|divider|divider|op_4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~18_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~17\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[201]~93_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[201]~92_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|op_4~17\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[201]~93_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[201]~92_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|op_4~19\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[201]~93_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[201]~92_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_4~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[201]~93_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[201]~92_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_4~17\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~18_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_4~19\);

-- Location: LCCOMB_X108_Y35_N26
\inst1|Mod0|auto_generated|divider|divider|op_4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~20_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~19\ & ((((\inst1|Mod0|auto_generated|divider|divider|op_3~18_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\))))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_4~19\ & (((\inst1|Mod0|auto_generated|divider|divider|op_3~18_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\)) # (GND)))
-- \inst1|Mod0|auto_generated|divider|divider|op_4~21\ = CARRY(((\inst1|Mod0|auto_generated|divider|divider|op_3~18_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\)) # (!\inst1|Mod0|auto_generated|divider|divider|op_4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_3~18_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_4~19\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~20_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_4~21\);

-- Location: LCCOMB_X108_Y35_N28
\inst1|Mod0|auto_generated|divider|divider|op_4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~22_combout\ = !\inst1|Mod0|auto_generated|divider|divider|op_4~21\
-- \inst1|Mod0|auto_generated|divider|divider|op_4~23\ = CARRY(!\inst1|Mod0|auto_generated|divider|divider|op_4~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|op_4~21\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~22_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|op_4~23\);

-- Location: LCCOMB_X108_Y35_N30
\inst1|Mod0|auto_generated|divider|divider|op_4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ = \inst1|Mod0|auto_generated|divider|divider|op_4~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|op_4~23\,
	combout => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\);

-- Location: LCCOMB_X107_Y35_N16
\inst1|Mod0|auto_generated|divider|divider|StageOut[219]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[219]~105_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[219]~105_combout\);

-- Location: LCCOMB_X107_Y35_N22
\inst1|Mod0|auto_generated|divider|divider|StageOut[219]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[219]~104_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_3~18_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[219]~104_combout\);

-- Location: LCCOMB_X107_Y35_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[218]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[218]~106_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[218]~106_combout\);

-- Location: LCCOMB_X107_Y35_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[218]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[218]~144_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[201]~92_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|op_3~16_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_3~16_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[201]~92_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[218]~144_combout\);

-- Location: LCCOMB_X108_Y34_N20
\inst1|Mod0|auto_generated|divider|divider|StageOut[217]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[217]~107_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[217]~107_combout\);

-- Location: LCCOMB_X108_Y34_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[217]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[217]~145_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[200]~139_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~14_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[200]~139_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[217]~145_combout\);

-- Location: LCCOMB_X107_Y38_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[216]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[216]~108_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[216]~108_combout\);

-- Location: LCCOMB_X108_Y33_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[216]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[216]~146_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[199]~140_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|op_3~12_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_3~12_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[199]~140_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[216]~146_combout\);

-- Location: LCCOMB_X108_Y33_N12
\inst1|Mod0|auto_generated|divider|divider|StageOut[215]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[215]~147_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[198]~141_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|op_3~10_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[198]~141_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[215]~147_combout\);

-- Location: LCCOMB_X108_Y38_N24
\inst1|Mod0|auto_generated|divider|divider|StageOut[215]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[215]~109_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[215]~109_combout\);

-- Location: LCCOMB_X107_Y35_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[214]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[214]~148_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[197]~142_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|op_3~8_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_3~8_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[197]~142_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[214]~148_combout\);

-- Location: LCCOMB_X107_Y35_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[214]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[214]~110_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[214]~110_combout\);

-- Location: LCCOMB_X107_Y35_N20
\inst1|Mod0|auto_generated|divider|divider|StageOut[213]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[213]~149_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[196]~163_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|op_3~6_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_3~6_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[196]~163_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[213]~149_combout\);

-- Location: LCCOMB_X107_Y35_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[213]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[213]~111_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[213]~111_combout\);

-- Location: LCCOMB_X108_Y34_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[212]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[212]~150_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[195]~164_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|op_3~4_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[195]~164_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~4_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[212]~150_combout\);

-- Location: LCCOMB_X108_Y34_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[212]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[212]~112_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~6_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_4~6_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[212]~112_combout\);

-- Location: LCCOMB_X108_Y34_N24
\inst1|Mod0|auto_generated|divider|divider|StageOut[211]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[211]~113_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~4_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[211]~113_combout\);

-- Location: LCCOMB_X108_Y34_N12
\inst1|Mod0|auto_generated|divider|divider|StageOut[211]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[211]~151_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[194]~165_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~2_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[194]~165_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[211]~151_combout\);

-- Location: LCCOMB_X108_Y38_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[210]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[210]~114_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[210]~114_combout\);

-- Location: LCCOMB_X108_Y33_N14
\inst1|Mod0|auto_generated|divider|divider|StageOut[210]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[210]~152_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[193]~143_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[193]~143_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[210]~152_combout\);

-- Location: LCCOMB_X108_Y34_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[209]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[209]~116_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~0_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_4~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[209]~116_combout\);

-- Location: LCCOMB_X108_Y34_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[209]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[209]~115_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \ALU4|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \ALU4|Mux0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[209]~115_combout\);

-- Location: LCCOMB_X110_Y15_N28
\ALU4|Mod0|auto_generated|divider|divider|selnose[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((\SW[0]~input_o\ & !\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datad => \SW[6]~input_o\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\);

-- Location: LCCOMB_X110_Y16_N18
\ALU4|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux1~2_combout\ = (\SW[2]~input_o\ & ((\SW[6]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[9]~input_o\ & ((\SW[6]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU4|Mux1~2_combout\);

-- Location: LCCOMB_X111_Y16_N26
\ALU4|Mod0|auto_generated|divider|divider|StageOut[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\))) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datad => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\);

-- Location: LCCOMB_X110_Y16_N28
\ALU4|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux1~3_combout\ = (\ALU4|Mux1~2_combout\ & ((\SW[9]~input_o\) # ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\) # (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ALU4|Mux1~2_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\,
	datad => \SW[8]~input_o\,
	combout => \ALU4|Mux1~3_combout\);

-- Location: LCCOMB_X110_Y16_N20
\ALU4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux1~0_combout\ = (\ALU4|Mux3~0_combout\ & ((\ALU4|Mux1~3_combout\) # ((\ALU4|Equal0~1_combout\)))) # (!\ALU4|Mux3~0_combout\ & (((\ALU4|Add0~10_combout\ & !\ALU4|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux3~0_combout\,
	datab => \ALU4|Mux1~3_combout\,
	datac => \ALU4|Add0~10_combout\,
	datad => \ALU4|Equal0~1_combout\,
	combout => \ALU4|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y16_N22
\ALU4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux1~1_combout\ = (\ALU4|Mux1~0_combout\ & (((!\ALU4|Equal0~1_combout\)) # (!\ALU4|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\))) # (!\ALU4|Mux1~0_combout\ & (((\ALU4|Mult0|auto_generated|op_3~4_combout\ & \ALU4|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\,
	datab => \ALU4|Mux1~0_combout\,
	datac => \ALU4|Mult0|auto_generated|op_3~4_combout\,
	datad => \ALU4|Equal0~1_combout\,
	combout => \ALU4|Mux1~1_combout\);

-- Location: LCCOMB_X108_Y38_N20
\inst1|Mod0|auto_generated|divider|divider|StageOut[208]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[208]~117_combout\ = (\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \ALU4|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datac => \ALU4|Mux1~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[208]~117_combout\);

-- Location: LCCOMB_X108_Y38_N14
\inst1|Mod0|auto_generated|divider|divider|StageOut[208]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[208]~118_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \ALU4|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datac => \ALU4|Mux1~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[208]~118_combout\);

-- Location: LCCOMB_X107_Y38_N0
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = (((\inst1|Mod0|auto_generated|divider|divider|StageOut[208]~117_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[208]~118_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[208]~117_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[208]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[208]~117_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[208]~118_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X107_Y38_N2
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[209]~116_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[209]~115_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[209]~116_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[209]~115_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[209]~116_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[209]~115_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[209]~116_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[209]~115_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X107_Y38_N4
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[210]~114_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[210]~152_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[210]~114_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[210]~152_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[210]~114_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[210]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[210]~114_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[210]~152_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\);

-- Location: LCCOMB_X107_Y38_N6
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[211]~113_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[211]~151_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[211]~113_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[211]~151_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[211]~113_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[211]~151_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[211]~113_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[211]~151_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\);

-- Location: LCCOMB_X107_Y38_N8
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[212]~150_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[212]~112_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[212]~150_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[212]~112_combout\) # (GND))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[212]~150_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[212]~112_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[212]~150_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[212]~112_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\);

-- Location: LCCOMB_X107_Y38_N10
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[213]~149_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[213]~111_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[213]~149_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[213]~111_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[213]~149_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[213]~111_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[213]~149_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[213]~111_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~9\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\);

-- Location: LCCOMB_X107_Y38_N12
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[214]~148_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[214]~110_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[214]~148_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[214]~110_combout\) # (GND))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[214]~148_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[214]~110_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[214]~148_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[214]~110_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~11\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\);

-- Location: LCCOMB_X107_Y38_N14
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[215]~147_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[215]~109_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[215]~147_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[215]~109_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[215]~147_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[215]~109_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[215]~147_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[215]~109_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~13\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\);

-- Location: LCCOMB_X107_Y38_N16
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[216]~108_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[216]~146_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[216]~108_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[216]~146_combout\) # (GND))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[216]~108_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[216]~146_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[216]~108_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[216]~146_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~15\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\);

-- Location: LCCOMB_X107_Y38_N18
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[217]~107_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[217]~145_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[217]~107_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[217]~145_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[217]~107_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[217]~145_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[217]~107_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[217]~145_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~17\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\);

-- Location: LCCOMB_X107_Y38_N20
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[218]~106_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[218]~144_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[218]~106_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[218]~144_combout\) # (GND))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[218]~106_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[218]~144_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[218]~106_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[218]~144_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~19\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\);

-- Location: LCCOMB_X107_Y38_N22
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[219]~105_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[219]~104_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[219]~105_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[219]~104_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[219]~105_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[219]~104_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[219]~105_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[219]~104_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~21\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\);

-- Location: LCCOMB_X107_Y38_N24
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\ & ((((!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|op_4~22_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\ & (((!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|op_4~22_combout\)) # (GND)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\ = CARRY(((!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~22_combout\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~23\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\);

-- Location: LCCOMB_X107_Y38_N26
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\ = !\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~27\ = CARRY(!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~25\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~27\);

-- Location: LCCOMB_X107_Y38_N28
\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ = \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~27\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\);

-- Location: LCCOMB_X108_Y34_N14
\inst1|Mod0|auto_generated|divider|divider|StageOut[226]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[226]~166_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & ((\ALU4|Mux0~1_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_4~0_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \ALU4|Mux0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[226]~166_combout\);

-- Location: LCCOMB_X106_Y38_N24
\inst1|Mod0|auto_generated|divider|divider|StageOut[226]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[226]~119_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[226]~119_combout\);

-- Location: LCCOMB_X109_Y42_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[225]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[225]~120_combout\ = (\ALU4|Mux1~1_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU4|Mux1~1_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[225]~120_combout\);

-- Location: LCCOMB_X109_Y42_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[225]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[225]~121_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[225]~121_combout\);

-- Location: LCCOMB_X111_Y16_N28
\ALU4|Mod0|auto_generated|divider|divider|StageOut[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datad => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ALU4|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\);

-- Location: LCCOMB_X110_Y15_N0
\ALU4|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux2~2_combout\ = (\SW[1]~input_o\ & ((\SW[9]~input_o\ $ (\SW[5]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[9]~input_o\ & (\SW[5]~input_o\)) # (!\SW[9]~input_o\ & ((!\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU4|Mux2~2_combout\);

-- Location: LCCOMB_X110_Y15_N26
\ALU4|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux2~3_combout\ = (\ALU4|Mux2~2_combout\ & ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\) # ((\SW[9]~input_o\) # (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\,
	datab => \ALU4|Mux2~2_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU4|Mux2~3_combout\);

-- Location: LCCOMB_X110_Y15_N14
\ALU4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux2~0_combout\ = (\ALU4|Mux3~0_combout\ & (((\ALU4|Equal0~1_combout\)))) # (!\ALU4|Mux3~0_combout\ & ((\ALU4|Equal0~1_combout\ & ((\ALU4|Mult0|auto_generated|op_3~2_combout\))) # (!\ALU4|Equal0~1_combout\ & (\ALU4|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Add0~8_combout\,
	datab => \ALU4|Mux3~0_combout\,
	datac => \ALU4|Equal0~1_combout\,
	datad => \ALU4|Mult0|auto_generated|op_3~2_combout\,
	combout => \ALU4|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y15_N16
\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[5]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[5]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X114_Y15_N18
\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & (!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\ & 
-- ((\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\SW[1]~input_o\ & !\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\SW[1]~input_o\) # (!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X114_Y15_N20
\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\SW[2]~input_o\ $ (\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & ((!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & (!\SW[2]~input_o\ & !\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X114_Y15_N22
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

-- Location: LCCOMB_X110_Y15_N8
\ALU4|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|selnose\(10) = (\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[3]~input_o\,
	combout => \ALU4|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X110_Y15_N2
\ALU4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux2~1_combout\ = (\ALU4|Mux3~0_combout\ & ((\ALU4|Mux2~0_combout\ & ((!\ALU4|Div0|auto_generated|divider|divider|selnose\(10)))) # (!\ALU4|Mux2~0_combout\ & (\ALU4|Mux2~3_combout\)))) # (!\ALU4|Mux3~0_combout\ & (((\ALU4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux2~3_combout\,
	datab => \ALU4|Mux3~0_combout\,
	datac => \ALU4|Mux2~0_combout\,
	datad => \ALU4|Div0|auto_generated|divider|divider|selnose\(10),
	combout => \ALU4|Mux2~1_combout\);

-- Location: LCCOMB_X109_Y42_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[224]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[224]~122_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \ALU4|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \ALU4|Mux2~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[224]~122_combout\);

-- Location: LCCOMB_X109_Y42_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[224]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[224]~123_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \ALU4|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \ALU4|Mux2~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[224]~123_combout\);

-- Location: LCCOMB_X109_Y38_N0
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\ = (((\inst1|Mod0|auto_generated|divider|divider|StageOut[224]~122_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[224]~123_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[224]~122_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[224]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[224]~122_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[224]~123_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\);

-- Location: LCCOMB_X109_Y38_N2
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[225]~120_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[225]~121_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[225]~120_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[225]~121_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[225]~120_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[225]~121_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[225]~120_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[225]~121_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\);

-- Location: LCCOMB_X109_Y38_N4
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[226]~166_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[226]~119_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[226]~166_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[226]~119_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[226]~166_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[226]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[226]~166_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[226]~119_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\);

-- Location: LCCOMB_X108_Y38_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[237]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[237]~124_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & (\inst1|Mod0|auto_generated|divider|divider|op_4~22_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[237]~124_combout\);

-- Location: LCCOMB_X108_Y38_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[237]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[237]~125_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[13]~24_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[237]~125_combout\);

-- Location: LCCOMB_X108_Y38_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[236]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[236]~126_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[12]~22_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[236]~126_combout\);

-- Location: LCCOMB_X107_Y35_N14
\inst1|Mod0|auto_generated|divider|divider|StageOut[236]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[236]~153_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[219]~104_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[219]~104_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[236]~153_combout\);

-- Location: LCCOMB_X107_Y35_N24
\inst1|Mod0|auto_generated|divider|divider|StageOut[235]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[235]~154_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[218]~144_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[218]~144_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[235]~154_combout\);

-- Location: LCCOMB_X108_Y38_N22
\inst1|Mod0|auto_generated|divider|divider|StageOut[235]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[235]~127_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[11]~20_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[235]~127_combout\);

-- Location: LCCOMB_X108_Y38_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[234]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[234]~128_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[10]~18_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[234]~128_combout\);

-- Location: LCCOMB_X108_Y34_N22
\inst1|Mod0|auto_generated|divider|divider|StageOut[234]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[234]~155_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[217]~145_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[217]~145_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[234]~155_combout\);

-- Location: LCCOMB_X108_Y34_N16
\inst1|Mod0|auto_generated|divider|divider|StageOut[233]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[233]~156_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[216]~146_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~14_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[216]~146_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[233]~156_combout\);

-- Location: LCCOMB_X108_Y38_N18
\inst1|Mod0|auto_generated|divider|divider|StageOut[233]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[233]~129_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[9]~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[233]~129_combout\);

-- Location: LCCOMB_X108_Y38_N12
\inst1|Mod0|auto_generated|divider|divider|StageOut[232]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[232]~157_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[215]~147_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[215]~147_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[232]~157_combout\);

-- Location: LCCOMB_X108_Y38_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[232]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[232]~130_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[8]~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[232]~130_combout\);

-- Location: LCCOMB_X106_Y38_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[231]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[231]~131_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[7]~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[231]~131_combout\);

-- Location: LCCOMB_X107_Y35_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[231]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[231]~158_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[214]~148_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[214]~148_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[231]~158_combout\);

-- Location: LCCOMB_X108_Y38_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[230]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[230]~132_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[230]~132_combout\);

-- Location: LCCOMB_X107_Y35_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[230]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[230]~159_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[213]~149_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[213]~149_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[230]~159_combout\);

-- Location: LCCOMB_X106_Y38_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[229]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[229]~133_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[229]~133_combout\);

-- Location: LCCOMB_X108_Y34_N18
\inst1|Mod0|auto_generated|divider|divider|StageOut[229]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[229]~160_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[212]~150_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|op_4~6_combout\ & !\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|op_4~6_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[212]~150_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[229]~160_combout\);

-- Location: LCCOMB_X108_Y38_N16
\inst1|Mod0|auto_generated|divider|divider|StageOut[228]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[228]~134_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[4]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[228]~134_combout\);

-- Location: LCCOMB_X108_Y34_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[228]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[228]~161_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[211]~151_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[211]~151_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|op_4~4_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[228]~161_combout\);

-- Location: LCCOMB_X108_Y38_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[227]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[227]~135_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[227]~135_combout\);

-- Location: LCCOMB_X108_Y38_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[227]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[227]~162_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[210]~152_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\ & \inst1|Mod0|auto_generated|divider|divider|op_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|op_4~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[210]~152_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[227]~162_combout\);

-- Location: LCCOMB_X109_Y38_N6
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[227]~135_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[227]~162_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[227]~135_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[227]~162_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\);

-- Location: LCCOMB_X109_Y38_N8
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[228]~134_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[228]~161_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[228]~134_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[228]~161_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\);

-- Location: LCCOMB_X109_Y38_N10
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~11_cout\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[229]~133_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[229]~160_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[229]~133_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[229]~160_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[5]~9_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~11_cout\);

-- Location: LCCOMB_X109_Y38_N12
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~13_cout\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[230]~132_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[230]~159_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[230]~132_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[230]~159_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[6]~11_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~13_cout\);

-- Location: LCCOMB_X109_Y38_N14
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~15_cout\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[231]~131_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[231]~158_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[231]~131_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[231]~158_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[7]~13_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~15_cout\);

-- Location: LCCOMB_X109_Y38_N16
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~17_cout\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[232]~157_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[232]~130_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[232]~157_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[232]~130_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[8]~15_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~17_cout\);

-- Location: LCCOMB_X109_Y38_N18
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~19_cout\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[233]~156_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[233]~129_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[233]~156_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[233]~129_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[9]~17_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~19_cout\);

-- Location: LCCOMB_X109_Y38_N20
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~21_cout\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[234]~128_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[234]~155_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[234]~128_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[234]~155_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[10]~19_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~21_cout\);

-- Location: LCCOMB_X109_Y38_N22
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~23_cout\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[235]~154_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[235]~127_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[235]~154_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[235]~127_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[11]~21_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~23_cout\);

-- Location: LCCOMB_X109_Y38_N24
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~25_cout\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[236]~126_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[236]~153_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[236]~126_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[236]~153_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[12]~23_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~25_cout\);

-- Location: LCCOMB_X109_Y38_N26
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~27_cout\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[237]~124_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[237]~125_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[237]~124_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[237]~125_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[13]~25_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~27_cout\);

-- Location: LCCOMB_X109_Y38_N28
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~29_cout\ = CARRY(((!\inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\)) 
-- # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~27_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[15]~28_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_14_result_int[14]~26_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[14]~27_cout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~29_cout\);

-- Location: LCCOMB_X109_Y38_N30
\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ = !\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~29_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[15]~29_cout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\);

-- Location: LCCOMB_X109_Y42_N16
\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[226]~166_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[226]~119_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[226]~166_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[226]~119_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[3]~4_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\);

-- Location: LCCOMB_X109_Y42_N20
\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & ((\ALU4|Mux2~1_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[1]~0_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datad => \ALU4|Mux2~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\);

-- Location: LCCOMB_X109_Y42_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[225]~121_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[225]~120_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[225]~121_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[16]~30_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_15_result_int[2]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[225]~120_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\);

-- Location: LCCOMB_X114_Y15_N24
\ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\SW[3]~input_o\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\SW[3]~input_o\ & ((\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ 
-- & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \SW[3]~input_o\,
	datac => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X114_Y15_N2
\ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # 
-- (!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & (\ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\SW[3]~input_o\ & 
-- ((\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \ALU4|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datac => \SW[3]~input_o\,
	datad => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X114_Y15_N4
\ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\SW[5]~input_o\)) # (!\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & (\SW[5]~input_o\)) # (!\SW[3]~input_o\ & ((\ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \ALU4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	combout => \ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X114_Y15_N6
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

-- Location: LCCOMB_X114_Y15_N8
\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\SW[1]~input_o\ & !\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)) # 
-- (!\ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\SW[1]~input_o\) # (!\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X114_Y15_N10
\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & ((!\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # (!\SW[2]~input_o\))) # 
-- (!\ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & (!\SW[2]~input_o\ & !\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X114_Y15_N12
\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & (\SW[3]~input_o\ & !\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)) # 
-- (!\ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & ((\SW[3]~input_o\) # (!\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X114_Y15_N14
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

-- Location: LCCOMB_X110_Y16_N24
\ALU4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux3~1_combout\ = (\SW[8]~input_o\ & (((\SW[4]~input_o\)))) # (!\SW[8]~input_o\ & ((\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\SW[4]~input_o\))) # 
-- (!\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \SW[8]~input_o\,
	datac => \ALU4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \SW[4]~input_o\,
	combout => \ALU4|Mux3~1_combout\);

-- Location: LCCOMB_X110_Y16_N10
\ALU4|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux3~2_combout\ = (\SW[9]~input_o\ & (\SW[8]~input_o\)) # (!\SW[9]~input_o\ & (\ALU4|Mux3~1_combout\ & ((\SW[0]~input_o\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \ALU4|Mux3~1_combout\,
	combout => \ALU4|Mux3~2_combout\);

-- Location: LCCOMB_X110_Y16_N12
\ALU4|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux3~3_combout\ = (\SW[9]~input_o\ & ((\SW[4]~input_o\ & ((!\ALU4|Mux3~2_combout\) # (!\SW[0]~input_o\))) # (!\SW[4]~input_o\ & (\SW[0]~input_o\)))) # (!\SW[9]~input_o\ & (((\ALU4|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \ALU4|Mux3~2_combout\,
	combout => \ALU4|Mux3~3_combout\);

-- Location: LCCOMB_X110_Y16_N30
\ALU4|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux3~4_combout\ = (\ALU4|Equal0~1_combout\ & (((\ALU4|Mux3~0_combout\)))) # (!\ALU4|Equal0~1_combout\ & ((\ALU4|Mux3~0_combout\ & (\ALU4|Mux3~3_combout\)) # (!\ALU4|Mux3~0_combout\ & ((\ALU4|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux3~3_combout\,
	datab => \ALU4|Equal0~1_combout\,
	datac => \ALU4|Mux3~0_combout\,
	datad => \ALU4|Add0~6_combout\,
	combout => \ALU4|Mux3~4_combout\);

-- Location: LCCOMB_X110_Y15_N20
\ALU4|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|Mux3~5_combout\ = (\ALU4|Equal0~1_combout\ & ((\ALU4|Mux3~4_combout\ & (!\ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)) # (!\ALU4|Mux3~4_combout\ & ((\ALU4|Mult0|auto_generated|op_3~0_combout\))))) # 
-- (!\ALU4|Equal0~1_combout\ & (((\ALU4|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Equal0~1_combout\,
	datab => \ALU4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \ALU4|Mux3~4_combout\,
	datad => \ALU4|Mult0|auto_generated|op_3~0_combout\,
	combout => \ALU4|Mux3~5_combout\);

-- Location: LCCOMB_X109_Y46_N10
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ & 
-- \ALU4|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\,
	datad => \ALU4|Mux3~5_combout\,
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y46_N6
\inst|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~3_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ & 
-- \ALU4|Mux3~5_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ & 
-- !\ALU4|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\,
	datad => \ALU4|Mux3~5_combout\,
	combout => \inst|decOut_n[3]~3_combout\);

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

-- Location: LCCOMB_X109_Y46_N16
\inst|decOut_n[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~4_combout\ = (\inst|decOut_n[3]~3_combout\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n[3]~3_combout\,
	datac => \KEY[0]~input_o\,
	combout => \inst|decOut_n[3]~4_combout\);

-- Location: LCCOMB_X109_Y46_N2
\inst|decOut_n[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~1_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & (\ALU4|Mux3~5_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ $ 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\,
	datad => \ALU4|Mux3~5_combout\,
	combout => \inst|decOut_n[3]~1_combout\);

-- Location: LCCOMB_X109_Y46_N12
\inst|decOut_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~2_combout\ = (!\inst|decOut_n[3]~1_combout\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|decOut_n[3]~1_combout\,
	datac => \KEY[0]~input_o\,
	combout => \inst|decOut_n[3]~2_combout\);

-- Location: LCCOMB_X109_Y46_N24
\inst|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~0_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ & 
-- !\ALU4|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\,
	datad => \ALU4|Mux3~5_combout\,
	combout => \inst|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X109_Y46_N4
\inst|decOut_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[6]~5_combout\ = (\inst|decOut_n[3]~4_combout\ & (!\inst|Equal0~0_combout\)) # (!\inst|decOut_n[3]~4_combout\ & (((\inst|decOut_n[6]~0_combout\) # (!\inst|decOut_n[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|decOut_n[3]~4_combout\,
	datac => \inst|decOut_n[3]~2_combout\,
	datad => \inst|decOut_n[6]~0_combout\,
	combout => \inst|decOut_n[6]~5_combout\);

-- Location: LCCOMB_X109_Y46_N30
\inst|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & ((\ALU4|Mux3~5_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ & (\ALU4|Mux3~5_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ $ 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\,
	datad => \ALU4|Mux3~5_combout\,
	combout => \inst|decOut_n~6_combout\);

-- Location: LCCOMB_X109_Y46_N0
\inst|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~7_combout\ = (\inst|decOut_n~6_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \inst|decOut_n~6_combout\,
	combout => \inst|decOut_n~7_combout\);

-- Location: LCCOMB_X109_Y42_N6
\inst|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ & (((!\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & \ALU4|Mux3~5_combout\)))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ & ((\ALU4|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\,
	datad => \ALU4|Mux3~5_combout\,
	combout => \inst|decOut_n~8_combout\);

-- Location: LCCOMB_X109_Y42_N8
\inst|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~9_combout\ = (\inst|decOut_n~8_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n~8_combout\,
	datac => \KEY[0]~input_o\,
	combout => \inst|decOut_n~9_combout\);

-- Location: LCCOMB_X109_Y46_N18
\inst|decOut_n[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~10_combout\ = (!\ALU4|Mux3~5_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\)) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\,
	datad => \ALU4|Mux3~5_combout\,
	combout => \inst|decOut_n[3]~10_combout\);

-- Location: LCCOMB_X109_Y46_N28
\inst|decOut_n[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n[3]~11_combout\ = (\inst|decOut_n[3]~4_combout\ & (\inst|Equal0~0_combout\)) # (!\inst|decOut_n[3]~4_combout\ & (((\inst|decOut_n[3]~10_combout\) # (!\inst|decOut_n[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|decOut_n[3]~10_combout\,
	datac => \inst|decOut_n[3]~2_combout\,
	datad => \inst|decOut_n[3]~4_combout\,
	combout => \inst|decOut_n[3]~11_combout\);

-- Location: LCCOMB_X109_Y46_N8
\inst|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~13_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\) # 
-- (!\ALU4|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\,
	datad => \ALU4|Mux3~5_combout\,
	combout => \inst|decOut_n~13_combout\);

-- Location: LCCOMB_X109_Y46_N22
\inst|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~12_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ & 
-- !\ALU4|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\,
	datad => \ALU4|Mux3~5_combout\,
	combout => \inst|decOut_n~12_combout\);

-- Location: LCCOMB_X109_Y46_N26
\inst|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~14_combout\ = ((\inst|decOut_n~13_combout\) # (\inst|decOut_n~12_combout\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst|decOut_n~13_combout\,
	datac => \inst|decOut_n~12_combout\,
	combout => \inst|decOut_n~14_combout\);

-- Location: LCCOMB_X109_Y46_N20
\inst|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~15_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ & 
-- \ALU4|Mux3~5_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ $ 
-- (\ALU4|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\,
	datad => \ALU4|Mux3~5_combout\,
	combout => \inst|decOut_n~15_combout\);

-- Location: LCCOMB_X109_Y46_N14
\inst|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~16_combout\ = ((\inst|decOut_n~15_combout\) # (\inst|decOut_n~13_combout\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst|decOut_n~15_combout\,
	datac => \inst|decOut_n~13_combout\,
	combout => \inst|decOut_n~16_combout\);

-- Location: LCCOMB_X109_Y42_N10
\inst|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~17_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\ $ 
-- (!\ALU4|Mux3~5_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\ & (\ALU4|Mux3~5_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\ $ 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[242]~137_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[241]~138_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[243]~136_combout\,
	datad => \ALU4|Mux3~5_combout\,
	combout => \inst|decOut_n~17_combout\);

-- Location: LCCOMB_X109_Y42_N12
\inst|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|decOut_n~18_combout\ = (\inst|decOut_n~17_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|decOut_n~17_combout\,
	datac => \KEY[0]~input_o\,
	combout => \inst|decOut_n~18_combout\);

-- Location: LCCOMB_X108_Y27_N10
\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = \ALU4|m[1]~4_combout\ $ (VCC)
-- \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY(\ALU4|m[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|m[1]~4_combout\,
	datad => VCC,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X108_Y27_N12
\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\ALU4|m[2]~3_combout\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & VCC)) # (!\ALU4|m[2]~3_combout\ & 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\ALU4|m[2]~3_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|m[2]~3_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X108_Y27_N14
\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\ALU4|m[3]~2_combout\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ $ (GND))) # (!\ALU4|m[3]~2_combout\ & 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & VCC))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((\ALU4|m[3]~2_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|m[3]~2_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X108_Y27_N16
\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\ = CARRY(!\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y27_N18
\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7_cout\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y25_N0
\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\ = (\ALU4|Mult0|auto_generated|op_3~8_combout\ & \ALU4|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	datad => \ALU4|Equal0~0_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\);

-- Location: LCCOMB_X109_Y27_N2
\inst1|Div0|auto_generated|divider|divider|StageOut[55]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[55]~39_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[55]~39_combout\);

-- Location: LCCOMB_X108_Y27_N20
\inst1|Div0|auto_generated|divider|divider|StageOut[55]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[55]~38_combout\ = (\ALU4|Equal0~0_combout\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \ALU4|Mult0|auto_generated|op_3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Equal0~0_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[55]~38_combout\);

-- Location: LCCOMB_X109_Y27_N22
\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (((\inst1|Div0|auto_generated|divider|divider|StageOut[55]~39_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[55]~38_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[55]~39_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[55]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[55]~39_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[55]~38_combout\,
	datad => VCC,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X108_Y27_N8
\inst1|Div0|auto_generated|divider|divider|StageOut[58]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[58]~32_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \ALU4|m[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \ALU4|m[3]~2_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[58]~32_combout\);

-- Location: LCCOMB_X109_Y27_N8
\inst1|Div0|auto_generated|divider|divider|StageOut[58]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[58]~33_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[58]~33_combout\);

-- Location: LCCOMB_X108_Y27_N26
\inst1|Div0|auto_generated|divider|divider|StageOut[57]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[57]~34_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \ALU4|m[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \ALU4|m[2]~3_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[57]~34_combout\);

-- Location: LCCOMB_X108_Y27_N4
\inst1|Div0|auto_generated|divider|divider|StageOut[57]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[57]~35_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[57]~35_combout\);

-- Location: LCCOMB_X108_Y27_N0
\inst1|Div0|auto_generated|divider|divider|StageOut[56]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[56]~37_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[56]~37_combout\);

-- Location: LCCOMB_X108_Y27_N22
\inst1|Div0|auto_generated|divider|divider|StageOut[56]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[56]~36_combout\ = (\ALU4|m[1]~4_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU4|m[1]~4_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[56]~36_combout\);

-- Location: LCCOMB_X109_Y27_N24
\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[56]~37_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[56]~36_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[56]~37_combout\ & 
-- (!\inst1|Div0|auto_generated|divider|divider|StageOut[56]~36_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[56]~37_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[56]~36_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[56]~37_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[56]~36_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X109_Y27_N26
\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[57]~34_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[57]~35_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((((\inst1|Div0|auto_generated|divider|divider|StageOut[57]~34_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[57]~35_combout\)))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[57]~34_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[57]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[57]~34_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[57]~35_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X109_Y27_N28
\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[58]~32_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[58]~33_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[58]~32_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[58]~33_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\);

-- Location: LCCOMB_X109_Y27_N30
\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ = \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\);

-- Location: LCCOMB_X108_Y27_N28
\inst1|Div0|auto_generated|divider|divider|StageOut[63]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[63]~61_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & 
-- ((\ALU4|m[2]~3_combout\))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \ALU4|m[2]~3_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[63]~61_combout\);

-- Location: LCCOMB_X109_Y27_N20
\inst1|Div0|auto_generated|divider|divider|StageOut[63]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[63]~40_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[63]~40_combout\);

-- Location: LCCOMB_X109_Y27_N6
\inst1|Div0|auto_generated|divider|divider|StageOut[62]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\);

-- Location: LCCOMB_X108_Y27_N6
\inst1|Div0|auto_generated|divider|divider|StageOut[62]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[62]~62_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & 
-- ((\ALU4|m[1]~4_combout\))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datab => \ALU4|m[1]~4_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[62]~62_combout\);

-- Location: LCCOMB_X108_Y27_N30
\inst1|Div0|auto_generated|divider|divider|StageOut[61]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[61]~42_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[61]~42_combout\);

-- Location: LCCOMB_X109_Y27_N0
\inst1|Div0|auto_generated|divider|divider|StageOut[61]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[61]~57_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[55]~38_combout\) # 
-- ((\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[0]~10_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|StageOut[55]~38_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[61]~57_combout\);

-- Location: LCCOMB_X108_Y27_N2
\inst1|Div0|auto_generated|divider|divider|StageOut[60]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[60]~44_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & \ALU4|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \ALU4|Mux0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[60]~44_combout\);

-- Location: LCCOMB_X108_Y27_N24
\inst1|Div0|auto_generated|divider|divider|StageOut[60]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[60]~43_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & \ALU4|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => \ALU4|Mux0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[60]~43_combout\);

-- Location: LCCOMB_X109_Y27_N10
\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ = (((\inst1|Div0|auto_generated|divider|divider|StageOut[60]~44_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[60]~43_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[60]~44_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[60]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[60]~43_combout\,
	datad => VCC,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\);

-- Location: LCCOMB_X109_Y27_N12
\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[61]~42_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[61]~57_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[61]~42_combout\ & 
-- (!\inst1|Div0|auto_generated|divider|divider|StageOut[61]~57_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[61]~42_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[61]~57_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[61]~42_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[61]~57_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X109_Y27_N14
\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[62]~62_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((((\inst1|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[62]~62_combout\)))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[62]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[62]~41_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\);

-- Location: LCCOMB_X109_Y27_N16
\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[63]~61_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[63]~40_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[63]~61_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[63]~40_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\);

-- Location: LCCOMB_X109_Y27_N18
\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ = \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y25_N12
\inst1|Div0|auto_generated|divider|divider|StageOut[67]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[67]~59_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[61]~57_combout\) # 
-- ((\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|StageOut[61]~57_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[67]~59_combout\);

-- Location: LCCOMB_X109_Y25_N2
\inst1|Div0|auto_generated|divider|divider|StageOut[68]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[68]~45_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[68]~45_combout\);

-- Location: LCCOMB_X109_Y27_N4
\inst1|Div0|auto_generated|divider|divider|StageOut[68]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[68]~58_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[62]~62_combout\) # 
-- ((!\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[68]~58_combout\);

-- Location: LCCOMB_X109_Y25_N28
\inst1|Div0|auto_generated|divider|divider|StageOut[67]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[67]~46_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[67]~46_combout\);

-- Location: LCCOMB_X108_Y25_N2
\inst1|Div0|auto_generated|divider|divider|StageOut[66]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[66]~48_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[66]~48_combout\);

-- Location: LCCOMB_X108_Y25_N16
\inst1|Div0|auto_generated|divider|divider|StageOut[66]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[66]~47_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & \ALU4|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \ALU4|Mux0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[66]~47_combout\);

-- Location: LCCOMB_X109_Y25_N30
\inst1|Div0|auto_generated|divider|divider|StageOut[65]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[65]~49_combout\ = (\ALU4|Mux1~1_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux1~1_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[65]~49_combout\);

-- Location: LCCOMB_X109_Y25_N8
\inst1|Div0|auto_generated|divider|divider|StageOut[65]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[65]~50_combout\ = (\ALU4|Mux1~1_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|Mux1~1_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[65]~50_combout\);

-- Location: LCCOMB_X109_Y25_N18
\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\ = (((\inst1|Div0|auto_generated|divider|divider|StageOut[65]~49_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[65]~50_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[65]~49_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[65]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[65]~49_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[65]~50_combout\,
	datad => VCC,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\);

-- Location: LCCOMB_X109_Y25_N20
\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[66]~48_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[66]~47_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[66]~48_combout\ & 
-- (!\inst1|Div0|auto_generated|divider|divider|StageOut[66]~47_combout\)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[66]~48_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[66]~47_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[66]~48_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[66]~47_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~1\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\);

-- Location: LCCOMB_X109_Y25_N22
\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & (((\inst1|Div0|auto_generated|divider|divider|StageOut[67]~59_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[67]~46_combout\)))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((((\inst1|Div0|auto_generated|divider|divider|StageOut[67]~59_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[67]~46_combout\)))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[67]~59_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[67]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[67]~59_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[67]~46_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~3\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\);

-- Location: LCCOMB_X109_Y25_N24
\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[68]~45_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[68]~58_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[68]~45_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[68]~58_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~5\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\);

-- Location: LCCOMB_X109_Y25_N26
\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ = \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y25_N6
\inst1|Div0|auto_generated|divider|divider|StageOut[73]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[73]~60_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[67]~59_combout\) # 
-- ((!\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[67]~59_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[73]~60_combout\);

-- Location: LCCOMB_X108_Y25_N4
\inst1|Div0|auto_generated|divider|divider|StageOut[73]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[73]~51_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~4_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[73]~51_combout\);

-- Location: LCCOMB_X108_Y25_N30
\inst1|Div0|auto_generated|divider|divider|StageOut[72]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[72]~63_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & ((\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & 
-- ((\ALU4|Mux0~1_combout\))) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \ALU4|Mux0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[72]~63_combout\);

-- Location: LCCOMB_X108_Y25_N14
\inst1|Div0|auto_generated|divider|divider|StageOut[72]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[72]~52_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~2_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[72]~52_combout\);

-- Location: LCCOMB_X108_Y25_N8
\inst1|Div0|auto_generated|divider|divider|StageOut[71]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[71]~54_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[1]~0_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[71]~54_combout\);

-- Location: LCCOMB_X109_Y25_N10
\inst1|Div0|auto_generated|divider|divider|StageOut[71]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[71]~53_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & \ALU4|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datad => \ALU4|Mux1~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[71]~53_combout\);

-- Location: LCCOMB_X108_Y25_N10
\inst1|Div0|auto_generated|divider|divider|StageOut[70]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[70]~55_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & \ALU4|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datac => \ALU4|Mux2~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[70]~55_combout\);

-- Location: LCCOMB_X108_Y25_N28
\inst1|Div0|auto_generated|divider|divider|StageOut[70]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[70]~56_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & \ALU4|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datac => \ALU4|Mux2~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[70]~56_combout\);

-- Location: LCCOMB_X108_Y25_N18
\inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[70]~55_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[70]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[70]~55_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[70]~56_combout\,
	datad => VCC,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\);

-- Location: LCCOMB_X108_Y25_N20
\inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[71]~54_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[71]~53_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[71]~54_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[71]~53_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\);

-- Location: LCCOMB_X108_Y25_N22
\inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[72]~63_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[72]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[72]~63_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[72]~52_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\);

-- Location: LCCOMB_X108_Y25_N24
\inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[73]~60_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[73]~51_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[73]~60_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[73]~51_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\);

-- Location: LCCOMB_X108_Y25_N26
\inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ = \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y28_N10
\inst1|Mod1|auto_generated|divider|divider|op_6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~28_combout\ = !\inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_6~28_combout\);

-- Location: LCCOMB_X108_Y28_N0
\inst1|Mod1|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~0_combout\ = \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ $ (GND)
-- \inst1|Mod1|auto_generated|divider|divider|op_5~1\ = CARRY(!\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => VCC,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~0_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X108_Y28_N2
\inst1|Mod1|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~2_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|op_5~1\)) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & (\inst1|Mod1|auto_generated|divider|divider|op_5~1\ & VCC))
-- \inst1|Mod1|auto_generated|divider|divider|op_5~3\ = CARRY((\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_5~1\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~2_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X108_Y28_N4
\inst1|Mod1|auto_generated|divider|divider|op_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~4_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|op_5~3\ & VCC)) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & (\inst1|Mod1|auto_generated|divider|divider|op_5~3\ $ (GND)))
-- \inst1|Mod1|auto_generated|divider|divider|op_5~5\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_5~3\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~4_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X108_Y28_N6
\inst1|Mod1|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~6_combout\ = !\inst1|Mod1|auto_generated|divider|divider|op_5~5\
-- \inst1|Mod1|auto_generated|divider|divider|op_5~7\ = CARRY(!\inst1|Mod1|auto_generated|divider|divider|op_5~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_5~5\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~6_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X108_Y28_N8
\inst1|Mod1|auto_generated|divider|divider|op_5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~8_combout\ = \inst1|Mod1|auto_generated|divider|divider|op_5~7\ $ (GND)
-- \inst1|Mod1|auto_generated|divider|divider|op_5~9\ = CARRY(!\inst1|Mod1|auto_generated|divider|divider|op_5~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_5~7\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~8_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X108_Y28_N10
\inst1|Mod1|auto_generated|divider|divider|op_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~10_combout\ = !\inst1|Mod1|auto_generated|divider|divider|op_5~9\
-- \inst1|Mod1|auto_generated|divider|divider|op_5~11\ = CARRY(!\inst1|Mod1|auto_generated|divider|divider|op_5~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_5~9\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~10_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X108_Y28_N12
\inst1|Mod1|auto_generated|divider|divider|op_5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~12_combout\ = \inst1|Mod1|auto_generated|divider|divider|op_5~11\ $ (GND)
-- \inst1|Mod1|auto_generated|divider|divider|op_5~13\ = CARRY(!\inst1|Mod1|auto_generated|divider|divider|op_5~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_5~11\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~12_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_5~13\);

-- Location: LCCOMB_X108_Y28_N14
\inst1|Mod1|auto_generated|divider|divider|op_5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~14_combout\ = !\inst1|Mod1|auto_generated|divider|divider|op_5~13\
-- \inst1|Mod1|auto_generated|divider|divider|op_5~15\ = CARRY(!\inst1|Mod1|auto_generated|divider|divider|op_5~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_5~13\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~14_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_5~15\);

-- Location: LCCOMB_X108_Y28_N16
\inst1|Mod1|auto_generated|divider|divider|op_5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~16_combout\ = \inst1|Mod1|auto_generated|divider|divider|op_5~15\ $ (GND)
-- \inst1|Mod1|auto_generated|divider|divider|op_5~17\ = CARRY(!\inst1|Mod1|auto_generated|divider|divider|op_5~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_5~15\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~16_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_5~17\);

-- Location: LCCOMB_X108_Y28_N18
\inst1|Mod1|auto_generated|divider|divider|op_5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~18_combout\ = !\inst1|Mod1|auto_generated|divider|divider|op_5~17\
-- \inst1|Mod1|auto_generated|divider|divider|op_5~19\ = CARRY(!\inst1|Mod1|auto_generated|divider|divider|op_5~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_5~17\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~18_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_5~19\);

-- Location: LCCOMB_X108_Y28_N20
\inst1|Mod1|auto_generated|divider|divider|op_5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~20_combout\ = \inst1|Mod1|auto_generated|divider|divider|op_5~19\ $ (GND)
-- \inst1|Mod1|auto_generated|divider|divider|op_5~21\ = CARRY(!\inst1|Mod1|auto_generated|divider|divider|op_5~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_5~19\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~20_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_5~21\);

-- Location: LCCOMB_X108_Y28_N22
\inst1|Mod1|auto_generated|divider|divider|op_5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~22_combout\ = !\inst1|Mod1|auto_generated|divider|divider|op_5~21\
-- \inst1|Mod1|auto_generated|divider|divider|op_5~23\ = CARRY(!\inst1|Mod1|auto_generated|divider|divider|op_5~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_5~21\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~22_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_5~23\);

-- Location: LCCOMB_X108_Y28_N24
\inst1|Mod1|auto_generated|divider|divider|op_5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\ = \inst1|Mod1|auto_generated|divider|divider|op_5~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod1|auto_generated|divider|divider|op_5~23\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\);

-- Location: LCCOMB_X109_Y28_N2
\inst1|Mod1|auto_generated|divider|divider|StageOut[235]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[235]~4_combout\ = (!\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\ & \inst1|Mod1|auto_generated|divider|divider|op_5~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|op_5~20_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[235]~4_combout\);

-- Location: LCCOMB_X109_Y28_N20
\inst1|Mod1|auto_generated|divider|divider|StageOut[234]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[234]~5_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_5~18_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod1|auto_generated|divider|divider|op_5~18_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[234]~5_combout\);

-- Location: LCCOMB_X109_Y28_N30
\inst1|Mod1|auto_generated|divider|divider|StageOut[233]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[233]~6_combout\ = (!\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\ & \inst1|Mod1|auto_generated|divider|divider|op_5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~16_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[233]~6_combout\);

-- Location: LCCOMB_X108_Y28_N28
\inst1|Mod1|auto_generated|divider|divider|StageOut[232]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[232]~7_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_5~14_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~14_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[232]~7_combout\);

-- Location: LCCOMB_X108_Y28_N30
\inst1|Mod1|auto_generated|divider|divider|StageOut[231]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[231]~8_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_5~12_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|op_5~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[231]~8_combout\);

-- Location: LCCOMB_X107_Y28_N24
\inst1|Mod1|auto_generated|divider|divider|StageOut[230]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[230]~9_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_5~10_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~10_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[230]~9_combout\);

-- Location: LCCOMB_X109_Y28_N0
\inst1|Mod1|auto_generated|divider|divider|StageOut[229]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[229]~10_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_5~8_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|op_5~8_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[229]~10_combout\);

-- Location: LCCOMB_X109_Y28_N26
\inst1|Mod1|auto_generated|divider|divider|StageOut[228]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[228]~11_combout\ = (!\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\ & \inst1|Mod1|auto_generated|divider|divider|op_5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~6_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[228]~11_combout\);

-- Location: LCCOMB_X109_Y28_N28
\inst1|Mod1|auto_generated|divider|divider|StageOut[227]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[227]~12_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ & \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[227]~12_combout\);

-- Location: LCCOMB_X109_Y28_N22
\inst1|Mod1|auto_generated|divider|divider|StageOut[227]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[227]~13_combout\ = (!\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\ & \inst1|Mod1|auto_generated|divider|divider|op_5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~4_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[227]~13_combout\);

-- Location: LCCOMB_X109_Y28_N8
\inst1|Mod1|auto_generated|divider|divider|StageOut[226]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[226]~14_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[226]~14_combout\);

-- Location: LCCOMB_X109_Y28_N18
\inst1|Mod1|auto_generated|divider|divider|StageOut[226]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[226]~15_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_5~2_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|op_5~2_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[226]~15_combout\);

-- Location: LCCOMB_X109_Y28_N12
\inst1|Mod1|auto_generated|divider|divider|StageOut[225]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[225]~0_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[225]~0_combout\);

-- Location: LCCOMB_X108_Y28_N26
\inst1|Mod1|auto_generated|divider|divider|StageOut[225]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[225]~1_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_5~0_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod1|auto_generated|divider|divider|op_5~0_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[225]~1_combout\);

-- Location: LCCOMB_X109_Y28_N24
\inst1|Mod1|auto_generated|divider|divider|op_5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_5~26_combout\ = !\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_5~26_combout\);

-- Location: LCCOMB_X109_Y28_N16
\inst1|Mod1|auto_generated|divider|divider|StageOut[224]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[224]~3_combout\ = (!\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\ & \inst1|Mod1|auto_generated|divider|divider|op_5~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|op_5~26_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[224]~3_combout\);

-- Location: LCCOMB_X109_Y28_N6
\inst1|Mod1|auto_generated|divider|divider|StageOut[224]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[224]~2_combout\ = (!\inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\ & \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~8_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[224]~2_combout\);

-- Location: LCCOMB_X110_Y28_N0
\inst1|Mod1|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~0_combout\ = (((\inst1|Mod1|auto_generated|divider|divider|StageOut[224]~3_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[224]~2_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|op_6~1\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[224]~3_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[224]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[224]~3_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[224]~2_combout\,
	datad => VCC,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_6~0_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X110_Y28_N2
\inst1|Mod1|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~2_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_6~1\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[225]~0_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[225]~1_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|op_6~1\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[225]~0_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[225]~1_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|op_6~3\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[225]~0_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[225]~1_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|op_6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[225]~0_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[225]~1_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~1\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_6~2_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X110_Y28_N4
\inst1|Mod1|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~4_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_6~3\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[226]~14_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[226]~15_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|op_6~3\ & ((((\inst1|Mod1|auto_generated|divider|divider|StageOut[226]~14_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[226]~15_combout\)))))
-- \inst1|Mod1|auto_generated|divider|divider|op_6~5\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|op_6~3\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[226]~14_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[226]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[226]~14_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[226]~15_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~3\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_6~4_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X110_Y28_N6
\inst1|Mod1|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~7_cout\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[227]~12_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[227]~13_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|op_6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[227]~12_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[227]~13_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~5\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X110_Y28_N8
\inst1|Mod1|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[228]~11_combout\) # (!\inst1|Mod1|auto_generated|divider|divider|op_6~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[228]~11_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~7_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X110_Y28_N10
\inst1|Mod1|auto_generated|divider|divider|op_6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~11_cout\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[229]~10_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_6~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[229]~10_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~9_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~11_cout\);

-- Location: LCCOMB_X110_Y28_N12
\inst1|Mod1|auto_generated|divider|divider|op_6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~13_cout\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[230]~9_combout\) # (!\inst1|Mod1|auto_generated|divider|divider|op_6~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[230]~9_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~11_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~13_cout\);

-- Location: LCCOMB_X110_Y28_N14
\inst1|Mod1|auto_generated|divider|divider|op_6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~15_cout\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[231]~8_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_6~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[231]~8_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~13_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~15_cout\);

-- Location: LCCOMB_X110_Y28_N16
\inst1|Mod1|auto_generated|divider|divider|op_6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~17_cout\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[232]~7_combout\) # (!\inst1|Mod1|auto_generated|divider|divider|op_6~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[232]~7_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~15_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~17_cout\);

-- Location: LCCOMB_X110_Y28_N18
\inst1|Mod1|auto_generated|divider|divider|op_6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~19_cout\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[233]~6_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_6~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[233]~6_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~17_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~19_cout\);

-- Location: LCCOMB_X110_Y28_N20
\inst1|Mod1|auto_generated|divider|divider|op_6~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~21_cout\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[234]~5_combout\) # (!\inst1|Mod1|auto_generated|divider|divider|op_6~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[234]~5_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~19_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~21_cout\);

-- Location: LCCOMB_X110_Y28_N22
\inst1|Mod1|auto_generated|divider|divider|op_6~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~23_cout\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[235]~4_combout\ & !\inst1|Mod1|auto_generated|divider|divider|op_6~21_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[235]~4_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~21_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~23_cout\);

-- Location: LCCOMB_X110_Y28_N24
\inst1|Mod1|auto_generated|divider|divider|op_6~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~25_cout\ = CARRY(((!\inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\ & \inst1|Mod1|auto_generated|divider|divider|op_5~22_combout\)) # (!\inst1|Mod1|auto_generated|divider|divider|op_6~23_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|op_5~24_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|op_5~22_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~23_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|op_6~25_cout\);

-- Location: LCCOMB_X110_Y28_N26
\inst1|Mod1|auto_generated|divider|divider|op_6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\ = !\inst1|Mod1|auto_generated|divider|divider|op_6~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod1|auto_generated|divider|divider|op_6~25_cout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\);

-- Location: LCCOMB_X109_Y28_N4
\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\ & ((!\inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\))) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\ & (\inst1|Mod1|auto_generated|divider|divider|op_6~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|op_6~28_combout\,
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\);

-- Location: LCCOMB_X109_Y28_N14
\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[224]~2_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[224]~3_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\ & (((\inst1|Mod1|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[224]~2_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[224]~3_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|op_6~0_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\);

-- Location: LCCOMB_X110_Y28_N30
\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[226]~14_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[226]~15_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\ & (((\inst1|Mod1|auto_generated|divider|divider|op_6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[226]~14_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|op_6~4_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[226]~15_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\);

-- Location: LCCOMB_X110_Y28_N28
\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\ = (\inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[225]~0_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[225]~1_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\ & (((\inst1|Mod1|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[225]~0_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[225]~1_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|op_6~26_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|op_6~2_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\);

-- Location: LCCOMB_X113_Y28_N10
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ & 
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\,
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y28_N18
\inst5|decOut_n[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[6]~1_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ $ 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\,
	combout => \inst5|decOut_n[6]~1_combout\);

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

-- Location: LCCOMB_X113_Y28_N20
\inst5|decOut_n[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[6]~2_combout\ = (!\inst5|decOut_n[6]~1_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|decOut_n[6]~1_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst5|decOut_n[6]~2_combout\);

-- Location: LCCOMB_X113_Y28_N8
\inst5|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[6]~0_combout\ = (!\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ & 
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\,
	combout => \inst5|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X113_Y28_N30
\inst5|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[3]~3_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ & 
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ & !\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\,
	combout => \inst5|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X113_Y28_N16
\inst5|decOut_n[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[3]~4_combout\ = (\inst5|decOut_n[3]~3_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|decOut_n[3]~3_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst5|decOut_n[3]~4_combout\);

-- Location: LCCOMB_X113_Y28_N28
\inst5|decOut_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[6]~5_combout\ = (\inst5|decOut_n[3]~4_combout\ & (!\inst5|Equal0~0_combout\)) # (!\inst5|decOut_n[3]~4_combout\ & (((\inst5|decOut_n[6]~0_combout\) # (!\inst5|decOut_n[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~0_combout\,
	datab => \inst5|decOut_n[6]~2_combout\,
	datac => \inst5|decOut_n[6]~0_combout\,
	datad => \inst5|decOut_n[3]~4_combout\,
	combout => \inst5|decOut_n[6]~5_combout\);

-- Location: LCCOMB_X113_Y28_N22
\inst5|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~6_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ $ (((\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\))))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ & !\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\,
	combout => \inst5|decOut_n~6_combout\);

-- Location: LCCOMB_X113_Y28_N0
\inst5|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~7_combout\ = (\inst5|decOut_n~6_combout\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|decOut_n~6_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst5|decOut_n~7_combout\);

-- Location: LCCOMB_X113_Y28_N2
\inst5|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~8_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\))) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\ & ((!\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\))) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\,
	combout => \inst5|decOut_n~8_combout\);

-- Location: LCCOMB_X114_Y28_N8
\inst5|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~9_combout\ = (\inst5|decOut_n~8_combout\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n~8_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst5|decOut_n~9_combout\);

-- Location: LCCOMB_X113_Y28_N4
\inst5|decOut_n[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[3]~10_combout\ = (!\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\)) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\,
	combout => \inst5|decOut_n[3]~10_combout\);

-- Location: LCCOMB_X113_Y28_N6
\inst5|decOut_n[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n[3]~11_combout\ = (\inst5|decOut_n[3]~4_combout\ & (\inst5|Equal0~0_combout\)) # (!\inst5|decOut_n[3]~4_combout\ & (((\inst5|decOut_n[3]~10_combout\) # (!\inst5|decOut_n[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~0_combout\,
	datab => \inst5|decOut_n[3]~4_combout\,
	datac => \inst5|decOut_n[3]~10_combout\,
	datad => \inst5|decOut_n[6]~2_combout\,
	combout => \inst5|decOut_n[3]~11_combout\);

-- Location: LCCOMB_X113_Y28_N24
\inst5|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~12_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & !\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\,
	combout => \inst5|decOut_n~12_combout\);

-- Location: LCCOMB_X114_Y28_N18
\inst5|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~13_combout\ = (\inst5|decOut_n~12_combout\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|decOut_n~12_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst5|decOut_n~13_combout\);

-- Location: LCCOMB_X113_Y28_N26
\inst5|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~14_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\)) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\))))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ $ (\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\,
	combout => \inst5|decOut_n~14_combout\);

-- Location: LCCOMB_X114_Y28_N12
\inst5|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~15_combout\ = (\inst5|decOut_n~14_combout\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|decOut_n~14_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst5|decOut_n~15_combout\);

-- Location: LCCOMB_X113_Y28_N12
\inst5|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~16_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ $ 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\ & 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\ $ (\inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[240]~18_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[241]~19_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[243]~17_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[242]~16_combout\,
	combout => \inst5|decOut_n~16_combout\);

-- Location: LCCOMB_X114_Y28_N14
\inst5|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|decOut_n~17_combout\ = (\inst5|decOut_n~16_combout\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|decOut_n~16_combout\,
	datad => \KEY[1]~input_o\,
	combout => \inst5|decOut_n~17_combout\);

-- Location: LCCOMB_X110_Y16_N0
\ALU4|m[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU4|m[0]~5_combout\ = (\SW[9]~input_o\ & (!\SW[10]~input_o\ & (\ALU4|Mult0|auto_generated|op_3~8_combout\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \ALU4|Mult0|auto_generated|op_3~8_combout\,
	datad => \SW[8]~input_o\,
	combout => \ALU4|m[0]~5_combout\);

-- Location: LCCOMB_X110_Y21_N8
\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~0_combout\ = \ALU4|Mux0~1_combout\ $ (VCC)
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~1\ = CARRY(\ALU4|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|Mux0~1_combout\,
	datad => VCC,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~0_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~1\);

-- Location: LCCOMB_X110_Y21_N10
\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~2_combout\ = (\ALU4|m[0]~5_combout\ & (\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~1\ & VCC)) # (!\ALU4|m[0]~5_combout\ & 
-- (!\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~1\))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~3\ = CARRY((!\ALU4|m[0]~5_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|m[0]~5_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~1\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~2_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~3\);

-- Location: LCCOMB_X110_Y21_N12
\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~4_combout\ = (\ALU4|m[1]~4_combout\ & ((GND) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~3\))) # (!\ALU4|m[1]~4_combout\ & 
-- (\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~3\ $ (GND)))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~5\ = CARRY((\ALU4|m[1]~4_combout\) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|m[1]~4_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~3\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~4_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~5\);

-- Location: LCCOMB_X110_Y21_N14
\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~6_combout\ = (\ALU4|m[2]~3_combout\ & (!\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~5\)) # (!\ALU4|m[2]~3_combout\ & 
-- ((\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~5\) # (GND)))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~7\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~5\) # (!\ALU4|m[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|m[2]~3_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~5\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~6_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~7\);

-- Location: LCCOMB_X110_Y21_N16
\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~8_combout\ = (\ALU4|m[3]~2_combout\ & (\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~7\ $ (GND))) # (!\ALU4|m[3]~2_combout\ & 
-- (!\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~7\ & VCC))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~9\ = CARRY((\ALU4|m[3]~2_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|m[3]~2_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~7\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~8_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~9\);

-- Location: LCCOMB_X110_Y21_N18
\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[7]~11_cout\ = CARRY(!\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~9\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[7]~11_cout\);

-- Location: LCCOMB_X110_Y21_N20
\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\ = \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[7]~11_cout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X110_Y21_N0
\inst6|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n[6]~0_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	datad => \KEY[2]~input_o\,
	combout => \inst6|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X110_Y21_N2
\inst1|Div1|auto_generated|divider|divider|StageOut[118]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[118]~0_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\ & \ALU4|m[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	datac => \ALU4|m[3]~2_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[118]~0_combout\);

-- Location: LCCOMB_X109_Y21_N10
\inst1|Div1|auto_generated|divider|divider|StageOut[118]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[118]~1_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[6]~8_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[118]~1_combout\);

-- Location: LCCOMB_X109_Y21_N12
\inst1|Div1|auto_generated|divider|divider|StageOut[117]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[117]~3_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~6_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[5]~6_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[117]~3_combout\);

-- Location: LCCOMB_X110_Y21_N28
\inst1|Div1|auto_generated|divider|divider|StageOut[117]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[117]~2_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\ & \ALU4|m[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	datac => \ALU4|m[2]~3_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[117]~2_combout\);

-- Location: LCCOMB_X110_Y21_N6
\inst1|Div1|auto_generated|divider|divider|StageOut[116]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[116]~4_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\ & \ALU4|m[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	datac => \ALU4|m[1]~4_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[116]~4_combout\);

-- Location: LCCOMB_X109_Y21_N14
\inst1|Div1|auto_generated|divider|divider|StageOut[116]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[116]~5_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~4_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[4]~4_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[116]~5_combout\);

-- Location: LCCOMB_X110_Y21_N30
\inst1|Div1|auto_generated|divider|divider|StageOut[115]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[115]~6_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\ & \ALU4|m[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	datac => \ALU4|m[0]~5_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[115]~6_combout\);

-- Location: LCCOMB_X109_Y21_N8
\inst1|Div1|auto_generated|divider|divider|StageOut[115]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[115]~7_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~2_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[3]~2_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[115]~7_combout\);

-- Location: LCCOMB_X109_Y21_N2
\inst1|Div1|auto_generated|divider|divider|StageOut[114]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[114]~9_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~0_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[2]~0_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[114]~9_combout\);

-- Location: LCCOMB_X110_Y21_N24
\inst1|Div1|auto_generated|divider|divider|StageOut[114]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[114]~8_combout\ = (\ALU4|Mux0~1_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|Mux0~1_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[114]~8_combout\);

-- Location: LCCOMB_X109_Y21_N16
\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~14_combout\ = \ALU4|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU4|Mux1~1_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~14_combout\);

-- Location: LCCOMB_X109_Y21_N6
\inst1|Div1|auto_generated|divider|divider|StageOut[113]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[113]~11_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[1]~14_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[113]~11_combout\);

-- Location: LCCOMB_X109_Y21_N4
\inst1|Div1|auto_generated|divider|divider|StageOut[113]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[113]~10_combout\ = (\ALU4|Mux1~1_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU4|Mux1~1_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[113]~10_combout\);

-- Location: LCCOMB_X109_Y21_N18
\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~1_cout\ = CARRY((\inst1|Div1|auto_generated|divider|divider|StageOut[113]~11_combout\) # (\inst1|Div1|auto_generated|divider|divider|StageOut[113]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[113]~11_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[113]~10_combout\,
	datad => VCC,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~1_cout\);

-- Location: LCCOMB_X109_Y21_N20
\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~3_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[114]~9_combout\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[114]~8_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[114]~9_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[114]~8_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[2]~1_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~3_cout\);

-- Location: LCCOMB_X109_Y21_N22
\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~5_cout\ = CARRY((\inst1|Div1|auto_generated|divider|divider|StageOut[115]~6_combout\) # ((\inst1|Div1|auto_generated|divider|divider|StageOut[115]~7_combout\) # 
-- (!\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[115]~6_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[115]~7_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[3]~3_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~5_cout\);

-- Location: LCCOMB_X109_Y21_N24
\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~7_cout\ = CARRY(((!\inst1|Div1|auto_generated|divider|divider|StageOut[116]~4_combout\ & !\inst1|Div1|auto_generated|divider|divider|StageOut[116]~5_combout\)) # 
-- (!\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[116]~4_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[116]~5_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[4]~5_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~7_cout\);

-- Location: LCCOMB_X109_Y21_N26
\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~9_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~7_cout\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[117]~3_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[117]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[117]~3_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[117]~2_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[5]~7_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~9_cout\);

-- Location: LCCOMB_X109_Y21_N28
\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[7]~11_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[118]~0_combout\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[118]~1_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[118]~0_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[118]~1_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[6]~9_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[7]~11_cout\);

-- Location: LCCOMB_X109_Y21_N30
\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[8]~12_combout\ = \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[7]~11_cout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[8]~12_combout\);

-- Location: LCCOMB_X110_Y21_N26
\inst6|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~1_combout\ = ((!\KEY[2]~input_o\) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\)) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[8]~12_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	datad => \KEY[2]~input_o\,
	combout => \inst6|decOut_n~1_combout\);

-- Location: LCCOMB_X110_Y21_N4
\inst6|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~2_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[8]~12_combout\ & \KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[8]~12_combout\,
	datad => \KEY[2]~input_o\,
	combout => \inst6|decOut_n~2_combout\);

-- Location: LCCOMB_X109_Y21_N0
\inst6|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n[3]~3_combout\ = ((!\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[8]~12_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\)) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[8]~12_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	datad => \KEY[2]~input_o\,
	combout => \inst6|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X110_Y21_N22
\inst6|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_n~4_combout\ = ((\inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[8]~12_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\)) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_15_result_int[8]~12_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_14_result_int[8]~12_combout\,
	datad => \KEY[2]~input_o\,
	combout => \inst6|decOut_n~4_combout\);

-- Location: LCCOMB_X111_Y14_N4
\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~0_combout\ = \SW[1]~input_o\ $ (VCC)
-- \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~1\ = CARRY(\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => VCC,
	combout => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X111_Y14_N6
\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~2_combout\ = (\SW[2]~input_o\ & (\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~1\ & VCC)) # (!\SW[2]~input_o\ & (!\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~1\))
-- \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~3\ = CARRY((!\SW[2]~input_o\ & !\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => VCC,
	cin => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~1\,
	combout => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X111_Y14_N8
\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~4_combout\ = (\SW[3]~input_o\ & (\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~3\ $ (GND))) # (!\SW[3]~input_o\ & (!\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~3\ & VCC))
-- \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~5\ = CARRY((\SW[3]~input_o\ & !\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~3\,
	combout => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X111_Y14_N10
\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~7_cout\ = CARRY(!\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~5\,
	cout => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X111_Y14_N12
\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~9_cout\ = CARRY(!\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~7_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~7_cout\,
	cout => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X111_Y14_N14
\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~11_cout\ = CARRY(!\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~9_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~9_cout\,
	cout => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~11_cout\);

-- Location: LCCOMB_X111_Y14_N16
\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~13_cout\ = CARRY(!\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~11_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~11_cout\,
	cout => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~13_cout\);

-- Location: LCCOMB_X111_Y14_N18
\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14_combout\ = !\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~13_cout\,
	combout => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14_combout\);

-- Location: LCCOMB_X111_Y14_N2
\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ = (\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14_combout\ & ((\SW[1]~input_o\))) # (!\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14_combout\ & 
-- (\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	datac => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	datad => \SW[1]~input_o\,
	combout => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\);

-- Location: LCCOMB_X111_Y14_N24
\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ = (\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14_combout\ & ((\SW[2]~input_o\))) # (!\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14_combout\ & 
-- (\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datab => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	datac => \SW[2]~input_o\,
	combout => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\);

-- Location: LCCOMB_X111_Y14_N20
\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ = (\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14_combout\ & ((\SW[3]~input_o\))) # (!\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14_combout\ & 
-- (\instasdadasd3|Mod0|auto_generated|divider|divider|op_6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	datac => \SW[3]~input_o\,
	datad => \instasdadasd3|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	combout => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\);

-- Location: LCCOMB_X110_Y14_N24
\inadadadadadst|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inadadadadadst|decOut_n~0_combout\ = (\SW[0]~input_o\ & (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ $ 
-- (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\)))) # (!\SW[0]~input_o\ & (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & 
-- (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ $ (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datab => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	datac => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datad => \SW[0]~input_o\,
	combout => \inadadadadadst|decOut_n~0_combout\);

-- Location: LCCOMB_X110_Y14_N26
\inadadadadadst|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inadadadadadst|decOut_n~1_combout\ = (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & ((\SW[0]~input_o\) # 
-- (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\)))) # (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & (\SW[0]~input_o\ & 
-- (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ $ (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datab => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	datac => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datad => \SW[0]~input_o\,
	combout => \inadadadadadst|decOut_n~1_combout\);

-- Location: LCCOMB_X110_Y14_N28
\inadadadadadst|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inadadadadadst|decOut_n~2_combout\ = (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & (((!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & \SW[0]~input_o\)))) # 
-- (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & ((\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\)) # 
-- (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datab => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	datac => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datad => \SW[0]~input_o\,
	combout => \inadadadadadst|decOut_n~2_combout\);

-- Location: LCCOMB_X110_Y14_N0
\inadadadadadst|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inadadadadadst|decOut_n~3_combout\ = (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & ((\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & ((\SW[0]~input_o\))) # 
-- (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & !\SW[0]~input_o\)))) # 
-- (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ $ 
-- (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datab => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	datac => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datad => \SW[0]~input_o\,
	combout => \inadadadadadst|decOut_n~3_combout\);

-- Location: LCCOMB_X110_Y14_N2
\inadadadadadst|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inadadadadadst|decOut_n~4_combout\ = (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & 
-- ((\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\) # (!\SW[0]~input_o\)))) # (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & 
-- (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datab => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	datac => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datad => \SW[0]~input_o\,
	combout => \inadadadadadst|decOut_n~4_combout\);

-- Location: LCCOMB_X110_Y14_N12
\inadadadadadst|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inadadadadadst|decOut_n~5_combout\ = (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & ((\SW[0]~input_o\ & ((\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\))) # (!\SW[0]~input_o\ & 
-- (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\)))) # (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & 
-- (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datab => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	datac => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datad => \SW[0]~input_o\,
	combout => \inadadadadadst|decOut_n~5_combout\);

-- Location: LCCOMB_X110_Y14_N30
\inadadadadadst|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inadadadadadst|decOut_n~6_combout\ = (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & 
-- (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ $ (!\SW[0]~input_o\)))) # (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & (\SW[0]~input_o\ & 
-- (\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ $ (!\instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datab => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	datac => \instasdadasd3|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datad => \SW[0]~input_o\,
	combout => \inadadadadadst|decOut_n~6_combout\);

-- Location: LCCOMB_X112_Y15_N14
\instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\ = CARRY(\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => VCC,
	cout => \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\);

-- Location: LCCOMB_X112_Y15_N16
\instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ = CARRY((!\SW[2]~input_o\ & !\instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => VCC,
	cin => \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\,
	cout => \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\);

-- Location: LCCOMB_X112_Y15_N18
\instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\ = CARRY((\SW[3]~input_o\ & !\instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\,
	cout => \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\);

-- Location: LCCOMB_X112_Y15_N20
\instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\ = CARRY(!\instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\,
	cout => \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\);

-- Location: LCCOMB_X112_Y15_N22
\instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ = \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\,
	combout => \instasdadasd3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\);

-- Location: LCCOMB_X109_Y8_N12
\inst2|Mod0|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|op_6~0_combout\ = \SW[5]~input_o\ $ (VCC)
-- \inst2|Mod0|auto_generated|divider|divider|op_6~1\ = CARRY(\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X109_Y8_N14
\inst2|Mod0|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|op_6~2_combout\ = (\SW[6]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|op_6~1\ & VCC)) # (!\SW[6]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|op_6~1\))
-- \inst2|Mod0|auto_generated|divider|divider|op_6~3\ = CARRY((!\SW[6]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|op_6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|op_6~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X109_Y8_N16
\inst2|Mod0|auto_generated|divider|divider|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|op_6~4_combout\ = (\SW[7]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|op_6~3\ $ (GND))) # (!\SW[7]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|op_6~3\ & VCC))
-- \inst2|Mod0|auto_generated|divider|divider|op_6~5\ = CARRY((\SW[7]~input_o\ & !\inst2|Mod0|auto_generated|divider|divider|op_6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|op_6~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X109_Y8_N18
\inst2|Mod0|auto_generated|divider|divider|op_6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|op_6~7_cout\ = CARRY(!\inst2|Mod0|auto_generated|divider|divider|op_6~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|op_6~5\,
	cout => \inst2|Mod0|auto_generated|divider|divider|op_6~7_cout\);

-- Location: LCCOMB_X109_Y8_N20
\inst2|Mod0|auto_generated|divider|divider|op_6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|op_6~9_cout\ = CARRY(!\inst2|Mod0|auto_generated|divider|divider|op_6~7_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|op_6~7_cout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X109_Y8_N22
\inst2|Mod0|auto_generated|divider|divider|op_6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|op_6~11_cout\ = CARRY(!\inst2|Mod0|auto_generated|divider|divider|op_6~9_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|op_6~9_cout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|op_6~11_cout\);

-- Location: LCCOMB_X109_Y8_N24
\inst2|Mod0|auto_generated|divider|divider|op_6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|op_6~13_cout\ = CARRY(!\inst2|Mod0|auto_generated|divider|divider|op_6~11_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|op_6~11_cout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|op_6~13_cout\);

-- Location: LCCOMB_X109_Y8_N26
\inst2|Mod0|auto_generated|divider|divider|op_6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|op_6~14_combout\ = !\inst2|Mod0|auto_generated|divider|divider|op_6~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|op_6~13_cout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|op_6~14_combout\);

-- Location: LCCOMB_X109_Y8_N28
\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|op_6~14_combout\ & ((\SW[7]~input_o\))) # (!\inst2|Mod0|auto_generated|divider|divider|op_6~14_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|op_6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\);

-- Location: LCCOMB_X109_Y8_N10
\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ = (\inst2|Mod0|auto_generated|divider|divider|op_6~14_combout\ & ((\SW[5]~input_o\))) # (!\inst2|Mod0|auto_generated|divider|divider|op_6~14_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|op_6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\);

-- Location: LCCOMB_X109_Y8_N0
\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ = (\inst2|Mod0|auto_generated|divider|divider|op_6~14_combout\ & ((\SW[6]~input_o\))) # (!\inst2|Mod0|auto_generated|divider|divider|op_6~14_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|op_6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|op_6~14_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \SW[6]~input_o\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\);

-- Location: LCCOMB_X83_Y4_N0
\instasdadadsad|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadadsad|decOut_n~0_combout\ = (\SW[4]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ $ 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\)))) # (!\SW[4]~input_o\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ $ 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	combout => \instasdadadsad|decOut_n~0_combout\);

-- Location: LCCOMB_X83_Y4_N26
\instasdadadsad|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadadsad|decOut_n~1_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & ((\SW[4]~input_o\) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & (\SW[4]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ $ 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	combout => \instasdadadsad|decOut_n~1_combout\);

-- Location: LCCOMB_X83_Y4_N12
\instasdadadsad|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadadsad|decOut_n~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & (\SW[4]~input_o\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & ((\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	combout => \instasdadadsad|decOut_n~2_combout\);

-- Location: LCCOMB_X83_Y4_N30
\instasdadadsad|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadadsad|decOut_n~3_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & ((\SW[4]~input_o\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\))) # (!\SW[4]~input_o\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & !\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & (\SW[4]~input_o\ $ (\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	combout => \instasdadadsad|decOut_n~3_combout\);

-- Location: LCCOMB_X83_Y4_N24
\instasdadadsad|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadadsad|decOut_n~4_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\) # 
-- (!\SW[4]~input_o\)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & (!\SW[4]~input_o\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	combout => \instasdadadsad|decOut_n~4_combout\);

-- Location: LCCOMB_X83_Y4_N10
\instasdadadsad|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadadsad|decOut_n~5_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & ((\SW[4]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\)) # (!\SW[4]~input_o\ & 
-- ((\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\))))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\ & 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	combout => \instasdadadsad|decOut_n~5_combout\);

-- Location: LCCOMB_X83_Y4_N28
\instasdadadsad|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \instasdadadsad|decOut_n~6_combout\ = (\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & (\SW[4]~input_o\ & (\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ $ 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\ & (\SW[4]~input_o\ $ 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[243]~2_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[241]~1_combout\,
	datac => \SW[4]~input_o\,
	datad => \inst2|Mod0|auto_generated|divider|divider|StageOut[242]~0_combout\,
	combout => \instasdadadsad|decOut_n~6_combout\);

-- Location: LCCOMB_X109_Y7_N20
\inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\ = CARRY(\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datad => VCC,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\);

-- Location: LCCOMB_X109_Y7_N22
\inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\ = CARRY((!\SW[6]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[1]~1_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\);

-- Location: LCCOMB_X109_Y7_N24
\inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\ = CARRY((\SW[7]~input_o\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~3_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\);

-- Location: LCCOMB_X109_Y7_N26
\inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\ = CARRY(!\inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~5_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\);

-- Location: LCCOMB_X109_Y7_N28
\inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\ = \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~7_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~8_combout\);

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


