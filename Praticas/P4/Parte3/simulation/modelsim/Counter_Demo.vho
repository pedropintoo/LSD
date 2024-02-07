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

-- DATE "03/05/2023 13:43:58"

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

ENTITY 	Counter_Demo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END Counter_Demo;

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
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter_Demo IS
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
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \cUpDown4|s_count~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \cUpDown4|s_count[1]~5_cout\ : std_logic;
SIGNAL \cUpDown4|s_count[1]~6_combout\ : std_logic;
SIGNAL \cUpDown4|s_count[1]~7\ : std_logic;
SIGNAL \cUpDown4|s_count[2]~8_combout\ : std_logic;
SIGNAL \cUpDown4|s_count[2]~9\ : std_logic;
SIGNAL \cUpDown4|s_count[3]~10_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Add1~2_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Add1~0_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Add1~1_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|s_Unid~0_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Add0~0_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~4_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~1_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~2_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~3_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~0_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~5_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~7_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~6_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~8_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~9_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~10_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~11_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~12_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~13_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~15_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~14_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~16_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~17_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~18_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~19_combout\ : std_logic;
SIGNAL \Bin7SegDecoder|decOut_n~20_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \cUpDown4_2|s_count[0]~3_combout\ : std_logic;
SIGNAL \cUpDown4_2|s_count[0]~4_combout\ : std_logic;
SIGNAL \cUpDown4_2|s_count[1]~6_cout\ : std_logic;
SIGNAL \cUpDown4_2|s_count[1]~7_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \cUpDown4_2|s_count[3]~9_combout\ : std_logic;
SIGNAL \cUpDown4_2|s_count[1]~8\ : std_logic;
SIGNAL \cUpDown4_2|s_count[2]~10_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \cUpDown4_2|s_count[2]~11\ : std_logic;
SIGNAL \cUpDown4_2|s_count[3]~12_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Bin2BCDSigned2|Add1~1_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Add1~2_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Add1~0_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|s_Unid~0_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Add0~0_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~4_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~1_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~2_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~3_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~0_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~5_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~7_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~6_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~8_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~9_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~10_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~11_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~12_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~13_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~14_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~15_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~16_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~17_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~18_combout\ : std_logic;
SIGNAL \Bin7SegDecoder2|decOut_n~19_combout\ : std_logic;
SIGNAL \cUpDown4|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cUpDown4_2|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cUpDown4_2|ALT_INV_s_count\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \cUpDown4|ALT_INV_s_count\ : std_logic_vector(3 DOWNTO 3);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_KEY <= KEY;
ww_SW <= SW;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\cUpDown4_2|ALT_INV_s_count\(3) <= NOT \cUpDown4_2|s_count\(3);
\cUpDown4|ALT_INV_s_count\(3) <= NOT \cUpDown4|s_count\(3);
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
	i => \Bin7SegDecoder|decOut_n~5_combout\,
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
	i => \Bin7SegDecoder|decOut_n~8_combout\,
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
	i => \Bin7SegDecoder|decOut_n~9_combout\,
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
	i => \Bin7SegDecoder|decOut_n~13_combout\,
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
	i => \Bin7SegDecoder|decOut_n~16_combout\,
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
	i => \Bin7SegDecoder|decOut_n~18_combout\,
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
	i => \Bin7SegDecoder|decOut_n~20_combout\,
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
	i => \cUpDown4|ALT_INV_s_count\(3),
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => \Bin7SegDecoder2|decOut_n~5_combout\,
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
	i => \Bin7SegDecoder2|decOut_n~8_combout\,
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
	i => \Bin7SegDecoder2|decOut_n~9_combout\,
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
	i => \Bin7SegDecoder2|decOut_n~12_combout\,
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
	i => \Bin7SegDecoder2|decOut_n~15_combout\,
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
	i => \Bin7SegDecoder2|decOut_n~17_combout\,
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
	i => \Bin7SegDecoder2|decOut_n~19_combout\,
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
	i => \cUpDown4_2|ALT_INV_s_count\(3),
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

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cUpDown4|s_count\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cUpDown4|s_count\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cUpDown4|s_count\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cUpDown4|s_count\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cUpDown4_2|s_count\(3),
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
	i => \cUpDown4_2|s_count\(2),
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
	i => \cUpDown4_2|s_count\(1),
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
	i => \cUpDown4_2|s_count\(0),
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

-- Location: LCCOMB_X114_Y40_N10
\cUpDown4|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cUpDown4|s_count~3_combout\ = (!\cUpDown4|s_count\(0) & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cUpDown4|s_count\(0),
	datad => \SW[1]~input_o\,
	combout => \cUpDown4|s_count~3_combout\);

-- Location: FF_X114_Y40_N11
\cUpDown4|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \cUpDown4|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cUpDown4|s_count\(0));

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

-- Location: LCCOMB_X114_Y40_N22
\cUpDown4|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cUpDown4|s_count[1]~5_cout\ = CARRY(\cUpDown4|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4|s_count\(0),
	datad => VCC,
	cout => \cUpDown4|s_count[1]~5_cout\);

