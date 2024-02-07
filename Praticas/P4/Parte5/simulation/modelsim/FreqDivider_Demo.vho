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

-- DATE "03/05/2023 18:46:05"

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

ENTITY 	FreqDivider_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END FreqDivider_Demo;

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
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_Demo IS
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
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FreqDiv|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \FreqDiv|Add2~0_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~1\ : std_logic;
SIGNAL \FreqDiv|Add2~2_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~3\ : std_logic;
SIGNAL \FreqDiv|Add2~4_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~5\ : std_logic;
SIGNAL \FreqDiv|Add2~6_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~7\ : std_logic;
SIGNAL \FreqDiv|Add2~8_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~9\ : std_logic;
SIGNAL \FreqDiv|Add2~10_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~11\ : std_logic;
SIGNAL \FreqDiv|Add2~12_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~13\ : std_logic;
SIGNAL \FreqDiv|Add2~14_combout\ : std_logic;
SIGNAL \FreqDiv|s_counter~11_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~8_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~15\ : std_logic;
SIGNAL \FreqDiv|Add2~16_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~17\ : std_logic;
SIGNAL \FreqDiv|Add2~18_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~19\ : std_logic;
SIGNAL \FreqDiv|Add2~20_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~21\ : std_logic;
SIGNAL \FreqDiv|Add2~22_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~23\ : std_logic;
SIGNAL \FreqDiv|Add2~24_combout\ : std_logic;
SIGNAL \FreqDiv|s_counter~10_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~25\ : std_logic;
SIGNAL \FreqDiv|Add2~26_combout\ : std_logic;
SIGNAL \FreqDiv|s_counter~9_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~27\ : std_logic;
SIGNAL \FreqDiv|Add2~28_combout\ : std_logic;
SIGNAL \FreqDiv|s_counter~8_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~29\ : std_logic;
SIGNAL \FreqDiv|Add2~30_combout\ : std_logic;
SIGNAL \FreqDiv|s_counter~3_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~31\ : std_logic;
SIGNAL \FreqDiv|Add2~32_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~33\ : std_logic;
SIGNAL \FreqDiv|Add2~34_combout\ : std_logic;
SIGNAL \FreqDiv|s_counter~2_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~35\ : std_logic;
SIGNAL \FreqDiv|Add2~36_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~37\ : std_logic;
SIGNAL \FreqDiv|Add2~38_combout\ : std_logic;
SIGNAL \FreqDiv|s_counter~7_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~39\ : std_logic;
SIGNAL \FreqDiv|Add2~40_combout\ : std_logic;
SIGNAL \FreqDiv|s_counter~6_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~5_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~49\ : std_logic;
SIGNAL \FreqDiv|Add2~50_combout\ : std_logic;
SIGNAL \FreqDiv|s_counter~0_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~51\ : std_logic;
SIGNAL \FreqDiv|Add2~52_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~53\ : std_logic;
SIGNAL \FreqDiv|Add2~54_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~55\ : std_logic;
SIGNAL \FreqDiv|Add2~56_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~57\ : std_logic;
SIGNAL \FreqDiv|Add2~58_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~59\ : std_logic;
SIGNAL \FreqDiv|Add2~60_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~61\ : std_logic;
SIGNAL \FreqDiv|Add2~62_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~3_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~41\ : std_logic;
SIGNAL \FreqDiv|Add2~42_combout\ : std_logic;
SIGNAL \FreqDiv|s_counter~5_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~43\ : std_logic;
SIGNAL \FreqDiv|Add2~44_combout\ : std_logic;
SIGNAL \FreqDiv|s_counter~4_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~4_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~6_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~7_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~9_combout\ : std_logic;
SIGNAL \FreqDiv|Equal1~3_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~45\ : std_logic;
SIGNAL \FreqDiv|Add2~46_combout\ : std_logic;
SIGNAL \FreqDiv|s_counter~1_combout\ : std_logic;
SIGNAL \FreqDiv|Add2~47\ : std_logic;
SIGNAL \FreqDiv|Add2~48_combout\ : std_logic;
SIGNAL \FreqDiv|Equal1~0_combout\ : std_logic;
SIGNAL \FreqDiv|Equal1~1_combout\ : std_logic;
SIGNAL \FreqDiv|Equal1~2_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~0_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~1_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~2_combout\ : std_logic;
SIGNAL \FreqDiv|Equal0~10_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~0_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~feeder_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~q\ : std_logic;
SIGNAL \FreqDiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Counter7Seg|Counter|s_count[0]~3_combout\ : std_logic;
SIGNAL \Counter7Seg|Counter|s_count[0]~4_combout\ : std_logic;
SIGNAL \Counter7Seg|Counter|s_count[1]~6_cout\ : std_logic;
SIGNAL \Counter7Seg|Counter|s_count[1]~7_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Counter7Seg|Counter|s_count[2]~13_combout\ : std_logic;
SIGNAL \Counter7Seg|Counter|s_count[1]~8\ : std_logic;
SIGNAL \Counter7Seg|Counter|s_count[2]~9_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Counter7Seg|Counter|s_count[2]~10\ : std_logic;
SIGNAL \Counter7Seg|Counter|s_count[3]~11_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \Counter7Seg|BCD|Add1~1_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Add1~2_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Add1~0_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Add0~0_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|s_Unid~0_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~5_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~4_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~6_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~8_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~7_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~9_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~23_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~22_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~14_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~15_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~10_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~11_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~12_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~13_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~16_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~17_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~18_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~19_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~20_combout\ : std_logic;
SIGNAL \Counter7Seg|Seg7|decOut_n~21_combout\ : std_logic;
SIGNAL \Counter7Seg|Counter|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FreqDiv|s_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Counter7Seg|Counter|ALT_INV_s_count\ : std_logic_vector(3 DOWNTO 3);

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\FreqDiv|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FreqDiv|clkOut~q\);
\Counter7Seg|Counter|ALT_INV_s_count\(3) <= NOT \Counter7Seg|Counter|s_count\(3);
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
	i => \Counter7Seg|Seg7|decOut_n~6_combout\,
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
	i => \Counter7Seg|Seg7|decOut_n~9_combout\,
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
	i => \Counter7Seg|Seg7|decOut_n~23_combout\,
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
	i => \Counter7Seg|Seg7|decOut_n~16_combout\,
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
	i => \Counter7Seg|Seg7|decOut_n~17_combout\,
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
	i => \Counter7Seg|Seg7|decOut_n~19_combout\,
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
	i => \Counter7Seg|Seg7|decOut_n~21_combout\,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => \Counter7Seg|Counter|ALT_INV_s_count\(3),
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

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

-- Location: LCCOMB_X55_Y2_N0
\FreqDiv|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~0_combout\ = \FreqDiv|s_counter\(0) $ (VCC)
-- \FreqDiv|Add2~1\ = CARRY(\FreqDiv|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(0),
	datad => VCC,
	combout => \FreqDiv|Add2~0_combout\,
	cout => \FreqDiv|Add2~1\);

-- Location: FF_X55_Y2_N1
\FreqDiv|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(0));

-- Location: LCCOMB_X55_Y2_N2
\FreqDiv|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~2_combout\ = (\FreqDiv|s_counter\(1) & (!\FreqDiv|Add2~1\)) # (!\FreqDiv|s_counter\(1) & ((\FreqDiv|Add2~1\) # (GND)))
-- \FreqDiv|Add2~3\ = CARRY((!\FreqDiv|Add2~1\) # (!\FreqDiv|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(1),
	datad => VCC,
	cin => \FreqDiv|Add2~1\,
	combout => \FreqDiv|Add2~2_combout\,
	cout => \FreqDiv|Add2~3\);

