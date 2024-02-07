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

-- DATE "05/09/2023 10:15:30"

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

ENTITY 	ROM_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END ROM_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ROM_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|s_divCounter~2_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|s_divCounter~1_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|s_divCounter~7_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|s_divCounter~6_combout\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|s_divCounter~5_combout\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst5|Add0~33\ : std_logic;
SIGNAL \inst5|Add0~34_combout\ : std_logic;
SIGNAL \inst5|Equal0~6_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|Equal0~7_combout\ : std_logic;
SIGNAL \inst5|Equal0~8_combout\ : std_logic;
SIGNAL \inst5|Equal0~9_combout\ : std_logic;
SIGNAL \inst5|Add0~35\ : std_logic;
SIGNAL \inst5|Add0~36_combout\ : std_logic;
SIGNAL \inst5|s_divCounter~0_combout\ : std_logic;
SIGNAL \inst5|Add0~37\ : std_logic;
SIGNAL \inst5|Add0~38_combout\ : std_logic;
SIGNAL \inst5|s_divCounter~4_combout\ : std_logic;
SIGNAL \inst5|Add0~39\ : std_logic;
SIGNAL \inst5|Add0~40_combout\ : std_logic;
SIGNAL \inst5|Add0~41\ : std_logic;
SIGNAL \inst5|Add0~42_combout\ : std_logic;
SIGNAL \inst5|Add0~43\ : std_logic;
SIGNAL \inst5|Add0~44_combout\ : std_logic;
SIGNAL \inst5|s_divCounter~3_combout\ : std_logic;
SIGNAL \inst5|Add0~45\ : std_logic;
SIGNAL \inst5|Add0~46_combout\ : std_logic;
SIGNAL \inst5|Add0~47\ : std_logic;
SIGNAL \inst5|Add0~48_combout\ : std_logic;
SIGNAL \inst5|Add0~49\ : std_logic;
SIGNAL \inst5|Add0~50_combout\ : std_logic;
SIGNAL \inst5|Add0~51\ : std_logic;
SIGNAL \inst5|Add0~52_combout\ : std_logic;
SIGNAL \inst5|Add0~53\ : std_logic;
SIGNAL \inst5|Add0~54_combout\ : std_logic;
SIGNAL \inst5|Add0~55\ : std_logic;
SIGNAL \inst5|Add0~56_combout\ : std_logic;
SIGNAL \inst5|Add0~57\ : std_logic;
SIGNAL \inst5|Add0~58_combout\ : std_logic;
SIGNAL \inst5|Add0~59\ : std_logic;
SIGNAL \inst5|Add0~60_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|clkOut~0_combout\ : std_logic;
SIGNAL \inst5|clkOut~1_combout\ : std_logic;
SIGNAL \inst5|clkOut~2_combout\ : std_logic;
SIGNAL \inst5|clkOut~3_combout\ : std_logic;
SIGNAL \inst5|clkOut~4_combout\ : std_logic;
SIGNAL \inst5|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst5|clkOut~q\ : std_logic;
SIGNAL \inst5|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst|s_value[0]~3_combout\ : std_logic;
SIGNAL \inst|s_value[1]~1_combout\ : std_logic;
SIGNAL \inst|s_value[2]~2_combout\ : std_logic;
SIGNAL \inst|s_value[3]~0_combout\ : std_logic;
SIGNAL \ROM|Mux0~0_combout\ : std_logic;
SIGNAL \ROM|Mux1~0_combout\ : std_logic;
SIGNAL \ROM|Mux2~0_combout\ : std_logic;
SIGNAL \ROM|Mux3~0_combout\ : std_logic;
SIGNAL \ROM|Mux4~0_combout\ : std_logic;
SIGNAL \ROM|Mux5~0_combout\ : std_logic;
SIGNAL \ROM|Mux6~0_combout\ : std_logic;
SIGNAL \ROM|Mux7~0_combout\ : std_logic;
SIGNAL \inst|s_value\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|s_divCounter\ : std_logic_vector(30 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst5|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|Mux0~0_combout\,
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
	i => \ROM|Mux1~0_combout\,
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
	i => \ROM|Mux2~0_combout\,
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
	i => \ROM|Mux3~0_combout\,
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
	i => \ROM|Mux4~0_combout\,
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
	i => \ROM|Mux5~0_combout\,
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
	i => \ROM|Mux6~0_combout\,
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
	i => \ROM|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X60_Y2_N2
\inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|s_divCounter\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: FF_X60_Y2_N3
\inst5|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(0));