-- Location: LCCOMB_X114_Y40_N24
\cUpDown4|s_count[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cUpDown4|s_count[1]~6_combout\ = (\SW[0]~input_o\ & ((\cUpDown4|s_count\(1) & (!\cUpDown4|s_count[1]~5_cout\)) # (!\cUpDown4|s_count\(1) & ((\cUpDown4|s_count[1]~5_cout\) # (GND))))) # (!\SW[0]~input_o\ & ((\cUpDown4|s_count\(1) & 
-- (\cUpDown4|s_count[1]~5_cout\ & VCC)) # (!\cUpDown4|s_count\(1) & (!\cUpDown4|s_count[1]~5_cout\))))
-- \cUpDown4|s_count[1]~7\ = CARRY((\SW[0]~input_o\ & ((!\cUpDown4|s_count[1]~5_cout\) # (!\cUpDown4|s_count\(1)))) # (!\SW[0]~input_o\ & (!\cUpDown4|s_count\(1) & !\cUpDown4|s_count[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \cUpDown4|s_count\(1),
	datad => VCC,
	cin => \cUpDown4|s_count[1]~5_cout\,
	combout => \cUpDown4|s_count[1]~6_combout\,
	cout => \cUpDown4|s_count[1]~7\);

-- Location: FF_X114_Y40_N25
\cUpDown4|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \cUpDown4|s_count[1]~6_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cUpDown4|s_count\(1));

-- Location: LCCOMB_X114_Y40_N26
\cUpDown4|s_count[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cUpDown4|s_count[2]~8_combout\ = ((\cUpDown4|s_count\(2) $ (\SW[0]~input_o\ $ (\cUpDown4|s_count[1]~7\)))) # (GND)
-- \cUpDown4|s_count[2]~9\ = CARRY((\cUpDown4|s_count\(2) & ((!\cUpDown4|s_count[1]~7\) # (!\SW[0]~input_o\))) # (!\cUpDown4|s_count\(2) & (!\SW[0]~input_o\ & !\cUpDown4|s_count[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4|s_count\(2),
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \cUpDown4|s_count[1]~7\,
	combout => \cUpDown4|s_count[2]~8_combout\,
	cout => \cUpDown4|s_count[2]~9\);

-- Location: FF_X114_Y40_N27
\cUpDown4|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \cUpDown4|s_count[2]~8_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cUpDown4|s_count\(2));

-- Location: LCCOMB_X114_Y40_N28
\cUpDown4|s_count[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cUpDown4|s_count[3]~10_combout\ = \SW[0]~input_o\ $ (\cUpDown4|s_count[2]~9\ $ (!\cUpDown4|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \cUpDown4|s_count\(3),
	cin => \cUpDown4|s_count[2]~9\,
	combout => \cUpDown4|s_count[3]~10_combout\);

-- Location: FF_X114_Y40_N29
\cUpDown4|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \cUpDown4|s_count[3]~10_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cUpDown4|s_count\(3));

-- Location: LCCOMB_X114_Y40_N16
\Bin2BCDSigned|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Add1~2_combout\ = (\cUpDown4|s_count\(1)) # ((\cUpDown4|s_count\(2)) # ((\cUpDown4|s_count\(0)) # (!\cUpDown4|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4|s_count\(1),
	datab => \cUpDown4|s_count\(2),
	datac => \cUpDown4|s_count\(0),
	datad => \cUpDown4|s_count\(3),
	combout => \Bin2BCDSigned|Add1~2_combout\);

-- Location: LCCOMB_X114_Y40_N12
\Bin2BCDSigned|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Add1~0_combout\ = \cUpDown4|s_count\(2) $ (((\cUpDown4|s_count\(3) & ((\cUpDown4|s_count\(1)) # (\cUpDown4|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4|s_count\(1),
	datab => \cUpDown4|s_count\(2),
	datac => \cUpDown4|s_count\(0),
	datad => \cUpDown4|s_count\(3),
	combout => \Bin2BCDSigned|Add1~0_combout\);

-- Location: LCCOMB_X114_Y40_N6
\Bin2BCDSigned|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Add1~1_combout\ = \cUpDown4|s_count\(1) $ (((\cUpDown4|s_count\(0) & \cUpDown4|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4|s_count\(1),
	datac => \cUpDown4|s_count\(0),
	datad => \cUpDown4|s_count\(3),
	combout => \Bin2BCDSigned|Add1~1_combout\);

-- Location: LCCOMB_X113_Y43_N6
\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \Bin2BCDSigned|Add1~1_combout\ $ (VCC)
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\Bin2BCDSigned|Add1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Add1~1_combout\,
	datad => VCC,
	combout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X113_Y43_N8
\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Bin2BCDSigned|Add1~0_combout\ & (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\Bin2BCDSigned|Add1~0_combout\ & 
-- (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Bin2BCDSigned|Add1~0_combout\ & !\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Bin2BCDSigned|Add1~0_combout\,
	datad => VCC,
	cin => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X113_Y43_N10
\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Bin2BCDSigned|Add1~2_combout\ & (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC)) # (!\Bin2BCDSigned|Add1~2_combout\ & 
-- (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND)))
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Bin2BCDSigned|Add1~2_combout\ & !\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Bin2BCDSigned|Add1~2_combout\,
	datad => VCC,
	cin => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X113_Y43_N12
\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X113_Y43_N14
\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X114_Y40_N14
\Bin2BCDSigned|s_Unid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|s_Unid~0_combout\ = (\cUpDown4|s_count\(0)) # ((!\cUpDown4|s_count\(1) & (!\cUpDown4|s_count\(2) & \cUpDown4|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4|s_count\(1),
	datab => \cUpDown4|s_count\(2),
	datac => \cUpDown4|s_count\(0),
	datad => \cUpDown4|s_count\(3),
	combout => \Bin2BCDSigned|s_Unid~0_combout\);

-- Location: LCCOMB_X114_Y40_N4
\Bin2BCDSigned|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Add0~0_combout\ = (!\cUpDown4|s_count\(1) & (!\cUpDown4|s_count\(2) & (!\cUpDown4|s_count\(0) & \cUpDown4|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4|s_count\(1),
	datab => \cUpDown4|s_count\(2),
	datac => \cUpDown4|s_count\(0),
	datad => \cUpDown4|s_count\(3),
	combout => \Bin2BCDSigned|Add0~0_combout\);

-- Location: LCCOMB_X114_Y40_N20
\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = \Bin2BCDSigned|s_Unid~0_combout\ $ (\Bin2BCDSigned|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin2BCDSigned|s_Unid~0_combout\,
	datac => \Bin2BCDSigned|Add0~0_combout\,
	combout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X113_Y43_N26
\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\cUpDown4|s_count\(0))) # 
-- (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cUpDown4|s_count\(0),
	datac => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\);

-- Location: LCCOMB_X113_Y43_N24
\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Bin2BCDSigned|Add1~1_combout\))) # 
-- (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Bin2BCDSigned|Add1~1_combout\,
	combout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\);

-- Location: LCCOMB_X113_Y43_N28
\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Bin2BCDSigned|Add1~0_combout\))) # 
-- (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Bin2BCDSigned|Add1~0_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LCCOMB_X114_Y43_N30
\Bin7SegDecoder|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~4_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\Bin2BCDSigned|Add0~0_combout\ & 
-- !\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \Bin2BCDSigned|Add0~0_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \Bin7SegDecoder|decOut_n~4_combout\);

-- Location: LCCOMB_X113_Y43_N4
\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[23]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\Bin2BCDSigned|Add1~2_combout\))) # 
-- (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Bin2BCDSigned|Add1~2_combout\,
	combout => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\);