-- Location: FF_X55_Y2_N3
\FreqDiv|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(1));

-- Location: LCCOMB_X55_Y2_N4
\FreqDiv|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~4_combout\ = (\FreqDiv|s_counter\(2) & (\FreqDiv|Add2~3\ $ (GND))) # (!\FreqDiv|s_counter\(2) & (!\FreqDiv|Add2~3\ & VCC))
-- \FreqDiv|Add2~5\ = CARRY((\FreqDiv|s_counter\(2) & !\FreqDiv|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(2),
	datad => VCC,
	cin => \FreqDiv|Add2~3\,
	combout => \FreqDiv|Add2~4_combout\,
	cout => \FreqDiv|Add2~5\);

-- Location: FF_X55_Y2_N5
\FreqDiv|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(2));

-- Location: LCCOMB_X55_Y2_N6
\FreqDiv|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~6_combout\ = (\FreqDiv|s_counter\(3) & (!\FreqDiv|Add2~5\)) # (!\FreqDiv|s_counter\(3) & ((\FreqDiv|Add2~5\) # (GND)))
-- \FreqDiv|Add2~7\ = CARRY((!\FreqDiv|Add2~5\) # (!\FreqDiv|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(3),
	datad => VCC,
	cin => \FreqDiv|Add2~5\,
	combout => \FreqDiv|Add2~6_combout\,
	cout => \FreqDiv|Add2~7\);

-- Location: FF_X55_Y2_N7
\FreqDiv|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(3));

-- Location: LCCOMB_X55_Y2_N8
\FreqDiv|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~8_combout\ = (\FreqDiv|s_counter\(4) & (\FreqDiv|Add2~7\ $ (GND))) # (!\FreqDiv|s_counter\(4) & (!\FreqDiv|Add2~7\ & VCC))
-- \FreqDiv|Add2~9\ = CARRY((\FreqDiv|s_counter\(4) & !\FreqDiv|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(4),
	datad => VCC,
	cin => \FreqDiv|Add2~7\,
	combout => \FreqDiv|Add2~8_combout\,
	cout => \FreqDiv|Add2~9\);

-- Location: FF_X55_Y2_N9
\FreqDiv|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(4));

-- Location: LCCOMB_X55_Y2_N10
\FreqDiv|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~10_combout\ = (\FreqDiv|s_counter\(5) & (!\FreqDiv|Add2~9\)) # (!\FreqDiv|s_counter\(5) & ((\FreqDiv|Add2~9\) # (GND)))
-- \FreqDiv|Add2~11\ = CARRY((!\FreqDiv|Add2~9\) # (!\FreqDiv|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(5),
	datad => VCC,
	cin => \FreqDiv|Add2~9\,
	combout => \FreqDiv|Add2~10_combout\,
	cout => \FreqDiv|Add2~11\);

-- Location: FF_X55_Y2_N11
\FreqDiv|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(5));

-- Location: LCCOMB_X55_Y2_N12
\FreqDiv|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~12_combout\ = (\FreqDiv|s_counter\(6) & (\FreqDiv|Add2~11\ $ (GND))) # (!\FreqDiv|s_counter\(6) & (!\FreqDiv|Add2~11\ & VCC))
-- \FreqDiv|Add2~13\ = CARRY((\FreqDiv|s_counter\(6) & !\FreqDiv|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(6),
	datad => VCC,
	cin => \FreqDiv|Add2~11\,
	combout => \FreqDiv|Add2~12_combout\,
	cout => \FreqDiv|Add2~13\);

-- Location: FF_X55_Y2_N13
\FreqDiv|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(6));

-- Location: LCCOMB_X55_Y2_N14
\FreqDiv|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~14_combout\ = (\FreqDiv|s_counter\(7) & (!\FreqDiv|Add2~13\)) # (!\FreqDiv|s_counter\(7) & ((\FreqDiv|Add2~13\) # (GND)))
-- \FreqDiv|Add2~15\ = CARRY((!\FreqDiv|Add2~13\) # (!\FreqDiv|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(7),
	datad => VCC,
	cin => \FreqDiv|Add2~13\,
	combout => \FreqDiv|Add2~14_combout\,
	cout => \FreqDiv|Add2~15\);

-- Location: LCCOMB_X54_Y1_N0
\FreqDiv|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_counter~11_combout\ = (\FreqDiv|Add2~14_combout\ & !\FreqDiv|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Add2~14_combout\,
	datad => \FreqDiv|Equal1~3_combout\,
	combout => \FreqDiv|s_counter~11_combout\);

-- Location: FF_X54_Y1_N1
\FreqDiv|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(7));

-- Location: LCCOMB_X54_Y1_N10
\FreqDiv|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~8_combout\ = (\FreqDiv|s_counter\(3) & (!\FreqDiv|s_counter\(7) & (\FreqDiv|s_counter\(5) & \FreqDiv|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(3),
	datab => \FreqDiv|s_counter\(7),
	datac => \FreqDiv|s_counter\(5),
	datad => \FreqDiv|s_counter\(4),
	combout => \FreqDiv|Equal0~8_combout\);

-- Location: LCCOMB_X55_Y2_N16
\FreqDiv|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~16_combout\ = (\FreqDiv|s_counter\(8) & (\FreqDiv|Add2~15\ $ (GND))) # (!\FreqDiv|s_counter\(8) & (!\FreqDiv|Add2~15\ & VCC))
-- \FreqDiv|Add2~17\ = CARRY((\FreqDiv|s_counter\(8) & !\FreqDiv|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(8),
	datad => VCC,
	cin => \FreqDiv|Add2~15\,
	combout => \FreqDiv|Add2~16_combout\,
	cout => \FreqDiv|Add2~17\);

-- Location: FF_X55_Y2_N17
\FreqDiv|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(8));

-- Location: LCCOMB_X55_Y2_N18
\FreqDiv|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~18_combout\ = (\FreqDiv|s_counter\(9) & (!\FreqDiv|Add2~17\)) # (!\FreqDiv|s_counter\(9) & ((\FreqDiv|Add2~17\) # (GND)))
-- \FreqDiv|Add2~19\ = CARRY((!\FreqDiv|Add2~17\) # (!\FreqDiv|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(9),
	datad => VCC,
	cin => \FreqDiv|Add2~17\,
	combout => \FreqDiv|Add2~18_combout\,
	cout => \FreqDiv|Add2~19\);

-- Location: FF_X55_Y2_N19
\FreqDiv|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(9));

-- Location: LCCOMB_X55_Y2_N20
\FreqDiv|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~20_combout\ = (\FreqDiv|s_counter\(10) & (\FreqDiv|Add2~19\ $ (GND))) # (!\FreqDiv|s_counter\(10) & (!\FreqDiv|Add2~19\ & VCC))
-- \FreqDiv|Add2~21\ = CARRY((\FreqDiv|s_counter\(10) & !\FreqDiv|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(10),
	datad => VCC,
	cin => \FreqDiv|Add2~19\,
	combout => \FreqDiv|Add2~20_combout\,
	cout => \FreqDiv|Add2~21\);

-- Location: FF_X55_Y2_N21
\FreqDiv|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(10));

-- Location: LCCOMB_X55_Y2_N22
\FreqDiv|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~22_combout\ = (\FreqDiv|s_counter\(11) & (!\FreqDiv|Add2~21\)) # (!\FreqDiv|s_counter\(11) & ((\FreqDiv|Add2~21\) # (GND)))
-- \FreqDiv|Add2~23\ = CARRY((!\FreqDiv|Add2~21\) # (!\FreqDiv|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(11),
	datad => VCC,
	cin => \FreqDiv|Add2~21\,
	combout => \FreqDiv|Add2~22_combout\,
	cout => \FreqDiv|Add2~23\);

-- Location: FF_X55_Y2_N23
\FreqDiv|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(11));

