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

-- DATE "02/25/2023 19:53:42"

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

ENTITY 	PEnc4_2 IS
    PORT (
	decodedln : IN std_logic_vector(3 DOWNTO 0);
	encodedOut : BUFFER std_logic_vector(1 DOWNTO 0);
	validOut : BUFFER std_logic
	);
END PEnc4_2;

-- Design Ports Information
-- encodedOut[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedOut[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOut	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedln[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedln[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedln[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodedln[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \encodedOut[0]~output_o\ : std_logic;
SIGNAL \encodedOut[1]~output_o\ : std_logic;
SIGNAL \validOut~output_o\ : std_logic;
SIGNAL \decodedln[3]~input_o\ : std_logic;
SIGNAL \decodedln[1]~input_o\ : std_logic;
SIGNAL \decodedln[2]~input_o\ : std_logic;
SIGNAL \encodedOut~0_combout\ : std_logic;
SIGNAL \decodedln[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \encodedOut[0]$latch~combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \encodedOut[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_decodedln <= decodedln;
encodedOut <= ww_encodedOut;
validOut <= ww_validOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal0~0_combout\);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y73_N2
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

-- Location: IOOBUF_X52_Y73_N23
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

-- Location: IOOBUF_X52_Y73_N2
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

-- Location: IOIBUF_X52_Y73_N8
\decodedln[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedln(3),
	o => \decodedln[3]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\decodedln[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedln(1),
	o => \decodedln[1]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\decodedln[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedln(2),
	o => \decodedln[2]~input_o\);

-- Location: LCCOMB_X55_Y72_N18
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

-- Location: IOIBUF_X54_Y73_N8
\decodedln[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodedln(0),
	o => \decodedln[0]~input_o\);

-- Location: LCCOMB_X55_Y72_N30
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\decodedln[3]~input_o\ & (!\decodedln[1]~input_o\ & (!\decodedln[2]~input_o\ & !\decodedln[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedln[3]~input_o\,
	datab => \decodedln[1]~input_o\,
	datac => \decodedln[2]~input_o\,
	datad => \decodedln[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: CLKCTRL_G14
\Equal0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X55_Y72_N26
\encodedOut[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut[0]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\encodedOut[0]$latch~combout\))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (\encodedOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \encodedOut~0_combout\,
	datac => \encodedOut[0]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \encodedOut[0]$latch~combout\);

-- Location: LCCOMB_X55_Y72_N20
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\decodedln[3]~input_o\ & !\decodedln[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodedln[3]~input_o\,
	datad => \decodedln[2]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X55_Y72_N12
\encodedOut[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut[1]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\encodedOut[1]$latch~combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encodedOut[1]$latch~combout\,
	datab => \Equal0~1_combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \encodedOut[1]$latch~combout\);

ww_encodedOut(0) <= \encodedOut[0]~output_o\;

ww_encodedOut(1) <= \encodedOut[1]~output_o\;

ww_validOut <= \validOut~output_o\;
END structure;