-- Location: LCCOMB_X114_Y40_N18
\Bin7SegDecoder|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~1_combout\ = (!\cUpDown4|s_count\(1) & (!\cUpDown4|s_count\(0) & !\cUpDown4|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4|s_count\(1),
	datab => \cUpDown4|s_count\(0),
	datad => \cUpDown4|s_count\(2),
	combout => \Bin7SegDecoder|decOut_n~1_combout\);

-- Location: LCCOMB_X114_Y43_N26
\Bin7SegDecoder|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~2_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (((\cUpDown4|s_count\(3) & \Bin7SegDecoder|decOut_n~1_combout\)))) # 
-- (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (((!\Bin7SegDecoder|decOut_n~1_combout\) # (!\cUpDown4|s_count\(3))) # (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\,
	datac => \cUpDown4|s_count\(3),
	datad => \Bin7SegDecoder|decOut_n~1_combout\,
	combout => \Bin7SegDecoder|decOut_n~2_combout\);

-- Location: LCCOMB_X114_Y43_N4
\Bin7SegDecoder|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~3_combout\ = (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\Bin7SegDecoder|decOut_n~2_combout\ & !\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \Bin7SegDecoder|decOut_n~2_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \Bin7SegDecoder|decOut_n~3_combout\);

-- Location: LCCOMB_X114_Y43_N28
\Bin7SegDecoder|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~0_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (!\Bin2BCDSigned|Add0~0_combout\ & (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ $ 
-- (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\)))) # (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- (\Bin2BCDSigned|Add0~0_combout\ $ (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \Bin2BCDSigned|Add0~0_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \Bin7SegDecoder|decOut_n~0_combout\);

-- Location: LCCOMB_X114_Y43_N12
\Bin7SegDecoder|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~5_combout\ = (\Bin7SegDecoder|decOut_n~3_combout\ & (!\Bin7SegDecoder|decOut_n~4_combout\)) # (!\Bin7SegDecoder|decOut_n~3_combout\ & ((\Bin7SegDecoder|decOut_n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegDecoder|decOut_n~4_combout\,
	datac => \Bin7SegDecoder|decOut_n~3_combout\,
	datad => \Bin7SegDecoder|decOut_n~0_combout\,
	combout => \Bin7SegDecoder|decOut_n~5_combout\);