-- Location: LCCOMB_X55_Y2_N24
\FreqDiv|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~24_combout\ = (\FreqDiv|s_counter\(12) & (\FreqDiv|Add2~23\ $ (GND))) # (!\FreqDiv|s_counter\(12) & (!\FreqDiv|Add2~23\ & VCC))
-- \FreqDiv|Add2~25\ = CARRY((\FreqDiv|s_counter\(12) & !\FreqDiv|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(12),
	datad => VCC,
	cin => \FreqDiv|Add2~23\,
	combout => \FreqDiv|Add2~24_combout\,
	cout => \FreqDiv|Add2~25\);

-- Location: LCCOMB_X54_Y1_N2
\FreqDiv|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_counter~10_combout\ = (!\FreqDiv|Equal1~3_combout\ & \FreqDiv|Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal1~3_combout\,
	datad => \FreqDiv|Add2~24_combout\,
	combout => \FreqDiv|s_counter~10_combout\);

-- Location: FF_X54_Y1_N3
\FreqDiv|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(12));

-- Location: LCCOMB_X55_Y2_N26
\FreqDiv|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~26_combout\ = (\FreqDiv|s_counter\(13) & (!\FreqDiv|Add2~25\)) # (!\FreqDiv|s_counter\(13) & ((\FreqDiv|Add2~25\) # (GND)))
-- \FreqDiv|Add2~27\ = CARRY((!\FreqDiv|Add2~25\) # (!\FreqDiv|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(13),
	datad => VCC,
	cin => \FreqDiv|Add2~25\,
	combout => \FreqDiv|Add2~26_combout\,
	cout => \FreqDiv|Add2~27\);

-- Location: LCCOMB_X54_Y1_N26
\FreqDiv|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_counter~9_combout\ = (\FreqDiv|Add2~26_combout\ & !\FreqDiv|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Add2~26_combout\,
	datad => \FreqDiv|Equal1~3_combout\,
	combout => \FreqDiv|s_counter~9_combout\);

-- Location: FF_X54_Y1_N27
\FreqDiv|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(13));

-- Location: LCCOMB_X55_Y2_N28
\FreqDiv|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~28_combout\ = (\FreqDiv|s_counter\(14) & (\FreqDiv|Add2~27\ $ (GND))) # (!\FreqDiv|s_counter\(14) & (!\FreqDiv|Add2~27\ & VCC))
-- \FreqDiv|Add2~29\ = CARRY((\FreqDiv|s_counter\(14) & !\FreqDiv|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(14),
	datad => VCC,
	cin => \FreqDiv|Add2~27\,
	combout => \FreqDiv|Add2~28_combout\,
	cout => \FreqDiv|Add2~29\);

-- Location: LCCOMB_X54_Y1_N20
\FreqDiv|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_counter~8_combout\ = (\FreqDiv|Add2~28_combout\ & !\FreqDiv|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Add2~28_combout\,
	datad => \FreqDiv|Equal1~3_combout\,
	combout => \FreqDiv|s_counter~8_combout\);

-- Location: FF_X54_Y1_N21
\FreqDiv|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(14));

-- Location: LCCOMB_X55_Y2_N30
\FreqDiv|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~30_combout\ = (\FreqDiv|s_counter\(15) & (!\FreqDiv|Add2~29\)) # (!\FreqDiv|s_counter\(15) & ((\FreqDiv|Add2~29\) # (GND)))
-- \FreqDiv|Add2~31\ = CARRY((!\FreqDiv|Add2~29\) # (!\FreqDiv|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(15),
	datad => VCC,
	cin => \FreqDiv|Add2~29\,
	combout => \FreqDiv|Add2~30_combout\,
	cout => \FreqDiv|Add2~31\);

-- Location: LCCOMB_X56_Y1_N0
\FreqDiv|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_counter~3_combout\ = (!\FreqDiv|Equal1~3_combout\ & \FreqDiv|Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal1~3_combout\,
	datad => \FreqDiv|Add2~30_combout\,
	combout => \FreqDiv|s_counter~3_combout\);

-- Location: FF_X56_Y1_N1
\FreqDiv|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(15));

-- Location: LCCOMB_X55_Y1_N0
\FreqDiv|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~32_combout\ = (\FreqDiv|s_counter\(16) & (\FreqDiv|Add2~31\ $ (GND))) # (!\FreqDiv|s_counter\(16) & (!\FreqDiv|Add2~31\ & VCC))
-- \FreqDiv|Add2~33\ = CARRY((\FreqDiv|s_counter\(16) & !\FreqDiv|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(16),
	datad => VCC,
	cin => \FreqDiv|Add2~31\,
	combout => \FreqDiv|Add2~32_combout\,
	cout => \FreqDiv|Add2~33\);

-- Location: FF_X55_Y1_N1
\FreqDiv|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(16));

-- Location: LCCOMB_X55_Y1_N2
\FreqDiv|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~34_combout\ = (\FreqDiv|s_counter\(17) & (!\FreqDiv|Add2~33\)) # (!\FreqDiv|s_counter\(17) & ((\FreqDiv|Add2~33\) # (GND)))
-- \FreqDiv|Add2~35\ = CARRY((!\FreqDiv|Add2~33\) # (!\FreqDiv|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(17),
	datad => VCC,
	cin => \FreqDiv|Add2~33\,
	combout => \FreqDiv|Add2~34_combout\,
	cout => \FreqDiv|Add2~35\);

-- Location: LCCOMB_X56_Y1_N2
\FreqDiv|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_counter~2_combout\ = (!\FreqDiv|Equal1~3_combout\ & \FreqDiv|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal1~3_combout\,
	datad => \FreqDiv|Add2~34_combout\,
	combout => \FreqDiv|s_counter~2_combout\);

-- Location: FF_X56_Y1_N3
\FreqDiv|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(17));

-- Location: LCCOMB_X55_Y1_N4
\FreqDiv|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~36_combout\ = (\FreqDiv|s_counter\(18) & (\FreqDiv|Add2~35\ $ (GND))) # (!\FreqDiv|s_counter\(18) & (!\FreqDiv|Add2~35\ & VCC))
-- \FreqDiv|Add2~37\ = CARRY((\FreqDiv|s_counter\(18) & !\FreqDiv|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(18),
	datad => VCC,
	cin => \FreqDiv|Add2~35\,
	combout => \FreqDiv|Add2~36_combout\,
	cout => \FreqDiv|Add2~37\);

-- Location: FF_X55_Y1_N5
\FreqDiv|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(18));

-- Location: LCCOMB_X55_Y1_N6
\FreqDiv|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~38_combout\ = (\FreqDiv|s_counter\(19) & (!\FreqDiv|Add2~37\)) # (!\FreqDiv|s_counter\(19) & ((\FreqDiv|Add2~37\) # (GND)))
-- \FreqDiv|Add2~39\ = CARRY((!\FreqDiv|Add2~37\) # (!\FreqDiv|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(19),
	datad => VCC,
	cin => \FreqDiv|Add2~37\,
	combout => \FreqDiv|Add2~38_combout\,
	cout => \FreqDiv|Add2~39\);

