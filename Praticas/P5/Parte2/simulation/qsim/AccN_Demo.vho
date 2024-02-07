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

-- DATE "03/07/2023 17:53:31"

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

ENTITY 	AccN IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	dataIn : IN std_logic_vector(3 DOWNTO 0);
	dataOut : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END AccN;

ARCHITECTURE structure OF AccN IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_dataIn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \s_dataOut[0]~4_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \s_dataOut[0]~6_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \s_dataOut[0]~5\ : std_logic;
SIGNAL \s_dataOut[1]~7_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \s_dataOut[1]~8\ : std_logic;
SIGNAL \s_dataOut[2]~9_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \s_dataOut[2]~10\ : std_logic;
SIGNAL \s_dataOut[3]~11_combout\ : std_logic;
SIGNAL s_dataOut : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_enable <= enable;
ww_reset <= reset;
ww_dataIn <= dataIn;
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
	i => s_dataOut(0),
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_dataOut(1),
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_dataOut(2),
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_dataOut(3),
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

\s_dataOut[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_dataOut[0]~4_combout\ = (\dataIn[0]~input_o\ & (s_dataOut(0) $ (VCC))) # (!\dataIn[0]~input_o\ & (s_dataOut(0) & VCC))
-- \s_dataOut[0]~5\ = CARRY((\dataIn[0]~input_o\ & s_dataOut(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => s_dataOut(0),
	datad => VCC,
	combout => \s_dataOut[0]~4_combout\,
	cout => \s_dataOut[0]~5\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\s_dataOut[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_dataOut[0]~6_combout\ = (\reset~input_o\) # (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \enable~input_o\,
	combout => \s_dataOut[0]~6_combout\);

\s_dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_dataOut[0]~4_combout\,
	sclr => \reset~input_o\,
	ena => \s_dataOut[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_dataOut(0));

\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\s_dataOut[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_dataOut[1]~7_combout\ = (\dataIn[1]~input_o\ & ((s_dataOut(1) & (\s_dataOut[0]~5\ & VCC)) # (!s_dataOut(1) & (!\s_dataOut[0]~5\)))) # (!\dataIn[1]~input_o\ & ((s_dataOut(1) & (!\s_dataOut[0]~5\)) # (!s_dataOut(1) & ((\s_dataOut[0]~5\) # (GND)))))
-- \s_dataOut[1]~8\ = CARRY((\dataIn[1]~input_o\ & (!s_dataOut(1) & !\s_dataOut[0]~5\)) # (!\dataIn[1]~input_o\ & ((!\s_dataOut[0]~5\) # (!s_dataOut(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[1]~input_o\,
	datab => s_dataOut(1),
	datad => VCC,
	cin => \s_dataOut[0]~5\,
	combout => \s_dataOut[1]~7_combout\,
	cout => \s_dataOut[1]~8\);

\s_dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_dataOut[1]~7_combout\,
	sclr => \reset~input_o\,
	ena => \s_dataOut[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_dataOut(1));

\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\s_dataOut[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_dataOut[2]~9_combout\ = ((\dataIn[2]~input_o\ $ (s_dataOut(2) $ (!\s_dataOut[1]~8\)))) # (GND)
-- \s_dataOut[2]~10\ = CARRY((\dataIn[2]~input_o\ & ((s_dataOut(2)) # (!\s_dataOut[1]~8\))) # (!\dataIn[2]~input_o\ & (s_dataOut(2) & !\s_dataOut[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => s_dataOut(2),
	datad => VCC,
	cin => \s_dataOut[1]~8\,
	combout => \s_dataOut[2]~9_combout\,
	cout => \s_dataOut[2]~10\);

\s_dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_dataOut[2]~9_combout\,
	sclr => \reset~input_o\,
	ena => \s_dataOut[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_dataOut(2));

\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

\s_dataOut[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_dataOut[3]~11_combout\ = \dataIn[3]~input_o\ $ (s_dataOut(3) $ (\s_dataOut[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[3]~input_o\,
	datab => s_dataOut(3),
	cin => \s_dataOut[2]~10\,
	combout => \s_dataOut[3]~11_combout\);

\s_dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_dataOut[3]~11_combout\,
	sclr => \reset~input_o\,
	ena => \s_dataOut[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_dataOut(3));

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;
END structure;