-- Location: LCCOMB_X113_Y43_N18
\Bin7SegDecoder|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~7_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \Bin7SegDecoder|decOut_n~7_combout\);

-- Location: LCCOMB_X114_Y43_N10
\Bin7SegDecoder|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~6_combout\ = (!\Bin2BCDSigned|Add0~0_combout\ & ((\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & ((\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\) # 
-- (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))) # (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- !\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \Bin2BCDSigned|Add0~0_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \Bin7SegDecoder|decOut_n~6_combout\);

-- Location: LCCOMB_X114_Y43_N8
\Bin7SegDecoder|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~8_combout\ = (\Bin7SegDecoder|decOut_n~6_combout\) # ((\Bin7SegDecoder|decOut_n~7_combout\ & \Bin2BCDSigned|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin7SegDecoder|decOut_n~7_combout\,
	datac => \Bin2BCDSigned|Add0~0_combout\,
	datad => \Bin7SegDecoder|decOut_n~6_combout\,
	combout => \Bin7SegDecoder|decOut_n~8_combout\);

-- Location: LCCOMB_X114_Y43_N2
\Bin7SegDecoder|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~9_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & ((\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\)) # (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((!\Bin2BCDSigned|Add0~0_combout\))))) # 
-- (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & ((!\Bin2BCDSigned|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \Bin2BCDSigned|Add0~0_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \Bin7SegDecoder|decOut_n~9_combout\);

-- Location: LCCOMB_X114_Y43_N20
\Bin7SegDecoder|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~10_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (((\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & !\cUpDown4|s_count\(3))) # 
-- (!\Bin7SegDecoder|decOut_n~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datac => \cUpDown4|s_count\(3),
	datad => \Bin7SegDecoder|decOut_n~1_combout\,
	combout => \Bin7SegDecoder|decOut_n~10_combout\);

-- Location: LCCOMB_X114_Y43_N22
\Bin7SegDecoder|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~11_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & \Bin7SegDecoder|decOut_n~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \Bin7SegDecoder|decOut_n~10_combout\,
	combout => \Bin7SegDecoder|decOut_n~11_combout\);

-- Location: LCCOMB_X114_Y43_N16
\Bin7SegDecoder|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~12_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ $ (!\Bin2BCDSigned|Add0~0_combout\)))) # (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & 
-- (((!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & !\Bin2BCDSigned|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \Bin2BCDSigned|Add0~0_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \Bin7SegDecoder|decOut_n~12_combout\);

-- Location: LCCOMB_X114_Y43_N18
\Bin7SegDecoder|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~13_combout\ = (\Bin7SegDecoder|decOut_n~3_combout\ & (((\Bin7SegDecoder|decOut_n~4_combout\)))) # (!\Bin7SegDecoder|decOut_n~3_combout\ & ((\Bin7SegDecoder|decOut_n~11_combout\) # ((\Bin7SegDecoder|decOut_n~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegDecoder|decOut_n~11_combout\,
	datab => \Bin7SegDecoder|decOut_n~3_combout\,
	datac => \Bin7SegDecoder|decOut_n~4_combout\,
	datad => \Bin7SegDecoder|decOut_n~12_combout\,
	combout => \Bin7SegDecoder|decOut_n~13_combout\);

-- Location: LCCOMB_X113_Y43_N30
\Bin7SegDecoder|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~15_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)) # (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ $ (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \Bin7SegDecoder|decOut_n~15_combout\);

-- Location: LCCOMB_X113_Y43_N0
\Bin7SegDecoder|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~14_combout\ = (!\Bin2BCDSigned|Add0~0_combout\ & (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- !\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Add0~0_combout\,
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \Bin7SegDecoder|decOut_n~14_combout\);

-- Location: LCCOMB_X113_Y43_N20
\Bin7SegDecoder|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~16_combout\ = (\Bin7SegDecoder|decOut_n~14_combout\) # ((\Bin7SegDecoder|decOut_n~15_combout\ & (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Bin2BCDSigned|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegDecoder|decOut_n~15_combout\,
	datab => \Bin7SegDecoder|decOut_n~14_combout\,
	datac => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Bin2BCDSigned|Add0~0_combout\,
	combout => \Bin7SegDecoder|decOut_n~16_combout\);

-- Location: LCCOMB_X114_Y43_N24
\Bin7SegDecoder|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~17_combout\ = (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & ((\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\)) # (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- !\Bin2BCDSigned|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \Bin2BCDSigned|Add0~0_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \Bin7SegDecoder|decOut_n~17_combout\);

-- Location: LCCOMB_X113_Y43_N22
\Bin7SegDecoder|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~18_combout\ = (\Bin7SegDecoder|decOut_n~17_combout\) # ((\Bin7SegDecoder|decOut_n~15_combout\ & (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Bin2BCDSigned|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegDecoder|decOut_n~15_combout\,
	datab => \Bin7SegDecoder|decOut_n~17_combout\,
	datac => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Bin2BCDSigned|Add0~0_combout\,
	combout => \Bin7SegDecoder|decOut_n~18_combout\);