-- Location: LCCOMB_X60_Y2_N4
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|s_divCounter\(1) & (!\inst5|Add0~1\)) # (!\inst5|s_divCounter\(1) & ((\inst5|Add0~1\) # (GND)))
-- \inst5|Add0~3\ = CARRY((!\inst5|Add0~1\) # (!\inst5|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: FF_X60_Y2_N5
\inst5|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(1));

-- Location: LCCOMB_X60_Y2_N6
\inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|s_divCounter\(2) & (\inst5|Add0~3\ $ (GND))) # (!\inst5|s_divCounter\(2) & (!\inst5|Add0~3\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst5|s_divCounter\(2) & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: FF_X60_Y2_N7
\inst5|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(2));

-- Location: LCCOMB_X60_Y2_N8
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|s_divCounter\(3) & (!\inst5|Add0~5\)) # (!\inst5|s_divCounter\(3) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst5|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: FF_X60_Y2_N9
\inst5|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(3));

-- Location: LCCOMB_X60_Y2_N10
\inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|s_divCounter\(4) & (\inst5|Add0~7\ $ (GND))) # (!\inst5|s_divCounter\(4) & (!\inst5|Add0~7\ & VCC))
-- \inst5|Add0~9\ = CARRY((\inst5|s_divCounter\(4) & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: FF_X60_Y2_N11
\inst5|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(4));

-- Location: LCCOMB_X60_Y2_N12
\inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|s_divCounter\(5) & (!\inst5|Add0~9\)) # (!\inst5|s_divCounter\(5) & ((\inst5|Add0~9\) # (GND)))
-- \inst5|Add0~11\ = CARRY((!\inst5|Add0~9\) # (!\inst5|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: FF_X60_Y2_N13
\inst5|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(5));

-- Location: LCCOMB_X60_Y2_N14
\inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|s_divCounter\(6) & (\inst5|Add0~11\ $ (GND))) # (!\inst5|s_divCounter\(6) & (!\inst5|Add0~11\ & VCC))
-- \inst5|Add0~13\ = CARRY((\inst5|s_divCounter\(6) & !\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X59_Y2_N20
\inst5|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_divCounter~2_combout\ = (\inst5|Add0~12_combout\ & !\inst5|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~12_combout\,
	datac => \inst5|Equal0~9_combout\,
	combout => \inst5|s_divCounter~2_combout\);

-- Location: FF_X59_Y2_N21
\inst5|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(6));

-- Location: LCCOMB_X60_Y2_N16
\inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|s_divCounter\(7) & (!\inst5|Add0~13\)) # (!\inst5|s_divCounter\(7) & ((\inst5|Add0~13\) # (GND)))
-- \inst5|Add0~15\ = CARRY((!\inst5|Add0~13\) # (!\inst5|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: FF_X60_Y2_N17
\inst5|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(7));

-- Location: LCCOMB_X60_Y2_N18
\inst5|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|s_divCounter\(8) & (\inst5|Add0~15\ $ (GND))) # (!\inst5|s_divCounter\(8) & (!\inst5|Add0~15\ & VCC))
-- \inst5|Add0~17\ = CARRY((\inst5|s_divCounter\(8) & !\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: LCCOMB_X59_Y2_N16
\inst5|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_divCounter~1_combout\ = (!\inst5|Equal0~9_combout\ & \inst5|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~16_combout\,
	combout => \inst5|s_divCounter~1_combout\);

-- Location: FF_X59_Y2_N17
\inst5|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(8));

-- Location: LCCOMB_X60_Y2_N20
\inst5|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|s_divCounter\(9) & (!\inst5|Add0~17\)) # (!\inst5|s_divCounter\(9) & ((\inst5|Add0~17\) # (GND)))
-- \inst5|Add0~19\ = CARRY((!\inst5|Add0~17\) # (!\inst5|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: LCCOMB_X60_Y2_N0
\inst5|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_divCounter~7_combout\ = (\inst5|Add0~18_combout\ & !\inst5|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~18_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_divCounter~7_combout\);

-- Location: FF_X60_Y2_N1
\inst5|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(9));