-- Location: LCCOMB_X54_Y1_N18
\FreqDiv|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_counter~7_combout\ = (\FreqDiv|Add2~38_combout\ & !\FreqDiv|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Add2~38_combout\,
	datad => \FreqDiv|Equal1~3_combout\,
	combout => \FreqDiv|s_counter~7_combout\);

-- Location: FF_X54_Y1_N19
\FreqDiv|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(19));

-- Location: LCCOMB_X55_Y1_N8
\FreqDiv|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~40_combout\ = (\FreqDiv|s_counter\(20) & (\FreqDiv|Add2~39\ $ (GND))) # (!\FreqDiv|s_counter\(20) & (!\FreqDiv|Add2~39\ & VCC))
-- \FreqDiv|Add2~41\ = CARRY((\FreqDiv|s_counter\(20) & !\FreqDiv|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(20),
	datad => VCC,
	cin => \FreqDiv|Add2~39\,
	combout => \FreqDiv|Add2~40_combout\,
	cout => \FreqDiv|Add2~41\);

-- Location: LCCOMB_X54_Y1_N8
\FreqDiv|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_counter~6_combout\ = (\FreqDiv|Add2~40_combout\ & !\FreqDiv|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Add2~40_combout\,
	datad => \FreqDiv|Equal1~3_combout\,
	combout => \FreqDiv|s_counter~6_combout\);

-- Location: FF_X54_Y1_N9
\FreqDiv|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(20));

-- Location: LCCOMB_X54_Y1_N12
\FreqDiv|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~5_combout\ = (\FreqDiv|s_counter\(13) & (\FreqDiv|s_counter\(19) & (\FreqDiv|s_counter\(20) & \FreqDiv|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(13),
	datab => \FreqDiv|s_counter\(19),
	datac => \FreqDiv|s_counter\(20),
	datad => \FreqDiv|s_counter\(14),
	combout => \FreqDiv|Equal0~5_combout\);

-- Location: LCCOMB_X55_Y1_N16
\FreqDiv|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~48_combout\ = (\FreqDiv|s_counter\(24) & (\FreqDiv|Add2~47\ $ (GND))) # (!\FreqDiv|s_counter\(24) & (!\FreqDiv|Add2~47\ & VCC))
-- \FreqDiv|Add2~49\ = CARRY((\FreqDiv|s_counter\(24) & !\FreqDiv|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(24),
	datad => VCC,
	cin => \FreqDiv|Add2~47\,
	combout => \FreqDiv|Add2~48_combout\,
	cout => \FreqDiv|Add2~49\);

-- Location: LCCOMB_X55_Y1_N18
\FreqDiv|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~50_combout\ = (\FreqDiv|s_counter\(25) & (!\FreqDiv|Add2~49\)) # (!\FreqDiv|s_counter\(25) & ((\FreqDiv|Add2~49\) # (GND)))
-- \FreqDiv|Add2~51\ = CARRY((!\FreqDiv|Add2~49\) # (!\FreqDiv|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(25),
	datad => VCC,
	cin => \FreqDiv|Add2~49\,
	combout => \FreqDiv|Add2~50_combout\,
	cout => \FreqDiv|Add2~51\);

-- Location: LCCOMB_X56_Y1_N20
\FreqDiv|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_counter~0_combout\ = (!\FreqDiv|Equal1~3_combout\ & \FreqDiv|Add2~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal1~3_combout\,
	datad => \FreqDiv|Add2~50_combout\,
	combout => \FreqDiv|s_counter~0_combout\);

-- Location: FF_X56_Y1_N21
\FreqDiv|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(25));

-- Location: LCCOMB_X55_Y1_N20
\FreqDiv|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~52_combout\ = (\FreqDiv|s_counter\(26) & (\FreqDiv|Add2~51\ $ (GND))) # (!\FreqDiv|s_counter\(26) & (!\FreqDiv|Add2~51\ & VCC))
-- \FreqDiv|Add2~53\ = CARRY((\FreqDiv|s_counter\(26) & !\FreqDiv|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(26),
	datad => VCC,
	cin => \FreqDiv|Add2~51\,
	combout => \FreqDiv|Add2~52_combout\,
	cout => \FreqDiv|Add2~53\);

-- Location: FF_X55_Y1_N21
\FreqDiv|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(26));

-- Location: LCCOMB_X55_Y1_N22
\FreqDiv|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~54_combout\ = (\FreqDiv|s_counter\(27) & (!\FreqDiv|Add2~53\)) # (!\FreqDiv|s_counter\(27) & ((\FreqDiv|Add2~53\) # (GND)))
-- \FreqDiv|Add2~55\ = CARRY((!\FreqDiv|Add2~53\) # (!\FreqDiv|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(27),
	datad => VCC,
	cin => \FreqDiv|Add2~53\,
	combout => \FreqDiv|Add2~54_combout\,
	cout => \FreqDiv|Add2~55\);

-- Location: FF_X55_Y1_N23
\FreqDiv|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(27));

-- Location: LCCOMB_X55_Y1_N24
\FreqDiv|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~56_combout\ = (\FreqDiv|s_counter\(28) & (\FreqDiv|Add2~55\ $ (GND))) # (!\FreqDiv|s_counter\(28) & (!\FreqDiv|Add2~55\ & VCC))
-- \FreqDiv|Add2~57\ = CARRY((\FreqDiv|s_counter\(28) & !\FreqDiv|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(28),
	datad => VCC,
	cin => \FreqDiv|Add2~55\,
	combout => \FreqDiv|Add2~56_combout\,
	cout => \FreqDiv|Add2~57\);

-- Location: FF_X55_Y1_N25
\FreqDiv|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(28));

-- Location: LCCOMB_X55_Y1_N26
\FreqDiv|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~58_combout\ = (\FreqDiv|s_counter\(29) & (!\FreqDiv|Add2~57\)) # (!\FreqDiv|s_counter\(29) & ((\FreqDiv|Add2~57\) # (GND)))
-- \FreqDiv|Add2~59\ = CARRY((!\FreqDiv|Add2~57\) # (!\FreqDiv|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(29),
	datad => VCC,
	cin => \FreqDiv|Add2~57\,
	combout => \FreqDiv|Add2~58_combout\,
	cout => \FreqDiv|Add2~59\);

-- Location: FF_X55_Y1_N27
\FreqDiv|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(29));

-- Location: LCCOMB_X55_Y1_N28
\FreqDiv|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~60_combout\ = (\FreqDiv|s_counter\(30) & (\FreqDiv|Add2~59\ $ (GND))) # (!\FreqDiv|s_counter\(30) & (!\FreqDiv|Add2~59\ & VCC))
-- \FreqDiv|Add2~61\ = CARRY((\FreqDiv|s_counter\(30) & !\FreqDiv|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(30),
	datad => VCC,
	cin => \FreqDiv|Add2~59\,
	combout => \FreqDiv|Add2~60_combout\,
	cout => \FreqDiv|Add2~61\);

-- Location: FF_X55_Y1_N29
\FreqDiv|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(30));

-- Location: LCCOMB_X55_Y1_N30
\FreqDiv|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~62_combout\ = \FreqDiv|s_counter\(31) $ (\FreqDiv|Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(31),
	cin => \FreqDiv|Add2~61\,
	combout => \FreqDiv|Add2~62_combout\);