-- Location: LCCOMB_X113_Y43_N16
\Bin7SegDecoder|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~19_combout\ = (!\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((\Bin2BCDSigned|Add0~0_combout\ & (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\)) # (!\Bin2BCDSigned|Add0~0_combout\ & (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ $ 
-- (\Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Add0~0_combout\,
	datab => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \Bin2BCDSigned|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \Bin7SegDecoder|decOut_n~19_combout\);

-- Location: LCCOMB_X113_Y43_N2
\Bin7SegDecoder|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder|decOut_n~20_combout\ = (\Bin7SegDecoder|decOut_n~19_combout\) # ((\Bin2BCDSigned|Add0~0_combout\ & \Bin7SegDecoder|decOut_n~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned|Add0~0_combout\,
	datab => \Bin7SegDecoder|decOut_n~7_combout\,
	datad => \Bin7SegDecoder|decOut_n~19_combout\,
	combout => \Bin7SegDecoder|decOut_n~20_combout\);

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

-- Location: LCCOMB_X114_Y53_N16
\cUpDown4_2|s_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cUpDown4_2|s_count[0]~3_combout\ = (!\SW[4]~input_o\ & ((\SW[5]~input_o\ & (\SW[6]~input_o\)) # (!\SW[5]~input_o\ & ((!\cUpDown4_2|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \cUpDown4_2|s_count\(0),
	datad => \SW[4]~input_o\,
	combout => \cUpDown4_2|s_count[0]~3_combout\);

-- Location: LCCOMB_X113_Y53_N16
\cUpDown4_2|s_count[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cUpDown4_2|s_count[0]~4_combout\ = (\SW[4]~input_o\ & (((\cUpDown4_2|s_count[0]~3_combout\)))) # (!\SW[4]~input_o\ & ((\SW[2]~input_o\ & ((\cUpDown4_2|s_count[0]~3_combout\))) # (!\SW[2]~input_o\ & (\cUpDown4_2|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \cUpDown4_2|s_count\(0),
	datad => \cUpDown4_2|s_count[0]~3_combout\,
	combout => \cUpDown4_2|s_count[0]~4_combout\);

-- Location: FF_X113_Y53_N17
\cUpDown4_2|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \cUpDown4_2|s_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cUpDown4_2|s_count\(0));

-- Location: LCCOMB_X114_Y53_N18
\cUpDown4_2|s_count[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cUpDown4_2|s_count[1]~6_cout\ = CARRY(\cUpDown4_2|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4_2|s_count\(0),
	datad => VCC,
	cout => \cUpDown4_2|s_count[1]~6_cout\);

-- Location: LCCOMB_X114_Y53_N20
\cUpDown4_2|s_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cUpDown4_2|s_count[1]~7_combout\ = (\SW[3]~input_o\ & ((\cUpDown4_2|s_count\(1) & (!\cUpDown4_2|s_count[1]~6_cout\)) # (!\cUpDown4_2|s_count\(1) & ((\cUpDown4_2|s_count[1]~6_cout\) # (GND))))) # (!\SW[3]~input_o\ & ((\cUpDown4_2|s_count\(1) & 
-- (\cUpDown4_2|s_count[1]~6_cout\ & VCC)) # (!\cUpDown4_2|s_count\(1) & (!\cUpDown4_2|s_count[1]~6_cout\))))
-- \cUpDown4_2|s_count[1]~8\ = CARRY((\SW[3]~input_o\ & ((!\cUpDown4_2|s_count[1]~6_cout\) # (!\cUpDown4_2|s_count\(1)))) # (!\SW[3]~input_o\ & (!\cUpDown4_2|s_count\(1) & !\cUpDown4_2|s_count[1]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \cUpDown4_2|s_count\(1),
	datad => VCC,
	cin => \cUpDown4_2|s_count[1]~6_cout\,
	combout => \cUpDown4_2|s_count[1]~7_combout\,
	cout => \cUpDown4_2|s_count[1]~8\);

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

-- Location: LCCOMB_X113_Y53_N14
\cUpDown4_2|s_count[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cUpDown4_2|s_count[3]~9_combout\ = (\SW[2]~input_o\) # (\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \cUpDown4_2|s_count[3]~9_combout\);

-- Location: FF_X114_Y53_N21
\cUpDown4_2|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \cUpDown4_2|s_count[1]~7_combout\,
	asdata => \SW[7]~input_o\,
	sclr => \SW[4]~input_o\,
	sload => \SW[5]~input_o\,
	ena => \cUpDown4_2|s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cUpDown4_2|s_count\(1));

-- Location: LCCOMB_X114_Y53_N22
\cUpDown4_2|s_count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cUpDown4_2|s_count[2]~10_combout\ = ((\cUpDown4_2|s_count\(2) $ (\SW[3]~input_o\ $ (\cUpDown4_2|s_count[1]~8\)))) # (GND)
-- \cUpDown4_2|s_count[2]~11\ = CARRY((\cUpDown4_2|s_count\(2) & ((!\cUpDown4_2|s_count[1]~8\) # (!\SW[3]~input_o\))) # (!\cUpDown4_2|s_count\(2) & (!\SW[3]~input_o\ & !\cUpDown4_2|s_count[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4_2|s_count\(2),
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \cUpDown4_2|s_count[1]~8\,
	combout => \cUpDown4_2|s_count[2]~10_combout\,
	cout => \cUpDown4_2|s_count[2]~11\);

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

-- Location: FF_X114_Y53_N23
\cUpDown4_2|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \cUpDown4_2|s_count[2]~10_combout\,
	asdata => \SW[8]~input_o\,
	sclr => \SW[4]~input_o\,
	sload => \SW[5]~input_o\,
	ena => \cUpDown4_2|s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cUpDown4_2|s_count\(2));

-- Location: LCCOMB_X114_Y53_N24
\cUpDown4_2|s_count[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cUpDown4_2|s_count[3]~12_combout\ = \cUpDown4_2|s_count\(3) $ (\cUpDown4_2|s_count[2]~11\ $ (!\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cUpDown4_2|s_count\(3),
	datad => \SW[3]~input_o\,
	cin => \cUpDown4_2|s_count[2]~11\,
	combout => \cUpDown4_2|s_count[3]~12_combout\);

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

-- Location: FF_X114_Y53_N25
\cUpDown4_2|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \cUpDown4_2|s_count[3]~12_combout\,
	asdata => \SW[9]~input_o\,
	sclr => \SW[4]~input_o\,
	sload => \SW[5]~input_o\,
	ena => \cUpDown4_2|s_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cUpDown4_2|s_count\(3));

-- Location: LCCOMB_X114_Y53_N28
\Bin2BCDSigned2|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Add1~1_combout\ = \cUpDown4_2|s_count\(1) $ (((\cUpDown4_2|s_count\(0) & \cUpDown4_2|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cUpDown4_2|s_count\(1),
	datac => \cUpDown4_2|s_count\(0),
	datad => \cUpDown4_2|s_count\(3),
	combout => \Bin2BCDSigned2|Add1~1_combout\);

-- Location: LCCOMB_X114_Y49_N10
\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \Bin2BCDSigned2|Add1~1_combout\ $ (VCC)
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\Bin2BCDSigned2|Add1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Add1~1_combout\,
	datad => VCC,
	combout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X114_Y53_N10
\Bin2BCDSigned2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Add1~2_combout\ = (\cUpDown4_2|s_count\(0)) # ((\cUpDown4_2|s_count\(1)) # ((\cUpDown4_2|s_count\(2)) # (!\cUpDown4_2|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4_2|s_count\(0),
	datab => \cUpDown4_2|s_count\(1),
	datac => \cUpDown4_2|s_count\(2),
	datad => \cUpDown4_2|s_count\(3),
	combout => \Bin2BCDSigned2|Add1~2_combout\);

-- Location: LCCOMB_X114_Y53_N26
\Bin2BCDSigned2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Add1~0_combout\ = \cUpDown4_2|s_count\(2) $ (((\cUpDown4_2|s_count\(3) & ((\cUpDown4_2|s_count\(0)) # (\cUpDown4_2|s_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4_2|s_count\(0),
	datab => \cUpDown4_2|s_count\(1),
	datac => \cUpDown4_2|s_count\(2),
	datad => \cUpDown4_2|s_count\(3),
	combout => \Bin2BCDSigned2|Add1~0_combout\);

-- Location: LCCOMB_X114_Y49_N12
\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Bin2BCDSigned2|Add1~0_combout\ & (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\Bin2BCDSigned2|Add1~0_combout\ & 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Bin2BCDSigned2|Add1~0_combout\ & !\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Add1~0_combout\,
	datad => VCC,
	cin => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X114_Y49_N14
\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Bin2BCDSigned2|Add1~2_combout\ & (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC)) # (!\Bin2BCDSigned2|Add1~2_combout\ & 
-- (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND)))
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Bin2BCDSigned2|Add1~2_combout\ & !\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Add1~2_combout\,
	datad => VCC,
	cin => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X114_Y49_N16
\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X114_Y49_N18
\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X114_Y49_N22
\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ = (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Bin2BCDSigned2|Add1~1_combout\))) # 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Bin2BCDSigned2|Add1~1_combout\,
	combout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\);

-- Location: LCCOMB_X114_Y53_N12
\Bin2BCDSigned2|s_Unid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|s_Unid~0_combout\ = (\cUpDown4_2|s_count\(0)) # ((!\cUpDown4_2|s_count\(1) & (!\cUpDown4_2|s_count\(2) & \cUpDown4_2|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4_2|s_count\(0),
	datab => \cUpDown4_2|s_count\(1),
	datac => \cUpDown4_2|s_count\(2),
	datad => \cUpDown4_2|s_count\(3),
	combout => \Bin2BCDSigned2|s_Unid~0_combout\);

-- Location: LCCOMB_X114_Y53_N6
\Bin2BCDSigned2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Add0~0_combout\ = (!\cUpDown4_2|s_count\(0) & (!\cUpDown4_2|s_count\(1) & (!\cUpDown4_2|s_count\(2) & \cUpDown4_2|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4_2|s_count\(0),
	datab => \cUpDown4_2|s_count\(1),
	datac => \cUpDown4_2|s_count\(2),
	datad => \cUpDown4_2|s_count\(3),
	combout => \Bin2BCDSigned2|Add0~0_combout\);

-- Location: LCCOMB_X114_Y53_N8
\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = \Bin2BCDSigned2|s_Unid~0_combout\ $ (\Bin2BCDSigned2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|s_Unid~0_combout\,
	datad => \Bin2BCDSigned2|Add0~0_combout\,
	combout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X114_Y53_N4
\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ = (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\cUpDown4_2|s_count\(0))) # 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \cUpDown4_2|s_count\(0),
	datad => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\);

-- Location: LCCOMB_X114_Y49_N8
\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ = (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Bin2BCDSigned2|Add1~0_combout\))) # 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Bin2BCDSigned2|Add1~0_combout\,
	combout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LCCOMB_X114_Y45_N10
\Bin7SegDecoder2|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~4_combout\ = (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & \Bin2BCDSigned2|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datad => \Bin2BCDSigned2|Add0~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~4_combout\);

-- Location: LCCOMB_X114_Y49_N28
\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[23]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\ = (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\Bin2BCDSigned2|Add1~2_combout\))) # 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Bin2BCDSigned2|Add1~2_combout\,
	combout => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\);

-- Location: LCCOMB_X114_Y53_N30
\Bin7SegDecoder2|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~1_combout\ = (!\cUpDown4_2|s_count\(0) & (!\cUpDown4_2|s_count\(2) & !\cUpDown4_2|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cUpDown4_2|s_count\(0),
	datac => \cUpDown4_2|s_count\(2),
	datad => \cUpDown4_2|s_count\(1),
	combout => \Bin7SegDecoder2|decOut_n~1_combout\);

-- Location: LCCOMB_X114_Y45_N18
\Bin7SegDecoder2|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~2_combout\ = (\Bin7SegDecoder2|decOut_n~1_combout\ & ((\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & ((\cUpDown4_2|s_count\(3)))) # 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & ((!\cUpDown4_2|s_count\(3)) # (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\))))) # (!\Bin7SegDecoder2|decOut_n~1_combout\ & 
-- (((!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\,
	datab => \Bin7SegDecoder2|decOut_n~1_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \cUpDown4_2|s_count\(3),
	combout => \Bin7SegDecoder2|decOut_n~2_combout\);

-- Location: LCCOMB_X114_Y45_N24
\Bin7SegDecoder2|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~3_combout\ = (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\Bin7SegDecoder2|decOut_n~2_combout\ & !\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Bin7SegDecoder2|decOut_n~2_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~3_combout\);

-- Location: LCCOMB_X114_Y45_N16
\Bin7SegDecoder2|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~0_combout\ = (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (!\Bin2BCDSigned2|Add0~0_combout\ & (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ $ 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\)))) # (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ $ (!\Bin2BCDSigned2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datad => \Bin2BCDSigned2|Add0~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~0_combout\);

-- Location: LCCOMB_X114_Y45_N12
\Bin7SegDecoder2|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~5_combout\ = (\Bin7SegDecoder2|decOut_n~3_combout\ & (!\Bin7SegDecoder2|decOut_n~4_combout\)) # (!\Bin7SegDecoder2|decOut_n~3_combout\ & ((\Bin7SegDecoder2|decOut_n~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegDecoder2|decOut_n~4_combout\,
	datab => \Bin7SegDecoder2|decOut_n~3_combout\,
	datad => \Bin7SegDecoder2|decOut_n~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~5_combout\);

-- Location: LCCOMB_X114_Y49_N30
\Bin7SegDecoder2|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~7_combout\ = (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Bin7SegDecoder2|decOut_n~7_combout\);

-- Location: LCCOMB_X114_Y45_N22
\Bin7SegDecoder2|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~6_combout\ = (!\Bin2BCDSigned2|Add0~0_combout\ & ((\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\) # 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))) # (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- !\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datad => \Bin2BCDSigned2|Add0~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~6_combout\);

-- Location: LCCOMB_X114_Y45_N8
\Bin7SegDecoder2|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~8_combout\ = (\Bin7SegDecoder2|decOut_n~6_combout\) # ((\Bin7SegDecoder2|decOut_n~7_combout\ & \Bin2BCDSigned2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegDecoder2|decOut_n~7_combout\,
	datac => \Bin7SegDecoder2|decOut_n~6_combout\,
	datad => \Bin2BCDSigned2|Add0~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~8_combout\);

-- Location: LCCOMB_X114_Y45_N14
\Bin7SegDecoder2|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~9_combout\ = (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & ((\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\)) # (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((!\Bin2BCDSigned2|Add0~0_combout\))))) # 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & (((\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & !\Bin2BCDSigned2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datad => \Bin2BCDSigned2|Add0~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~9_combout\);

-- Location: LCCOMB_X114_Y45_N20
\Bin7SegDecoder2|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~10_combout\ = \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ $ (((\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\Bin7SegDecoder2|decOut_n~1_combout\ & 
-- \cUpDown4_2|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Bin7SegDecoder2|decOut_n~1_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datad => \cUpDown4_2|s_count\(3),
	combout => \Bin7SegDecoder2|decOut_n~10_combout\);

-- Location: LCCOMB_X114_Y45_N30
\Bin7SegDecoder2|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~11_combout\ = (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\Bin7SegDecoder2|decOut_n~10_combout\ & (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))) # 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((\Bin2BCDSigned2|Add0~0_combout\) # ((\Bin7SegDecoder2|decOut_n~10_combout\ & \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Bin7SegDecoder2|decOut_n~10_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datad => \Bin2BCDSigned2|Add0~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~11_combout\);

-- Location: LCCOMB_X114_Y45_N4
\Bin7SegDecoder2|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~12_combout\ = (\Bin7SegDecoder2|decOut_n~3_combout\ & ((\Bin7SegDecoder2|decOut_n~4_combout\) # ((\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & \Bin7SegDecoder2|decOut_n~11_combout\)))) # 
-- (!\Bin7SegDecoder2|decOut_n~3_combout\ & (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ $ ((!\Bin7SegDecoder2|decOut_n~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Bin7SegDecoder2|decOut_n~3_combout\,
	datac => \Bin7SegDecoder2|decOut_n~11_combout\,
	datad => \Bin7SegDecoder2|decOut_n~4_combout\,
	combout => \Bin7SegDecoder2|decOut_n~12_combout\);

-- Location: LCCOMB_X114_Y49_N24
\Bin7SegDecoder2|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~13_combout\ = (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & !\Bin2BCDSigned2|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datad => \Bin2BCDSigned2|Add0~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~13_combout\);

-- Location: LCCOMB_X114_Y49_N4
\Bin7SegDecoder2|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~14_combout\ = (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & 
-- !\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)) # (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ $ (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~14_combout\);

-- Location: LCCOMB_X114_Y49_N2
\Bin7SegDecoder2|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~15_combout\ = (\Bin7SegDecoder2|decOut_n~13_combout\) # ((\Bin2BCDSigned2|Add0~0_combout\ & (\Bin7SegDecoder2|decOut_n~14_combout\ & !\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Add0~0_combout\,
	datab => \Bin7SegDecoder2|decOut_n~13_combout\,
	datac => \Bin7SegDecoder2|decOut_n~14_combout\,
	datad => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Bin7SegDecoder2|decOut_n~15_combout\);

-- Location: LCCOMB_X114_Y49_N20
\Bin7SegDecoder2|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~16_combout\ = (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & ((\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & !\Bin2BCDSigned2|Add0~0_combout\)) # (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datad => \Bin2BCDSigned2|Add0~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~16_combout\);

-- Location: LCCOMB_X114_Y49_N6
\Bin7SegDecoder2|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~17_combout\ = (\Bin7SegDecoder2|decOut_n~16_combout\) # ((\Bin2BCDSigned2|Add0~0_combout\ & (\Bin7SegDecoder2|decOut_n~14_combout\ & !\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Add0~0_combout\,
	datab => \Bin7SegDecoder2|decOut_n~16_combout\,
	datac => \Bin7SegDecoder2|decOut_n~14_combout\,
	datad => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Bin7SegDecoder2|decOut_n~17_combout\);

-- Location: LCCOMB_X114_Y45_N26
\Bin7SegDecoder2|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~18_combout\ = (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ $ (!\Bin2BCDSigned2|Add0~0_combout\))) # (!\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\ & 
-- (\Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\ & !\Bin2BCDSigned2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[20]~1_combout\,
	datac => \Bin2BCDSigned2|Mod0|auto_generated|divider|divider|StageOut[22]~0_combout\,
	datad => \Bin2BCDSigned2|Add0~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~18_combout\);

-- Location: LCCOMB_X114_Y45_N28
\Bin7SegDecoder2|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin7SegDecoder2|decOut_n~19_combout\ = (\Bin7SegDecoder2|decOut_n~18_combout\) # ((\Bin7SegDecoder2|decOut_n~7_combout\ & \Bin2BCDSigned2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin7SegDecoder2|decOut_n~7_combout\,
	datac => \Bin7SegDecoder2|decOut_n~18_combout\,
	datad => \Bin2BCDSigned2|Add0~0_combout\,
	combout => \Bin7SegDecoder2|decOut_n~19_combout\);

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

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


