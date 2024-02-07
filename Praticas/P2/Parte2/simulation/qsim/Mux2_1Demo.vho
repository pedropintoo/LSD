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

-- DATE "02/21/2023 21:54:00"

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

ENTITY 	Mux2_1 IS
    PORT (
	sel : IN std_logic;
	dataIn0 : IN std_logic;
	dataIn1 : IN std_logic;
	dataOut : OUT std_logic
	);
END Mux2_1;

ARCHITECTURE structure OF Mux2_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sel : std_logic;
SIGNAL ww_dataIn0 : std_logic;
SIGNAL ww_dataIn1 : std_logic;
SIGNAL ww_dataOut : std_logic;
SIGNAL \dataOut~output_o\ : std_logic;
SIGNAL \dataIn1~input_o\ : std_logic;
SIGNAL \dataIn0~input_o\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \dataOut~0_combout\ : std_logic;

BEGIN

ww_sel <= sel;
ww_dataIn0 <= dataIn0;
ww_dataIn1 <= dataIn1;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dataOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~0_combout\,
	devoe => ww_devoe,
	o => \dataOut~output_o\);

\dataIn1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1,
	o => \dataIn1~input_o\);

\dataIn0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0,
	o => \dataIn0~input_o\);

\sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

\dataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~0_combout\ = (\sel~input_o\ & (\dataIn1~input_o\)) # (!\sel~input_o\ & ((\dataIn0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1~input_o\,
	datab => \dataIn0~input_o\,
	datad => \sel~input_o\,
	combout => \dataOut~0_combout\);

ww_dataOut <= \dataOut~output_o\;
END structure;


