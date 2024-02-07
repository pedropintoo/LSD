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

-- DATE "03/14/2023 17:46:20"

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

ENTITY 	TimerN_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0)
	);
END TimerN_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerN_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \TimerN|s_count[0]~36_combout\ : std_logic;
SIGNAL \TimerN|s_count[26]~90\ : std_logic;
SIGNAL \TimerN|s_count[27]~91_combout\ : std_logic;
SIGNAL \TimerN|Equal0~5_combout\ : std_logic;
SIGNAL \TimerN|Equal0~4_combout\ : std_logic;
SIGNAL \TimerN|s_count[27]~92\ : std_logic;
SIGNAL \TimerN|s_count[28]~93_combout\ : std_logic;
SIGNAL \TimerN|s_count[28]~94\ : std_logic;
SIGNAL \TimerN|s_count[29]~95_combout\ : std_logic;
SIGNAL \TimerN|s_count[29]~96\ : std_logic;
SIGNAL \TimerN|s_count[30]~97_combout\ : std_logic;
SIGNAL \TimerN|s_count[30]~98\ : std_logic;
SIGNAL \TimerN|s_count[31]~99_combout\ : std_logic;
SIGNAL \TimerN|Equal0~0_combout\ : std_logic;
SIGNAL \TimerN|Equal0~1_combout\ : std_logic;
SIGNAL \TimerN|Equal0~2_combout\ : std_logic;
SIGNAL \TimerN|Equal0~3_combout\ : std_logic;
SIGNAL \TimerN|Equal0~6_combout\ : std_logic;
SIGNAL \TimerN|s_count[1]~54_combout\ : std_logic;
SIGNAL \TimerN|s_count[0]~37\ : std_logic;
SIGNAL \TimerN|s_count[1]~38_combout\ : std_logic;
SIGNAL \TimerN|s_count[1]~39\ : std_logic;
SIGNAL \TimerN|s_count[2]~40_combout\ : std_logic;
SIGNAL \TimerN|s_count[2]~41\ : std_logic;
SIGNAL \TimerN|s_count[3]~42_combout\ : std_logic;
SIGNAL \TimerN|s_count[3]~43\ : std_logic;
SIGNAL \TimerN|s_count[4]~44_combout\ : std_logic;
SIGNAL \TimerN|s_count[4]~45\ : std_logic;
SIGNAL \TimerN|s_count[5]~46_combout\ : std_logic;
SIGNAL \TimerN|s_count[5]~47\ : std_logic;
SIGNAL \TimerN|s_count[6]~48_combout\ : std_logic;
SIGNAL \TimerN|s_count[6]~49\ : std_logic;
SIGNAL \TimerN|s_count[7]~50_combout\ : std_logic;
SIGNAL \TimerN|s_count[7]~51\ : std_logic;
SIGNAL \TimerN|s_count[8]~52_combout\ : std_logic;
SIGNAL \TimerN|s_count[8]~53\ : std_logic;
SIGNAL \TimerN|s_count[9]~55_combout\ : std_logic;
SIGNAL \TimerN|s_count[9]~56\ : std_logic;
SIGNAL \TimerN|s_count[10]~57_combout\ : std_logic;
SIGNAL \TimerN|s_count[10]~58\ : std_logic;
SIGNAL \TimerN|s_count[11]~59_combout\ : std_logic;
SIGNAL \TimerN|s_count[11]~60\ : std_logic;
SIGNAL \TimerN|s_count[12]~61_combout\ : std_logic;
SIGNAL \TimerN|s_count[12]~62\ : std_logic;
SIGNAL \TimerN|s_count[13]~63_combout\ : std_logic;
SIGNAL \TimerN|s_count[13]~64\ : std_logic;
SIGNAL \TimerN|s_count[14]~65_combout\ : std_logic;
SIGNAL \TimerN|s_count[14]~66\ : std_logic;
SIGNAL \TimerN|s_count[15]~67_combout\ : std_logic;
SIGNAL \TimerN|s_count[15]~68\ : std_logic;
SIGNAL \TimerN|s_count[16]~69_combout\ : std_logic;
SIGNAL \TimerN|s_count[16]~70\ : std_logic;
SIGNAL \TimerN|s_count[17]~71_combout\ : std_logic;
SIGNAL \TimerN|s_count[17]~72\ : std_logic;
SIGNAL \TimerN|s_count[18]~73_combout\ : std_logic;
SIGNAL \TimerN|s_count[18]~74\ : std_logic;
SIGNAL \TimerN|s_count[19]~75_combout\ : std_logic;
SIGNAL \TimerN|s_count[19]~76\ : std_logic;
SIGNAL \TimerN|s_count[20]~77_combout\ : std_logic;
SIGNAL \TimerN|s_count[20]~78\ : std_logic;
SIGNAL \TimerN|s_count[21]~79_combout\ : std_logic;
SIGNAL \TimerN|s_count[21]~80\ : std_logic;
SIGNAL \TimerN|s_count[22]~81_combout\ : std_logic;
SIGNAL \TimerN|s_count[22]~82\ : std_logic;
SIGNAL \TimerN|s_count[23]~83_combout\ : std_logic;
SIGNAL \TimerN|s_count[23]~84\ : std_logic;
SIGNAL \TimerN|s_count[24]~85_combout\ : std_logic;
SIGNAL \TimerN|s_count[24]~86\ : std_logic;
SIGNAL \TimerN|s_count[25]~87_combout\ : std_logic;
SIGNAL \TimerN|s_count[25]~88\ : std_logic;
SIGNAL \TimerN|s_count[26]~89_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \TimerN|s_count[1]~32_combout\ : std_logic;
SIGNAL \TimerN|s_count[1]~34_combout\ : std_logic;
SIGNAL \TimerN|s_count[1]~33_combout\ : std_logic;
SIGNAL \TimerN|s_count[1]~35_combout\ : std_logic;
SIGNAL \TimerN|timerOut~0_combout\ : std_logic;
SIGNAL \TimerN|timerOut~1_combout\ : std_logic;
SIGNAL \TimerN|timerOut~2_combout\ : std_logic;
SIGNAL \TimerN|timerOut~3_combout\ : std_logic;
SIGNAL \TimerN|timerOut~4_combout\ : std_logic;
SIGNAL \TimerN|timerOut~5_combout\ : std_logic;
SIGNAL \TimerN|timerOut~q\ : std_logic;
SIGNAL \TimerN|s_count\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
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
	i => \TimerN|timerOut~q\,
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