-- Location: LCCOMB_X60_Y2_N22
\inst5|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|s_divCounter\(10) & (\inst5|Add0~19\ $ (GND))) # (!\inst5|s_divCounter\(10) & (!\inst5|Add0~19\ & VCC))
-- \inst5|Add0~21\ = CARRY((\inst5|s_divCounter\(10) & !\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: FF_X60_Y2_N23
\inst5|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(10));

-- Location: LCCOMB_X60_Y2_N24
\inst5|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|s_divCounter\(11) & (!\inst5|Add0~21\)) # (!\inst5|s_divCounter\(11) & ((\inst5|Add0~21\) # (GND)))
-- \inst5|Add0~23\ = CARRY((!\inst5|Add0~21\) # (!\inst5|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: LCCOMB_X59_Y1_N0
\inst5|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_divCounter~6_combout\ = (!\inst5|Equal0~9_combout\ & \inst5|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~22_combout\,
	combout => \inst5|s_divCounter~6_combout\);

-- Location: FF_X59_Y1_N1
\inst5|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(11));

-- Location: LCCOMB_X60_Y2_N26
\inst5|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|s_divCounter\(12) & (\inst5|Add0~23\ $ (GND))) # (!\inst5|s_divCounter\(12) & (!\inst5|Add0~23\ & VCC))
-- \inst5|Add0~25\ = CARRY((\inst5|s_divCounter\(12) & !\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: FF_X60_Y2_N27
\inst5|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(12));

-- Location: LCCOMB_X60_Y2_N28
\inst5|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|s_divCounter\(13) & (!\inst5|Add0~25\)) # (!\inst5|s_divCounter\(13) & ((\inst5|Add0~25\) # (GND)))
-- \inst5|Add0~27\ = CARRY((!\inst5|Add0~25\) # (!\inst5|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: FF_X60_Y2_N29
\inst5|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(13));

-- Location: LCCOMB_X60_Y2_N30
\inst5|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|s_divCounter\(14) & (\inst5|Add0~27\ $ (GND))) # (!\inst5|s_divCounter\(14) & (!\inst5|Add0~27\ & VCC))
-- \inst5|Add0~29\ = CARRY((\inst5|s_divCounter\(14) & !\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: LCCOMB_X59_Y1_N22
\inst5|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_divCounter~5_combout\ = (\inst5|Add0~28_combout\ & !\inst5|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~28_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_divCounter~5_combout\);

-- Location: FF_X59_Y1_N23
\inst5|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(14));

-- Location: LCCOMB_X60_Y1_N0
\inst5|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = (\inst5|s_divCounter\(15) & (!\inst5|Add0~29\)) # (!\inst5|s_divCounter\(15) & ((\inst5|Add0~29\) # (GND)))
-- \inst5|Add0~31\ = CARRY((!\inst5|Add0~29\) # (!\inst5|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(15),
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: FF_X60_Y1_N1
\inst5|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(15));

-- Location: LCCOMB_X60_Y1_N2
\inst5|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = (\inst5|s_divCounter\(16) & (\inst5|Add0~31\ $ (GND))) # (!\inst5|s_divCounter\(16) & (!\inst5|Add0~31\ & VCC))
-- \inst5|Add0~33\ = CARRY((\inst5|s_divCounter\(16) & !\inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(16),
	datad => VCC,
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\,
	cout => \inst5|Add0~33\);

-- Location: FF_X60_Y1_N3
\inst5|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(16));

-- Location: LCCOMB_X60_Y1_N4
\inst5|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~34_combout\ = (\inst5|s_divCounter\(17) & (!\inst5|Add0~33\)) # (!\inst5|s_divCounter\(17) & ((\inst5|Add0~33\) # (GND)))
-- \inst5|Add0~35\ = CARRY((!\inst5|Add0~33\) # (!\inst5|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(17),
	datad => VCC,
	cin => \inst5|Add0~33\,
	combout => \inst5|Add0~34_combout\,
	cout => \inst5|Add0~35\);

-- Location: FF_X60_Y1_N5
\inst5|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(17));

