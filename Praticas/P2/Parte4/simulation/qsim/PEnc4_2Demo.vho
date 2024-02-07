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

-- DATE "02/25/2023 19:45:11"

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

ENTITY 	PEnc4_2 IS
    PORT (
	decodedln : IN std_logic_vector(3 DOWNTO 0);
	encodedOut : OUT std_logic_vector(1 DOWNTO 0);
	validOut : OUT std_logic
	);
END PEnc4_2;

ARCHITECTURE structure OF PEnc4_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_decodedln : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_encodedOut : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_validOut : std_logic;
SIGNAL \encodedOut[0]~output_o\ : std_logic;
SIGNAL \encodedOut[1]~output_o\ : std_logic;
SIGNAL \validOut~output_o\ : std_logic;
SIGNAL \decodedln[3]~input_o\ : std_logic;
SIGNAL \decodedln[1]~input_o\ : std_logic;
SIGNAL \decodedln[2]~input_o\ : std_logic;
SIGNAL \encodedOut~0_combout\ : std_logic;
SIGNAL \decodedln[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \encodedOut[0]$latch~combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \encodedOut[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_decodedln <= decodedln;
encodedOut <= ww_encodedOut;
validOut <= ww_validOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

\encodedOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedOut[0]$latch~combout\,
	devoe => ww_devoe,
	o => \encodedOut[0]~output_o\);

\encodedOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedOut[1]$latch~combout\,
	devoe => ww_devoe,
	o => \encodedOut[1]~output_o\);

\validOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \validOut~output_o\);

\decodedln[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedln(3),
	o => \decodedln[3]~input_o\);

\decodedln[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedln(1),
	o => \decodedln[1]~input_o\);

\decodedln[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedln(2),
	o => \decodedln[2]~input_o\);

\encodedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~0_combout\ = (\decodedln[3]~input_o\) # ((\decodedln[1]~input_o\ & !\decodedln[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedln[3]~input_o\,
	datab => \decodedln[1]~input_o\,
	datad => \decodedln[2]~input_o\,
	combout => \encodedOut~0_combout\);

\decodedln[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedln(0),
	o => \decodedln[0]~input_o\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\decodedln[2]~input_o\ & (!\decodedln[3]~input_o\ & (!\decodedln[0]~input_o\ & !\decodedln[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedln[2]~input_o\,
	datab => \decodedln[3]~input_o\,
	datac => \decodedln[0]~input_o\,
	datad => \decodedln[1]~input_o\,
	combout => \Equal0~0_combout\);

\encodedOut[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut[0]$latch~combout\ = (\Equal0~0_combout\ & ((\encodedOut[0]$latch~combout\))) # (!\Equal0~0_combout\ & (\encodedOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encodedOut~0_combout\,
	datac => \encodedOut[0]$latch~combout\,
	datad => \Equal0~0_combout\,
	combout => \encodedOut[0]$latch~combout\);

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\decodedln[2]~input_o\ & !\decodedln[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decodedln[2]~input_o\,
	datad => \decodedln[3]~input_o\,
	combout => \Equal0~1_combout\);

\encodedOut[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut[1]$latch~combout\ = (\Equal0~0_combout\ & ((\encodedOut[1]$latch~combout\))) # (!\Equal0~0_combout\ & (!\Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \encodedOut[1]$latch~combout\,
	datad => \Equal0~0_combout\,
	combout => \encodedOut[1]$latch~combout\);

ww_encodedOut(0) <= \encodedOut[0]~output_o\;

ww_encodedOut(1) <= \encodedOut[1]~output_o\;

ww_validOut <= \validOut~output_o\;
END structure;