-- Location: LCCOMB_X46_Y39_N0
\TimerN|s_count[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[0]~36_combout\ = \TimerN|s_count\(0) $ (VCC)
-- \TimerN|s_count[0]~37\ = CARRY(\TimerN|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(0),
	datad => VCC,
	combout => \TimerN|s_count[0]~36_combout\,
	cout => \TimerN|s_count[0]~37\);

-- Location: LCCOMB_X46_Y38_N20
\TimerN|s_count[26]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[26]~89_combout\ = (\TimerN|s_count\(26) & (\TimerN|s_count[25]~88\ $ (GND))) # (!\TimerN|s_count\(26) & (!\TimerN|s_count[25]~88\ & VCC))
-- \TimerN|s_count[26]~90\ = CARRY((\TimerN|s_count\(26) & !\TimerN|s_count[25]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(26),
	datad => VCC,
	cin => \TimerN|s_count[25]~88\,
	combout => \TimerN|s_count[26]~89_combout\,
	cout => \TimerN|s_count[26]~90\);

-- Location: LCCOMB_X46_Y38_N22
\TimerN|s_count[27]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[27]~91_combout\ = (\TimerN|s_count\(27) & (!\TimerN|s_count[26]~90\)) # (!\TimerN|s_count\(27) & ((\TimerN|s_count[26]~90\) # (GND)))
-- \TimerN|s_count[27]~92\ = CARRY((!\TimerN|s_count[26]~90\) # (!\TimerN|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(27),
	datad => VCC,
	cin => \TimerN|s_count[26]~90\,
	combout => \TimerN|s_count[27]~91_combout\,
	cout => \TimerN|s_count[27]~92\);

-- Location: FF_X46_Y38_N23
\TimerN|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[27]~91_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(27));

-- Location: LCCOMB_X45_Y39_N22
\TimerN|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|Equal0~5_combout\ = (!\TimerN|s_count\(25) & (!\TimerN|s_count\(17) & (!\TimerN|s_count\(19) & !\TimerN|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(25),
	datab => \TimerN|s_count\(17),
	datac => \TimerN|s_count\(19),
	datad => \TimerN|s_count\(27),
	combout => \TimerN|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y39_N8
\TimerN|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|Equal0~4_combout\ = (!\TimerN|s_count\(10) & (!\TimerN|s_count\(11) & (!\TimerN|s_count\(12) & !\TimerN|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(10),
	datab => \TimerN|s_count\(11),
	datac => \TimerN|s_count\(12),
	datad => \TimerN|s_count\(9),
	combout => \TimerN|Equal0~4_combout\);

-- Location: LCCOMB_X46_Y38_N24
\TimerN|s_count[28]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[28]~93_combout\ = (\TimerN|s_count\(28) & (\TimerN|s_count[27]~92\ $ (GND))) # (!\TimerN|s_count\(28) & (!\TimerN|s_count[27]~92\ & VCC))
-- \TimerN|s_count[28]~94\ = CARRY((\TimerN|s_count\(28) & !\TimerN|s_count[27]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(28),
	datad => VCC,
	cin => \TimerN|s_count[27]~92\,
	combout => \TimerN|s_count[28]~93_combout\,
	cout => \TimerN|s_count[28]~94\);

-- Location: FF_X46_Y38_N25
\TimerN|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[28]~93_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(28));

-- Location: LCCOMB_X46_Y38_N26
\TimerN|s_count[29]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[29]~95_combout\ = (\TimerN|s_count\(29) & (!\TimerN|s_count[28]~94\)) # (!\TimerN|s_count\(29) & ((\TimerN|s_count[28]~94\) # (GND)))
-- \TimerN|s_count[29]~96\ = CARRY((!\TimerN|s_count[28]~94\) # (!\TimerN|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(29),
	datad => VCC,
	cin => \TimerN|s_count[28]~94\,
	combout => \TimerN|s_count[29]~95_combout\,
	cout => \TimerN|s_count[29]~96\);

-- Location: FF_X46_Y38_N27
\TimerN|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[29]~95_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(29));

-- Location: LCCOMB_X46_Y38_N28
\TimerN|s_count[30]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[30]~97_combout\ = (\TimerN|s_count\(30) & (\TimerN|s_count[29]~96\ $ (GND))) # (!\TimerN|s_count\(30) & (!\TimerN|s_count[29]~96\ & VCC))
-- \TimerN|s_count[30]~98\ = CARRY((\TimerN|s_count\(30) & !\TimerN|s_count[29]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(30),
	datad => VCC,
	cin => \TimerN|s_count[29]~96\,
	combout => \TimerN|s_count[30]~97_combout\,
	cout => \TimerN|s_count[30]~98\);

-- Location: FF_X46_Y38_N29
\TimerN|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[30]~97_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(30));

-- Location: LCCOMB_X46_Y38_N30
\TimerN|s_count[31]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[31]~99_combout\ = \TimerN|s_count\(31) $ (\TimerN|s_count[30]~98\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(31),
	cin => \TimerN|s_count[30]~98\,
	combout => \TimerN|s_count[31]~99_combout\);

-- Location: FF_X46_Y38_N31
\TimerN|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[31]~99_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(31));

-- Location: LCCOMB_X45_Y39_N4
\TimerN|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|Equal0~0_combout\ = (!\TimerN|s_count\(28) & (!\TimerN|s_count\(30) & (!\TimerN|s_count\(31) & !\TimerN|s_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(28),
	datab => \TimerN|s_count\(30),
	datac => \TimerN|s_count\(31),
	datad => \TimerN|s_count\(29),
	combout => \TimerN|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y39_N14
\TimerN|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|Equal0~1_combout\ = (!\TimerN|s_count\(2) & (!\TimerN|s_count\(0) & (!\TimerN|s_count\(3) & !\TimerN|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(2),
	datab => \TimerN|s_count\(0),
	datac => \TimerN|s_count\(3),
	datad => \TimerN|s_count\(1),
	combout => \TimerN|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y39_N28
\TimerN|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|Equal0~2_combout\ = (!\TimerN|s_count\(6) & !\TimerN|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TimerN|s_count\(6),
	datad => \TimerN|s_count\(7),
	combout => \TimerN|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y39_N10
\TimerN|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|Equal0~3_combout\ = (!\TimerN|s_count\(4) & (!\TimerN|s_count\(5) & (\TimerN|Equal0~1_combout\ & \TimerN|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(4),
	datab => \TimerN|s_count\(5),
	datac => \TimerN|Equal0~1_combout\,
	datad => \TimerN|Equal0~2_combout\,
	combout => \TimerN|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y39_N16
\TimerN|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|Equal0~6_combout\ = (\TimerN|Equal0~5_combout\ & (\TimerN|Equal0~4_combout\ & (\TimerN|Equal0~0_combout\ & \TimerN|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|Equal0~5_combout\,
	datab => \TimerN|Equal0~4_combout\,
	datac => \TimerN|Equal0~0_combout\,
	datad => \TimerN|Equal0~3_combout\,
	combout => \TimerN|Equal0~6_combout\);

-- Location: LCCOMB_X47_Y39_N28
\TimerN|s_count[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[1]~54_combout\ = (\SW[0]~input_o\) # ((\SW[1]~input_o\ & ((!\TimerN|Equal0~6_combout\) # (!\TimerN|s_count[1]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \TimerN|s_count[1]~35_combout\,
	datac => \SW[1]~input_o\,
	datad => \TimerN|Equal0~6_combout\,
	combout => \TimerN|s_count[1]~54_combout\);

-- Location: FF_X46_Y39_N1
\TimerN|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[0]~36_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(0));

-- Location: LCCOMB_X46_Y39_N2
\TimerN|s_count[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[1]~38_combout\ = (\TimerN|s_count\(1) & (!\TimerN|s_count[0]~37\)) # (!\TimerN|s_count\(1) & ((\TimerN|s_count[0]~37\) # (GND)))
-- \TimerN|s_count[1]~39\ = CARRY((!\TimerN|s_count[0]~37\) # (!\TimerN|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(1),
	datad => VCC,
	cin => \TimerN|s_count[0]~37\,
	combout => \TimerN|s_count[1]~38_combout\,
	cout => \TimerN|s_count[1]~39\);

-- Location: FF_X46_Y39_N3
\TimerN|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[1]~38_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(1));

-- Location: LCCOMB_X46_Y39_N4
\TimerN|s_count[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[2]~40_combout\ = (\TimerN|s_count\(2) & (\TimerN|s_count[1]~39\ $ (GND))) # (!\TimerN|s_count\(2) & (!\TimerN|s_count[1]~39\ & VCC))
-- \TimerN|s_count[2]~41\ = CARRY((\TimerN|s_count\(2) & !\TimerN|s_count[1]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(2),
	datad => VCC,
	cin => \TimerN|s_count[1]~39\,
	combout => \TimerN|s_count[2]~40_combout\,
	cout => \TimerN|s_count[2]~41\);

-- Location: FF_X46_Y39_N5
\TimerN|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[2]~40_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(2));

-- Location: LCCOMB_X46_Y39_N6
\TimerN|s_count[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[3]~42_combout\ = (\TimerN|s_count\(3) & (!\TimerN|s_count[2]~41\)) # (!\TimerN|s_count\(3) & ((\TimerN|s_count[2]~41\) # (GND)))
-- \TimerN|s_count[3]~43\ = CARRY((!\TimerN|s_count[2]~41\) # (!\TimerN|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(3),
	datad => VCC,
	cin => \TimerN|s_count[2]~41\,
	combout => \TimerN|s_count[3]~42_combout\,
	cout => \TimerN|s_count[3]~43\);

-- Location: FF_X46_Y39_N7
\TimerN|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[3]~42_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(3));

-- Location: LCCOMB_X46_Y39_N8
\TimerN|s_count[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[4]~44_combout\ = (\TimerN|s_count\(4) & (\TimerN|s_count[3]~43\ $ (GND))) # (!\TimerN|s_count\(4) & (!\TimerN|s_count[3]~43\ & VCC))
-- \TimerN|s_count[4]~45\ = CARRY((\TimerN|s_count\(4) & !\TimerN|s_count[3]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(4),
	datad => VCC,
	cin => \TimerN|s_count[3]~43\,
	combout => \TimerN|s_count[4]~44_combout\,
	cout => \TimerN|s_count[4]~45\);

-- Location: FF_X46_Y39_N9
\TimerN|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[4]~44_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(4));

-- Location: LCCOMB_X46_Y39_N10
\TimerN|s_count[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[5]~46_combout\ = (\TimerN|s_count\(5) & (!\TimerN|s_count[4]~45\)) # (!\TimerN|s_count\(5) & ((\TimerN|s_count[4]~45\) # (GND)))
-- \TimerN|s_count[5]~47\ = CARRY((!\TimerN|s_count[4]~45\) # (!\TimerN|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(5),
	datad => VCC,
	cin => \TimerN|s_count[4]~45\,
	combout => \TimerN|s_count[5]~46_combout\,
	cout => \TimerN|s_count[5]~47\);

-- Location: FF_X46_Y39_N11
\TimerN|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[5]~46_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(5));

-- Location: LCCOMB_X46_Y39_N12
\TimerN|s_count[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[6]~48_combout\ = (\TimerN|s_count\(6) & (\TimerN|s_count[5]~47\ $ (GND))) # (!\TimerN|s_count\(6) & (!\TimerN|s_count[5]~47\ & VCC))
-- \TimerN|s_count[6]~49\ = CARRY((\TimerN|s_count\(6) & !\TimerN|s_count[5]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(6),
	datad => VCC,
	cin => \TimerN|s_count[5]~47\,
	combout => \TimerN|s_count[6]~48_combout\,
	cout => \TimerN|s_count[6]~49\);

-- Location: FF_X46_Y39_N13
\TimerN|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[6]~48_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(6));

-- Location: LCCOMB_X46_Y39_N14
\TimerN|s_count[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[7]~50_combout\ = (\TimerN|s_count\(7) & (!\TimerN|s_count[6]~49\)) # (!\TimerN|s_count\(7) & ((\TimerN|s_count[6]~49\) # (GND)))
-- \TimerN|s_count[7]~51\ = CARRY((!\TimerN|s_count[6]~49\) # (!\TimerN|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(7),
	datad => VCC,
	cin => \TimerN|s_count[6]~49\,
	combout => \TimerN|s_count[7]~50_combout\,
	cout => \TimerN|s_count[7]~51\);

-- Location: FF_X46_Y39_N15
\TimerN|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[7]~50_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(7));

-- Location: LCCOMB_X46_Y39_N16
\TimerN|s_count[8]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[8]~52_combout\ = (\TimerN|s_count\(8) & (\TimerN|s_count[7]~51\ $ (GND))) # (!\TimerN|s_count\(8) & (!\TimerN|s_count[7]~51\ & VCC))
-- \TimerN|s_count[8]~53\ = CARRY((\TimerN|s_count\(8) & !\TimerN|s_count[7]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(8),
	datad => VCC,
	cin => \TimerN|s_count[7]~51\,
	combout => \TimerN|s_count[8]~52_combout\,
	cout => \TimerN|s_count[8]~53\);

-- Location: FF_X46_Y39_N17
\TimerN|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[8]~52_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(8));

-- Location: LCCOMB_X46_Y39_N18
\TimerN|s_count[9]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[9]~55_combout\ = (\TimerN|s_count\(9) & (!\TimerN|s_count[8]~53\)) # (!\TimerN|s_count\(9) & ((\TimerN|s_count[8]~53\) # (GND)))
-- \TimerN|s_count[9]~56\ = CARRY((!\TimerN|s_count[8]~53\) # (!\TimerN|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(9),
	datad => VCC,
	cin => \TimerN|s_count[8]~53\,
	combout => \TimerN|s_count[9]~55_combout\,
	cout => \TimerN|s_count[9]~56\);

-- Location: FF_X46_Y39_N19
\TimerN|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[9]~55_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(9));

-- Location: LCCOMB_X46_Y39_N20
\TimerN|s_count[10]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[10]~57_combout\ = (\TimerN|s_count\(10) & (\TimerN|s_count[9]~56\ $ (GND))) # (!\TimerN|s_count\(10) & (!\TimerN|s_count[9]~56\ & VCC))
-- \TimerN|s_count[10]~58\ = CARRY((\TimerN|s_count\(10) & !\TimerN|s_count[9]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(10),
	datad => VCC,
	cin => \TimerN|s_count[9]~56\,
	combout => \TimerN|s_count[10]~57_combout\,
	cout => \TimerN|s_count[10]~58\);

-- Location: FF_X46_Y39_N21
\TimerN|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[10]~57_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(10));

-- Location: LCCOMB_X46_Y39_N22
\TimerN|s_count[11]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[11]~59_combout\ = (\TimerN|s_count\(11) & (!\TimerN|s_count[10]~58\)) # (!\TimerN|s_count\(11) & ((\TimerN|s_count[10]~58\) # (GND)))
-- \TimerN|s_count[11]~60\ = CARRY((!\TimerN|s_count[10]~58\) # (!\TimerN|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(11),
	datad => VCC,
	cin => \TimerN|s_count[10]~58\,
	combout => \TimerN|s_count[11]~59_combout\,
	cout => \TimerN|s_count[11]~60\);

-- Location: FF_X46_Y39_N23
\TimerN|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[11]~59_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(11));

-- Location: LCCOMB_X46_Y39_N24
\TimerN|s_count[12]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[12]~61_combout\ = (\TimerN|s_count\(12) & (\TimerN|s_count[11]~60\ $ (GND))) # (!\TimerN|s_count\(12) & (!\TimerN|s_count[11]~60\ & VCC))
-- \TimerN|s_count[12]~62\ = CARRY((\TimerN|s_count\(12) & !\TimerN|s_count[11]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(12),
	datad => VCC,
	cin => \TimerN|s_count[11]~60\,
	combout => \TimerN|s_count[12]~61_combout\,
	cout => \TimerN|s_count[12]~62\);

-- Location: FF_X46_Y39_N25
\TimerN|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[12]~61_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(12));

-- Location: LCCOMB_X46_Y39_N26
\TimerN|s_count[13]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[13]~63_combout\ = (\TimerN|s_count\(13) & (!\TimerN|s_count[12]~62\)) # (!\TimerN|s_count\(13) & ((\TimerN|s_count[12]~62\) # (GND)))
-- \TimerN|s_count[13]~64\ = CARRY((!\TimerN|s_count[12]~62\) # (!\TimerN|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(13),
	datad => VCC,
	cin => \TimerN|s_count[12]~62\,
	combout => \TimerN|s_count[13]~63_combout\,
	cout => \TimerN|s_count[13]~64\);

-- Location: FF_X46_Y39_N27
\TimerN|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[13]~63_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(13));

-- Location: LCCOMB_X46_Y39_N28
\TimerN|s_count[14]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[14]~65_combout\ = (\TimerN|s_count\(14) & (\TimerN|s_count[13]~64\ $ (GND))) # (!\TimerN|s_count\(14) & (!\TimerN|s_count[13]~64\ & VCC))
-- \TimerN|s_count[14]~66\ = CARRY((\TimerN|s_count\(14) & !\TimerN|s_count[13]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(14),
	datad => VCC,
	cin => \TimerN|s_count[13]~64\,
	combout => \TimerN|s_count[14]~65_combout\,
	cout => \TimerN|s_count[14]~66\);

-- Location: FF_X46_Y39_N29
\TimerN|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[14]~65_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(14));

-- Location: LCCOMB_X46_Y39_N30
\TimerN|s_count[15]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[15]~67_combout\ = (\TimerN|s_count\(15) & (!\TimerN|s_count[14]~66\)) # (!\TimerN|s_count\(15) & ((\TimerN|s_count[14]~66\) # (GND)))
-- \TimerN|s_count[15]~68\ = CARRY((!\TimerN|s_count[14]~66\) # (!\TimerN|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(15),
	datad => VCC,
	cin => \TimerN|s_count[14]~66\,
	combout => \TimerN|s_count[15]~67_combout\,
	cout => \TimerN|s_count[15]~68\);

-- Location: FF_X46_Y39_N31
\TimerN|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[15]~67_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(15));

-- Location: LCCOMB_X46_Y38_N0
\TimerN|s_count[16]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[16]~69_combout\ = (\TimerN|s_count\(16) & (\TimerN|s_count[15]~68\ $ (GND))) # (!\TimerN|s_count\(16) & (!\TimerN|s_count[15]~68\ & VCC))
-- \TimerN|s_count[16]~70\ = CARRY((\TimerN|s_count\(16) & !\TimerN|s_count[15]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(16),
	datad => VCC,
	cin => \TimerN|s_count[15]~68\,
	combout => \TimerN|s_count[16]~69_combout\,
	cout => \TimerN|s_count[16]~70\);

-- Location: FF_X47_Y39_N13
\TimerN|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TimerN|s_count[16]~69_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	sload => VCC,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(16));

-- Location: LCCOMB_X46_Y38_N2
\TimerN|s_count[17]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[17]~71_combout\ = (\TimerN|s_count\(17) & (!\TimerN|s_count[16]~70\)) # (!\TimerN|s_count\(17) & ((\TimerN|s_count[16]~70\) # (GND)))
-- \TimerN|s_count[17]~72\ = CARRY((!\TimerN|s_count[16]~70\) # (!\TimerN|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(17),
	datad => VCC,
	cin => \TimerN|s_count[16]~70\,
	combout => \TimerN|s_count[17]~71_combout\,
	cout => \TimerN|s_count[17]~72\);

-- Location: FF_X45_Y39_N21
\TimerN|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TimerN|s_count[17]~71_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	sload => VCC,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(17));

-- Location: LCCOMB_X46_Y38_N4
\TimerN|s_count[18]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[18]~73_combout\ = (\TimerN|s_count\(18) & (\TimerN|s_count[17]~72\ $ (GND))) # (!\TimerN|s_count\(18) & (!\TimerN|s_count[17]~72\ & VCC))
-- \TimerN|s_count[18]~74\ = CARRY((\TimerN|s_count\(18) & !\TimerN|s_count[17]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(18),
	datad => VCC,
	cin => \TimerN|s_count[17]~72\,
	combout => \TimerN|s_count[18]~73_combout\,
	cout => \TimerN|s_count[18]~74\);

-- Location: FF_X47_Y39_N7
\TimerN|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TimerN|s_count[18]~73_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	sload => VCC,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(18));

-- Location: LCCOMB_X46_Y38_N6
\TimerN|s_count[19]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[19]~75_combout\ = (\TimerN|s_count\(19) & (!\TimerN|s_count[18]~74\)) # (!\TimerN|s_count\(19) & ((\TimerN|s_count[18]~74\) # (GND)))
-- \TimerN|s_count[19]~76\ = CARRY((!\TimerN|s_count[18]~74\) # (!\TimerN|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(19),
	datad => VCC,
	cin => \TimerN|s_count[18]~74\,
	combout => \TimerN|s_count[19]~75_combout\,
	cout => \TimerN|s_count[19]~76\);

-- Location: FF_X45_Y39_N31
\TimerN|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \TimerN|s_count[19]~75_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	sload => VCC,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(19));

-- Location: LCCOMB_X46_Y38_N8
\TimerN|s_count[20]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[20]~77_combout\ = (\TimerN|s_count\(20) & (\TimerN|s_count[19]~76\ $ (GND))) # (!\TimerN|s_count\(20) & (!\TimerN|s_count[19]~76\ & VCC))
-- \TimerN|s_count[20]~78\ = CARRY((\TimerN|s_count\(20) & !\TimerN|s_count[19]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(20),
	datad => VCC,
	cin => \TimerN|s_count[19]~76\,
	combout => \TimerN|s_count[20]~77_combout\,
	cout => \TimerN|s_count[20]~78\);

-- Location: FF_X46_Y38_N9
\TimerN|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[20]~77_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(20));

-- Location: LCCOMB_X46_Y38_N10
\TimerN|s_count[21]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[21]~79_combout\ = (\TimerN|s_count\(21) & (!\TimerN|s_count[20]~78\)) # (!\TimerN|s_count\(21) & ((\TimerN|s_count[20]~78\) # (GND)))
-- \TimerN|s_count[21]~80\ = CARRY((!\TimerN|s_count[20]~78\) # (!\TimerN|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(21),
	datad => VCC,
	cin => \TimerN|s_count[20]~78\,
	combout => \TimerN|s_count[21]~79_combout\,
	cout => \TimerN|s_count[21]~80\);

-- Location: FF_X46_Y38_N11
\TimerN|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[21]~79_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(21));

-- Location: LCCOMB_X46_Y38_N12
\TimerN|s_count[22]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[22]~81_combout\ = (\TimerN|s_count\(22) & (\TimerN|s_count[21]~80\ $ (GND))) # (!\TimerN|s_count\(22) & (!\TimerN|s_count[21]~80\ & VCC))
-- \TimerN|s_count[22]~82\ = CARRY((\TimerN|s_count\(22) & !\TimerN|s_count[21]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(22),
	datad => VCC,
	cin => \TimerN|s_count[21]~80\,
	combout => \TimerN|s_count[22]~81_combout\,
	cout => \TimerN|s_count[22]~82\);

-- Location: FF_X46_Y38_N13
\TimerN|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[22]~81_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(22));

-- Location: LCCOMB_X46_Y38_N14
\TimerN|s_count[23]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[23]~83_combout\ = (\TimerN|s_count\(23) & (!\TimerN|s_count[22]~82\)) # (!\TimerN|s_count\(23) & ((\TimerN|s_count[22]~82\) # (GND)))
-- \TimerN|s_count[23]~84\ = CARRY((!\TimerN|s_count[22]~82\) # (!\TimerN|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(23),
	datad => VCC,
	cin => \TimerN|s_count[22]~82\,
	combout => \TimerN|s_count[23]~83_combout\,
	cout => \TimerN|s_count[23]~84\);

-- Location: FF_X46_Y38_N15
\TimerN|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[23]~83_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(23));

-- Location: LCCOMB_X46_Y38_N16
\TimerN|s_count[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[24]~85_combout\ = (\TimerN|s_count\(24) & (\TimerN|s_count[23]~84\ $ (GND))) # (!\TimerN|s_count\(24) & (!\TimerN|s_count[23]~84\ & VCC))
-- \TimerN|s_count[24]~86\ = CARRY((\TimerN|s_count\(24) & !\TimerN|s_count[23]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(24),
	datad => VCC,
	cin => \TimerN|s_count[23]~84\,
	combout => \TimerN|s_count[24]~85_combout\,
	cout => \TimerN|s_count[24]~86\);

-- Location: FF_X46_Y38_N17
\TimerN|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[24]~85_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(24));

-- Location: LCCOMB_X46_Y38_N18
\TimerN|s_count[25]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[25]~87_combout\ = (\TimerN|s_count\(25) & (!\TimerN|s_count[24]~86\)) # (!\TimerN|s_count\(25) & ((\TimerN|s_count[24]~86\) # (GND)))
-- \TimerN|s_count[25]~88\ = CARRY((!\TimerN|s_count[24]~86\) # (!\TimerN|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TimerN|s_count\(25),
	datad => VCC,
	cin => \TimerN|s_count[24]~86\,
	combout => \TimerN|s_count[25]~87_combout\,
	cout => \TimerN|s_count[25]~88\);

-- Location: FF_X46_Y38_N19
\TimerN|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[25]~87_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(25));

-- Location: FF_X46_Y38_N21
\TimerN|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|s_count[26]~89_combout\,
	sclr => \TimerN|timerOut~4_combout\,
	ena => \TimerN|s_count[1]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|s_count\(26));

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

-- Location: LCCOMB_X47_Y39_N14
\TimerN|s_count[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[1]~32_combout\ = (!\TimerN|s_count\(8) & (\KEY[0]~input_o\ & (!\TimerN|s_count\(13) & !\TimerN|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(8),
	datab => \KEY[0]~input_o\,
	datac => \TimerN|s_count\(13),
	datad => \TimerN|s_count\(14),
	combout => \TimerN|s_count[1]~32_combout\);

-- Location: LCCOMB_X47_Y39_N26
\TimerN|s_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[1]~34_combout\ = (!\TimerN|s_count\(23) & (!\TimerN|s_count\(21) & (!\TimerN|s_count\(24) & !\TimerN|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(23),
	datab => \TimerN|s_count\(21),
	datac => \TimerN|s_count\(24),
	datad => \TimerN|s_count\(22),
	combout => \TimerN|s_count[1]~34_combout\);

-- Location: LCCOMB_X47_Y39_N16
\TimerN|s_count[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[1]~33_combout\ = (!\TimerN|s_count\(18) & (!\TimerN|s_count\(15) & (!\TimerN|s_count\(16) & !\TimerN|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(18),
	datab => \TimerN|s_count\(15),
	datac => \TimerN|s_count\(16),
	datad => \TimerN|s_count\(20),
	combout => \TimerN|s_count[1]~33_combout\);

-- Location: LCCOMB_X47_Y39_N20
\TimerN|s_count[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|s_count[1]~35_combout\ = (!\TimerN|s_count\(26) & (\TimerN|s_count[1]~32_combout\ & (\TimerN|s_count[1]~34_combout\ & \TimerN|s_count[1]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(26),
	datab => \TimerN|s_count[1]~32_combout\,
	datac => \TimerN|s_count[1]~34_combout\,
	datad => \TimerN|s_count[1]~33_combout\,
	combout => \TimerN|s_count[1]~35_combout\);

-- Location: LCCOMB_X47_Y39_N22
\TimerN|timerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|timerOut~0_combout\ = (\TimerN|s_count\(8) & (\TimerN|s_count\(15) & (\TimerN|s_count\(13) & \TimerN|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(8),
	datab => \TimerN|s_count\(15),
	datac => \TimerN|s_count\(13),
	datad => \TimerN|s_count\(14),
	combout => \TimerN|timerOut~0_combout\);

-- Location: LCCOMB_X47_Y39_N4
\TimerN|timerOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|timerOut~1_combout\ = (\TimerN|s_count\(18) & (\TimerN|s_count\(16) & (\TimerN|s_count\(21) & \TimerN|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(18),
	datab => \TimerN|s_count\(16),
	datac => \TimerN|s_count\(21),
	datad => \TimerN|s_count\(20),
	combout => \TimerN|timerOut~1_combout\);

-- Location: LCCOMB_X47_Y39_N18
\TimerN|timerOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|timerOut~2_combout\ = (\TimerN|s_count\(23) & (\TimerN|s_count\(24) & (\TimerN|s_count\(22) & \TimerN|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|s_count\(23),
	datab => \TimerN|s_count\(24),
	datac => \TimerN|s_count\(22),
	datad => \TimerN|s_count\(26),
	combout => \TimerN|timerOut~2_combout\);

-- Location: LCCOMB_X47_Y39_N8
\TimerN|timerOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|timerOut~3_combout\ = (\TimerN|timerOut~0_combout\ & (\TimerN|timerOut~1_combout\ & \TimerN|timerOut~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimerN|timerOut~0_combout\,
	datac => \TimerN|timerOut~1_combout\,
	datad => \TimerN|timerOut~2_combout\,
	combout => \TimerN|timerOut~3_combout\);

-- Location: LCCOMB_X47_Y39_N30
\TimerN|timerOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|timerOut~4_combout\ = (\SW[0]~input_o\) # ((\TimerN|Equal0~6_combout\ & ((\TimerN|s_count[1]~35_combout\) # (\TimerN|timerOut~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \TimerN|s_count[1]~35_combout\,
	datac => \TimerN|timerOut~3_combout\,
	datad => \TimerN|Equal0~6_combout\,
	combout => \TimerN|timerOut~4_combout\);

-- Location: LCCOMB_X47_Y39_N24
\TimerN|timerOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimerN|timerOut~5_combout\ = (\SW[1]~input_o\ & !\TimerN|timerOut~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \TimerN|timerOut~4_combout\,
	combout => \TimerN|timerOut~5_combout\);

-- Location: FF_X47_Y39_N25
\TimerN|timerOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \TimerN|timerOut~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TimerN|timerOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


