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

-- DATE "04/18/2023 18:38:22"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Timer IS
    PORT (
	enable : IN std_logic;
	reset : IN std_logic;
	startStop : IN std_logic;
	clk : IN std_logic;
	valOut : OUT std_logic_vector(4 DOWNTO 0);
	mode : OUT std_logic;
	startReady : OUT std_logic
	);
END Timer;

ARCHITECTURE structure OF Timer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_startStop : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_valOut : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_mode : std_logic;
SIGNAL ww_startReady : std_logic;
SIGNAL \valOut[0]~output_o\ : std_logic;
SIGNAL \valOut[1]~output_o\ : std_logic;
SIGNAL \valOut[2]~output_o\ : std_logic;
SIGNAL \valOut[3]~output_o\ : std_logic;
SIGNAL \valOut[4]~output_o\ : std_logic;
SIGNAL \mode~output_o\ : std_logic;
SIGNAL \startReady~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \s_mode~0_combout\ : std_logic;
SIGNAL \s_startReady~2_combout\ : std_logic;
SIGNAL \startStop~input_o\ : std_logic;
SIGNAL \s_mode~1_combout\ : std_logic;
SIGNAL \s_mode~q\ : std_logic;
SIGNAL \s_value[0]~0_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \s_startReady~3_combout\ : std_logic;
SIGNAL \s_startReady~q\ : std_logic;
SIGNAL s_value : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_s_startReady~q\ : std_logic;
SIGNAL ALT_INV_s_value : std_logic_vector(4 DOWNTO 2);

BEGIN

ww_enable <= enable;
ww_reset <= reset;
ww_startStop <= startStop;
ww_clk <= clk;
valOut <= ww_valOut;
mode <= ww_mode;
startReady <= ww_startReady;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_s_startReady~q\ <= NOT \s_startReady~q\;
ALT_INV_s_value(4) <= NOT s_value(4);
ALT_INV_s_value(2) <= NOT s_value(2);

\valOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_value(0),
	devoe => ww_devoe,
	o => \valOut[0]~output_o\);

\valOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_value(1),
	devoe => ww_devoe,
	o => \valOut[1]~output_o\);

\valOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_value(2),
	devoe => ww_devoe,
	o => \valOut[2]~output_o\);

\valOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_value(3),
	devoe => ww_devoe,
	o => \valOut[3]~output_o\);

\valOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_value(4),
	devoe => ww_devoe,
	o => \valOut[4]~output_o\);

\mode~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_mode~q\,
	devoe => ww_devoe,
	o => \mode~output_o\);

\startReady~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s_startReady~q\,
	devoe => ww_devoe,
	o => \startReady~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = s_value(0) $ (VCC)
-- \Add0~1\ = CARRY(s_value(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_value(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (s_value(1) & (\Add0~1\ & VCC)) # (!s_value(1) & (!\Add0~1\))
-- \Add0~4\ = CARRY((!s_value(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_value(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (s_value(2) & (!s_value(0) & (!s_value(1) & !s_value(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_value(2),
	datab => s_value(0),
	datac => s_value(1),
	datad => s_value(3),
	combout => \Equal0~0_combout\);

\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~3_combout\ & (!\reset~input_o\ & ((!\Equal0~0_combout\) # (!s_value(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => s_value(4),
	datac => \Equal0~0_combout\,
	datad => \reset~input_o\,
	combout => \Add0~5_combout\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\s_mode~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mode~0_combout\ = (\s_mode~q\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mode~q\,
	datab => \enable~input_o\,
	combout => \s_mode~0_combout\);

\s_startReady~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startReady~2_combout\ = (!\reset~input_o\ & (((!\s_mode~0_combout\) # (!\Equal0~0_combout\)) # (!s_value(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_value(4),
	datab => \Equal0~0_combout\,
	datac => \s_mode~0_combout\,
	datad => \reset~input_o\,
	combout => \s_startReady~2_combout\);

\startStop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_startStop,
	o => \startStop~input_o\);

\s_mode~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mode~1_combout\ = (\s_startReady~2_combout\ & (\s_mode~q\ $ (\startStop~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_startReady~2_combout\,
	datac => \s_mode~q\,
	datad => \startStop~input_o\,
	combout => \s_mode~1_combout\);

s_mode : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_mode~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_mode~q\);

\s_value[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_value[0]~0_combout\ = (\reset~input_o\) # ((\s_mode~q\ & \enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_mode~q\,
	datac => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \s_value[0]~0_combout\);

\s_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~5_combout\,
	ena => \s_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_value(1));

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (s_value(2) & (\Add0~4\ $ (GND))) # (!s_value(2) & ((GND) # (!\Add0~4\)))
-- \Add0~7\ = CARRY((!\Add0~4\) # (!s_value(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_value(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (!\reset~input_o\ & (!\Add0~6_combout\ & ((!\Equal0~0_combout\) # (!s_value(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add0~6_combout\,
	datac => s_value(4),
	datad => \Equal0~0_combout\,
	combout => \Add0~8_combout\);

\s_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~8_combout\,
	ena => \s_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_value(2));

\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (s_value(3) & (\Add0~7\ & VCC)) # (!s_value(3) & (!\Add0~7\))
-- \Add0~10\ = CARRY((!s_value(3) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_value(3),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~9_combout\ & (!\reset~input_o\ & ((!\Equal0~0_combout\) # (!s_value(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => s_value(4),
	datac => \Equal0~0_combout\,
	datad => \reset~input_o\,
	combout => \Add0~11_combout\);

\s_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~11_combout\,
	ena => \s_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_value(3));

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = s_value(4) $ (!\Add0~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_value(4),
	cin => \Add0~10\,
	combout => \Add0~12_combout\);

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (!\reset~input_o\ & (!\Add0~12_combout\ & ((!\Equal0~0_combout\) # (!s_value(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add0~12_combout\,
	datac => s_value(4),
	datad => \Equal0~0_combout\,
	combout => \Add0~14_combout\);

\s_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~14_combout\,
	ena => \s_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_value(4));

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add0~0_combout\ & (!\reset~input_o\ & ((!\Equal0~0_combout\) # (!s_value(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => s_value(4),
	datac => \Equal0~0_combout\,
	datad => \reset~input_o\,
	combout => \Add0~2_combout\);

\s_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~2_combout\,
	ena => \s_value[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_value(0));

\s_startReady~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_startReady~3_combout\ = (\s_startReady~2_combout\ & ((\s_startReady~q\) # ((\s_mode~q\ & \enable~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mode~q\,
	datab => \enable~input_o\,
	datac => \s_startReady~q\,
	datad => \s_startReady~2_combout\,
	combout => \s_startReady~3_combout\);

s_startReady : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_startReady~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_startReady~q\);

ww_valOut(0) <= \valOut[0]~output_o\;

ww_valOut(1) <= \valOut[1]~output_o\;

ww_valOut(2) <= \valOut[2]~output_o\;

ww_valOut(3) <= \valOut[3]~output_o\;

ww_valOut(4) <= \valOut[4]~output_o\;

ww_mode <= \mode~output_o\;

ww_startReady <= \startReady~output_o\;
END structure;


