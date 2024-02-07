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

-- DATE "03/18/2023 00:17:37"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CombShiftUnit_Demo IS
    PORT (
	KEY : IN std_logic_vector(2 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END CombShiftUnit_Demo;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CombShiftUnit_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftRight0~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~0_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~2_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[0]~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~1_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~2_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftRight1~0_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~4_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~3_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~4_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[0]~1_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[0]~2_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[0]~3_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[0]~4_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftRight1~3_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~7_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[1]~5_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[1]~6_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[1]~8_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftRight1~1_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~5_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~6_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[1]~7_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[1]~9_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftRight0~1_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftRight1~2_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[1]~10_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~7_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~8_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[1]~11_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~5_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~6_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[1]~12_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~12_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~9_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~13_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~10_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~11_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[2]~15_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftRight1~5_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftRight1~6_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftRight0~2_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftRight1~4_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~8_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~9_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[2]~13_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[2]~14_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[2]~16_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~10_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~11_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~12_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~13_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~14_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~15_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[3]~17_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut~18_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut~19_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[3]~20_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut~22_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateRight0~14_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \SeqShiftUnit|RotateLeft0~16_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[4]~21_combout\ : std_logic;
SIGNAL \SeqShiftUnit|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[4]~23_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[6]~29_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[6]~30_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[5]~31_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[6]~24_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[6]~25_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[6]~26_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[5]~27_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[5]~28_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[5]~32_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[5]~33_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[6]~34_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[6]~35_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[6]~36_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[6]~37_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[6]~38_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[7]~41_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[7]~39_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[7]~40_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[7]~42_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[7]~44_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[7]~43_combout\ : std_logic;
SIGNAL \SeqShiftUnit|dataOut[7]~45_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqShiftUnit|dataOut[0]~4_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqShiftUnit|dataOut[1]~12_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqShiftUnit|dataOut[2]~16_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqShiftUnit|dataOut[3]~20_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqShiftUnit|dataOut[4]~23_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqShiftUnit|dataOut[5]~33_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqShiftUnit|dataOut[6]~38_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SeqShiftUnit|dataOut[7]~45_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X110_Y17_N18
\SeqShiftUnit|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftRight0~0_combout\ = (!\SW[15]~input_o\ & !\SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \SeqShiftUnit|ShiftRight0~0_combout\);

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

-- Location: LCCOMB_X109_Y16_N18
\SeqShiftUnit|RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~1_combout\ = (\SW[16]~input_o\ & (\SW[5]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[5]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~1_combout\);

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

-- Location: LCCOMB_X109_Y17_N26
\SeqShiftUnit|RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~0_combout\ = (!\SW[15]~input_o\ & ((\SW[16]~input_o\ & (\SW[6]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~0_combout\);

-- Location: LCCOMB_X110_Y17_N28
\SeqShiftUnit|RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~2_combout\ = (\SeqShiftUnit|RotateLeft0~0_combout\) # ((\SW[15]~input_o\ & \SeqShiftUnit|RotateLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SeqShiftUnit|RotateLeft0~1_combout\,
	datac => \SeqShiftUnit|RotateLeft0~0_combout\,
	combout => \SeqShiftUnit|RotateLeft0~2_combout\);

-- Location: LCCOMB_X110_Y17_N6
\SeqShiftUnit|dataOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[0]~0_combout\ = (\KEY[0]~input_o\ & (\SeqShiftUnit|ShiftRight0~0_combout\ & (\SW[0]~input_o\))) # (!\KEY[0]~input_o\ & (((\SeqShiftUnit|RotateLeft0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SeqShiftUnit|ShiftRight0~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SeqShiftUnit|RotateLeft0~2_combout\,
	combout => \SeqShiftUnit|dataOut[0]~0_combout\);

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

-- Location: LCCOMB_X109_Y17_N16
\SeqShiftUnit|RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~0_combout\ = (\SW[16]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[16]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[16]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \SeqShiftUnit|RotateRight0~0_combout\);

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

-- Location: LCCOMB_X109_Y16_N16
\SeqShiftUnit|RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~1_combout\ = (\SW[16]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[16]~input_o\ & (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \SeqShiftUnit|RotateRight0~1_combout\);

-- Location: LCCOMB_X110_Y17_N0
\SeqShiftUnit|RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~2_combout\ = (\SW[15]~input_o\ & (\SeqShiftUnit|RotateRight0~0_combout\)) # (!\SW[15]~input_o\ & ((\SeqShiftUnit|RotateRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateRight0~0_combout\,
	datac => \SW[15]~input_o\,
	datad => \SeqShiftUnit|RotateRight0~1_combout\,
	combout => \SeqShiftUnit|RotateRight0~2_combout\);

-- Location: LCCOMB_X109_Y17_N8
\SeqShiftUnit|RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~3_combout\ = (\SW[15]~input_o\ & ((\SW[16]~input_o\ & (\SW[7]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \SeqShiftUnit|RotateRight0~3_combout\);

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

-- Location: LCCOMB_X109_Y17_N2
\SeqShiftUnit|ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftRight1~0_combout\ = (\SW[16]~input_o\ & ((\SW[6]~input_o\))) # (!\SW[16]~input_o\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[16]~input_o\,
	combout => \SeqShiftUnit|ShiftRight1~0_combout\);

-- Location: LCCOMB_X109_Y17_N12
\SeqShiftUnit|RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~4_combout\ = (\SeqShiftUnit|RotateRight0~3_combout\) # ((!\SW[15]~input_o\ & \SeqShiftUnit|ShiftRight1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SeqShiftUnit|RotateRight0~3_combout\,
	datac => \SW[15]~input_o\,
	datad => \SeqShiftUnit|ShiftRight1~0_combout\,
	combout => \SeqShiftUnit|RotateRight0~4_combout\);

-- Location: LCCOMB_X109_Y17_N4
\SeqShiftUnit|RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~3_combout\ = (\SW[16]~input_o\ & (\SW[1]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[16]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~3_combout\);

-- Location: LCCOMB_X109_Y16_N4
\SeqShiftUnit|RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~4_combout\ = (\SW[16]~input_o\ & (\SW[2]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~4_combout\);

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

-- Location: LCCOMB_X109_Y18_N16
\SeqShiftUnit|dataOut[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[0]~1_combout\ = (!\KEY[1]~input_o\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	combout => \SeqShiftUnit|dataOut[0]~1_combout\);

-- Location: LCCOMB_X109_Y17_N22
\SeqShiftUnit|dataOut[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[0]~2_combout\ = (\SeqShiftUnit|dataOut[0]~1_combout\ & ((\SW[15]~input_o\ & (\SeqShiftUnit|RotateLeft0~3_combout\)) # (!\SW[15]~input_o\ & ((\SeqShiftUnit|RotateLeft0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateLeft0~3_combout\,
	datab => \SeqShiftUnit|RotateLeft0~4_combout\,
	datac => \SW[15]~input_o\,
	datad => \SeqShiftUnit|dataOut[0]~1_combout\,
	combout => \SeqShiftUnit|dataOut[0]~2_combout\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X110_Y17_N8
\SeqShiftUnit|dataOut[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[0]~3_combout\ = (\SW[17]~input_o\ & ((\SeqShiftUnit|dataOut[0]~2_combout\) # ((\SeqShiftUnit|RotateRight0~4_combout\ & \KEY[1]~input_o\)))) # (!\SW[17]~input_o\ & (((\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateRight0~4_combout\,
	datab => \SeqShiftUnit|dataOut[0]~2_combout\,
	datac => \KEY[1]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|dataOut[0]~3_combout\);

-- Location: LCCOMB_X110_Y17_N10
\SeqShiftUnit|dataOut[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[0]~4_combout\ = (\SeqShiftUnit|dataOut[0]~3_combout\ & (((\SeqShiftUnit|RotateRight0~2_combout\) # (\SW[17]~input_o\)))) # (!\SeqShiftUnit|dataOut[0]~3_combout\ & (\SeqShiftUnit|dataOut[0]~0_combout\ & ((!\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[0]~0_combout\,
	datab => \SeqShiftUnit|RotateRight0~2_combout\,
	datac => \SeqShiftUnit|dataOut[0]~3_combout\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|dataOut[0]~4_combout\);

-- Location: LCCOMB_X109_Y16_N8
\SeqShiftUnit|ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftRight1~3_combout\ = (\SW[16]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[16]~input_o\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \SeqShiftUnit|ShiftRight1~3_combout\);

-- Location: LCCOMB_X110_Y17_N12
\SeqShiftUnit|RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~7_combout\ = (\SW[15]~input_o\ & ((\SeqShiftUnit|ShiftRight1~3_combout\))) # (!\SW[15]~input_o\ & (\SeqShiftUnit|RotateRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateRight0~0_combout\,
	datab => \SeqShiftUnit|ShiftRight1~3_combout\,
	datac => \SW[15]~input_o\,
	combout => \SeqShiftUnit|RotateRight0~7_combout\);

-- Location: LCCOMB_X109_Y18_N18
\SeqShiftUnit|dataOut[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[1]~5_combout\ = (\SW[17]~input_o\ & (!\KEY[0]~input_o\ & !\KEY[1]~input_o\)) # (!\SW[17]~input_o\ & ((\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \KEY[1]~input_o\,
	combout => \SeqShiftUnit|dataOut[1]~5_combout\);

-- Location: LCCOMB_X109_Y18_N12
\SeqShiftUnit|dataOut[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[1]~6_combout\ = (\KEY[1]~input_o\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	combout => \SeqShiftUnit|dataOut[1]~6_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X109_Y18_N8
\SeqShiftUnit|dataOut[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[1]~8_combout\ = (\KEY[0]~input_o\ & ((\KEY[2]~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[2]~input_o\,
	datac => \KEY[1]~input_o\,
	combout => \SeqShiftUnit|dataOut[1]~8_combout\);

-- Location: LCCOMB_X109_Y17_N18
\SeqShiftUnit|ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftLeft0~0_combout\ = (!\SW[16]~input_o\ & ((\SW[15]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[15]~input_o\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \SeqShiftUnit|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X109_Y16_N22
\SeqShiftUnit|ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftRight1~1_combout\ = (!\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\SW[6]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \SeqShiftUnit|ShiftRight1~1_combout\);

-- Location: LCCOMB_X110_Y18_N20
\SeqShiftUnit|RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~5_combout\ = (\SW[16]~input_o\ & ((\SW[15]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[15]~input_o\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \SeqShiftUnit|RotateRight0~5_combout\);

-- Location: LCCOMB_X110_Y18_N30
\SeqShiftUnit|RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~6_combout\ = (\SeqShiftUnit|ShiftRight1~1_combout\) # (\SeqShiftUnit|RotateRight0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SeqShiftUnit|ShiftRight1~1_combout\,
	datad => \SeqShiftUnit|RotateRight0~5_combout\,
	combout => \SeqShiftUnit|RotateRight0~6_combout\);

-- Location: LCCOMB_X109_Y18_N14
\SeqShiftUnit|dataOut[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[1]~7_combout\ = ((!\SW[17]~input_o\ & !\KEY[1]~input_o\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \KEY[1]~input_o\,
	combout => \SeqShiftUnit|dataOut[1]~7_combout\);

-- Location: LCCOMB_X110_Y18_N8
\SeqShiftUnit|dataOut[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[1]~9_combout\ = (\SeqShiftUnit|dataOut[1]~8_combout\ & (\SeqShiftUnit|ShiftLeft0~0_combout\ & ((\SeqShiftUnit|dataOut[1]~7_combout\)))) # (!\SeqShiftUnit|dataOut[1]~8_combout\ & (((\SeqShiftUnit|RotateRight0~6_combout\) # 
-- (!\SeqShiftUnit|dataOut[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[1]~8_combout\,
	datab => \SeqShiftUnit|ShiftLeft0~0_combout\,
	datac => \SeqShiftUnit|RotateRight0~6_combout\,
	datad => \SeqShiftUnit|dataOut[1]~7_combout\,
	combout => \SeqShiftUnit|dataOut[1]~9_combout\);

-- Location: LCCOMB_X110_Y18_N26
\SeqShiftUnit|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftRight0~1_combout\ = (\SeqShiftUnit|ShiftRight1~1_combout\) # ((\SW[7]~input_o\ & \SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SeqShiftUnit|ShiftRight1~1_combout\,
	datac => \SW[16]~input_o\,
	combout => \SeqShiftUnit|ShiftRight0~1_combout\);

-- Location: LCCOMB_X110_Y18_N24
\SeqShiftUnit|ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftRight1~2_combout\ = (\SeqShiftUnit|ShiftRight1~1_combout\) # ((\SW[16]~input_o\ & (!\SW[15]~input_o\ & \SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SeqShiftUnit|ShiftRight1~1_combout\,
	combout => \SeqShiftUnit|ShiftRight1~2_combout\);

-- Location: LCCOMB_X110_Y18_N10
\SeqShiftUnit|dataOut[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[1]~10_combout\ = (\SeqShiftUnit|dataOut[1]~6_combout\ & ((\SeqShiftUnit|dataOut[1]~9_combout\ & (\SeqShiftUnit|ShiftRight0~1_combout\)) # (!\SeqShiftUnit|dataOut[1]~9_combout\ & ((\SeqShiftUnit|ShiftRight1~2_combout\))))) # 
-- (!\SeqShiftUnit|dataOut[1]~6_combout\ & (\SeqShiftUnit|dataOut[1]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[1]~6_combout\,
	datab => \SeqShiftUnit|dataOut[1]~9_combout\,
	datac => \SeqShiftUnit|ShiftRight0~1_combout\,
	datad => \SeqShiftUnit|ShiftRight1~2_combout\,
	combout => \SeqShiftUnit|dataOut[1]~10_combout\);

-- Location: LCCOMB_X109_Y17_N28
\SeqShiftUnit|RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~7_combout\ = (\SW[16]~input_o\ & ((\SW[15]~input_o\ & ((\SW[6]~input_o\))) # (!\SW[15]~input_o\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~7_combout\);

-- Location: LCCOMB_X109_Y17_N6
\SeqShiftUnit|RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~8_combout\ = (\SeqShiftUnit|RotateLeft0~7_combout\) # (\SeqShiftUnit|ShiftLeft0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SeqShiftUnit|RotateLeft0~7_combout\,
	datad => \SeqShiftUnit|ShiftLeft0~0_combout\,
	combout => \SeqShiftUnit|RotateLeft0~8_combout\);

-- Location: LCCOMB_X109_Y18_N26
\SeqShiftUnit|dataOut[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[1]~11_combout\ = (\SeqShiftUnit|dataOut[0]~1_combout\ & (!\SeqShiftUnit|dataOut[1]~5_combout\ & ((\SeqShiftUnit|RotateLeft0~8_combout\)))) # (!\SeqShiftUnit|dataOut[0]~1_combout\ & ((\SeqShiftUnit|dataOut[1]~5_combout\) # 
-- ((\SeqShiftUnit|dataOut[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[0]~1_combout\,
	datab => \SeqShiftUnit|dataOut[1]~5_combout\,
	datac => \SeqShiftUnit|dataOut[1]~10_combout\,
	datad => \SeqShiftUnit|RotateLeft0~8_combout\,
	combout => \SeqShiftUnit|dataOut[1]~11_combout\);

-- Location: LCCOMB_X109_Y17_N30
\SeqShiftUnit|RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~5_combout\ = (\SW[16]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[16]~input_o\ & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~5_combout\);

-- Location: LCCOMB_X109_Y17_N0
\SeqShiftUnit|RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~6_combout\ = (\SW[15]~input_o\ & ((\SeqShiftUnit|RotateLeft0~4_combout\))) # (!\SW[15]~input_o\ & (\SeqShiftUnit|RotateLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateLeft0~5_combout\,
	datab => \SeqShiftUnit|RotateLeft0~4_combout\,
	datac => \SW[15]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~6_combout\);

-- Location: LCCOMB_X109_Y18_N4
\SeqShiftUnit|dataOut[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[1]~12_combout\ = (\SeqShiftUnit|dataOut[1]~5_combout\ & ((\SeqShiftUnit|dataOut[1]~11_combout\ & (\SeqShiftUnit|RotateRight0~7_combout\)) # (!\SeqShiftUnit|dataOut[1]~11_combout\ & ((\SeqShiftUnit|RotateLeft0~6_combout\))))) # 
-- (!\SeqShiftUnit|dataOut[1]~5_combout\ & (((\SeqShiftUnit|dataOut[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateRight0~7_combout\,
	datab => \SeqShiftUnit|dataOut[1]~5_combout\,
	datac => \SeqShiftUnit|dataOut[1]~11_combout\,
	datad => \SeqShiftUnit|RotateLeft0~6_combout\,
	combout => \SeqShiftUnit|dataOut[1]~12_combout\);

-- Location: LCCOMB_X109_Y16_N28
\SeqShiftUnit|RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~12_combout\ = (\SW[15]~input_o\ & ((\SW[16]~input_o\ & ((\SW[7]~input_o\))) # (!\SW[16]~input_o\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~12_combout\);

-- Location: LCCOMB_X109_Y16_N30
\SeqShiftUnit|RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~9_combout\ = (\SW[16]~input_o\ & (\SW[0]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~9_combout\);

-- Location: LCCOMB_X109_Y16_N14
\SeqShiftUnit|RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~13_combout\ = (\SeqShiftUnit|RotateLeft0~12_combout\) # ((\SeqShiftUnit|RotateLeft0~9_combout\ & !\SW[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SeqShiftUnit|RotateLeft0~12_combout\,
	datac => \SeqShiftUnit|RotateLeft0~9_combout\,
	datad => \SW[15]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~13_combout\);

-- Location: LCCOMB_X109_Y16_N26
\SeqShiftUnit|RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~10_combout\ = (\SW[16]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[16]~input_o\ & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~10_combout\);

-- Location: LCCOMB_X109_Y17_N24
\SeqShiftUnit|RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~11_combout\ = (\SW[15]~input_o\ & (\SeqShiftUnit|RotateLeft0~5_combout\)) # (!\SW[15]~input_o\ & ((\SeqShiftUnit|RotateLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateLeft0~5_combout\,
	datab => \SeqShiftUnit|RotateLeft0~10_combout\,
	datac => \SW[15]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~11_combout\);

-- Location: LCCOMB_X109_Y18_N30
\SeqShiftUnit|dataOut[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[2]~15_combout\ = (\SeqShiftUnit|dataOut[1]~5_combout\ & (((\SeqShiftUnit|RotateLeft0~11_combout\) # (!\SeqShiftUnit|dataOut[0]~1_combout\)))) # (!\SeqShiftUnit|dataOut[1]~5_combout\ & (\SeqShiftUnit|RotateLeft0~13_combout\ & 
-- ((\SeqShiftUnit|dataOut[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateLeft0~13_combout\,
	datab => \SeqShiftUnit|dataOut[1]~5_combout\,
	datac => \SeqShiftUnit|RotateLeft0~11_combout\,
	datad => \SeqShiftUnit|dataOut[0]~1_combout\,
	combout => \SeqShiftUnit|dataOut[2]~15_combout\);

-- Location: LCCOMB_X109_Y17_N10
\SeqShiftUnit|ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftRight1~5_combout\ = (\SW[16]~input_o\ & (\SW[5]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \SeqShiftUnit|ShiftRight1~5_combout\);

-- Location: LCCOMB_X109_Y19_N16
\SeqShiftUnit|ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftRight1~6_combout\ = (\SW[15]~input_o\ & ((\SeqShiftUnit|ShiftRight1~5_combout\))) # (!\SW[15]~input_o\ & (\SeqShiftUnit|ShiftRight1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|ShiftRight1~3_combout\,
	datab => \SeqShiftUnit|ShiftRight1~5_combout\,
	datad => \SW[15]~input_o\,
	combout => \SeqShiftUnit|ShiftRight1~6_combout\);

-- Location: LCCOMB_X109_Y16_N12
\SeqShiftUnit|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftRight0~2_combout\ = (\SW[16]~input_o\ & (\SW[7]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\SW[7]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \SeqShiftUnit|ShiftRight0~2_combout\);

-- Location: LCCOMB_X109_Y16_N0
\SeqShiftUnit|ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftLeft0~1_combout\ = (\SW[15]~input_o\ & (!\SW[16]~input_o\ & ((\SW[1]~input_o\)))) # (!\SW[15]~input_o\ & (((\SeqShiftUnit|RotateLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SeqShiftUnit|RotateLeft0~9_combout\,
	datad => \SW[1]~input_o\,
	combout => \SeqShiftUnit|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X109_Y16_N10
\SeqShiftUnit|ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftRight1~4_combout\ = (!\SW[16]~input_o\ & ((\SW[15]~input_o\ & (\SW[7]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \SeqShiftUnit|ShiftRight1~4_combout\);

-- Location: LCCOMB_X110_Y18_N28
\SeqShiftUnit|RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~8_combout\ = (\SW[16]~input_o\ & ((\SW[15]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[15]~input_o\ & (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \SeqShiftUnit|RotateRight0~8_combout\);

-- Location: LCCOMB_X110_Y18_N22
\SeqShiftUnit|RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~9_combout\ = (\SeqShiftUnit|ShiftRight1~4_combout\) # (\SeqShiftUnit|RotateRight0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|ShiftRight1~4_combout\,
	datad => \SeqShiftUnit|RotateRight0~8_combout\,
	combout => \SeqShiftUnit|RotateRight0~9_combout\);

-- Location: LCCOMB_X110_Y18_N0
\SeqShiftUnit|dataOut[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[2]~13_combout\ = (\SeqShiftUnit|dataOut[1]~8_combout\ & (\SeqShiftUnit|ShiftLeft0~1_combout\ & ((\SeqShiftUnit|dataOut[1]~7_combout\)))) # (!\SeqShiftUnit|dataOut[1]~8_combout\ & (((\SeqShiftUnit|RotateRight0~9_combout\) # 
-- (!\SeqShiftUnit|dataOut[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[1]~8_combout\,
	datab => \SeqShiftUnit|ShiftLeft0~1_combout\,
	datac => \SeqShiftUnit|RotateRight0~9_combout\,
	datad => \SeqShiftUnit|dataOut[1]~7_combout\,
	combout => \SeqShiftUnit|dataOut[2]~13_combout\);

-- Location: LCCOMB_X110_Y18_N18
\SeqShiftUnit|dataOut[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[2]~14_combout\ = (\SeqShiftUnit|dataOut[2]~13_combout\ & ((\SeqShiftUnit|ShiftRight0~2_combout\) # ((!\SeqShiftUnit|dataOut[1]~6_combout\)))) # (!\SeqShiftUnit|dataOut[2]~13_combout\ & (((\SeqShiftUnit|ShiftRight1~4_combout\ & 
-- \SeqShiftUnit|dataOut[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|ShiftRight0~2_combout\,
	datab => \SeqShiftUnit|dataOut[2]~13_combout\,
	datac => \SeqShiftUnit|ShiftRight1~4_combout\,
	datad => \SeqShiftUnit|dataOut[1]~6_combout\,
	combout => \SeqShiftUnit|dataOut[2]~14_combout\);

-- Location: LCCOMB_X109_Y18_N0
\SeqShiftUnit|dataOut[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[2]~16_combout\ = (\SeqShiftUnit|dataOut[2]~15_combout\ & ((\SeqShiftUnit|dataOut[0]~1_combout\) # ((\SeqShiftUnit|ShiftRight1~6_combout\)))) # (!\SeqShiftUnit|dataOut[2]~15_combout\ & (!\SeqShiftUnit|dataOut[0]~1_combout\ & 
-- ((\SeqShiftUnit|dataOut[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[2]~15_combout\,
	datab => \SeqShiftUnit|dataOut[0]~1_combout\,
	datac => \SeqShiftUnit|ShiftRight1~6_combout\,
	datad => \SeqShiftUnit|dataOut[2]~14_combout\,
	combout => \SeqShiftUnit|dataOut[2]~16_combout\);

-- Location: LCCOMB_X109_Y19_N10
\SeqShiftUnit|RotateRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~10_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\SeqShiftUnit|ShiftRight1~0_combout\)) # (!\SW[15]~input_o\ & ((\SeqShiftUnit|ShiftRight1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|ShiftRight1~0_combout\,
	datab => \SW[15]~input_o\,
	datac => \SeqShiftUnit|ShiftRight1~5_combout\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|RotateRight0~10_combout\);

-- Location: LCCOMB_X109_Y17_N20
\SeqShiftUnit|RotateRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~11_combout\ = (!\SW[15]~input_o\ & ((\SW[16]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[16]~input_o\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[16]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \SeqShiftUnit|RotateRight0~11_combout\);

-- Location: LCCOMB_X110_Y17_N14
\SeqShiftUnit|RotateRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~12_combout\ = (\SeqShiftUnit|RotateRight0~11_combout\) # ((\SW[15]~input_o\ & \SeqShiftUnit|RotateRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SeqShiftUnit|RotateRight0~11_combout\,
	datac => \SW[15]~input_o\,
	datad => \SeqShiftUnit|RotateRight0~1_combout\,
	combout => \SeqShiftUnit|RotateRight0~12_combout\);

-- Location: LCCOMB_X109_Y19_N20
\SeqShiftUnit|RotateRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~13_combout\ = (\SeqShiftUnit|RotateRight0~10_combout\) # ((\SeqShiftUnit|RotateRight0~12_combout\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateRight0~10_combout\,
	datac => \SeqShiftUnit|RotateRight0~12_combout\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|RotateRight0~13_combout\);

-- Location: LCCOMB_X109_Y16_N2
\SeqShiftUnit|RotateLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~14_combout\ = (\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\SeqShiftUnit|RotateLeft0~10_combout\))) # (!\SW[15]~input_o\ & (\SeqShiftUnit|RotateLeft0~1_combout\)))) # (!\SW[17]~input_o\ & (((\SW[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SeqShiftUnit|RotateLeft0~1_combout\,
	datac => \SeqShiftUnit|RotateLeft0~10_combout\,
	datad => \SW[15]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~14_combout\);

-- Location: LCCOMB_X109_Y16_N20
\SeqShiftUnit|RotateLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~15_combout\ = (\SeqShiftUnit|RotateLeft0~14_combout\ & ((\SeqShiftUnit|RotateLeft0~9_combout\) # ((\SW[17]~input_o\)))) # (!\SeqShiftUnit|RotateLeft0~14_combout\ & (((\SeqShiftUnit|RotateLeft0~3_combout\ & !\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateLeft0~9_combout\,
	datab => \SeqShiftUnit|RotateLeft0~14_combout\,
	datac => \SeqShiftUnit|RotateLeft0~3_combout\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~15_combout\);

-- Location: LCCOMB_X109_Y19_N6
\SeqShiftUnit|dataOut[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[3]~17_combout\ = (\KEY[1]~input_o\ & ((\SeqShiftUnit|RotateRight0~13_combout\) # ((\KEY[0]~input_o\)))) # (!\KEY[1]~input_o\ & (((\SeqShiftUnit|RotateLeft0~15_combout\ & !\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \SeqShiftUnit|RotateRight0~13_combout\,
	datac => \SeqShiftUnit|RotateLeft0~15_combout\,
	datad => \KEY[0]~input_o\,
	combout => \SeqShiftUnit|dataOut[3]~17_combout\);

-- Location: LCCOMB_X109_Y16_N24
\SeqShiftUnit|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftLeft0~2_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\SeqShiftUnit|RotateLeft0~9_combout\)) # (!\SW[15]~input_o\ & ((\SeqShiftUnit|RotateLeft0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateLeft0~9_combout\,
	datab => \SW[15]~input_o\,
	datac => \SeqShiftUnit|RotateLeft0~3_combout\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X109_Y19_N0
\SeqShiftUnit|dataOut~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut~18_combout\ = ((!\SW[15]~input_o\ & !\SW[16]~input_o\)) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \SeqShiftUnit|dataOut~18_combout\);

-- Location: LCCOMB_X109_Y19_N26
\SeqShiftUnit|dataOut~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut~19_combout\ = (\SeqShiftUnit|RotateRight0~10_combout\) # ((\SeqShiftUnit|dataOut~18_combout\ & (\SW[7]~input_o\ & \SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateRight0~10_combout\,
	datab => \SeqShiftUnit|dataOut~18_combout\,
	datac => \SW[7]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|dataOut~19_combout\);

-- Location: LCCOMB_X109_Y19_N4
\SeqShiftUnit|dataOut[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[3]~20_combout\ = (\SeqShiftUnit|dataOut[3]~17_combout\ & (((\SeqShiftUnit|dataOut~19_combout\) # (!\KEY[0]~input_o\)))) # (!\SeqShiftUnit|dataOut[3]~17_combout\ & (\SeqShiftUnit|ShiftLeft0~2_combout\ & ((\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[3]~17_combout\,
	datab => \SeqShiftUnit|ShiftLeft0~2_combout\,
	datac => \SeqShiftUnit|dataOut~19_combout\,
	datad => \KEY[0]~input_o\,
	combout => \SeqShiftUnit|dataOut[3]~20_combout\);

-- Location: LCCOMB_X110_Y17_N16
\SeqShiftUnit|dataOut~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut~22_combout\ = (\SW[17]~input_o\ & (((\SW[7]~input_o\ & !\KEY[2]~input_o\)))) # (!\SW[17]~input_o\ & (\SeqShiftUnit|RotateRight0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateRight0~4_combout\,
	datab => \SW[7]~input_o\,
	datac => \KEY[2]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|dataOut~22_combout\);

-- Location: LCCOMB_X110_Y17_N26
\SeqShiftUnit|RotateRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateRight0~14_combout\ = (\SW[17]~input_o\ & ((\SeqShiftUnit|RotateRight0~2_combout\))) # (!\SW[17]~input_o\ & (\SeqShiftUnit|RotateRight0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateRight0~4_combout\,
	datab => \SeqShiftUnit|RotateRight0~2_combout\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|RotateRight0~14_combout\);

-- Location: LCCOMB_X109_Y17_N14
\SeqShiftUnit|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftLeft0~3_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\SeqShiftUnit|RotateLeft0~3_combout\))) # (!\SW[15]~input_o\ & (\SeqShiftUnit|RotateLeft0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SeqShiftUnit|RotateLeft0~4_combout\,
	datac => \SeqShiftUnit|RotateLeft0~3_combout\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X110_Y17_N20
\SeqShiftUnit|RotateLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|RotateLeft0~16_combout\ = (\SeqShiftUnit|ShiftLeft0~3_combout\) # ((\SeqShiftUnit|RotateLeft0~2_combout\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|ShiftLeft0~3_combout\,
	datab => \SeqShiftUnit|RotateLeft0~2_combout\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|RotateLeft0~16_combout\);

-- Location: LCCOMB_X110_Y17_N22
\SeqShiftUnit|dataOut[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[4]~21_combout\ = (\KEY[1]~input_o\ & ((\SeqShiftUnit|RotateRight0~14_combout\) # ((\KEY[0]~input_o\)))) # (!\KEY[1]~input_o\ & (((\SeqShiftUnit|RotateLeft0~16_combout\ & !\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateRight0~14_combout\,
	datab => \SeqShiftUnit|RotateLeft0~16_combout\,
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \SeqShiftUnit|dataOut[4]~21_combout\);

-- Location: LCCOMB_X110_Y17_N24
\SeqShiftUnit|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|ShiftLeft0~4_combout\ = (\SeqShiftUnit|ShiftLeft0~3_combout\) # ((\SeqShiftUnit|ShiftRight0~0_combout\ & (\SW[0]~input_o\ & \SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|ShiftLeft0~3_combout\,
	datab => \SeqShiftUnit|ShiftRight0~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X110_Y17_N2
\SeqShiftUnit|dataOut[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[4]~23_combout\ = (\KEY[0]~input_o\ & ((\SeqShiftUnit|dataOut[4]~21_combout\ & (\SeqShiftUnit|dataOut~22_combout\)) # (!\SeqShiftUnit|dataOut[4]~21_combout\ & ((\SeqShiftUnit|ShiftLeft0~4_combout\))))) # (!\KEY[0]~input_o\ & 
-- (((\SeqShiftUnit|dataOut[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SeqShiftUnit|dataOut~22_combout\,
	datac => \SeqShiftUnit|dataOut[4]~21_combout\,
	datad => \SeqShiftUnit|ShiftLeft0~4_combout\,
	combout => \SeqShiftUnit|dataOut[4]~23_combout\);

-- Location: LCCOMB_X109_Y19_N30
\SeqShiftUnit|dataOut[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[6]~29_combout\ = (\KEY[0]~input_o\) # ((\SW[17]~input_o\ & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \SeqShiftUnit|dataOut[6]~29_combout\);

-- Location: LCCOMB_X109_Y18_N10
\SeqShiftUnit|dataOut[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[6]~30_combout\ = (\KEY[1]~input_o\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	combout => \SeqShiftUnit|dataOut[6]~30_combout\);

-- Location: LCCOMB_X109_Y18_N28
\SeqShiftUnit|dataOut[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[5]~31_combout\ = (\SeqShiftUnit|dataOut[6]~29_combout\ & (((\SeqShiftUnit|dataOut[6]~30_combout\)))) # (!\SeqShiftUnit|dataOut[6]~29_combout\ & ((\SeqShiftUnit|dataOut[6]~30_combout\ & ((\SeqShiftUnit|RotateRight0~6_combout\))) # 
-- (!\SeqShiftUnit|dataOut[6]~30_combout\ & (\SeqShiftUnit|RotateLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[6]~29_combout\,
	datab => \SeqShiftUnit|RotateLeft0~8_combout\,
	datac => \SeqShiftUnit|RotateRight0~6_combout\,
	datad => \SeqShiftUnit|dataOut[6]~30_combout\,
	combout => \SeqShiftUnit|dataOut[5]~31_combout\);

-- Location: LCCOMB_X110_Y18_N4
\SeqShiftUnit|dataOut[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[6]~24_combout\ = (\KEY[2]~input_o\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \KEY[1]~input_o\,
	combout => \SeqShiftUnit|dataOut[6]~24_combout\);

-- Location: LCCOMB_X110_Y18_N6
\SeqShiftUnit|dataOut[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[6]~25_combout\ = ((\KEY[2]~input_o\ & !\SW[17]~input_o\)) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \KEY[1]~input_o\,
	combout => \SeqShiftUnit|dataOut[6]~25_combout\);

-- Location: LCCOMB_X110_Y17_N4
\SeqShiftUnit|dataOut[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[6]~26_combout\ = (\KEY[1]~input_o\ & ((\KEY[2]~input_o\) # (\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|dataOut[6]~26_combout\);

-- Location: LCCOMB_X110_Y18_N16
\SeqShiftUnit|dataOut[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[5]~27_combout\ = (\SeqShiftUnit|dataOut[6]~25_combout\ & ((\SeqShiftUnit|dataOut[6]~26_combout\ & ((\SeqShiftUnit|ShiftRight1~2_combout\))) # (!\SeqShiftUnit|dataOut[6]~26_combout\ & (\SeqShiftUnit|ShiftLeft0~0_combout\)))) # 
-- (!\SeqShiftUnit|dataOut[6]~25_combout\ & (((!\SeqShiftUnit|dataOut[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[6]~25_combout\,
	datab => \SeqShiftUnit|ShiftLeft0~0_combout\,
	datac => \SeqShiftUnit|dataOut[6]~26_combout\,
	datad => \SeqShiftUnit|ShiftRight1~2_combout\,
	combout => \SeqShiftUnit|dataOut[5]~27_combout\);

-- Location: LCCOMB_X110_Y18_N2
\SeqShiftUnit|dataOut[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[5]~28_combout\ = (\SeqShiftUnit|dataOut[6]~24_combout\ & (((\SeqShiftUnit|dataOut[5]~27_combout\)))) # (!\SeqShiftUnit|dataOut[6]~24_combout\ & ((\SeqShiftUnit|dataOut[5]~27_combout\ & (\SeqShiftUnit|ShiftRight0~1_combout\)) # 
-- (!\SeqShiftUnit|dataOut[5]~27_combout\ & ((\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|ShiftRight0~1_combout\,
	datab => \SeqShiftUnit|dataOut[6]~24_combout\,
	datac => \SW[7]~input_o\,
	datad => \SeqShiftUnit|dataOut[5]~27_combout\,
	combout => \SeqShiftUnit|dataOut[5]~28_combout\);

-- Location: LCCOMB_X109_Y18_N6
\SeqShiftUnit|dataOut[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[5]~32_combout\ = (\SeqShiftUnit|dataOut[5]~31_combout\ & ((\SeqShiftUnit|RotateRight0~7_combout\) # ((!\SeqShiftUnit|dataOut[6]~29_combout\)))) # (!\SeqShiftUnit|dataOut[5]~31_combout\ & (((\SeqShiftUnit|dataOut[6]~29_combout\ & 
-- \SeqShiftUnit|dataOut[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateRight0~7_combout\,
	datab => \SeqShiftUnit|dataOut[5]~31_combout\,
	datac => \SeqShiftUnit|dataOut[6]~29_combout\,
	datad => \SeqShiftUnit|dataOut[5]~28_combout\,
	combout => \SeqShiftUnit|dataOut[5]~32_combout\);

-- Location: LCCOMB_X109_Y18_N24
\SeqShiftUnit|dataOut[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[5]~33_combout\ = (\KEY[1]~input_o\ & (\SeqShiftUnit|dataOut[5]~32_combout\)) # (!\KEY[1]~input_o\ & ((\SW[17]~input_o\ & (\SeqShiftUnit|dataOut[5]~32_combout\)) # (!\SW[17]~input_o\ & ((\SeqShiftUnit|RotateLeft0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[5]~32_combout\,
	datab => \SeqShiftUnit|RotateLeft0~6_combout\,
	datac => \KEY[1]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|dataOut[5]~33_combout\);

-- Location: LCCOMB_X110_Y18_N12
\SeqShiftUnit|dataOut[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[6]~34_combout\ = (\SeqShiftUnit|dataOut[6]~26_combout\ & (((\SeqShiftUnit|ShiftRight1~4_combout\ & \SeqShiftUnit|dataOut[6]~25_combout\)))) # (!\SeqShiftUnit|dataOut[6]~26_combout\ & ((\SeqShiftUnit|ShiftLeft0~1_combout\) # 
-- ((!\SeqShiftUnit|dataOut[6]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[6]~26_combout\,
	datab => \SeqShiftUnit|ShiftLeft0~1_combout\,
	datac => \SeqShiftUnit|ShiftRight1~4_combout\,
	datad => \SeqShiftUnit|dataOut[6]~25_combout\,
	combout => \SeqShiftUnit|dataOut[6]~34_combout\);

-- Location: LCCOMB_X110_Y18_N14
\SeqShiftUnit|dataOut[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[6]~35_combout\ = (\SeqShiftUnit|dataOut[6]~24_combout\ & (((\SeqShiftUnit|dataOut[6]~34_combout\)))) # (!\SeqShiftUnit|dataOut[6]~24_combout\ & ((\SeqShiftUnit|dataOut[6]~34_combout\ & (\SeqShiftUnit|ShiftRight0~2_combout\)) # 
-- (!\SeqShiftUnit|dataOut[6]~34_combout\ & ((\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|ShiftRight0~2_combout\,
	datab => \SeqShiftUnit|dataOut[6]~24_combout\,
	datac => \SW[7]~input_o\,
	datad => \SeqShiftUnit|dataOut[6]~34_combout\,
	combout => \SeqShiftUnit|dataOut[6]~35_combout\);

-- Location: LCCOMB_X109_Y18_N2
\SeqShiftUnit|dataOut[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[6]~36_combout\ = (\SeqShiftUnit|dataOut[6]~29_combout\ & (((\SeqShiftUnit|dataOut[6]~35_combout\) # (\SeqShiftUnit|dataOut[6]~30_combout\)))) # (!\SeqShiftUnit|dataOut[6]~29_combout\ & (\SeqShiftUnit|RotateLeft0~13_combout\ & 
-- ((!\SeqShiftUnit|dataOut[6]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateLeft0~13_combout\,
	datab => \SeqShiftUnit|dataOut[6]~35_combout\,
	datac => \SeqShiftUnit|dataOut[6]~29_combout\,
	datad => \SeqShiftUnit|dataOut[6]~30_combout\,
	combout => \SeqShiftUnit|dataOut[6]~36_combout\);

-- Location: LCCOMB_X109_Y18_N20
\SeqShiftUnit|dataOut[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[6]~37_combout\ = (\SeqShiftUnit|dataOut[6]~30_combout\ & ((\SeqShiftUnit|dataOut[6]~36_combout\ & (\SeqShiftUnit|ShiftRight1~6_combout\)) # (!\SeqShiftUnit|dataOut[6]~36_combout\ & ((\SeqShiftUnit|RotateRight0~9_combout\))))) # 
-- (!\SeqShiftUnit|dataOut[6]~30_combout\ & (\SeqShiftUnit|dataOut[6]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[6]~30_combout\,
	datab => \SeqShiftUnit|dataOut[6]~36_combout\,
	datac => \SeqShiftUnit|ShiftRight1~6_combout\,
	datad => \SeqShiftUnit|RotateRight0~9_combout\,
	combout => \SeqShiftUnit|dataOut[6]~37_combout\);

-- Location: LCCOMB_X109_Y18_N22
\SeqShiftUnit|dataOut[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[6]~38_combout\ = (\KEY[1]~input_o\ & (((\SeqShiftUnit|dataOut[6]~37_combout\)))) # (!\KEY[1]~input_o\ & ((\SW[17]~input_o\ & ((\SeqShiftUnit|dataOut[6]~37_combout\))) # (!\SW[17]~input_o\ & (\SeqShiftUnit|RotateLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateLeft0~11_combout\,
	datab => \SeqShiftUnit|dataOut[6]~37_combout\,
	datac => \KEY[1]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|dataOut[6]~38_combout\);

-- Location: LCCOMB_X109_Y19_N12
\SeqShiftUnit|dataOut[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[7]~41_combout\ = ((!\SW[17]~input_o\ & (!\SW[15]~input_o\ & !\SW[16]~input_o\))) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \KEY[2]~input_o\,
	combout => \SeqShiftUnit|dataOut[7]~41_combout\);

-- Location: LCCOMB_X109_Y19_N24
\SeqShiftUnit|dataOut[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[7]~39_combout\ = (\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\SeqShiftUnit|ShiftRight1~0_combout\)) # (!\SW[15]~input_o\ & ((\SeqShiftUnit|ShiftRight1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|ShiftRight1~0_combout\,
	datab => \SW[15]~input_o\,
	datac => \SeqShiftUnit|ShiftRight1~5_combout\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|dataOut[7]~39_combout\);

-- Location: LCCOMB_X109_Y19_N18
\SeqShiftUnit|dataOut[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[7]~40_combout\ = (!\KEY[0]~input_o\ & ((\SeqShiftUnit|dataOut[7]~39_combout\) # ((!\SW[17]~input_o\ & \SeqShiftUnit|RotateRight0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SeqShiftUnit|dataOut[7]~39_combout\,
	datac => \SeqShiftUnit|RotateRight0~12_combout\,
	datad => \KEY[0]~input_o\,
	combout => \SeqShiftUnit|dataOut[7]~40_combout\);

-- Location: LCCOMB_X109_Y19_N22
\SeqShiftUnit|dataOut[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[7]~42_combout\ = (\SeqShiftUnit|dataOut[7]~40_combout\) # ((\SeqShiftUnit|dataOut[7]~41_combout\ & (\SW[7]~input_o\ & \KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[7]~41_combout\,
	datab => \SeqShiftUnit|dataOut[7]~40_combout\,
	datac => \SW[7]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \SeqShiftUnit|dataOut[7]~42_combout\);

-- Location: LCCOMB_X109_Y19_N8
\SeqShiftUnit|dataOut[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[7]~44_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\SeqShiftUnit|RotateLeft0~10_combout\))) # (!\SW[15]~input_o\ & (\SeqShiftUnit|RotateLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateLeft0~1_combout\,
	datab => \SW[15]~input_o\,
	datac => \SeqShiftUnit|RotateLeft0~10_combout\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|dataOut[7]~44_combout\);

-- Location: LCCOMB_X109_Y16_N6
\SeqShiftUnit|dataOut[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[7]~43_combout\ = (\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\SeqShiftUnit|RotateLeft0~9_combout\)) # (!\SW[15]~input_o\ & ((\SeqShiftUnit|RotateLeft0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|RotateLeft0~9_combout\,
	datab => \SW[15]~input_o\,
	datac => \SeqShiftUnit|RotateLeft0~3_combout\,
	datad => \SW[17]~input_o\,
	combout => \SeqShiftUnit|dataOut[7]~43_combout\);

-- Location: LCCOMB_X109_Y19_N2
\SeqShiftUnit|dataOut[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SeqShiftUnit|dataOut[7]~45_combout\ = (\KEY[1]~input_o\ & (\SeqShiftUnit|dataOut[7]~42_combout\)) # (!\KEY[1]~input_o\ & (((\SeqShiftUnit|dataOut[7]~44_combout\) # (\SeqShiftUnit|dataOut[7]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SeqShiftUnit|dataOut[7]~42_combout\,
	datab => \SeqShiftUnit|dataOut[7]~44_combout\,
	datac => \SeqShiftUnit|dataOut[7]~43_combout\,
	datad => \KEY[1]~input_o\,
	combout => \SeqShiftUnit|dataOut[7]~45_combout\);

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

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


