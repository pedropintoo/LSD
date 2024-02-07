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

-- DATE "03/17/2023 23:51:01"

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

ENTITY 	SeqShiftUnit_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(13 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END SeqShiftUnit_Demo;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqShiftUnit_Demo IS
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
SIGNAL ww_SW : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkDividir50M|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkDividir50M|Add0~0_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~1\ : std_logic;
SIGNAL \clkDividir50M|Add0~2_combout\ : std_logic;
SIGNAL \clkDividir50M|Equal0~10_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~3\ : std_logic;
SIGNAL \clkDividir50M|Add0~4_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~5\ : std_logic;
SIGNAL \clkDividir50M|Add0~6_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~7\ : std_logic;
SIGNAL \clkDividir50M|Add0~8_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~9\ : std_logic;
SIGNAL \clkDividir50M|Add0~10_combout\ : std_logic;
SIGNAL \clkDividir50M|Equal0~5_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~11\ : std_logic;
SIGNAL \clkDividir50M|Add0~12_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~13\ : std_logic;
SIGNAL \clkDividir50M|Add0~14_combout\ : std_logic;
SIGNAL \clkDividir50M|s_divCounter~11_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~15\ : std_logic;
SIGNAL \clkDividir50M|Add0~16_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~17\ : std_logic;
SIGNAL \clkDividir50M|Add0~18_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~19\ : std_logic;
SIGNAL \clkDividir50M|Add0~20_combout\ : std_logic;
SIGNAL \clkDividir50M|Equal0~3_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~21\ : std_logic;
SIGNAL \clkDividir50M|Add0~22_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~23\ : std_logic;
SIGNAL \clkDividir50M|Add0~24_combout\ : std_logic;
SIGNAL \clkDividir50M|s_divCounter~10_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~25\ : std_logic;
SIGNAL \clkDividir50M|Add0~26_combout\ : std_logic;
SIGNAL \clkDividir50M|s_divCounter~9_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~27\ : std_logic;
SIGNAL \clkDividir50M|Add0~28_combout\ : std_logic;
SIGNAL \clkDividir50M|s_divCounter~8_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~29\ : std_logic;
SIGNAL \clkDividir50M|Add0~30_combout\ : std_logic;
SIGNAL \clkDividir50M|s_divCounter~3_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~31\ : std_logic;
SIGNAL \clkDividir50M|Add0~32_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~33\ : std_logic;
SIGNAL \clkDividir50M|Add0~34_combout\ : std_logic;
SIGNAL \clkDividir50M|s_divCounter~2_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~35\ : std_logic;
SIGNAL \clkDividir50M|Add0~36_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~37\ : std_logic;
SIGNAL \clkDividir50M|Add0~38_combout\ : std_logic;
SIGNAL \clkDividir50M|s_divCounter~7_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~39\ : std_logic;
SIGNAL \clkDividir50M|Add0~40_combout\ : std_logic;
SIGNAL \clkDividir50M|s_divCounter~6_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~41\ : std_logic;
SIGNAL \clkDividir50M|Add0~42_combout\ : std_logic;
SIGNAL \clkDividir50M|s_divCounter~5_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~43\ : std_logic;
SIGNAL \clkDividir50M|Add0~44_combout\ : std_logic;
SIGNAL \clkDividir50M|s_divCounter~4_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~45\ : std_logic;
SIGNAL \clkDividir50M|Add0~46_combout\ : std_logic;
SIGNAL \clkDividir50M|s_divCounter~1_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~47\ : std_logic;
SIGNAL \clkDividir50M|Add0~48_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~49\ : std_logic;
SIGNAL \clkDividir50M|Add0~51\ : std_logic;
SIGNAL \clkDividir50M|Add0~52_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~53\ : std_logic;
SIGNAL \clkDividir50M|Add0~54_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~55\ : std_logic;
SIGNAL \clkDividir50M|Add0~56_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~57\ : std_logic;
SIGNAL \clkDividir50M|Add0~58_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~59\ : std_logic;
SIGNAL \clkDividir50M|Add0~60_combout\ : std_logic;
SIGNAL \clkDividir50M|Equal0~0_combout\ : std_logic;
SIGNAL \clkDividir50M|Equal0~1_combout\ : std_logic;
SIGNAL \clkDividir50M|Equal0~2_combout\ : std_logic;
SIGNAL \clkDividir50M|Equal0~4_combout\ : std_logic;
SIGNAL \clkDividir50M|Equal0~11_combout\ : std_logic;
SIGNAL \clkDividir50M|Add0~50_combout\ : std_logic;
SIGNAL \clkDividir50M|s_divCounter~0_combout\ : std_logic;
SIGNAL \clkDividir50M|Equal0~7_combout\ : std_logic;
SIGNAL \clkDividir50M|Equal0~8_combout\ : std_logic;
SIGNAL \clkDividir50M|Equal0~9_combout\ : std_logic;
SIGNAL \clkDividir50M|clkOut~0_combout\ : std_logic;
SIGNAL \clkDividir50M|clkOut~1_combout\ : std_logic;
SIGNAL \clkDividir50M|clkOut~2_combout\ : std_logic;
SIGNAL \clkDividir50M|Equal0~6_combout\ : std_logic;
SIGNAL \clkDividir50M|clkOut~3_combout\ : std_logic;
SIGNAL \clkDividir50M|clkOut~q\ : std_logic;
SIGNAL \clkDividir50M|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg[7]~9_combout\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg[7]~10_combout\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg[7]~7_combout\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg[7]~feeder_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg[6]~6_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg[5]~5_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg[4]~4_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg[3]~3_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg[2]~2_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg[1]~1_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg~8_combout\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg[0]~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|s_shiftReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clkDividir50M|s_divCounter\ : std_logic_vector(30 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clkDividir50M|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkDividir50M|clkOut~q\);
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
	i => \SeqShiftUnit|s_shiftReg\(0),
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
	i => \SeqShiftUnit|s_shiftReg\(1),
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
	i => \SeqShiftUnit|s_shiftReg\(2),
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
	i => \SeqShiftUnit|s_shiftReg\(3),
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
	i => \SeqShiftUnit|s_shiftReg\(4),
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
	i => \SeqShiftUnit|s_shiftReg\(5),
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
	i => \SeqShiftUnit|s_shiftReg\(6),
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
	i => \SeqShiftUnit|s_shiftReg\(7),
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

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

-- Location: LCCOMB_X56_Y3_N2
\clkDividir50M|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~0_combout\ = \clkDividir50M|s_divCounter\(0) $ (VCC)
-- \clkDividir50M|Add0~1\ = CARRY(\clkDividir50M|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(0),
	datad => VCC,
	combout => \clkDividir50M|Add0~0_combout\,
	cout => \clkDividir50M|Add0~1\);

-- Location: FF_X56_Y3_N3
\clkDividir50M|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(0));

