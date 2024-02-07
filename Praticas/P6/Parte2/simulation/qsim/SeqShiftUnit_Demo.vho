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

-- DATE "03/17/2023 23:31:36"

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

ENTITY 	SeqShiftUnit IS
    PORT (
	clk : IN std_logic;
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	siLeft : IN std_logic;
	siRight : IN std_logic;
	loadEn : IN std_logic;
	rotate : IN std_logic;
	dirLeft : IN std_logic;
	shArith : IN std_logic;
	dataOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END SeqShiftUnit;

ARCHITECTURE structure OF SeqShiftUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_siLeft : std_logic;
SIGNAL ww_siRight : std_logic;
SIGNAL ww_loadEn : std_logic;
SIGNAL ww_rotate : std_logic;
SIGNAL ww_dirLeft : std_logic;
SIGNAL ww_shArith : std_logic;
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \dirLeft~input_o\ : std_logic;
SIGNAL \rotate~input_o\ : std_logic;
SIGNAL \siLeft~input_o\ : std_logic;
SIGNAL \shArith~input_o\ : std_logic;
SIGNAL \s_shiftReg[7]~9_combout\ : std_logic;
SIGNAL \s_shiftReg[7]~10_combout\ : std_logic;
SIGNAL \s_shiftReg[7]~7_combout\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \loadEn~input_o\ : std_logic;
SIGNAL \s_shiftReg[6]~6_combout\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \s_shiftReg[5]~5_combout\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \s_shiftReg[4]~4_combout\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \s_shiftReg[3]~3_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \s_shiftReg[2]~2_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \s_shiftReg[1]~1_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \siRight~input_o\ : std_logic;
SIGNAL \s_shiftReg~8_combout\ : std_logic;
SIGNAL \s_shiftReg[0]~0_combout\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL s_shiftReg : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_dataIn <= dataIn;
ww_siLeft <= siLeft;
ww_siRight <= siRight;
ww_loadEn <= loadEn;
ww_rotate <= rotate;
ww_dirLeft <= dirLeft;
ww_shArith <= shArith;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(0),
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(1),
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(2),
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(3),
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(4),
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(5),
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(6),
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_shiftReg(7),
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\dirLeft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dirLeft,
	o => \dirLeft~input_o\);

\rotate~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rotate,
	o => \rotate~input_o\);

\siLeft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_siLeft,
	o => \siLeft~input_o\);

\shArith~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shArith,
	o => \shArith~input_o\);

\s_shiftReg[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[7]~9_combout\ = (\rotate~input_o\) # ((\shArith~input_o\ & (s_shiftReg(7))) # (!\shArith~input_o\ & ((\siLeft~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => s_shiftReg(7),
	datac => \siLeft~input_o\,
	datad => \shArith~input_o\,
	combout => \s_shiftReg[7]~9_combout\);

\s_shiftReg[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[7]~10_combout\ = (s_shiftReg(0)) # (!\rotate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(0),
	datab => \rotate~input_o\,
	combout => \s_shiftReg[7]~10_combout\);

\s_shiftReg[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[7]~7_combout\ = (\dirLeft~input_o\ & (s_shiftReg(6))) # (!\dirLeft~input_o\ & (((\s_shiftReg[7]~9_combout\ & \s_shiftReg[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(6),
	datab => \dirLeft~input_o\,
	datac => \s_shiftReg[7]~9_combout\,
	datad => \s_shiftReg[7]~10_combout\,
	combout => \s_shiftReg[7]~7_combout\);

\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

\loadEn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_loadEn,
	o => \loadEn~input_o\);

\s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_shiftReg[7]~7_combout\,
	asdata => \dataIn[7]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(7));

\s_shiftReg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[6]~6_combout\ = (\dirLeft~input_o\ & ((s_shiftReg(5)))) # (!\dirLeft~input_o\ & (s_shiftReg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(7),
	datab => s_shiftReg(5),
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg[6]~6_combout\);

\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

\s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_shiftReg[6]~6_combout\,
	asdata => \dataIn[6]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(6));

\s_shiftReg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[5]~5_combout\ = (\dirLeft~input_o\ & ((s_shiftReg(4)))) # (!\dirLeft~input_o\ & (s_shiftReg(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(6),
	datab => s_shiftReg(4),
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg[5]~5_combout\);

\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

\s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_shiftReg[5]~5_combout\,
	asdata => \dataIn[5]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(5));

\s_shiftReg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[4]~4_combout\ = (\dirLeft~input_o\ & ((s_shiftReg(3)))) # (!\dirLeft~input_o\ & (s_shiftReg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(5),
	datab => s_shiftReg(3),
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg[4]~4_combout\);

\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

\s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_shiftReg[4]~4_combout\,
	asdata => \dataIn[4]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(4));

\s_shiftReg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[3]~3_combout\ = (\dirLeft~input_o\ & ((s_shiftReg(2)))) # (!\dirLeft~input_o\ & (s_shiftReg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(4),
	datab => s_shiftReg(2),
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg[3]~3_combout\);

\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

\s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_shiftReg[3]~3_combout\,
	asdata => \dataIn[3]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(3));

\s_shiftReg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[2]~2_combout\ = (\dirLeft~input_o\ & ((s_shiftReg(1)))) # (!\dirLeft~input_o\ & (s_shiftReg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(3),
	datab => s_shiftReg(1),
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg[2]~2_combout\);

\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_shiftReg[2]~2_combout\,
	asdata => \dataIn[2]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(2));

\s_shiftReg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[1]~1_combout\ = (\dirLeft~input_o\ & ((s_shiftReg(0)))) # (!\dirLeft~input_o\ & (s_shiftReg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(2),
	datab => s_shiftReg(0),
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg[1]~1_combout\);

\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_shiftReg[1]~1_combout\,
	asdata => \dataIn[1]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(1));

\siRight~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_siRight,
	o => \siRight~input_o\);

\s_shiftReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg~8_combout\ = (\rotate~input_o\ & (s_shiftReg(7))) # (!\rotate~input_o\ & (((\siRight~input_o\ & !\shArith~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(7),
	datab => \rotate~input_o\,
	datac => \siRight~input_o\,
	datad => \shArith~input_o\,
	combout => \s_shiftReg~8_combout\);

\s_shiftReg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_shiftReg[0]~0_combout\ = (\dirLeft~input_o\ & ((\s_shiftReg~8_combout\))) # (!\dirLeft~input_o\ & (s_shiftReg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_shiftReg(1),
	datab => \s_shiftReg~8_combout\,
	datad => \dirLeft~input_o\,
	combout => \s_shiftReg[0]~0_combout\);

\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

\s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_shiftReg[0]~0_combout\,
	asdata => \dataIn[0]~input_o\,
	sload => \loadEn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_shiftReg(0));

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;
END structure;