-- Location: LCCOMB_X59_Y1_N24
\inst5|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~6_combout\ = (!\inst5|s_divCounter\(17) & (\inst5|s_divCounter\(19) & (!\inst5|s_divCounter\(21) & \inst5|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(17),
	datab => \inst5|s_divCounter\(19),
	datac => \inst5|s_divCounter\(21),
	datad => \inst5|s_divCounter\(22),
	combout => \inst5|Equal0~6_combout\);

-- Location: LCCOMB_X59_Y2_N22
\inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|s_divCounter\(6) & (\inst5|s_divCounter\(4) & (\inst5|s_divCounter\(3) & \inst5|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(6),
	datab => \inst5|s_divCounter\(4),
	datac => \inst5|s_divCounter\(3),
	datad => \inst5|s_divCounter\(2),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X59_Y2_N2
\inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (\inst5|s_divCounter\(8) & (!\inst5|s_divCounter\(12) & (!\inst5|s_divCounter\(15) & !\inst5|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(8),
	datab => \inst5|s_divCounter\(12),
	datac => \inst5|s_divCounter\(15),
	datad => \inst5|s_divCounter\(16),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X59_Y2_N14
\inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (\inst5|s_divCounter\(18) & (!\inst5|s_divCounter\(23) & (!\inst5|s_divCounter\(20) & !\inst5|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(18),
	datab => \inst5|s_divCounter\(23),
	datac => \inst5|s_divCounter\(20),
	datad => \inst5|s_divCounter\(24),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y2_N24
\inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|s_divCounter\(0) & (!\inst5|s_divCounter\(26) & (!\inst5|s_divCounter\(25) & \inst5|s_divCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(0),
	datab => \inst5|s_divCounter\(26),
	datac => \inst5|s_divCounter\(25),
	datad => \inst5|s_divCounter\(1),
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X59_Y2_N30
\inst5|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (\inst5|Equal0~3_combout\ & (\inst5|Equal0~2_combout\ & (\inst5|Equal0~1_combout\ & \inst5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~3_combout\,
	datab => \inst5|Equal0~2_combout\,
	datac => \inst5|Equal0~1_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X59_Y1_N28
\inst5|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~7_combout\ = (\inst5|s_divCounter\(14) & (\inst5|s_divCounter\(11) & (!\inst5|s_divCounter\(13) & !\inst5|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(14),
	datab => \inst5|s_divCounter\(11),
	datac => \inst5|s_divCounter\(13),
	datad => \inst5|s_divCounter\(10),
	combout => \inst5|Equal0~7_combout\);

-- Location: LCCOMB_X59_Y1_N6
\inst5|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~8_combout\ = (\inst5|s_divCounter\(9) & (!\inst5|s_divCounter\(7) & (\inst5|s_divCounter\(5) & \inst5|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(9),
	datab => \inst5|s_divCounter\(7),
	datac => \inst5|s_divCounter\(5),
	datad => \inst5|Equal0~7_combout\,
	combout => \inst5|Equal0~8_combout\);

-- Location: LCCOMB_X59_Y1_N12
\inst5|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~9_combout\ = (\inst5|Equal0~0_combout\ & (\inst5|Equal0~6_combout\ & (\inst5|Equal0~5_combout\ & \inst5|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~0_combout\,
	datab => \inst5|Equal0~6_combout\,
	datac => \inst5|Equal0~5_combout\,
	datad => \inst5|Equal0~8_combout\,
	combout => \inst5|Equal0~9_combout\);

-- Location: LCCOMB_X60_Y1_N6
\inst5|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~36_combout\ = (\inst5|s_divCounter\(18) & (\inst5|Add0~35\ $ (GND))) # (!\inst5|s_divCounter\(18) & (!\inst5|Add0~35\ & VCC))
-- \inst5|Add0~37\ = CARRY((\inst5|s_divCounter\(18) & !\inst5|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(18),
	datad => VCC,
	cin => \inst5|Add0~35\,
	combout => \inst5|Add0~36_combout\,
	cout => \inst5|Add0~37\);

-- Location: LCCOMB_X59_Y2_N28
\inst5|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_divCounter~0_combout\ = (!\inst5|Equal0~9_combout\ & \inst5|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Equal0~9_combout\,
	datad => \inst5|Add0~36_combout\,
	combout => \inst5|s_divCounter~0_combout\);

-- Location: FF_X59_Y2_N29
\inst5|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(18));

-- Location: LCCOMB_X60_Y1_N8
\inst5|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~38_combout\ = (\inst5|s_divCounter\(19) & (!\inst5|Add0~37\)) # (!\inst5|s_divCounter\(19) & ((\inst5|Add0~37\) # (GND)))
-- \inst5|Add0~39\ = CARRY((!\inst5|Add0~37\) # (!\inst5|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(19),
	datad => VCC,
	cin => \inst5|Add0~37\,
	combout => \inst5|Add0~38_combout\,
	cout => \inst5|Add0~39\);

-- Location: LCCOMB_X59_Y1_N14
\inst5|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_divCounter~4_combout\ = (\inst5|Add0~38_combout\ & !\inst5|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~38_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_divCounter~4_combout\);

-- Location: FF_X59_Y1_N15
\inst5|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(19));

-- Location: LCCOMB_X60_Y1_N10
\inst5|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~40_combout\ = (\inst5|s_divCounter\(20) & (\inst5|Add0~39\ $ (GND))) # (!\inst5|s_divCounter\(20) & (!\inst5|Add0~39\ & VCC))
-- \inst5|Add0~41\ = CARRY((\inst5|s_divCounter\(20) & !\inst5|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(20),
	datad => VCC,
	cin => \inst5|Add0~39\,
	combout => \inst5|Add0~40_combout\,
	cout => \inst5|Add0~41\);

-- Location: FF_X60_Y1_N11
\inst5|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(20));

-- Location: LCCOMB_X60_Y1_N12
\inst5|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~42_combout\ = (\inst5|s_divCounter\(21) & (!\inst5|Add0~41\)) # (!\inst5|s_divCounter\(21) & ((\inst5|Add0~41\) # (GND)))
-- \inst5|Add0~43\ = CARRY((!\inst5|Add0~41\) # (!\inst5|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(21),
	datad => VCC,
	cin => \inst5|Add0~41\,
	combout => \inst5|Add0~42_combout\,
	cout => \inst5|Add0~43\);

-- Location: FF_X60_Y1_N13
\inst5|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(21));

-- Location: LCCOMB_X60_Y1_N14
\inst5|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~44_combout\ = (\inst5|s_divCounter\(22) & (\inst5|Add0~43\ $ (GND))) # (!\inst5|s_divCounter\(22) & (!\inst5|Add0~43\ & VCC))
-- \inst5|Add0~45\ = CARRY((\inst5|s_divCounter\(22) & !\inst5|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(22),
	datad => VCC,
	cin => \inst5|Add0~43\,
	combout => \inst5|Add0~44_combout\,
	cout => \inst5|Add0~45\);

-- Location: LCCOMB_X59_Y1_N18
\inst5|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|s_divCounter~3_combout\ = (\inst5|Add0~44_combout\ & !\inst5|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Add0~44_combout\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|s_divCounter~3_combout\);

-- Location: FF_X59_Y1_N19
\inst5|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(22));

-- Location: LCCOMB_X60_Y1_N16
\inst5|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~46_combout\ = (\inst5|s_divCounter\(23) & (!\inst5|Add0~45\)) # (!\inst5|s_divCounter\(23) & ((\inst5|Add0~45\) # (GND)))
-- \inst5|Add0~47\ = CARRY((!\inst5|Add0~45\) # (!\inst5|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(23),
	datad => VCC,
	cin => \inst5|Add0~45\,
	combout => \inst5|Add0~46_combout\,
	cout => \inst5|Add0~47\);

-- Location: FF_X60_Y1_N17
\inst5|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(23));

-- Location: LCCOMB_X60_Y1_N18
\inst5|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~48_combout\ = (\inst5|s_divCounter\(24) & (\inst5|Add0~47\ $ (GND))) # (!\inst5|s_divCounter\(24) & (!\inst5|Add0~47\ & VCC))
-- \inst5|Add0~49\ = CARRY((\inst5|s_divCounter\(24) & !\inst5|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(24),
	datad => VCC,
	cin => \inst5|Add0~47\,
	combout => \inst5|Add0~48_combout\,
	cout => \inst5|Add0~49\);

-- Location: FF_X60_Y1_N19
\inst5|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(24));

-- Location: LCCOMB_X60_Y1_N20
\inst5|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~50_combout\ = (\inst5|s_divCounter\(25) & (!\inst5|Add0~49\)) # (!\inst5|s_divCounter\(25) & ((\inst5|Add0~49\) # (GND)))
-- \inst5|Add0~51\ = CARRY((!\inst5|Add0~49\) # (!\inst5|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(25),
	datad => VCC,
	cin => \inst5|Add0~49\,
	combout => \inst5|Add0~50_combout\,
	cout => \inst5|Add0~51\);

-- Location: FF_X60_Y1_N21
\inst5|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(25));

-- Location: LCCOMB_X60_Y1_N22
\inst5|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~52_combout\ = (\inst5|s_divCounter\(26) & (\inst5|Add0~51\ $ (GND))) # (!\inst5|s_divCounter\(26) & (!\inst5|Add0~51\ & VCC))
-- \inst5|Add0~53\ = CARRY((\inst5|s_divCounter\(26) & !\inst5|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(26),
	datad => VCC,
	cin => \inst5|Add0~51\,
	combout => \inst5|Add0~52_combout\,
	cout => \inst5|Add0~53\);

-- Location: FF_X60_Y1_N23
\inst5|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(26));

-- Location: LCCOMB_X60_Y1_N24
\inst5|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~54_combout\ = (\inst5|s_divCounter\(27) & (!\inst5|Add0~53\)) # (!\inst5|s_divCounter\(27) & ((\inst5|Add0~53\) # (GND)))
-- \inst5|Add0~55\ = CARRY((!\inst5|Add0~53\) # (!\inst5|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(27),
	datad => VCC,
	cin => \inst5|Add0~53\,
	combout => \inst5|Add0~54_combout\,
	cout => \inst5|Add0~55\);

-- Location: FF_X60_Y1_N25
\inst5|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(27));

-- Location: LCCOMB_X60_Y1_N26
\inst5|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~56_combout\ = (\inst5|s_divCounter\(28) & (\inst5|Add0~55\ $ (GND))) # (!\inst5|s_divCounter\(28) & (!\inst5|Add0~55\ & VCC))
-- \inst5|Add0~57\ = CARRY((\inst5|s_divCounter\(28) & !\inst5|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(28),
	datad => VCC,
	cin => \inst5|Add0~55\,
	combout => \inst5|Add0~56_combout\,
	cout => \inst5|Add0~57\);

-- Location: FF_X60_Y1_N27
\inst5|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(28));

-- Location: LCCOMB_X60_Y1_N28
\inst5|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~58_combout\ = (\inst5|s_divCounter\(29) & (!\inst5|Add0~57\)) # (!\inst5|s_divCounter\(29) & ((\inst5|Add0~57\) # (GND)))
-- \inst5|Add0~59\ = CARRY((!\inst5|Add0~57\) # (!\inst5|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|s_divCounter\(29),
	datad => VCC,
	cin => \inst5|Add0~57\,
	combout => \inst5|Add0~58_combout\,
	cout => \inst5|Add0~59\);

-- Location: FF_X60_Y1_N29
\inst5|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(29));

-- Location: LCCOMB_X60_Y1_N30
\inst5|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~60_combout\ = \inst5|s_divCounter\(30) $ (!\inst5|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(30),
	cin => \inst5|Add0~59\,
	combout => \inst5|Add0~60_combout\);

-- Location: FF_X60_Y1_N31
\inst5|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|s_divCounter\(30));

-- Location: LCCOMB_X59_Y1_N30
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (!\inst5|s_divCounter\(30) & (!\inst5|s_divCounter\(29) & (!\inst5|s_divCounter\(28) & !\inst5|s_divCounter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(30),
	datab => \inst5|s_divCounter\(29),
	datac => \inst5|s_divCounter\(28),
	datad => \inst5|s_divCounter\(27),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y1_N4
\inst5|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|clkOut~0_combout\ = (\inst5|s_divCounter\(17) & (!\inst5|s_divCounter\(19) & (\inst5|s_divCounter\(21) & !\inst5|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(17),
	datab => \inst5|s_divCounter\(19),
	datac => \inst5|s_divCounter\(21),
	datad => \inst5|s_divCounter\(22),
	combout => \inst5|clkOut~0_combout\);

-- Location: LCCOMB_X59_Y1_N16
\inst5|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|clkOut~1_combout\ = (!\inst5|s_divCounter\(14) & (!\inst5|s_divCounter\(11) & (\inst5|s_divCounter\(13) & \inst5|s_divCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(14),
	datab => \inst5|s_divCounter\(11),
	datac => \inst5|s_divCounter\(13),
	datad => \inst5|s_divCounter\(10),
	combout => \inst5|clkOut~1_combout\);

-- Location: LCCOMB_X59_Y1_N10
\inst5|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|clkOut~2_combout\ = (!\inst5|s_divCounter\(5) & (\inst5|s_divCounter\(7) & (!\inst5|s_divCounter\(9) & \inst5|clkOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|s_divCounter\(5),
	datab => \inst5|s_divCounter\(7),
	datac => \inst5|s_divCounter\(9),
	datad => \inst5|clkOut~1_combout\,
	combout => \inst5|clkOut~2_combout\);

-- Location: LCCOMB_X59_Y1_N20
\inst5|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|clkOut~3_combout\ = (\inst5|Equal0~0_combout\ & (\inst5|clkOut~0_combout\ & (\inst5|Equal0~5_combout\ & \inst5|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~0_combout\,
	datab => \inst5|clkOut~0_combout\,
	datac => \inst5|Equal0~5_combout\,
	datad => \inst5|clkOut~2_combout\,
	combout => \inst5|clkOut~3_combout\);

-- Location: LCCOMB_X59_Y1_N8
\inst5|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|clkOut~4_combout\ = (!\inst5|Equal0~9_combout\ & ((\inst5|clkOut~3_combout\) # (\inst5|clkOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|clkOut~3_combout\,
	datac => \inst5|clkOut~q\,
	datad => \inst5|Equal0~9_combout\,
	combout => \inst5|clkOut~4_combout\);

-- Location: LCCOMB_X59_Y1_N26
\inst5|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|clkOut~feeder_combout\ = \inst5|clkOut~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|clkOut~4_combout\,
	combout => \inst5|clkOut~feeder_combout\);

-- Location: FF_X59_Y1_N27
\inst5|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst5|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clkOut~q\);

-- Location: CLKCTRL_G15
\inst5|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X88_Y72_N20
\inst|s_value[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_value[0]~3_combout\ = !\inst|s_value\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_value\(0),
	combout => \inst|s_value[0]~3_combout\);

-- Location: FF_X88_Y72_N21
\inst|s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~clkctrl_outclk\,
	d => \inst|s_value[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_value\(0));

-- Location: LCCOMB_X88_Y72_N6
\inst|s_value[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_value[1]~1_combout\ = \inst|s_value\(1) $ (\inst|s_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_value\(1),
	datad => \inst|s_value\(0),
	combout => \inst|s_value[1]~1_combout\);

-- Location: FF_X88_Y72_N7
\inst|s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~clkctrl_outclk\,
	d => \inst|s_value[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_value\(1));

-- Location: LCCOMB_X88_Y72_N16
\inst|s_value[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_value[2]~2_combout\ = \inst|s_value\(2) $ (((\inst|s_value\(0) & \inst|s_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_value\(0),
	datac => \inst|s_value\(2),
	datad => \inst|s_value\(1),
	combout => \inst|s_value[2]~2_combout\);

-- Location: FF_X88_Y72_N17
\inst|s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~clkctrl_outclk\,
	d => \inst|s_value[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_value\(2));

-- Location: LCCOMB_X88_Y72_N8
\inst|s_value[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_value[3]~0_combout\ = \inst|s_value\(3) $ (((\inst|s_value\(1) & (\inst|s_value\(0) & \inst|s_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_value\(1),
	datab => \inst|s_value\(0),
	datac => \inst|s_value\(3),
	datad => \inst|s_value\(2),
	combout => \inst|s_value[3]~0_combout\);

-- Location: FF_X88_Y72_N9
\inst|s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clkOut~clkctrl_outclk\,
	d => \inst|s_value[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_value\(3));

-- Location: LCCOMB_X88_Y72_N14
\ROM|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux0~0_combout\ = (\inst|s_value\(3) & (\inst|s_value\(1) $ (!\inst|s_value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_value\(1),
	datac => \inst|s_value\(2),
	datad => \inst|s_value\(3),
	combout => \ROM|Mux0~0_combout\);

-- Location: LCCOMB_X88_Y72_N18
\ROM|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux1~0_combout\ = (\inst|s_value\(0) & ((\inst|s_value\(2) & ((\inst|s_value\(1)))) # (!\inst|s_value\(2) & (\inst|s_value\(3) & !\inst|s_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_value\(2),
	datab => \inst|s_value\(3),
	datac => \inst|s_value\(0),
	datad => \inst|s_value\(1),
	combout => \ROM|Mux1~0_combout\);

-- Location: LCCOMB_X88_Y72_N12
\ROM|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux2~0_combout\ = (\inst|s_value\(1) & (\inst|s_value\(2) & (\inst|s_value\(3) $ (!\inst|s_value\(0))))) # (!\inst|s_value\(1) & (((\inst|s_value\(3) & \inst|s_value\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_value\(2),
	datab => \inst|s_value\(3),
	datac => \inst|s_value\(0),
	datad => \inst|s_value\(1),
	combout => \ROM|Mux2~0_combout\);

-- Location: LCCOMB_X88_Y72_N30
\ROM|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux3~0_combout\ = (\inst|s_value\(0) & ((\inst|s_value\(2) & (\inst|s_value\(3) $ (!\inst|s_value\(1)))) # (!\inst|s_value\(2) & (\inst|s_value\(3) & !\inst|s_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_value\(2),
	datab => \inst|s_value\(3),
	datac => \inst|s_value\(0),
	datad => \inst|s_value\(1),
	combout => \ROM|Mux3~0_combout\);

-- Location: LCCOMB_X88_Y72_N28
\ROM|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux4~0_combout\ = (\inst|s_value\(0) & (\inst|s_value\(3) & (\inst|s_value\(2) $ (!\inst|s_value\(1))))) # (!\inst|s_value\(0) & (\inst|s_value\(2) & ((!\inst|s_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_value\(2),
	datab => \inst|s_value\(3),
	datac => \inst|s_value\(0),
	datad => \inst|s_value\(1),
	combout => \ROM|Mux4~0_combout\);

-- Location: LCCOMB_X88_Y72_N10
\ROM|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux5~0_combout\ = (\inst|s_value\(0) & ((\inst|s_value\(2) & (\inst|s_value\(3) & \inst|s_value\(1))) # (!\inst|s_value\(2) & (\inst|s_value\(3) $ (\inst|s_value\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_value\(2),
	datab => \inst|s_value\(3),
	datac => \inst|s_value\(0),
	datad => \inst|s_value\(1),
	combout => \ROM|Mux5~0_combout\);

-- Location: LCCOMB_X88_Y72_N24
\ROM|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux6~0_combout\ = (\inst|s_value\(3) & (\inst|s_value\(0) & ((\inst|s_value\(1)) # (!\inst|s_value\(2))))) # (!\inst|s_value\(3) & (!\inst|s_value\(2) & (!\inst|s_value\(0) & \inst|s_value\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_value\(2),
	datab => \inst|s_value\(3),
	datac => \inst|s_value\(0),
	datad => \inst|s_value\(1),
	combout => \ROM|Mux6~0_combout\);

-- Location: LCCOMB_X88_Y72_N22
\ROM|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ROM|Mux7~0_combout\ = (\inst|s_value\(0) & ((\inst|s_value\(2) & (\inst|s_value\(3) & \inst|s_value\(1))) # (!\inst|s_value\(2) & ((!\inst|s_value\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_value\(2),
	datab => \inst|s_value\(3),
	datac => \inst|s_value\(0),
	datad => \inst|s_value\(1),
	combout => \ROM|Mux7~0_combout\);

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


