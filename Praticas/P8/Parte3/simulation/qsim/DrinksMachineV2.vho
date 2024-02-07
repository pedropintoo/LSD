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

-- DATE "04/06/2023 12:53:14"

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

ENTITY 	DrinksFSM IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	V : IN std_logic;
	C : IN std_logic;
	abrir : OUT std_logic
	);
END DrinksFSM;

ARCHITECTURE structure OF DrinksFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_abrir : std_logic;
SIGNAL \abrir~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \reg_fstate.E4~2_combout\ : std_logic;
SIGNAL \V~input_o\ : std_logic;
SIGNAL \reg_fstate.E0~0_combout\ : std_logic;
SIGNAL \reg_fstate.E0~1_combout\ : std_logic;
SIGNAL \fstate.E0~q\ : std_logic;
SIGNAL \reg_fstate.E1~0_combout\ : std_logic;
SIGNAL \fstate.E1~q\ : std_logic;
SIGNAL \reg_fstate.E2~0_combout\ : std_logic;
SIGNAL \fstate.E2~q\ : std_logic;
SIGNAL \reg_fstate.E3~2_combout\ : std_logic;
SIGNAL \reg_fstate.E3~3_combout\ : std_logic;
SIGNAL \fstate.E3~q\ : std_logic;
SIGNAL \reg_fstate.E4~3_combout\ : std_logic;
SIGNAL \reg_fstate.E4~4_combout\ : std_logic;
SIGNAL \fstate.E4~q\ : std_logic;
SIGNAL \reg_fstate.E5~0_combout\ : std_logic;
SIGNAL \reg_fstate.E5~1_combout\ : std_logic;
SIGNAL \fstate.E5~q\ : std_logic;
SIGNAL \abrir~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_V <= V;
ww_C <= C;
abrir <= ww_abrir;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\abrir~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \abrir~0_combout\,
	devoe => ww_devoe,
	o => \abrir~output_o\);

\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

\reg_fstate.E4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.E4~2_combout\ = (!\reset~input_o\ & !\C~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \C~input_o\,
	combout => \reg_fstate.E4~2_combout\);

\V~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V,
	o => \V~input_o\);

\reg_fstate.E0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.E0~0_combout\ = (\reset~input_o\) # ((!\C~input_o\ & (!\V~input_o\ & !\fstate.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \C~input_o\,
	datac => \V~input_o\,
	datad => \fstate.E0~q\,
	combout => \reg_fstate.E0~0_combout\);

\reg_fstate.E0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.E0~1_combout\ = (!\fstate.E5~q\ & !\reg_fstate.E0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.E5~q\,
	datab => \reg_fstate.E0~0_combout\,
	combout => \reg_fstate.E0~1_combout\);

\fstate.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.E0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.E0~q\);

\reg_fstate.E1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.E1~0_combout\ = (\reg_fstate.E4~2_combout\ & ((\V~input_o\ & ((!\fstate.E0~q\))) # (!\V~input_o\ & (\fstate.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_fstate.E4~2_combout\,
	datab => \fstate.E1~q\,
	datac => \V~input_o\,
	datad => \fstate.E0~q\,
	combout => \reg_fstate.E1~0_combout\);

\fstate.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.E1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.E1~q\);

\reg_fstate.E2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.E2~0_combout\ = (\reg_fstate.E4~2_combout\ & ((\V~input_o\ & (\fstate.E1~q\)) # (!\V~input_o\ & ((\fstate.E2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_fstate.E4~2_combout\,
	datab => \fstate.E1~q\,
	datac => \fstate.E2~q\,
	datad => \V~input_o\,
	combout => \reg_fstate.E2~0_combout\);

\fstate.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.E2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.E2~q\);

\reg_fstate.E3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.E3~2_combout\ = (!\reset~input_o\ & ((\V~input_o\ & (\fstate.E2~q\)) # (!\V~input_o\ & ((\fstate.E3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.E2~q\,
	datab => \V~input_o\,
	datac => \reset~input_o\,
	datad => \fstate.E3~q\,
	combout => \reg_fstate.E3~2_combout\);

\reg_fstate.E3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.E3~3_combout\ = (\C~input_o\ & (!\reset~input_o\ & (!\fstate.E0~q\))) # (!\C~input_o\ & (((\reg_fstate.E3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \reset~input_o\,
	datac => \fstate.E0~q\,
	datad => \reg_fstate.E3~2_combout\,
	combout => \reg_fstate.E3~3_combout\);

\fstate.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.E3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.E3~q\);

\reg_fstate.E4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.E4~3_combout\ = (!\reset~input_o\ & ((\V~input_o\ & (\fstate.E3~q\)) # (!\V~input_o\ & ((\fstate.E4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.E3~q\,
	datab => \V~input_o\,
	datac => \reset~input_o\,
	datad => \fstate.E4~q\,
	combout => \reg_fstate.E4~3_combout\);

\reg_fstate.E4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.E4~4_combout\ = (\C~input_o\ & (!\reset~input_o\ & (\fstate.E1~q\))) # (!\C~input_o\ & (((\reg_fstate.E4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \reset~input_o\,
	datac => \fstate.E1~q\,
	datad => \reg_fstate.E4~3_combout\,
	combout => \reg_fstate.E4~4_combout\);

\fstate.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.E4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.E4~q\);

\reg_fstate.E5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.E5~0_combout\ = (!\reset~input_o\ & ((\C~input_o\) # ((\fstate.E4~q\ & \V~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \fstate.E4~q\,
	datac => \V~input_o\,
	datad => \reset~input_o\,
	combout => \reg_fstate.E5~0_combout\);

\reg_fstate.E5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_fstate.E5~1_combout\ = (\reg_fstate.E5~0_combout\ & ((\fstate.E2~q\) # ((\fstate.E3~q\) # (\fstate.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.E2~q\,
	datab => \fstate.E3~q\,
	datac => \fstate.E4~q\,
	datad => \reg_fstate.E5~0_combout\,
	combout => \reg_fstate.E5~1_combout\);

\fstate.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \reg_fstate.E5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.E5~q\);

\abrir~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \abrir~0_combout\ = (\fstate.E5~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.E5~q\,
	datad => \reset~input_o\,
	combout => \abrir~0_combout\);

ww_abrir <= \abrir~output_o\;
END structure;