-- Location: LCCOMB_X56_Y3_N4
\clkDividir50M|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~2_combout\ = (\clkDividir50M|s_divCounter\(1) & (!\clkDividir50M|Add0~1\)) # (!\clkDividir50M|s_divCounter\(1) & ((\clkDividir50M|Add0~1\) # (GND)))
-- \clkDividir50M|Add0~3\ = CARRY((!\clkDividir50M|Add0~1\) # (!\clkDividir50M|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(1),
	datad => VCC,
	cin => \clkDividir50M|Add0~1\,
	combout => \clkDividir50M|Add0~2_combout\,
	cout => \clkDividir50M|Add0~3\);

-- Location: FF_X56_Y3_N5
\clkDividir50M|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(1));

-- Location: LCCOMB_X57_Y2_N2
\clkDividir50M|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Equal0~10_combout\ = (\clkDividir50M|s_divCounter\(0) & \clkDividir50M|s_divCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDividir50M|s_divCounter\(0),
	datad => \clkDividir50M|s_divCounter\(1),
	combout => \clkDividir50M|Equal0~10_combout\);

-- Location: LCCOMB_X56_Y3_N6
\clkDividir50M|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~4_combout\ = (\clkDividir50M|s_divCounter\(2) & (\clkDividir50M|Add0~3\ $ (GND))) # (!\clkDividir50M|s_divCounter\(2) & (!\clkDividir50M|Add0~3\ & VCC))
-- \clkDividir50M|Add0~5\ = CARRY((\clkDividir50M|s_divCounter\(2) & !\clkDividir50M|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(2),
	datad => VCC,
	cin => \clkDividir50M|Add0~3\,
	combout => \clkDividir50M|Add0~4_combout\,
	cout => \clkDividir50M|Add0~5\);

-- Location: FF_X56_Y3_N7
\clkDividir50M|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(2));

-- Location: LCCOMB_X56_Y3_N8
\clkDividir50M|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~6_combout\ = (\clkDividir50M|s_divCounter\(3) & (!\clkDividir50M|Add0~5\)) # (!\clkDividir50M|s_divCounter\(3) & ((\clkDividir50M|Add0~5\) # (GND)))
-- \clkDividir50M|Add0~7\ = CARRY((!\clkDividir50M|Add0~5\) # (!\clkDividir50M|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(3),
	datad => VCC,
	cin => \clkDividir50M|Add0~5\,
	combout => \clkDividir50M|Add0~6_combout\,
	cout => \clkDividir50M|Add0~7\);

-- Location: FF_X56_Y3_N9
\clkDividir50M|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(3));

-- Location: LCCOMB_X56_Y3_N10
\clkDividir50M|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~8_combout\ = (\clkDividir50M|s_divCounter\(4) & (\clkDividir50M|Add0~7\ $ (GND))) # (!\clkDividir50M|s_divCounter\(4) & (!\clkDividir50M|Add0~7\ & VCC))
-- \clkDividir50M|Add0~9\ = CARRY((\clkDividir50M|s_divCounter\(4) & !\clkDividir50M|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(4),
	datad => VCC,
	cin => \clkDividir50M|Add0~7\,
	combout => \clkDividir50M|Add0~8_combout\,
	cout => \clkDividir50M|Add0~9\);

-- Location: FF_X56_Y3_N11
\clkDividir50M|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(4));

-- Location: LCCOMB_X56_Y3_N12
\clkDividir50M|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~10_combout\ = (\clkDividir50M|s_divCounter\(5) & (!\clkDividir50M|Add0~9\)) # (!\clkDividir50M|s_divCounter\(5) & ((\clkDividir50M|Add0~9\) # (GND)))
-- \clkDividir50M|Add0~11\ = CARRY((!\clkDividir50M|Add0~9\) # (!\clkDividir50M|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(5),
	datad => VCC,
	cin => \clkDividir50M|Add0~9\,
	combout => \clkDividir50M|Add0~10_combout\,
	cout => \clkDividir50M|Add0~11\);

-- Location: FF_X56_Y3_N13
\clkDividir50M|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(5));