-- Location: FF_X55_Y1_N31
\FreqDiv|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(31));

-- Location: LCCOMB_X54_Y1_N4
\FreqDiv|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~3_combout\ = (!\FreqDiv|s_counter\(31) & (!\FreqDiv|s_counter\(30) & (!\FreqDiv|s_counter\(28) & !\FreqDiv|s_counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(31),
	datab => \FreqDiv|s_counter\(30),
	datac => \FreqDiv|s_counter\(28),
	datad => \FreqDiv|s_counter\(29),
	combout => \FreqDiv|Equal0~3_combout\);

-- Location: LCCOMB_X55_Y1_N10
\FreqDiv|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~42_combout\ = (\FreqDiv|s_counter\(21) & (!\FreqDiv|Add2~41\)) # (!\FreqDiv|s_counter\(21) & ((\FreqDiv|Add2~41\) # (GND)))
-- \FreqDiv|Add2~43\ = CARRY((!\FreqDiv|Add2~41\) # (!\FreqDiv|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(21),
	datad => VCC,
	cin => \FreqDiv|Add2~41\,
	combout => \FreqDiv|Add2~42_combout\,
	cout => \FreqDiv|Add2~43\);

-- Location: LCCOMB_X54_Y1_N16
\FreqDiv|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_counter~5_combout\ = (\FreqDiv|Add2~42_combout\ & !\FreqDiv|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Add2~42_combout\,
	datad => \FreqDiv|Equal1~3_combout\,
	combout => \FreqDiv|s_counter~5_combout\);

-- Location: FF_X54_Y1_N17
\FreqDiv|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(21));

-- Location: LCCOMB_X55_Y1_N12
\FreqDiv|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~44_combout\ = (\FreqDiv|s_counter\(22) & (\FreqDiv|Add2~43\ $ (GND))) # (!\FreqDiv|s_counter\(22) & (!\FreqDiv|Add2~43\ & VCC))
-- \FreqDiv|Add2~45\ = CARRY((\FreqDiv|s_counter\(22) & !\FreqDiv|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(22),
	datad => VCC,
	cin => \FreqDiv|Add2~43\,
	combout => \FreqDiv|Add2~44_combout\,
	cout => \FreqDiv|Add2~45\);

-- Location: LCCOMB_X54_Y1_N30
\FreqDiv|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_counter~4_combout\ = (\FreqDiv|Add2~44_combout\ & !\FreqDiv|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|Add2~44_combout\,
	datad => \FreqDiv|Equal1~3_combout\,
	combout => \FreqDiv|s_counter~4_combout\);

-- Location: FF_X54_Y1_N31
\FreqDiv|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(22));

-- Location: LCCOMB_X54_Y1_N14
\FreqDiv|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~4_combout\ = (\FreqDiv|s_counter\(22) & (\FreqDiv|s_counter\(21) & (!\FreqDiv|s_counter\(26) & !\FreqDiv|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(22),
	datab => \FreqDiv|s_counter\(21),
	datac => \FreqDiv|s_counter\(26),
	datad => \FreqDiv|s_counter\(27),
	combout => \FreqDiv|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y1_N24
\FreqDiv|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~6_combout\ = (!\FreqDiv|s_counter\(10) & (\FreqDiv|s_counter\(12) & (!\FreqDiv|s_counter\(8) & !\FreqDiv|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(10),
	datab => \FreqDiv|s_counter\(12),
	datac => \FreqDiv|s_counter\(8),
	datad => \FreqDiv|s_counter\(9),
	combout => \FreqDiv|Equal0~6_combout\);

-- Location: LCCOMB_X54_Y1_N22
\FreqDiv|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~7_combout\ = (\FreqDiv|Equal0~5_combout\ & (\FreqDiv|Equal0~3_combout\ & (\FreqDiv|Equal0~4_combout\ & \FreqDiv|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal0~5_combout\,
	datab => \FreqDiv|Equal0~3_combout\,
	datac => \FreqDiv|Equal0~4_combout\,
	datad => \FreqDiv|Equal0~6_combout\,
	combout => \FreqDiv|Equal0~7_combout\);

-- Location: LCCOMB_X56_Y2_N28
\FreqDiv|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~9_combout\ = (\FreqDiv|s_counter\(0) & (\FreqDiv|s_counter\(2) & \FreqDiv|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(0),
	datac => \FreqDiv|s_counter\(2),
	datad => \FreqDiv|s_counter\(1),
	combout => \FreqDiv|Equal0~9_combout\);

-- Location: LCCOMB_X56_Y1_N12
\FreqDiv|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal1~3_combout\ = (\FreqDiv|Equal1~2_combout\ & (\FreqDiv|Equal0~8_combout\ & (\FreqDiv|Equal0~7_combout\ & \FreqDiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal1~2_combout\,
	datab => \FreqDiv|Equal0~8_combout\,
	datac => \FreqDiv|Equal0~7_combout\,
	datad => \FreqDiv|Equal0~9_combout\,
	combout => \FreqDiv|Equal1~3_combout\);

-- Location: LCCOMB_X55_Y1_N14
\FreqDiv|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Add2~46_combout\ = (\FreqDiv|s_counter\(23) & (!\FreqDiv|Add2~45\)) # (!\FreqDiv|s_counter\(23) & ((\FreqDiv|Add2~45\) # (GND)))
-- \FreqDiv|Add2~47\ = CARRY((!\FreqDiv|Add2~45\) # (!\FreqDiv|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(23),
	datad => VCC,
	cin => \FreqDiv|Add2~45\,
	combout => \FreqDiv|Add2~46_combout\,
	cout => \FreqDiv|Add2~47\);

-- Location: LCCOMB_X56_Y1_N18
\FreqDiv|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_counter~1_combout\ = (!\FreqDiv|Equal1~3_combout\ & \FreqDiv|Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal1~3_combout\,
	datad => \FreqDiv|Add2~46_combout\,
	combout => \FreqDiv|s_counter~1_combout\);

-- Location: FF_X56_Y1_N19
\FreqDiv|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(23));

-- Location: FF_X55_Y1_N17
\FreqDiv|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_counter\(24));

-- Location: LCCOMB_X56_Y1_N22
\FreqDiv|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal1~0_combout\ = (!\FreqDiv|s_counter\(24) & (\FreqDiv|s_counter\(25) & (!\FreqDiv|s_counter\(18) & \FreqDiv|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(24),
	datab => \FreqDiv|s_counter\(25),
	datac => \FreqDiv|s_counter\(18),
	datad => \FreqDiv|s_counter\(23),
	combout => \FreqDiv|Equal1~0_combout\);

-- Location: LCCOMB_X56_Y1_N24
\FreqDiv|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal1~1_combout\ = (!\FreqDiv|s_counter\(16) & (\FreqDiv|s_counter\(15) & (!\FreqDiv|s_counter\(11) & \FreqDiv|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(16),
	datab => \FreqDiv|s_counter\(15),
	datac => \FreqDiv|s_counter\(11),
	datad => \FreqDiv|s_counter\(17),
	combout => \FreqDiv|Equal1~1_combout\);

-- Location: LCCOMB_X56_Y1_N6
\FreqDiv|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal1~2_combout\ = (\FreqDiv|s_counter\(6) & (\FreqDiv|Equal1~0_combout\ & \FreqDiv|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(6),
	datac => \FreqDiv|Equal1~0_combout\,
	datad => \FreqDiv|Equal1~1_combout\,
	combout => \FreqDiv|Equal1~2_combout\);

-- Location: LCCOMB_X56_Y1_N8
\FreqDiv|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~0_combout\ = (\FreqDiv|s_counter\(24) & (!\FreqDiv|s_counter\(25) & (\FreqDiv|s_counter\(18) & !\FreqDiv|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(24),
	datab => \FreqDiv|s_counter\(25),
	datac => \FreqDiv|s_counter\(18),
	datad => \FreqDiv|s_counter\(23),
	combout => \FreqDiv|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y1_N10
\FreqDiv|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~1_combout\ = (\FreqDiv|s_counter\(16) & (!\FreqDiv|s_counter\(15) & (\FreqDiv|s_counter\(11) & !\FreqDiv|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_counter\(16),
	datab => \FreqDiv|s_counter\(15),
	datac => \FreqDiv|s_counter\(11),
	datad => \FreqDiv|s_counter\(17),
	combout => \FreqDiv|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y1_N16
\FreqDiv|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~2_combout\ = (!\FreqDiv|s_counter\(6) & (\FreqDiv|Equal0~0_combout\ & \FreqDiv|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_counter\(6),
	datac => \FreqDiv|Equal0~0_combout\,
	datad => \FreqDiv|Equal0~1_combout\,
	combout => \FreqDiv|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y1_N18
\FreqDiv|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|Equal0~10_combout\ = (\FreqDiv|Equal0~9_combout\ & (\FreqDiv|Equal0~7_combout\ & \FreqDiv|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|Equal0~9_combout\,
	datac => \FreqDiv|Equal0~7_combout\,
	datad => \FreqDiv|Equal0~8_combout\,
	combout => \FreqDiv|Equal0~10_combout\);

-- Location: LCCOMB_X57_Y1_N24
\FreqDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~0_combout\ = (\FreqDiv|Equal0~10_combout\ & ((\FreqDiv|Equal0~2_combout\) # ((\FreqDiv|clkOut~q\ & !\FreqDiv|Equal1~2_combout\)))) # (!\FreqDiv|Equal0~10_combout\ & (\FreqDiv|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|clkOut~q\,
	datab => \FreqDiv|Equal1~2_combout\,
	datac => \FreqDiv|Equal0~2_combout\,
	datad => \FreqDiv|Equal0~10_combout\,
	combout => \FreqDiv|clkOut~0_combout\);

-- Location: LCCOMB_X57_Y1_N16
\FreqDiv|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~feeder_combout\ = \FreqDiv|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|clkOut~0_combout\,
	combout => \FreqDiv|clkOut~feeder_combout\);

-- Location: FF_X57_Y1_N17
\FreqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|clkOut~q\);

-- Location: CLKCTRL_G15
\FreqDiv|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FreqDiv|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FreqDiv|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y20_N28
\Counter7Seg|Counter|s_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Counter|s_count[0]~3_combout\ = (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\SW[4]~input_o\)) # (!\SW[2]~input_o\ & ((!\Counter7Seg|Counter|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \Counter7Seg|Counter|s_count\(0),
	datad => \SW[1]~input_o\,
	combout => \Counter7Seg|Counter|s_count[0]~3_combout\);

-- Location: LCCOMB_X114_Y20_N12
\Counter7Seg|Counter|s_count[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Counter|s_count[0]~4_combout\ = (\SW[1]~input_o\ & (((\Counter7Seg|Counter|s_count[0]~3_combout\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\Counter7Seg|Counter|s_count[0]~3_combout\))) # (!\SW[0]~input_o\ & 
-- (\Counter7Seg|Counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \Counter7Seg|Counter|s_count\(0),
	datad => \Counter7Seg|Counter|s_count[0]~3_combout\,
	combout => \Counter7Seg|Counter|s_count[0]~4_combout\);

-- Location: FF_X114_Y20_N13
\Counter7Seg|Counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDiv|clkOut~clkctrl_outclk\,
	d => \Counter7Seg|Counter|s_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter7Seg|Counter|s_count\(0));

-- Location: LCCOMB_X114_Y20_N18
\Counter7Seg|Counter|s_count[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Counter|s_count[1]~6_cout\ = CARRY(\Counter7Seg|Counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|Counter|s_count\(0),
	datad => VCC,
	cout => \Counter7Seg|Counter|s_count[1]~6_cout\);

-- Location: LCCOMB_X114_Y20_N20
\Counter7Seg|Counter|s_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Counter|s_count[1]~7_combout\ = (\SW[3]~input_o\ & ((\Counter7Seg|Counter|s_count\(1) & (!\Counter7Seg|Counter|s_count[1]~6_cout\)) # (!\Counter7Seg|Counter|s_count\(1) & ((\Counter7Seg|Counter|s_count[1]~6_cout\) # (GND))))) # 
-- (!\SW[3]~input_o\ & ((\Counter7Seg|Counter|s_count\(1) & (\Counter7Seg|Counter|s_count[1]~6_cout\ & VCC)) # (!\Counter7Seg|Counter|s_count\(1) & (!\Counter7Seg|Counter|s_count[1]~6_cout\))))
-- \Counter7Seg|Counter|s_count[1]~8\ = CARRY((\SW[3]~input_o\ & ((!\Counter7Seg|Counter|s_count[1]~6_cout\) # (!\Counter7Seg|Counter|s_count\(1)))) # (!\SW[3]~input_o\ & (!\Counter7Seg|Counter|s_count\(1) & !\Counter7Seg|Counter|s_count[1]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \Counter7Seg|Counter|s_count\(1),
	datad => VCC,
	cin => \Counter7Seg|Counter|s_count[1]~6_cout\,
	combout => \Counter7Seg|Counter|s_count[1]~7_combout\,
	cout => \Counter7Seg|Counter|s_count[1]~8\);

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

-- Location: LCCOMB_X114_Y20_N26
\Counter7Seg|Counter|s_count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Counter|s_count[2]~13_combout\ = (\SW[1]~input_o\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Counter7Seg|Counter|s_count[2]~13_combout\);

-- Location: FF_X114_Y20_N21
\Counter7Seg|Counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDiv|clkOut~clkctrl_outclk\,
	d => \Counter7Seg|Counter|s_count[1]~7_combout\,
	asdata => \SW[5]~input_o\,
	sclr => \SW[1]~input_o\,
	sload => \SW[2]~input_o\,
	ena => \Counter7Seg|Counter|s_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter7Seg|Counter|s_count\(1));

-- Location: LCCOMB_X114_Y20_N22
\Counter7Seg|Counter|s_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Counter|s_count[2]~9_combout\ = ((\Counter7Seg|Counter|s_count\(2) $ (\SW[3]~input_o\ $ (\Counter7Seg|Counter|s_count[1]~8\)))) # (GND)
-- \Counter7Seg|Counter|s_count[2]~10\ = CARRY((\Counter7Seg|Counter|s_count\(2) & ((!\Counter7Seg|Counter|s_count[1]~8\) # (!\SW[3]~input_o\))) # (!\Counter7Seg|Counter|s_count\(2) & (!\SW[3]~input_o\ & !\Counter7Seg|Counter|s_count[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|Counter|s_count\(2),
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \Counter7Seg|Counter|s_count[1]~8\,
	combout => \Counter7Seg|Counter|s_count[2]~9_combout\,
	cout => \Counter7Seg|Counter|s_count[2]~10\);

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

-- Location: FF_X114_Y20_N23
\Counter7Seg|Counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDiv|clkOut~clkctrl_outclk\,
	d => \Counter7Seg|Counter|s_count[2]~9_combout\,
	asdata => \SW[6]~input_o\,
	sclr => \SW[1]~input_o\,
	sload => \SW[2]~input_o\,
	ena => \Counter7Seg|Counter|s_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter7Seg|Counter|s_count\(2));

-- Location: LCCOMB_X114_Y20_N24
\Counter7Seg|Counter|s_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Counter|s_count[3]~11_combout\ = \SW[3]~input_o\ $ (\Counter7Seg|Counter|s_count[2]~10\ $ (!\Counter7Seg|Counter|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \Counter7Seg|Counter|s_count\(3),
	cin => \Counter7Seg|Counter|s_count[2]~10\,
	combout => \Counter7Seg|Counter|s_count[3]~11_combout\);

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

-- Location: FF_X114_Y20_N25
\Counter7Seg|Counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDiv|clkOut~clkctrl_outclk\,
	d => \Counter7Seg|Counter|s_count[3]~11_combout\,
	asdata => \SW[7]~input_o\,
	sclr => \SW[1]~input_o\,
	sload => \SW[2]~input_o\,
	ena => \Counter7Seg|Counter|s_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter7Seg|Counter|s_count\(3));

-- Location: LCCOMB_X114_Y20_N8
\Counter7Seg|BCD|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Add1~1_combout\ = \Counter7Seg|Counter|s_count\(2) $ (((\Counter7Seg|Counter|s_count\(3) & ((\Counter7Seg|Counter|s_count\(1)) # (\Counter7Seg|Counter|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|Counter|s_count\(1),
	datab => \Counter7Seg|Counter|s_count\(2),
	datac => \Counter7Seg|Counter|s_count\(0),
	datad => \Counter7Seg|Counter|s_count\(3),
	combout => \Counter7Seg|BCD|Add1~1_combout\);

-- Location: LCCOMB_X114_Y24_N2
\Counter7Seg|BCD|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Add1~2_combout\ = \Counter7Seg|Counter|s_count\(1) $ (((\Counter7Seg|Counter|s_count\(0) & \Counter7Seg|Counter|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter7Seg|Counter|s_count\(1),
	datac => \Counter7Seg|Counter|s_count\(0),
	datad => \Counter7Seg|Counter|s_count\(3),
	combout => \Counter7Seg|BCD|Add1~2_combout\);

-- Location: LCCOMB_X113_Y24_N10
\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = \Counter7Seg|BCD|Add1~2_combout\ $ (VCC)
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY(\Counter7Seg|BCD|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Add1~2_combout\,
	datad => VCC,
	combout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X113_Y24_N12
\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = (\Counter7Seg|BCD|Add1~1_combout\ & (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ & VCC)) # (!\Counter7Seg|BCD|Add1~1_combout\ & 
-- (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((!\Counter7Seg|BCD|Add1~1_combout\ & !\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter7Seg|BCD|Add1~1_combout\,
	datad => VCC,
	cin => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X114_Y24_N24
\Counter7Seg|BCD|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Add1~0_combout\ = (\Counter7Seg|Counter|s_count\(2)) # ((\Counter7Seg|Counter|s_count\(1)) # ((\Counter7Seg|Counter|s_count\(0)) # (!\Counter7Seg|Counter|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|Counter|s_count\(2),
	datab => \Counter7Seg|Counter|s_count\(1),
	datac => \Counter7Seg|Counter|s_count\(0),
	datad => \Counter7Seg|Counter|s_count\(3),
	combout => \Counter7Seg|BCD|Add1~0_combout\);

-- Location: LCCOMB_X113_Y24_N14
\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\Counter7Seg|BCD|Add1~0_combout\ & (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)) # (!\Counter7Seg|BCD|Add1~0_combout\ & 
-- (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ $ (GND)))
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((!\Counter7Seg|BCD|Add1~0_combout\ & !\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Counter7Seg|BCD|Add1~0_combout\,
	datad => VCC,
	cin => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X113_Y24_N16
\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ = CARRY(!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	cout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\);

-- Location: LCCOMB_X113_Y24_N18
\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\,
	combout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X114_Y24_N10
\Counter7Seg|BCD|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Add0~0_combout\ = (!\Counter7Seg|Counter|s_count\(2) & (!\Counter7Seg|Counter|s_count\(1) & (!\Counter7Seg|Counter|s_count\(0) & \Counter7Seg|Counter|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|Counter|s_count\(2),
	datab => \Counter7Seg|Counter|s_count\(1),
	datac => \Counter7Seg|Counter|s_count\(0),
	datad => \Counter7Seg|Counter|s_count\(3),
	combout => \Counter7Seg|BCD|Add0~0_combout\);

-- Location: LCCOMB_X114_Y20_N14
\Counter7Seg|BCD|s_Unid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|s_Unid~0_combout\ = (\Counter7Seg|Counter|s_count\(0)) # ((!\Counter7Seg|Counter|s_count\(1) & (!\Counter7Seg|Counter|s_count\(2) & \Counter7Seg|Counter|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|Counter|s_count\(1),
	datab => \Counter7Seg|Counter|s_count\(2),
	datac => \Counter7Seg|Counter|s_count\(0),
	datad => \Counter7Seg|Counter|s_count\(3),
	combout => \Counter7Seg|BCD|s_Unid~0_combout\);

-- Location: LCCOMB_X114_Y24_N0
\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = \Counter7Seg|BCD|Add0~0_combout\ $ (\Counter7Seg|BCD|s_Unid~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter7Seg|BCD|Add0~0_combout\,
	datad => \Counter7Seg|BCD|s_Unid~0_combout\,
	combout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\);

-- Location: LCCOMB_X113_Y24_N6
\Counter7Seg|Seg7|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~5_combout\ = (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ & (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ & \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~5_combout\);

-- Location: LCCOMB_X113_Y24_N2
\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ = (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Counter7Seg|BCD|Add1~2_combout\))) # 
-- (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \Counter7Seg|BCD|Add1~2_combout\,
	combout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\);

-- Location: LCCOMB_X113_Y24_N24
\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ = (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Counter7Seg|BCD|Add1~1_combout\))) # 
-- (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \Counter7Seg|BCD|Add1~1_combout\,
	combout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\);

-- Location: LCCOMB_X114_Y24_N28
\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\ = (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Counter7Seg|Counter|s_count\(0))) # 
-- (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \Counter7Seg|Counter|s_count\(0),
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	combout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\);

-- Location: LCCOMB_X113_Y24_N8
\Counter7Seg|Seg7|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~4_combout\ = (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ & (\Counter7Seg|BCD|Add0~0_combout\ $ 
-- (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\))) # (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ & (!\Counter7Seg|BCD|Add0~0_combout\ & 
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datac => \Counter7Seg|BCD|Add0~0_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~4_combout\);

-- Location: LCCOMB_X113_Y24_N0
\Counter7Seg|Seg7|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~6_combout\ = (\Counter7Seg|Seg7|decOut_n~4_combout\) # ((\Counter7Seg|Seg7|decOut_n~5_combout\ & \Counter7Seg|BCD|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|Seg7|decOut_n~5_combout\,
	datab => \Counter7Seg|BCD|Add0~0_combout\,
	datac => \Counter7Seg|Seg7|decOut_n~4_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~6_combout\);

-- Location: LCCOMB_X113_Y24_N30
\Counter7Seg|Seg7|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~8_combout\ = (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ & (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ & 
-- !\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\)) # (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ & 
-- (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ $ (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~8_combout\);

-- Location: LCCOMB_X113_Y24_N20
\Counter7Seg|Seg7|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~7_combout\ = (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ & ((\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\Counter7Seg|BCD|Add0~0_combout\ & 
-- !\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\)) # (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datac => \Counter7Seg|BCD|Add0~0_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~7_combout\);

-- Location: LCCOMB_X113_Y24_N4
\Counter7Seg|Seg7|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~9_combout\ = (\Counter7Seg|Seg7|decOut_n~7_combout\) # ((\Counter7Seg|Seg7|decOut_n~8_combout\ & (\Counter7Seg|BCD|Add0~0_combout\ & !\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|Seg7|decOut_n~8_combout\,
	datab => \Counter7Seg|Seg7|decOut_n~7_combout\,
	datac => \Counter7Seg|BCD|Add0~0_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~9_combout\);

-- Location: LCCOMB_X113_Y24_N22
\Counter7Seg|Seg7|decOut_n~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~23_combout\ = (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ & 
-- ((!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\)))) # (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\Counter7Seg|BCD|Add0~0_combout\ & 
-- (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ $ (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datac => \Counter7Seg|BCD|Add0~0_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~23_combout\);

-- Location: LCCOMB_X114_Y24_N30
\Counter7Seg|Seg7|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~22_combout\ = (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ & (\Counter7Seg|BCD|Add0~0_combout\ & 
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datac => \Counter7Seg|BCD|Add0~0_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~22_combout\);

-- Location: LCCOMB_X113_Y24_N26
\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[23]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\ = (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((!\Counter7Seg|BCD|Add1~0_combout\))) # 
-- (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datad => \Counter7Seg|BCD|Add1~0_combout\,
	combout => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\);

-- Location: LCCOMB_X113_Y24_N28
\Counter7Seg|Seg7|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~14_combout\ = (\Counter7Seg|BCD|Add0~0_combout\ & ((\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\) # (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\))) # 
-- (!\Counter7Seg|BCD|Add0~0_combout\ & ((!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter7Seg|BCD|Add0~0_combout\,
	datac => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[23]~3_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~14_combout\);

-- Location: LCCOMB_X114_Y24_N20
\Counter7Seg|Seg7|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~15_combout\ = (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\Counter7Seg|Seg7|decOut_n~14_combout\ & !\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Counter7Seg|Seg7|decOut_n~14_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~15_combout\);

-- Location: LCCOMB_X114_Y20_N30
\Counter7Seg|Seg7|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~10_combout\ = (!\Counter7Seg|Counter|s_count\(1) & (!\Counter7Seg|Counter|s_count\(2) & !\Counter7Seg|Counter|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|Counter|s_count\(1),
	datab => \Counter7Seg|Counter|s_count\(2),
	datac => \Counter7Seg|Counter|s_count\(0),
	combout => \Counter7Seg|Seg7|decOut_n~10_combout\);

-- Location: LCCOMB_X114_Y24_N14
\Counter7Seg|Seg7|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~11_combout\ = (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ & (((!\Counter7Seg|Counter|s_count\(3) & \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\)) # 
-- (!\Counter7Seg|Seg7|decOut_n~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datab => \Counter7Seg|Counter|s_count\(3),
	datac => \Counter7Seg|Seg7|decOut_n~10_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~11_combout\);

-- Location: LCCOMB_X114_Y24_N8
\Counter7Seg|Seg7|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~12_combout\ = (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (\Counter7Seg|Seg7|decOut_n~11_combout\ & \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datac => \Counter7Seg|Seg7|decOut_n~11_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~12_combout\);

-- Location: LCCOMB_X114_Y24_N6
\Counter7Seg|Seg7|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~13_combout\ = (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ & (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\ & 
-- (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ $ (!\Counter7Seg|BCD|Add0~0_combout\)))) # (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ & 
-- (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\Counter7Seg|BCD|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datac => \Counter7Seg|BCD|Add0~0_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~13_combout\);

-- Location: LCCOMB_X114_Y24_N26
\Counter7Seg|Seg7|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~16_combout\ = (\Counter7Seg|Seg7|decOut_n~15_combout\ & (\Counter7Seg|Seg7|decOut_n~22_combout\)) # (!\Counter7Seg|Seg7|decOut_n~15_combout\ & (((\Counter7Seg|Seg7|decOut_n~12_combout\) # 
-- (\Counter7Seg|Seg7|decOut_n~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|Seg7|decOut_n~22_combout\,
	datab => \Counter7Seg|Seg7|decOut_n~15_combout\,
	datac => \Counter7Seg|Seg7|decOut_n~12_combout\,
	datad => \Counter7Seg|Seg7|decOut_n~13_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~16_combout\);

-- Location: LCCOMB_X114_Y24_N16
\Counter7Seg|Seg7|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~17_combout\ = (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ & ((\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- ((\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\))) # (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\Counter7Seg|BCD|Add0~0_combout\)))) # 
-- (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ & (((!\Counter7Seg|BCD|Add0~0_combout\ & \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datac => \Counter7Seg|BCD|Add0~0_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~17_combout\);

-- Location: LCCOMB_X114_Y24_N18
\Counter7Seg|Seg7|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~18_combout\ = (!\Counter7Seg|BCD|Add0~0_combout\ & ((\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & ((\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\) # 
-- (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\))) # (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ & 
-- \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datac => \Counter7Seg|BCD|Add0~0_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~18_combout\);

-- Location: LCCOMB_X114_Y24_N12
\Counter7Seg|Seg7|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~19_combout\ = (\Counter7Seg|Seg7|decOut_n~18_combout\) # ((\Counter7Seg|BCD|Add0~0_combout\ & \Counter7Seg|Seg7|decOut_n~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter7Seg|BCD|Add0~0_combout\,
	datac => \Counter7Seg|Seg7|decOut_n~5_combout\,
	datad => \Counter7Seg|Seg7|decOut_n~18_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~19_combout\);

-- Location: LCCOMB_X114_Y24_N22
\Counter7Seg|Seg7|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~20_combout\ = (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\ & (!\Counter7Seg|BCD|Add0~0_combout\ & (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ $ 
-- (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\)))) # (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\ & (!\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\ & 
-- (\Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\ $ (!\Counter7Seg|BCD|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[21]~2_combout\,
	datab => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[22]~1_combout\,
	datac => \Counter7Seg|BCD|Add0~0_combout\,
	datad => \Counter7Seg|BCD|Mod0|auto_generated|divider|divider|StageOut[20]~0_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~20_combout\);

-- Location: LCCOMB_X114_Y24_N4
\Counter7Seg|Seg7|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Counter7Seg|Seg7|decOut_n~21_combout\ = (\Counter7Seg|Seg7|decOut_n~15_combout\ & (!\Counter7Seg|Seg7|decOut_n~22_combout\)) # (!\Counter7Seg|Seg7|decOut_n~15_combout\ & ((\Counter7Seg|Seg7|decOut_n~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter7Seg|Seg7|decOut_n~22_combout\,
	datac => \Counter7Seg|Seg7|decOut_n~20_combout\,
	datad => \Counter7Seg|Seg7|decOut_n~15_combout\,
	combout => \Counter7Seg|Seg7|decOut_n~21_combout\);

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
END structure;