-- Location: LCCOMB_X57_Y3_N28
\clkDividir50M|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Equal0~5_combout\ = (\clkDividir50M|s_divCounter\(4) & (\clkDividir50M|s_divCounter\(2) & (\clkDividir50M|s_divCounter\(5) & \clkDividir50M|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(4),
	datab => \clkDividir50M|s_divCounter\(2),
	datac => \clkDividir50M|s_divCounter\(5),
	datad => \clkDividir50M|s_divCounter\(3),
	combout => \clkDividir50M|Equal0~5_combout\);

-- Location: LCCOMB_X56_Y3_N14
\clkDividir50M|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~12_combout\ = (\clkDividir50M|s_divCounter\(6) & (\clkDividir50M|Add0~11\ $ (GND))) # (!\clkDividir50M|s_divCounter\(6) & (!\clkDividir50M|Add0~11\ & VCC))
-- \clkDividir50M|Add0~13\ = CARRY((\clkDividir50M|s_divCounter\(6) & !\clkDividir50M|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(6),
	datad => VCC,
	cin => \clkDividir50M|Add0~11\,
	combout => \clkDividir50M|Add0~12_combout\,
	cout => \clkDividir50M|Add0~13\);

-- Location: FF_X56_Y3_N15
\clkDividir50M|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(6));

-- Location: LCCOMB_X56_Y3_N16
\clkDividir50M|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~14_combout\ = (\clkDividir50M|s_divCounter\(7) & (!\clkDividir50M|Add0~13\)) # (!\clkDividir50M|s_divCounter\(7) & ((\clkDividir50M|Add0~13\) # (GND)))
-- \clkDividir50M|Add0~15\ = CARRY((!\clkDividir50M|Add0~13\) # (!\clkDividir50M|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(7),
	datad => VCC,
	cin => \clkDividir50M|Add0~13\,
	combout => \clkDividir50M|Add0~14_combout\,
	cout => \clkDividir50M|Add0~15\);

-- Location: LCCOMB_X57_Y3_N12
\clkDividir50M|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|s_divCounter~11_combout\ = (\clkDividir50M|Add0~14_combout\ & !\clkDividir50M|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDividir50M|Add0~14_combout\,
	datad => \clkDividir50M|Equal0~11_combout\,
	combout => \clkDividir50M|s_divCounter~11_combout\);

-- Location: FF_X57_Y3_N13
\clkDividir50M|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(7));

-- Location: LCCOMB_X56_Y3_N18
\clkDividir50M|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~16_combout\ = (\clkDividir50M|s_divCounter\(8) & (\clkDividir50M|Add0~15\ $ (GND))) # (!\clkDividir50M|s_divCounter\(8) & (!\clkDividir50M|Add0~15\ & VCC))
-- \clkDividir50M|Add0~17\ = CARRY((\clkDividir50M|s_divCounter\(8) & !\clkDividir50M|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(8),
	datad => VCC,
	cin => \clkDividir50M|Add0~15\,
	combout => \clkDividir50M|Add0~16_combout\,
	cout => \clkDividir50M|Add0~17\);

-- Location: FF_X56_Y3_N19
\clkDividir50M|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(8));

-- Location: LCCOMB_X56_Y3_N20
\clkDividir50M|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~18_combout\ = (\clkDividir50M|s_divCounter\(9) & (!\clkDividir50M|Add0~17\)) # (!\clkDividir50M|s_divCounter\(9) & ((\clkDividir50M|Add0~17\) # (GND)))
-- \clkDividir50M|Add0~19\ = CARRY((!\clkDividir50M|Add0~17\) # (!\clkDividir50M|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(9),
	datad => VCC,
	cin => \clkDividir50M|Add0~17\,
	combout => \clkDividir50M|Add0~18_combout\,
	cout => \clkDividir50M|Add0~19\);

-- Location: FF_X56_Y3_N21
\clkDividir50M|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(9));

-- Location: LCCOMB_X56_Y3_N22
\clkDividir50M|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~20_combout\ = (\clkDividir50M|s_divCounter\(10) & (\clkDividir50M|Add0~19\ $ (GND))) # (!\clkDividir50M|s_divCounter\(10) & (!\clkDividir50M|Add0~19\ & VCC))
-- \clkDividir50M|Add0~21\ = CARRY((\clkDividir50M|s_divCounter\(10) & !\clkDividir50M|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(10),
	datad => VCC,
	cin => \clkDividir50M|Add0~19\,
	combout => \clkDividir50M|Add0~20_combout\,
	cout => \clkDividir50M|Add0~21\);

-- Location: FF_X56_Y3_N23
\clkDividir50M|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(10));

-- Location: LCCOMB_X57_Y3_N30
\clkDividir50M|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Equal0~3_combout\ = (!\clkDividir50M|s_divCounter\(7) & (!\clkDividir50M|s_divCounter\(8) & (!\clkDividir50M|s_divCounter\(9) & !\clkDividir50M|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(7),
	datab => \clkDividir50M|s_divCounter\(8),
	datac => \clkDividir50M|s_divCounter\(9),
	datad => \clkDividir50M|s_divCounter\(10),
	combout => \clkDividir50M|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y3_N24
\clkDividir50M|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~22_combout\ = (\clkDividir50M|s_divCounter\(11) & (!\clkDividir50M|Add0~21\)) # (!\clkDividir50M|s_divCounter\(11) & ((\clkDividir50M|Add0~21\) # (GND)))
-- \clkDividir50M|Add0~23\ = CARRY((!\clkDividir50M|Add0~21\) # (!\clkDividir50M|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(11),
	datad => VCC,
	cin => \clkDividir50M|Add0~21\,
	combout => \clkDividir50M|Add0~22_combout\,
	cout => \clkDividir50M|Add0~23\);

-- Location: FF_X56_Y3_N25
\clkDividir50M|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(11));

-- Location: LCCOMB_X56_Y3_N26
\clkDividir50M|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~24_combout\ = (\clkDividir50M|s_divCounter\(12) & (\clkDividir50M|Add0~23\ $ (GND))) # (!\clkDividir50M|s_divCounter\(12) & (!\clkDividir50M|Add0~23\ & VCC))
-- \clkDividir50M|Add0~25\ = CARRY((\clkDividir50M|s_divCounter\(12) & !\clkDividir50M|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(12),
	datad => VCC,
	cin => \clkDividir50M|Add0~23\,
	combout => \clkDividir50M|Add0~24_combout\,
	cout => \clkDividir50M|Add0~25\);

-- Location: LCCOMB_X57_Y3_N14
\clkDividir50M|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|s_divCounter~10_combout\ = (\clkDividir50M|Add0~24_combout\ & !\clkDividir50M|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDividir50M|Add0~24_combout\,
	datad => \clkDividir50M|Equal0~11_combout\,
	combout => \clkDividir50M|s_divCounter~10_combout\);

-- Location: FF_X57_Y3_N15
\clkDividir50M|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|s_divCounter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(12));

-- Location: LCCOMB_X56_Y3_N28
\clkDividir50M|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~26_combout\ = (\clkDividir50M|s_divCounter\(13) & (!\clkDividir50M|Add0~25\)) # (!\clkDividir50M|s_divCounter\(13) & ((\clkDividir50M|Add0~25\) # (GND)))
-- \clkDividir50M|Add0~27\ = CARRY((!\clkDividir50M|Add0~25\) # (!\clkDividir50M|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(13),
	datad => VCC,
	cin => \clkDividir50M|Add0~25\,
	combout => \clkDividir50M|Add0~26_combout\,
	cout => \clkDividir50M|Add0~27\);

-- Location: LCCOMB_X57_Y3_N20
\clkDividir50M|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|s_divCounter~9_combout\ = (!\clkDividir50M|Equal0~11_combout\ & \clkDividir50M|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|Equal0~11_combout\,
	datad => \clkDividir50M|Add0~26_combout\,
	combout => \clkDividir50M|s_divCounter~9_combout\);

-- Location: FF_X57_Y3_N21
\clkDividir50M|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(13));

-- Location: LCCOMB_X56_Y3_N30
\clkDividir50M|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~28_combout\ = (\clkDividir50M|s_divCounter\(14) & (\clkDividir50M|Add0~27\ $ (GND))) # (!\clkDividir50M|s_divCounter\(14) & (!\clkDividir50M|Add0~27\ & VCC))
-- \clkDividir50M|Add0~29\ = CARRY((\clkDividir50M|s_divCounter\(14) & !\clkDividir50M|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(14),
	datad => VCC,
	cin => \clkDividir50M|Add0~27\,
	combout => \clkDividir50M|Add0~28_combout\,
	cout => \clkDividir50M|Add0~29\);

-- Location: LCCOMB_X56_Y3_N0
\clkDividir50M|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|s_divCounter~8_combout\ = (\clkDividir50M|Add0~28_combout\ & !\clkDividir50M|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDividir50M|Add0~28_combout\,
	datad => \clkDividir50M|Equal0~11_combout\,
	combout => \clkDividir50M|s_divCounter~8_combout\);

-- Location: FF_X56_Y3_N1
\clkDividir50M|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|s_divCounter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(14));

-- Location: LCCOMB_X56_Y2_N0
\clkDividir50M|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~30_combout\ = (\clkDividir50M|s_divCounter\(15) & (!\clkDividir50M|Add0~29\)) # (!\clkDividir50M|s_divCounter\(15) & ((\clkDividir50M|Add0~29\) # (GND)))
-- \clkDividir50M|Add0~31\ = CARRY((!\clkDividir50M|Add0~29\) # (!\clkDividir50M|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(15),
	datad => VCC,
	cin => \clkDividir50M|Add0~29\,
	combout => \clkDividir50M|Add0~30_combout\,
	cout => \clkDividir50M|Add0~31\);

-- Location: LCCOMB_X57_Y2_N8
\clkDividir50M|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|s_divCounter~3_combout\ = (!\clkDividir50M|Equal0~11_combout\ & \clkDividir50M|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|Equal0~11_combout\,
	datad => \clkDividir50M|Add0~30_combout\,
	combout => \clkDividir50M|s_divCounter~3_combout\);

-- Location: FF_X57_Y2_N9
\clkDividir50M|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(15));

-- Location: LCCOMB_X56_Y2_N2
\clkDividir50M|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~32_combout\ = (\clkDividir50M|s_divCounter\(16) & (\clkDividir50M|Add0~31\ $ (GND))) # (!\clkDividir50M|s_divCounter\(16) & (!\clkDividir50M|Add0~31\ & VCC))
-- \clkDividir50M|Add0~33\ = CARRY((\clkDividir50M|s_divCounter\(16) & !\clkDividir50M|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(16),
	datad => VCC,
	cin => \clkDividir50M|Add0~31\,
	combout => \clkDividir50M|Add0~32_combout\,
	cout => \clkDividir50M|Add0~33\);

-- Location: FF_X56_Y2_N3
\clkDividir50M|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(16));

-- Location: LCCOMB_X56_Y2_N4
\clkDividir50M|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~34_combout\ = (\clkDividir50M|s_divCounter\(17) & (!\clkDividir50M|Add0~33\)) # (!\clkDividir50M|s_divCounter\(17) & ((\clkDividir50M|Add0~33\) # (GND)))
-- \clkDividir50M|Add0~35\ = CARRY((!\clkDividir50M|Add0~33\) # (!\clkDividir50M|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(17),
	datad => VCC,
	cin => \clkDividir50M|Add0~33\,
	combout => \clkDividir50M|Add0~34_combout\,
	cout => \clkDividir50M|Add0~35\);

-- Location: LCCOMB_X57_Y2_N4
\clkDividir50M|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|s_divCounter~2_combout\ = (\clkDividir50M|Add0~34_combout\ & !\clkDividir50M|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDividir50M|Add0~34_combout\,
	datad => \clkDividir50M|Equal0~11_combout\,
	combout => \clkDividir50M|s_divCounter~2_combout\);

-- Location: FF_X57_Y2_N5
\clkDividir50M|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(17));

-- Location: LCCOMB_X56_Y2_N6
\clkDividir50M|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~36_combout\ = (\clkDividir50M|s_divCounter\(18) & (\clkDividir50M|Add0~35\ $ (GND))) # (!\clkDividir50M|s_divCounter\(18) & (!\clkDividir50M|Add0~35\ & VCC))
-- \clkDividir50M|Add0~37\ = CARRY((\clkDividir50M|s_divCounter\(18) & !\clkDividir50M|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(18),
	datad => VCC,
	cin => \clkDividir50M|Add0~35\,
	combout => \clkDividir50M|Add0~36_combout\,
	cout => \clkDividir50M|Add0~37\);

-- Location: FF_X56_Y2_N7
\clkDividir50M|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(18));

-- Location: LCCOMB_X56_Y2_N8
\clkDividir50M|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~38_combout\ = (\clkDividir50M|s_divCounter\(19) & (!\clkDividir50M|Add0~37\)) # (!\clkDividir50M|s_divCounter\(19) & ((\clkDividir50M|Add0~37\) # (GND)))
-- \clkDividir50M|Add0~39\ = CARRY((!\clkDividir50M|Add0~37\) # (!\clkDividir50M|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(19),
	datad => VCC,
	cin => \clkDividir50M|Add0~37\,
	combout => \clkDividir50M|Add0~38_combout\,
	cout => \clkDividir50M|Add0~39\);

-- Location: LCCOMB_X55_Y2_N6
\clkDividir50M|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|s_divCounter~7_combout\ = (!\clkDividir50M|Equal0~11_combout\ & \clkDividir50M|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|Equal0~11_combout\,
	datac => \clkDividir50M|Add0~38_combout\,
	combout => \clkDividir50M|s_divCounter~7_combout\);

-- Location: FF_X55_Y2_N7
\clkDividir50M|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(19));

-- Location: LCCOMB_X56_Y2_N10
\clkDividir50M|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~40_combout\ = (\clkDividir50M|s_divCounter\(20) & (\clkDividir50M|Add0~39\ $ (GND))) # (!\clkDividir50M|s_divCounter\(20) & (!\clkDividir50M|Add0~39\ & VCC))
-- \clkDividir50M|Add0~41\ = CARRY((\clkDividir50M|s_divCounter\(20) & !\clkDividir50M|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(20),
	datad => VCC,
	cin => \clkDividir50M|Add0~39\,
	combout => \clkDividir50M|Add0~40_combout\,
	cout => \clkDividir50M|Add0~41\);

-- Location: LCCOMB_X55_Y2_N10
\clkDividir50M|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|s_divCounter~6_combout\ = (!\clkDividir50M|Equal0~11_combout\ & \clkDividir50M|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|Equal0~11_combout\,
	datac => \clkDividir50M|Add0~40_combout\,
	combout => \clkDividir50M|s_divCounter~6_combout\);

-- Location: FF_X55_Y2_N11
\clkDividir50M|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(20));

-- Location: LCCOMB_X56_Y2_N12
\clkDividir50M|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~42_combout\ = (\clkDividir50M|s_divCounter\(21) & (!\clkDividir50M|Add0~41\)) # (!\clkDividir50M|s_divCounter\(21) & ((\clkDividir50M|Add0~41\) # (GND)))
-- \clkDividir50M|Add0~43\ = CARRY((!\clkDividir50M|Add0~41\) # (!\clkDividir50M|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(21),
	datad => VCC,
	cin => \clkDividir50M|Add0~41\,
	combout => \clkDividir50M|Add0~42_combout\,
	cout => \clkDividir50M|Add0~43\);

-- Location: LCCOMB_X55_Y2_N16
\clkDividir50M|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|s_divCounter~5_combout\ = (!\clkDividir50M|Equal0~11_combout\ & \clkDividir50M|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|Equal0~11_combout\,
	datac => \clkDividir50M|Add0~42_combout\,
	combout => \clkDividir50M|s_divCounter~5_combout\);

-- Location: FF_X55_Y2_N17
\clkDividir50M|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(21));

-- Location: LCCOMB_X56_Y2_N14
\clkDividir50M|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~44_combout\ = (\clkDividir50M|s_divCounter\(22) & (\clkDividir50M|Add0~43\ $ (GND))) # (!\clkDividir50M|s_divCounter\(22) & (!\clkDividir50M|Add0~43\ & VCC))
-- \clkDividir50M|Add0~45\ = CARRY((\clkDividir50M|s_divCounter\(22) & !\clkDividir50M|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(22),
	datad => VCC,
	cin => \clkDividir50M|Add0~43\,
	combout => \clkDividir50M|Add0~44_combout\,
	cout => \clkDividir50M|Add0~45\);

-- Location: LCCOMB_X55_Y2_N30
\clkDividir50M|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|s_divCounter~4_combout\ = (!\clkDividir50M|Equal0~11_combout\ & \clkDividir50M|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|Equal0~11_combout\,
	datac => \clkDividir50M|Add0~44_combout\,
	combout => \clkDividir50M|s_divCounter~4_combout\);

-- Location: FF_X55_Y2_N31
\clkDividir50M|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(22));

-- Location: LCCOMB_X56_Y2_N16
\clkDividir50M|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~46_combout\ = (\clkDividir50M|s_divCounter\(23) & (!\clkDividir50M|Add0~45\)) # (!\clkDividir50M|s_divCounter\(23) & ((\clkDividir50M|Add0~45\) # (GND)))
-- \clkDividir50M|Add0~47\ = CARRY((!\clkDividir50M|Add0~45\) # (!\clkDividir50M|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(23),
	datad => VCC,
	cin => \clkDividir50M|Add0~45\,
	combout => \clkDividir50M|Add0~46_combout\,
	cout => \clkDividir50M|Add0~47\);

-- Location: LCCOMB_X55_Y2_N12
\clkDividir50M|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|s_divCounter~1_combout\ = (!\clkDividir50M|Equal0~11_combout\ & \clkDividir50M|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkDividir50M|Equal0~11_combout\,
	datad => \clkDividir50M|Add0~46_combout\,
	combout => \clkDividir50M|s_divCounter~1_combout\);

-- Location: FF_X55_Y2_N13
\clkDividir50M|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(23));

-- Location: LCCOMB_X56_Y2_N18
\clkDividir50M|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~48_combout\ = (\clkDividir50M|s_divCounter\(24) & (\clkDividir50M|Add0~47\ $ (GND))) # (!\clkDividir50M|s_divCounter\(24) & (!\clkDividir50M|Add0~47\ & VCC))
-- \clkDividir50M|Add0~49\ = CARRY((\clkDividir50M|s_divCounter\(24) & !\clkDividir50M|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(24),
	datad => VCC,
	cin => \clkDividir50M|Add0~47\,
	combout => \clkDividir50M|Add0~48_combout\,
	cout => \clkDividir50M|Add0~49\);

-- Location: FF_X56_Y2_N19
\clkDividir50M|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(24));

-- Location: LCCOMB_X56_Y2_N20
\clkDividir50M|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~50_combout\ = (\clkDividir50M|s_divCounter\(25) & (!\clkDividir50M|Add0~49\)) # (!\clkDividir50M|s_divCounter\(25) & ((\clkDividir50M|Add0~49\) # (GND)))
-- \clkDividir50M|Add0~51\ = CARRY((!\clkDividir50M|Add0~49\) # (!\clkDividir50M|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(25),
	datad => VCC,
	cin => \clkDividir50M|Add0~49\,
	combout => \clkDividir50M|Add0~50_combout\,
	cout => \clkDividir50M|Add0~51\);

-- Location: LCCOMB_X56_Y2_N22
\clkDividir50M|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~52_combout\ = (\clkDividir50M|s_divCounter\(26) & (\clkDividir50M|Add0~51\ $ (GND))) # (!\clkDividir50M|s_divCounter\(26) & (!\clkDividir50M|Add0~51\ & VCC))
-- \clkDividir50M|Add0~53\ = CARRY((\clkDividir50M|s_divCounter\(26) & !\clkDividir50M|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(26),
	datad => VCC,
	cin => \clkDividir50M|Add0~51\,
	combout => \clkDividir50M|Add0~52_combout\,
	cout => \clkDividir50M|Add0~53\);

-- Location: FF_X56_Y2_N23
\clkDividir50M|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(26));

-- Location: LCCOMB_X56_Y2_N24
\clkDividir50M|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~54_combout\ = (\clkDividir50M|s_divCounter\(27) & (!\clkDividir50M|Add0~53\)) # (!\clkDividir50M|s_divCounter\(27) & ((\clkDividir50M|Add0~53\) # (GND)))
-- \clkDividir50M|Add0~55\ = CARRY((!\clkDividir50M|Add0~53\) # (!\clkDividir50M|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(27),
	datad => VCC,
	cin => \clkDividir50M|Add0~53\,
	combout => \clkDividir50M|Add0~54_combout\,
	cout => \clkDividir50M|Add0~55\);

-- Location: FF_X56_Y2_N25
\clkDividir50M|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(27));

-- Location: LCCOMB_X56_Y2_N26
\clkDividir50M|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~56_combout\ = (\clkDividir50M|s_divCounter\(28) & (\clkDividir50M|Add0~55\ $ (GND))) # (!\clkDividir50M|s_divCounter\(28) & (!\clkDividir50M|Add0~55\ & VCC))
-- \clkDividir50M|Add0~57\ = CARRY((\clkDividir50M|s_divCounter\(28) & !\clkDividir50M|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(28),
	datad => VCC,
	cin => \clkDividir50M|Add0~55\,
	combout => \clkDividir50M|Add0~56_combout\,
	cout => \clkDividir50M|Add0~57\);

-- Location: FF_X56_Y2_N27
\clkDividir50M|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(28));

-- Location: LCCOMB_X56_Y2_N28
\clkDividir50M|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~58_combout\ = (\clkDividir50M|s_divCounter\(29) & (!\clkDividir50M|Add0~57\)) # (!\clkDividir50M|s_divCounter\(29) & ((\clkDividir50M|Add0~57\) # (GND)))
-- \clkDividir50M|Add0~59\ = CARRY((!\clkDividir50M|Add0~57\) # (!\clkDividir50M|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|s_divCounter\(29),
	datad => VCC,
	cin => \clkDividir50M|Add0~57\,
	combout => \clkDividir50M|Add0~58_combout\,
	cout => \clkDividir50M|Add0~59\);

-- Location: FF_X56_Y2_N29
\clkDividir50M|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(29));

-- Location: LCCOMB_X56_Y2_N30
\clkDividir50M|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Add0~60_combout\ = \clkDividir50M|s_divCounter\(30) $ (!\clkDividir50M|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(30),
	cin => \clkDividir50M|Add0~59\,
	combout => \clkDividir50M|Add0~60_combout\);

-- Location: FF_X56_Y2_N31
\clkDividir50M|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(30));

-- Location: LCCOMB_X57_Y2_N14
\clkDividir50M|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Equal0~0_combout\ = (!\clkDividir50M|s_divCounter\(28) & (!\clkDividir50M|s_divCounter\(30) & (!\clkDividir50M|s_divCounter\(27) & !\clkDividir50M|s_divCounter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(28),
	datab => \clkDividir50M|s_divCounter\(30),
	datac => \clkDividir50M|s_divCounter\(27),
	datad => \clkDividir50M|s_divCounter\(29),
	combout => \clkDividir50M|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y2_N24
\clkDividir50M|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Equal0~1_combout\ = (\clkDividir50M|s_divCounter\(20) & (\clkDividir50M|s_divCounter\(21) & (\clkDividir50M|s_divCounter\(22) & !\clkDividir50M|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(20),
	datab => \clkDividir50M|s_divCounter\(21),
	datac => \clkDividir50M|s_divCounter\(22),
	datad => \clkDividir50M|s_divCounter\(26),
	combout => \clkDividir50M|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y2_N16
\clkDividir50M|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Equal0~2_combout\ = (\clkDividir50M|s_divCounter\(19) & (\clkDividir50M|s_divCounter\(14) & (\clkDividir50M|s_divCounter\(12) & \clkDividir50M|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(19),
	datab => \clkDividir50M|s_divCounter\(14),
	datac => \clkDividir50M|s_divCounter\(12),
	datad => \clkDividir50M|s_divCounter\(13),
	combout => \clkDividir50M|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y2_N24
\clkDividir50M|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Equal0~4_combout\ = (\clkDividir50M|Equal0~3_combout\ & (\clkDividir50M|Equal0~0_combout\ & (\clkDividir50M|Equal0~1_combout\ & \clkDividir50M|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|Equal0~3_combout\,
	datab => \clkDividir50M|Equal0~0_combout\,
	datac => \clkDividir50M|Equal0~1_combout\,
	datad => \clkDividir50M|Equal0~2_combout\,
	combout => \clkDividir50M|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y2_N0
\clkDividir50M|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Equal0~11_combout\ = (\clkDividir50M|Equal0~9_combout\ & (\clkDividir50M|Equal0~10_combout\ & (\clkDividir50M|Equal0~5_combout\ & \clkDividir50M|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|Equal0~9_combout\,
	datab => \clkDividir50M|Equal0~10_combout\,
	datac => \clkDividir50M|Equal0~5_combout\,
	datad => \clkDividir50M|Equal0~4_combout\,
	combout => \clkDividir50M|Equal0~11_combout\);

-- Location: LCCOMB_X57_Y2_N6
\clkDividir50M|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|s_divCounter~0_combout\ = (!\clkDividir50M|Equal0~11_combout\ & \clkDividir50M|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkDividir50M|Equal0~11_combout\,
	datad => \clkDividir50M|Add0~50_combout\,
	combout => \clkDividir50M|s_divCounter~0_combout\);

-- Location: FF_X57_Y2_N7
\clkDividir50M|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkDividir50M|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|s_divCounter\(25));

-- Location: LCCOMB_X57_Y2_N30
\clkDividir50M|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Equal0~7_combout\ = (\clkDividir50M|s_divCounter\(25) & (\clkDividir50M|s_divCounter\(23) & (!\clkDividir50M|s_divCounter\(18) & !\clkDividir50M|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(25),
	datab => \clkDividir50M|s_divCounter\(23),
	datac => \clkDividir50M|s_divCounter\(18),
	datad => \clkDividir50M|s_divCounter\(24),
	combout => \clkDividir50M|Equal0~7_combout\);

-- Location: LCCOMB_X57_Y2_N10
\clkDividir50M|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Equal0~8_combout\ = (!\clkDividir50M|s_divCounter\(16) & (\clkDividir50M|s_divCounter\(17) & (\clkDividir50M|s_divCounter\(15) & !\clkDividir50M|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(16),
	datab => \clkDividir50M|s_divCounter\(17),
	datac => \clkDividir50M|s_divCounter\(15),
	datad => \clkDividir50M|s_divCounter\(11),
	combout => \clkDividir50M|Equal0~8_combout\);

-- Location: LCCOMB_X57_Y2_N26
\clkDividir50M|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Equal0~9_combout\ = (\clkDividir50M|Equal0~7_combout\ & (\clkDividir50M|s_divCounter\(6) & \clkDividir50M|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|Equal0~7_combout\,
	datac => \clkDividir50M|s_divCounter\(6),
	datad => \clkDividir50M|Equal0~8_combout\,
	combout => \clkDividir50M|Equal0~9_combout\);

-- Location: LCCOMB_X57_Y2_N18
\clkDividir50M|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|clkOut~0_combout\ = (!\clkDividir50M|s_divCounter\(25) & (!\clkDividir50M|s_divCounter\(23) & (\clkDividir50M|s_divCounter\(18) & \clkDividir50M|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(25),
	datab => \clkDividir50M|s_divCounter\(23),
	datac => \clkDividir50M|s_divCounter\(18),
	datad => \clkDividir50M|s_divCounter\(24),
	combout => \clkDividir50M|clkOut~0_combout\);

-- Location: LCCOMB_X57_Y2_N28
\clkDividir50M|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|clkOut~1_combout\ = (\clkDividir50M|s_divCounter\(16) & (!\clkDividir50M|s_divCounter\(17) & (!\clkDividir50M|s_divCounter\(15) & \clkDividir50M|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(16),
	datab => \clkDividir50M|s_divCounter\(17),
	datac => \clkDividir50M|s_divCounter\(15),
	datad => \clkDividir50M|s_divCounter\(11),
	combout => \clkDividir50M|clkOut~1_combout\);

-- Location: LCCOMB_X57_Y2_N20
\clkDividir50M|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|clkOut~2_combout\ = (!\clkDividir50M|s_divCounter\(6) & (\clkDividir50M|clkOut~0_combout\ & \clkDividir50M|clkOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(6),
	datab => \clkDividir50M|clkOut~0_combout\,
	datad => \clkDividir50M|clkOut~1_combout\,
	combout => \clkDividir50M|clkOut~2_combout\);

-- Location: LCCOMB_X57_Y2_N12
\clkDividir50M|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|Equal0~6_combout\ = (\clkDividir50M|s_divCounter\(0) & (\clkDividir50M|s_divCounter\(1) & (\clkDividir50M|Equal0~5_combout\ & \clkDividir50M|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|s_divCounter\(0),
	datab => \clkDividir50M|s_divCounter\(1),
	datac => \clkDividir50M|Equal0~5_combout\,
	datad => \clkDividir50M|Equal0~4_combout\,
	combout => \clkDividir50M|Equal0~6_combout\);

-- Location: LCCOMB_X57_Y2_N22
\clkDividir50M|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkDividir50M|clkOut~3_combout\ = (\clkDividir50M|Equal0~6_combout\ & (!\clkDividir50M|Equal0~9_combout\ & ((\clkDividir50M|clkOut~2_combout\) # (\clkDividir50M|clkOut~q\)))) # (!\clkDividir50M|Equal0~6_combout\ & (((\clkDividir50M|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkDividir50M|Equal0~9_combout\,
	datab => \clkDividir50M|clkOut~2_combout\,
	datac => \clkDividir50M|clkOut~q\,
	datad => \clkDividir50M|Equal0~6_combout\,
	combout => \clkDividir50M|clkOut~3_combout\);

-- Location: FF_X57_Y2_N21
\clkDividir50M|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkDividir50M|clkOut~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkDividir50M|clkOut~q\);

-- Location: CLKCTRL_G15
\clkDividir50M|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkDividir50M|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkDividir50M|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y15_N8
\SeqShiftUnit|s_shiftReg[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|s_shiftReg[7]~9_combout\ = (\SW[4]~input_o\) # ((\SW[5]~input_o\ & ((\SeqShiftUnit|s_shiftReg\(7)))) # (!\SW[5]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SeqShiftUnit|s_shiftReg\(7),
	combout => \SeqShiftUnit|s_shiftReg[7]~9_combout\);

-- Location: LCCOMB_X114_Y15_N10
\SeqShiftUnit|s_shiftReg[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|s_shiftReg[7]~10_combout\ = (\SeqShiftUnit|s_shiftReg\(0)) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[4]~input_o\,
	datad => \SeqShiftUnit|s_shiftReg\(0),
	combout => \SeqShiftUnit|s_shiftReg[7]~10_combout\);

-- Location: LCCOMB_X114_Y15_N20
\SeqShiftUnit|s_shiftReg[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|s_shiftReg[7]~7_combout\ = (\SW[3]~input_o\ & (\SeqShiftUnit|s_shiftReg\(6))) # (!\SW[3]~input_o\ & (((\SeqShiftUnit|s_shiftReg[7]~9_combout\ & \SeqShiftUnit|s_shiftReg[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SeqShiftUnit|s_shiftReg\(6),
	datac => \SeqShiftUnit|s_shiftReg[7]~9_combout\,
	datad => \SeqShiftUnit|s_shiftReg[7]~10_combout\,
	combout => \SeqShiftUnit|s_shiftReg[7]~7_combout\);

-- Location: LCCOMB_X114_Y15_N6
\SeqShiftUnit|s_shiftReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|s_shiftReg[7]~feeder_combout\ = \SeqShiftUnit|s_shiftReg[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SeqShiftUnit|s_shiftReg[7]~7_combout\,
	combout => \SeqShiftUnit|s_shiftReg[7]~feeder_combout\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

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

-- Location: FF_X114_Y15_N7
\SeqShiftUnit|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDividir50M|clkOut~clkctrl_outclk\,
	d => \SeqShiftUnit|s_shiftReg[7]~feeder_combout\,
	asdata => \SW[13]~input_o\,
	sload => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqShiftUnit|s_shiftReg\(7));

-- Location: LCCOMB_X114_Y15_N4
\SeqShiftUnit|s_shiftReg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|s_shiftReg[6]~6_combout\ = (\SW[3]~input_o\ & ((\SeqShiftUnit|s_shiftReg\(5)))) # (!\SW[3]~input_o\ & (\SeqShiftUnit|s_shiftReg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|s_shiftReg\(7),
	datab => \SW[3]~input_o\,
	datad => \SeqShiftUnit|s_shiftReg\(5),
	combout => \SeqShiftUnit|s_shiftReg[6]~6_combout\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: FF_X114_Y15_N5
\SeqShiftUnit|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDividir50M|clkOut~clkctrl_outclk\,
	d => \SeqShiftUnit|s_shiftReg[6]~6_combout\,
	asdata => \SW[12]~input_o\,
	sload => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqShiftUnit|s_shiftReg\(6));

-- Location: LCCOMB_X114_Y15_N18
\SeqShiftUnit|s_shiftReg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|s_shiftReg[5]~5_combout\ = (\SW[3]~input_o\ & ((\SeqShiftUnit|s_shiftReg\(4)))) # (!\SW[3]~input_o\ & (\SeqShiftUnit|s_shiftReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|s_shiftReg\(6),
	datab => \SW[3]~input_o\,
	datad => \SeqShiftUnit|s_shiftReg\(4),
	combout => \SeqShiftUnit|s_shiftReg[5]~5_combout\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: FF_X114_Y15_N19
\SeqShiftUnit|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDividir50M|clkOut~clkctrl_outclk\,
	d => \SeqShiftUnit|s_shiftReg[5]~5_combout\,
	asdata => \SW[11]~input_o\,
	sload => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqShiftUnit|s_shiftReg\(5));

-- Location: LCCOMB_X114_Y15_N16
\SeqShiftUnit|s_shiftReg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|s_shiftReg[4]~4_combout\ = (\SW[3]~input_o\ & (\SeqShiftUnit|s_shiftReg\(3))) # (!\SW[3]~input_o\ & ((\SeqShiftUnit|s_shiftReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|s_shiftReg\(3),
	datab => \SW[3]~input_o\,
	datad => \SeqShiftUnit|s_shiftReg\(5),
	combout => \SeqShiftUnit|s_shiftReg[4]~4_combout\);

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

-- Location: FF_X114_Y15_N17
\SeqShiftUnit|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDividir50M|clkOut~clkctrl_outclk\,
	d => \SeqShiftUnit|s_shiftReg[4]~4_combout\,
	asdata => \SW[10]~input_o\,
	sload => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqShiftUnit|s_shiftReg\(4));

-- Location: LCCOMB_X114_Y15_N26
\SeqShiftUnit|s_shiftReg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|s_shiftReg[3]~3_combout\ = (\SW[3]~input_o\ & (\SeqShiftUnit|s_shiftReg\(2))) # (!\SW[3]~input_o\ & ((\SeqShiftUnit|s_shiftReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|s_shiftReg\(2),
	datab => \SW[3]~input_o\,
	datad => \SeqShiftUnit|s_shiftReg\(4),
	combout => \SeqShiftUnit|s_shiftReg[3]~3_combout\);

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

-- Location: FF_X114_Y15_N27
\SeqShiftUnit|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDividir50M|clkOut~clkctrl_outclk\,
	d => \SeqShiftUnit|s_shiftReg[3]~3_combout\,
	asdata => \SW[9]~input_o\,
	sload => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqShiftUnit|s_shiftReg\(3));

-- Location: LCCOMB_X114_Y15_N12
\SeqShiftUnit|s_shiftReg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|s_shiftReg[2]~2_combout\ = (\SW[3]~input_o\ & ((\SeqShiftUnit|s_shiftReg\(1)))) # (!\SW[3]~input_o\ & (\SeqShiftUnit|s_shiftReg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|s_shiftReg\(3),
	datab => \SW[3]~input_o\,
	datad => \SeqShiftUnit|s_shiftReg\(1),
	combout => \SeqShiftUnit|s_shiftReg[2]~2_combout\);

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

-- Location: FF_X114_Y15_N13
\SeqShiftUnit|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDividir50M|clkOut~clkctrl_outclk\,
	d => \SeqShiftUnit|s_shiftReg[2]~2_combout\,
	asdata => \SW[8]~input_o\,
	sload => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqShiftUnit|s_shiftReg\(2));

-- Location: LCCOMB_X114_Y15_N30
\SeqShiftUnit|s_shiftReg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|s_shiftReg[1]~1_combout\ = (\SW[3]~input_o\ & (\SeqShiftUnit|s_shiftReg\(0))) # (!\SW[3]~input_o\ & ((\SeqShiftUnit|s_shiftReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|s_shiftReg\(0),
	datab => \SW[3]~input_o\,
	datad => \SeqShiftUnit|s_shiftReg\(2),
	combout => \SeqShiftUnit|s_shiftReg[1]~1_combout\);

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

-- Location: FF_X114_Y15_N31
\SeqShiftUnit|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDividir50M|clkOut~clkctrl_outclk\,
	d => \SeqShiftUnit|s_shiftReg[1]~1_combout\,
	asdata => \SW[7]~input_o\,
	sload => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqShiftUnit|s_shiftReg\(1));

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

-- Location: LCCOMB_X114_Y15_N2
\SeqShiftUnit|s_shiftReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|s_shiftReg~8_combout\ = (\SW[4]~input_o\ & (((\SeqShiftUnit|s_shiftReg\(7))))) # (!\SW[4]~input_o\ & (!\SW[5]~input_o\ & (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SeqShiftUnit|s_shiftReg\(7),
	combout => \SeqShiftUnit|s_shiftReg~8_combout\);

-- Location: LCCOMB_X114_Y15_N24
\SeqShiftUnit|s_shiftReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|s_shiftReg[0]~0_combout\ = (\SW[3]~input_o\ & ((\SeqShiftUnit|s_shiftReg~8_combout\))) # (!\SW[3]~input_o\ & (\SeqShiftUnit|s_shiftReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|s_shiftReg\(1),
	datab => \SW[3]~input_o\,
	datad => \SeqShiftUnit|s_shiftReg~8_combout\,
	combout => \SeqShiftUnit|s_shiftReg[0]~0_combout\);

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

-- Location: FF_X114_Y15_N25
\SeqShiftUnit|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkDividir50M|clkOut~clkctrl_outclk\,
	d => \SeqShiftUnit|s_shiftReg[0]~0_combout\,
	asdata => \SW[6]~input_o\,
	sload => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SeqShiftUnit|s_shiftReg\(0));

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;
END structure;


