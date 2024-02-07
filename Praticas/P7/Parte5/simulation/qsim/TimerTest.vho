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

-- DATE "03/28/2023 17:54:58"

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

ENTITY 	TimerTest IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(2 DOWNTO 0);
	timerOut : OUT std_logic
	);
END TimerTest;

ARCHITECTURE structure OF TimerTest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_timerOut : std_logic;
SIGNAL \timerOut~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \timer|s_count[0]~33_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \timer|s_count[0]~37_combout\ : std_logic;
SIGNAL \timer|s_count[1]~36\ : std_logic;
SIGNAL \timer|s_count[2]~39_combout\ : std_logic;
SIGNAL \timer|s_count[2]~40\ : std_logic;
SIGNAL \timer|s_count[3]~41_combout\ : std_logic;
SIGNAL \timer|s_count[3]~42\ : std_logic;
SIGNAL \timer|s_count[4]~43_combout\ : std_logic;
SIGNAL \timer|s_count[4]~44\ : std_logic;
SIGNAL \timer|s_count[5]~45_combout\ : std_logic;
SIGNAL \timer|Equal0~0_combout\ : std_logic;
SIGNAL \timer|s_count[5]~46\ : std_logic;
SIGNAL \timer|s_count[6]~47_combout\ : std_logic;
SIGNAL \timer|s_count[6]~48\ : std_logic;
SIGNAL \timer|s_count[7]~49_combout\ : std_logic;
SIGNAL \timer|s_count[7]~50\ : std_logic;
SIGNAL \timer|s_count[8]~51_combout\ : std_logic;
SIGNAL \timer|s_count[8]~52\ : std_logic;
SIGNAL \timer|s_count[9]~53_combout\ : std_logic;
SIGNAL \timer|Equal0~1_combout\ : std_logic;
SIGNAL \timer|s_count[9]~54\ : std_logic;
SIGNAL \timer|s_count[10]~55_combout\ : std_logic;
SIGNAL \timer|s_count[10]~56\ : std_logic;
SIGNAL \timer|s_count[11]~57_combout\ : std_logic;
SIGNAL \timer|s_count[11]~58\ : std_logic;
SIGNAL \timer|s_count[12]~59_combout\ : std_logic;
SIGNAL \timer|s_count[12]~60\ : std_logic;
SIGNAL \timer|s_count[13]~61_combout\ : std_logic;
SIGNAL \timer|Equal0~2_combout\ : std_logic;
SIGNAL \timer|s_count[13]~62\ : std_logic;
SIGNAL \timer|s_count[14]~63_combout\ : std_logic;
SIGNAL \timer|s_count[14]~64\ : std_logic;
SIGNAL \timer|s_count[15]~65_combout\ : std_logic;
SIGNAL \timer|s_count[15]~66\ : std_logic;
SIGNAL \timer|s_count[16]~67_combout\ : std_logic;
SIGNAL \timer|s_count[16]~68\ : std_logic;
SIGNAL \timer|s_count[17]~69_combout\ : std_logic;
SIGNAL \timer|Equal0~3_combout\ : std_logic;
SIGNAL \timer|Equal0~4_combout\ : std_logic;
SIGNAL \timer|s_count[17]~70\ : std_logic;
SIGNAL \timer|s_count[18]~71_combout\ : std_logic;
SIGNAL \timer|s_count[18]~72\ : std_logic;
SIGNAL \timer|s_count[19]~73_combout\ : std_logic;
SIGNAL \timer|s_count[19]~74\ : std_logic;
SIGNAL \timer|s_count[20]~75_combout\ : std_logic;
SIGNAL \timer|s_count[20]~76\ : std_logic;
SIGNAL \timer|s_count[21]~77_combout\ : std_logic;
SIGNAL \timer|Equal0~5_combout\ : std_logic;
SIGNAL \timer|s_count[21]~78\ : std_logic;
SIGNAL \timer|s_count[22]~79_combout\ : std_logic;
SIGNAL \timer|s_count[22]~80\ : std_logic;
SIGNAL \timer|s_count[23]~81_combout\ : std_logic;
SIGNAL \timer|s_count[23]~82\ : std_logic;
SIGNAL \timer|s_count[24]~83_combout\ : std_logic;
SIGNAL \timer|s_count[24]~84\ : std_logic;
SIGNAL \timer|s_count[25]~85_combout\ : std_logic;
SIGNAL \timer|Equal0~6_combout\ : std_logic;
SIGNAL \timer|s_count[25]~86\ : std_logic;
SIGNAL \timer|s_count[26]~87_combout\ : std_logic;
SIGNAL \timer|s_count[26]~88\ : std_logic;
SIGNAL \timer|s_count[27]~89_combout\ : std_logic;
SIGNAL \timer|s_count[27]~90\ : std_logic;
SIGNAL \timer|s_count[28]~91_combout\ : std_logic;
SIGNAL \timer|s_count[28]~92\ : std_logic;
SIGNAL \timer|s_count[29]~93_combout\ : std_logic;
SIGNAL \timer|Equal0~7_combout\ : std_logic;
SIGNAL \timer|s_count[29]~94\ : std_logic;
SIGNAL \timer|s_count[30]~95_combout\ : std_logic;
SIGNAL \timer|s_count[30]~96\ : std_logic;
SIGNAL \timer|s_count[31]~97_combout\ : std_logic;
SIGNAL \timer|Equal0~8_combout\ : std_logic;
SIGNAL \timer|Equal0~9_combout\ : std_logic;
SIGNAL \timer|Equal0~10_combout\ : std_logic;
SIGNAL \timer|s_count[0]~38_combout\ : std_logic;
SIGNAL \timer|s_count[0]~34\ : std_logic;
SIGNAL \timer|s_count[1]~35_combout\ : std_logic;
SIGNAL \timer|s_count[0]~32_combout\ : std_logic;
SIGNAL \timer|timerOut~0_combout\ : std_logic;
SIGNAL \timer|timerOut~q\ : std_logic;
SIGNAL \timer|s_count\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
timerOut <= ww_timerOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\timerOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer|timerOut~q\,
	devoe => ww_devoe,
	o => \timerOut~output_o\);

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\timer|s_count[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[0]~33_combout\ = \timer|s_count\(0) $ (VCC)
-- \timer|s_count[0]~34\ = CARRY(\timer|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(0),
	datad => VCC,
	combout => \timer|s_count[0]~33_combout\,
	cout => \timer|s_count[0]~34\);

\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\timer|s_count[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[0]~37_combout\ = (\SW[0]~input_o\) # (!\timer|s_count[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count[0]~32_combout\,
	datad => \SW[0]~input_o\,
	combout => \timer|s_count[0]~37_combout\);

\timer|s_count[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[1]~35_combout\ = (\timer|s_count\(1) & (!\timer|s_count[0]~34\)) # (!\timer|s_count\(1) & ((\timer|s_count[0]~34\) # (GND)))
-- \timer|s_count[1]~36\ = CARRY((!\timer|s_count[0]~34\) # (!\timer|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(1),
	datad => VCC,
	cin => \timer|s_count[0]~34\,
	combout => \timer|s_count[1]~35_combout\,
	cout => \timer|s_count[1]~36\);

\timer|s_count[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[2]~39_combout\ = (\timer|s_count\(2) & (\timer|s_count[1]~36\ $ (GND))) # (!\timer|s_count\(2) & (!\timer|s_count[1]~36\ & VCC))
-- \timer|s_count[2]~40\ = CARRY((\timer|s_count\(2) & !\timer|s_count[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(2),
	datad => VCC,
	cin => \timer|s_count[1]~36\,
	combout => \timer|s_count[2]~39_combout\,
	cout => \timer|s_count[2]~40\);

\timer|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[2]~39_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(2));

\timer|s_count[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[3]~41_combout\ = (\timer|s_count\(3) & (!\timer|s_count[2]~40\)) # (!\timer|s_count\(3) & ((\timer|s_count[2]~40\) # (GND)))
-- \timer|s_count[3]~42\ = CARRY((!\timer|s_count[2]~40\) # (!\timer|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(3),
	datad => VCC,
	cin => \timer|s_count[2]~40\,
	combout => \timer|s_count[3]~41_combout\,
	cout => \timer|s_count[3]~42\);

\timer|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[3]~41_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(3));

\timer|s_count[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[4]~43_combout\ = (\timer|s_count\(4) & (\timer|s_count[3]~42\ $ (GND))) # (!\timer|s_count\(4) & (!\timer|s_count[3]~42\ & VCC))
-- \timer|s_count[4]~44\ = CARRY((\timer|s_count\(4) & !\timer|s_count[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(4),
	datad => VCC,
	cin => \timer|s_count[3]~42\,
	combout => \timer|s_count[4]~43_combout\,
	cout => \timer|s_count[4]~44\);

\timer|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[4]~43_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(4));

\timer|s_count[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[5]~45_combout\ = (\timer|s_count\(5) & (!\timer|s_count[4]~44\)) # (!\timer|s_count\(5) & ((\timer|s_count[4]~44\) # (GND)))
-- \timer|s_count[5]~46\ = CARRY((!\timer|s_count[4]~44\) # (!\timer|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(5),
	datad => VCC,
	cin => \timer|s_count[4]~44\,
	combout => \timer|s_count[5]~45_combout\,
	cout => \timer|s_count[5]~46\);

\timer|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[5]~45_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(5));

\timer|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~0_combout\ = (!\timer|s_count\(0) & (!\timer|s_count\(2) & (!\timer|s_count\(4) & !\timer|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(0),
	datab => \timer|s_count\(2),
	datac => \timer|s_count\(4),
	datad => \timer|s_count\(5),
	combout => \timer|Equal0~0_combout\);

\timer|s_count[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[6]~47_combout\ = (\timer|s_count\(6) & (\timer|s_count[5]~46\ $ (GND))) # (!\timer|s_count\(6) & (!\timer|s_count[5]~46\ & VCC))
-- \timer|s_count[6]~48\ = CARRY((\timer|s_count\(6) & !\timer|s_count[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(6),
	datad => VCC,
	cin => \timer|s_count[5]~46\,
	combout => \timer|s_count[6]~47_combout\,
	cout => \timer|s_count[6]~48\);

\timer|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[6]~47_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(6));

\timer|s_count[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[7]~49_combout\ = (\timer|s_count\(7) & (!\timer|s_count[6]~48\)) # (!\timer|s_count\(7) & ((\timer|s_count[6]~48\) # (GND)))
-- \timer|s_count[7]~50\ = CARRY((!\timer|s_count[6]~48\) # (!\timer|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(7),
	datad => VCC,
	cin => \timer|s_count[6]~48\,
	combout => \timer|s_count[7]~49_combout\,
	cout => \timer|s_count[7]~50\);

\timer|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[7]~49_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(7));

\timer|s_count[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[8]~51_combout\ = (\timer|s_count\(8) & (\timer|s_count[7]~50\ $ (GND))) # (!\timer|s_count\(8) & (!\timer|s_count[7]~50\ & VCC))
-- \timer|s_count[8]~52\ = CARRY((\timer|s_count\(8) & !\timer|s_count[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(8),
	datad => VCC,
	cin => \timer|s_count[7]~50\,
	combout => \timer|s_count[8]~51_combout\,
	cout => \timer|s_count[8]~52\);

\timer|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[8]~51_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(8));

\timer|s_count[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[9]~53_combout\ = (\timer|s_count\(9) & (!\timer|s_count[8]~52\)) # (!\timer|s_count\(9) & ((\timer|s_count[8]~52\) # (GND)))
-- \timer|s_count[9]~54\ = CARRY((!\timer|s_count[8]~52\) # (!\timer|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(9),
	datad => VCC,
	cin => \timer|s_count[8]~52\,
	combout => \timer|s_count[9]~53_combout\,
	cout => \timer|s_count[9]~54\);

\timer|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[9]~53_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(9));

\timer|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~1_combout\ = (!\timer|s_count\(6) & (!\timer|s_count\(7) & (!\timer|s_count\(8) & !\timer|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(6),
	datab => \timer|s_count\(7),
	datac => \timer|s_count\(8),
	datad => \timer|s_count\(9),
	combout => \timer|Equal0~1_combout\);

\timer|s_count[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[10]~55_combout\ = (\timer|s_count\(10) & (\timer|s_count[9]~54\ $ (GND))) # (!\timer|s_count\(10) & (!\timer|s_count[9]~54\ & VCC))
-- \timer|s_count[10]~56\ = CARRY((\timer|s_count\(10) & !\timer|s_count[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(10),
	datad => VCC,
	cin => \timer|s_count[9]~54\,
	combout => \timer|s_count[10]~55_combout\,
	cout => \timer|s_count[10]~56\);

\timer|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[10]~55_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(10));

\timer|s_count[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[11]~57_combout\ = (\timer|s_count\(11) & (!\timer|s_count[10]~56\)) # (!\timer|s_count\(11) & ((\timer|s_count[10]~56\) # (GND)))
-- \timer|s_count[11]~58\ = CARRY((!\timer|s_count[10]~56\) # (!\timer|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(11),
	datad => VCC,
	cin => \timer|s_count[10]~56\,
	combout => \timer|s_count[11]~57_combout\,
	cout => \timer|s_count[11]~58\);

\timer|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[11]~57_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(11));

\timer|s_count[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[12]~59_combout\ = (\timer|s_count\(12) & (\timer|s_count[11]~58\ $ (GND))) # (!\timer|s_count\(12) & (!\timer|s_count[11]~58\ & VCC))
-- \timer|s_count[12]~60\ = CARRY((\timer|s_count\(12) & !\timer|s_count[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(12),
	datad => VCC,
	cin => \timer|s_count[11]~58\,
	combout => \timer|s_count[12]~59_combout\,
	cout => \timer|s_count[12]~60\);

\timer|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[12]~59_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(12));

\timer|s_count[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[13]~61_combout\ = (\timer|s_count\(13) & (!\timer|s_count[12]~60\)) # (!\timer|s_count\(13) & ((\timer|s_count[12]~60\) # (GND)))
-- \timer|s_count[13]~62\ = CARRY((!\timer|s_count[12]~60\) # (!\timer|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(13),
	datad => VCC,
	cin => \timer|s_count[12]~60\,
	combout => \timer|s_count[13]~61_combout\,
	cout => \timer|s_count[13]~62\);

\timer|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[13]~61_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(13));

\timer|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~2_combout\ = (!\timer|s_count\(10) & (!\timer|s_count\(11) & (!\timer|s_count\(12) & !\timer|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(10),
	datab => \timer|s_count\(11),
	datac => \timer|s_count\(12),
	datad => \timer|s_count\(13),
	combout => \timer|Equal0~2_combout\);

\timer|s_count[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[14]~63_combout\ = (\timer|s_count\(14) & (\timer|s_count[13]~62\ $ (GND))) # (!\timer|s_count\(14) & (!\timer|s_count[13]~62\ & VCC))
-- \timer|s_count[14]~64\ = CARRY((\timer|s_count\(14) & !\timer|s_count[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(14),
	datad => VCC,
	cin => \timer|s_count[13]~62\,
	combout => \timer|s_count[14]~63_combout\,
	cout => \timer|s_count[14]~64\);

\timer|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[14]~63_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(14));

\timer|s_count[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[15]~65_combout\ = (\timer|s_count\(15) & (!\timer|s_count[14]~64\)) # (!\timer|s_count\(15) & ((\timer|s_count[14]~64\) # (GND)))
-- \timer|s_count[15]~66\ = CARRY((!\timer|s_count[14]~64\) # (!\timer|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(15),
	datad => VCC,
	cin => \timer|s_count[14]~64\,
	combout => \timer|s_count[15]~65_combout\,
	cout => \timer|s_count[15]~66\);

\timer|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[15]~65_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(15));

\timer|s_count[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[16]~67_combout\ = (\timer|s_count\(16) & (\timer|s_count[15]~66\ $ (GND))) # (!\timer|s_count\(16) & (!\timer|s_count[15]~66\ & VCC))
-- \timer|s_count[16]~68\ = CARRY((\timer|s_count\(16) & !\timer|s_count[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(16),
	datad => VCC,
	cin => \timer|s_count[15]~66\,
	combout => \timer|s_count[16]~67_combout\,
	cout => \timer|s_count[16]~68\);

\timer|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[16]~67_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(16));

\timer|s_count[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[17]~69_combout\ = (\timer|s_count\(17) & (!\timer|s_count[16]~68\)) # (!\timer|s_count\(17) & ((\timer|s_count[16]~68\) # (GND)))
-- \timer|s_count[17]~70\ = CARRY((!\timer|s_count[16]~68\) # (!\timer|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(17),
	datad => VCC,
	cin => \timer|s_count[16]~68\,
	combout => \timer|s_count[17]~69_combout\,
	cout => \timer|s_count[17]~70\);

\timer|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[17]~69_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(17));

\timer|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~3_combout\ = (!\timer|s_count\(14) & (!\timer|s_count\(15) & (!\timer|s_count\(16) & !\timer|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(14),
	datab => \timer|s_count\(15),
	datac => \timer|s_count\(16),
	datad => \timer|s_count\(17),
	combout => \timer|Equal0~3_combout\);

\timer|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~4_combout\ = (\timer|Equal0~0_combout\ & (\timer|Equal0~1_combout\ & (\timer|Equal0~2_combout\ & \timer|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal0~0_combout\,
	datab => \timer|Equal0~1_combout\,
	datac => \timer|Equal0~2_combout\,
	datad => \timer|Equal0~3_combout\,
	combout => \timer|Equal0~4_combout\);

\timer|s_count[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[18]~71_combout\ = (\timer|s_count\(18) & (\timer|s_count[17]~70\ $ (GND))) # (!\timer|s_count\(18) & (!\timer|s_count[17]~70\ & VCC))
-- \timer|s_count[18]~72\ = CARRY((\timer|s_count\(18) & !\timer|s_count[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(18),
	datad => VCC,
	cin => \timer|s_count[17]~70\,
	combout => \timer|s_count[18]~71_combout\,
	cout => \timer|s_count[18]~72\);

\timer|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[18]~71_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(18));

\timer|s_count[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[19]~73_combout\ = (\timer|s_count\(19) & (!\timer|s_count[18]~72\)) # (!\timer|s_count\(19) & ((\timer|s_count[18]~72\) # (GND)))
-- \timer|s_count[19]~74\ = CARRY((!\timer|s_count[18]~72\) # (!\timer|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(19),
	datad => VCC,
	cin => \timer|s_count[18]~72\,
	combout => \timer|s_count[19]~73_combout\,
	cout => \timer|s_count[19]~74\);

\timer|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[19]~73_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(19));

\timer|s_count[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[20]~75_combout\ = (\timer|s_count\(20) & (\timer|s_count[19]~74\ $ (GND))) # (!\timer|s_count\(20) & (!\timer|s_count[19]~74\ & VCC))
-- \timer|s_count[20]~76\ = CARRY((\timer|s_count\(20) & !\timer|s_count[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(20),
	datad => VCC,
	cin => \timer|s_count[19]~74\,
	combout => \timer|s_count[20]~75_combout\,
	cout => \timer|s_count[20]~76\);

\timer|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[20]~75_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(20));

\timer|s_count[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[21]~77_combout\ = (\timer|s_count\(21) & (!\timer|s_count[20]~76\)) # (!\timer|s_count\(21) & ((\timer|s_count[20]~76\) # (GND)))
-- \timer|s_count[21]~78\ = CARRY((!\timer|s_count[20]~76\) # (!\timer|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(21),
	datad => VCC,
	cin => \timer|s_count[20]~76\,
	combout => \timer|s_count[21]~77_combout\,
	cout => \timer|s_count[21]~78\);

\timer|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[21]~77_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(21));

\timer|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~5_combout\ = (!\timer|s_count\(18) & (!\timer|s_count\(19) & (!\timer|s_count\(20) & !\timer|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(18),
	datab => \timer|s_count\(19),
	datac => \timer|s_count\(20),
	datad => \timer|s_count\(21),
	combout => \timer|Equal0~5_combout\);

\timer|s_count[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[22]~79_combout\ = (\timer|s_count\(22) & (\timer|s_count[21]~78\ $ (GND))) # (!\timer|s_count\(22) & (!\timer|s_count[21]~78\ & VCC))
-- \timer|s_count[22]~80\ = CARRY((\timer|s_count\(22) & !\timer|s_count[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(22),
	datad => VCC,
	cin => \timer|s_count[21]~78\,
	combout => \timer|s_count[22]~79_combout\,
	cout => \timer|s_count[22]~80\);

\timer|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[22]~79_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(22));

\timer|s_count[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[23]~81_combout\ = (\timer|s_count\(23) & (!\timer|s_count[22]~80\)) # (!\timer|s_count\(23) & ((\timer|s_count[22]~80\) # (GND)))
-- \timer|s_count[23]~82\ = CARRY((!\timer|s_count[22]~80\) # (!\timer|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(23),
	datad => VCC,
	cin => \timer|s_count[22]~80\,
	combout => \timer|s_count[23]~81_combout\,
	cout => \timer|s_count[23]~82\);

\timer|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[23]~81_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(23));

\timer|s_count[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[24]~83_combout\ = (\timer|s_count\(24) & (\timer|s_count[23]~82\ $ (GND))) # (!\timer|s_count\(24) & (!\timer|s_count[23]~82\ & VCC))
-- \timer|s_count[24]~84\ = CARRY((\timer|s_count\(24) & !\timer|s_count[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(24),
	datad => VCC,
	cin => \timer|s_count[23]~82\,
	combout => \timer|s_count[24]~83_combout\,
	cout => \timer|s_count[24]~84\);

\timer|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[24]~83_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(24));

\timer|s_count[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[25]~85_combout\ = (\timer|s_count\(25) & (!\timer|s_count[24]~84\)) # (!\timer|s_count\(25) & ((\timer|s_count[24]~84\) # (GND)))
-- \timer|s_count[25]~86\ = CARRY((!\timer|s_count[24]~84\) # (!\timer|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(25),
	datad => VCC,
	cin => \timer|s_count[24]~84\,
	combout => \timer|s_count[25]~85_combout\,
	cout => \timer|s_count[25]~86\);

\timer|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[25]~85_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(25));

\timer|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~6_combout\ = (!\timer|s_count\(22) & (!\timer|s_count\(23) & (!\timer|s_count\(24) & !\timer|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(22),
	datab => \timer|s_count\(23),
	datac => \timer|s_count\(24),
	datad => \timer|s_count\(25),
	combout => \timer|Equal0~6_combout\);

\timer|s_count[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[26]~87_combout\ = (\timer|s_count\(26) & (\timer|s_count[25]~86\ $ (GND))) # (!\timer|s_count\(26) & (!\timer|s_count[25]~86\ & VCC))
-- \timer|s_count[26]~88\ = CARRY((\timer|s_count\(26) & !\timer|s_count[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(26),
	datad => VCC,
	cin => \timer|s_count[25]~86\,
	combout => \timer|s_count[26]~87_combout\,
	cout => \timer|s_count[26]~88\);

\timer|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[26]~87_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(26));

\timer|s_count[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[27]~89_combout\ = (\timer|s_count\(27) & (!\timer|s_count[26]~88\)) # (!\timer|s_count\(27) & ((\timer|s_count[26]~88\) # (GND)))
-- \timer|s_count[27]~90\ = CARRY((!\timer|s_count[26]~88\) # (!\timer|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(27),
	datad => VCC,
	cin => \timer|s_count[26]~88\,
	combout => \timer|s_count[27]~89_combout\,
	cout => \timer|s_count[27]~90\);

\timer|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[27]~89_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(27));

\timer|s_count[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[28]~91_combout\ = (\timer|s_count\(28) & (\timer|s_count[27]~90\ $ (GND))) # (!\timer|s_count\(28) & (!\timer|s_count[27]~90\ & VCC))
-- \timer|s_count[28]~92\ = CARRY((\timer|s_count\(28) & !\timer|s_count[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(28),
	datad => VCC,
	cin => \timer|s_count[27]~90\,
	combout => \timer|s_count[28]~91_combout\,
	cout => \timer|s_count[28]~92\);

\timer|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[28]~91_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(28));

\timer|s_count[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[29]~93_combout\ = (\timer|s_count\(29) & (!\timer|s_count[28]~92\)) # (!\timer|s_count\(29) & ((\timer|s_count[28]~92\) # (GND)))
-- \timer|s_count[29]~94\ = CARRY((!\timer|s_count[28]~92\) # (!\timer|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(29),
	datad => VCC,
	cin => \timer|s_count[28]~92\,
	combout => \timer|s_count[29]~93_combout\,
	cout => \timer|s_count[29]~94\);

\timer|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[29]~93_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(29));

\timer|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~7_combout\ = (!\timer|s_count\(26) & (!\timer|s_count\(27) & (!\timer|s_count\(28) & !\timer|s_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(26),
	datab => \timer|s_count\(27),
	datac => \timer|s_count\(28),
	datad => \timer|s_count\(29),
	combout => \timer|Equal0~7_combout\);

\timer|s_count[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[30]~95_combout\ = (\timer|s_count\(30) & (\timer|s_count[29]~94\ $ (GND))) # (!\timer|s_count\(30) & (!\timer|s_count[29]~94\ & VCC))
-- \timer|s_count[30]~96\ = CARRY((\timer|s_count\(30) & !\timer|s_count[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(30),
	datad => VCC,
	cin => \timer|s_count[29]~94\,
	combout => \timer|s_count[30]~95_combout\,
	cout => \timer|s_count[30]~96\);

\timer|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[30]~95_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(30));

\timer|s_count[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[31]~97_combout\ = \timer|s_count\(31) $ (\timer|s_count[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(31),
	cin => \timer|s_count[30]~96\,
	combout => \timer|s_count[31]~97_combout\);

\timer|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[31]~97_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(31));

\timer|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~8_combout\ = (\timer|Equal0~7_combout\ & (!\timer|s_count\(30) & !\timer|s_count\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal0~7_combout\,
	datac => \timer|s_count\(30),
	datad => \timer|s_count\(31),
	combout => \timer|Equal0~8_combout\);

\timer|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~9_combout\ = (\timer|Equal0~4_combout\ & (\timer|Equal0~5_combout\ & (\timer|Equal0~6_combout\ & \timer|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal0~4_combout\,
	datab => \timer|Equal0~5_combout\,
	datac => \timer|Equal0~6_combout\,
	datad => \timer|Equal0~8_combout\,
	combout => \timer|Equal0~9_combout\);

\timer|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal0~10_combout\ = (\timer|Equal0~9_combout\ & (!\timer|s_count\(1) & !\timer|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal0~9_combout\,
	datac => \timer|s_count\(1),
	datad => \timer|s_count\(3),
	combout => \timer|Equal0~10_combout\);

\timer|s_count[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[0]~38_combout\ = (\SW[0]~input_o\) # ((\SW[1]~input_o\ & ((\SW[2]~input_o\) # (!\timer|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal0~10_combout\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \timer|s_count[0]~38_combout\);

\timer|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[0]~33_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(0));

\timer|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|s_count[1]~35_combout\,
	sclr => \timer|s_count[0]~37_combout\,
	ena => \timer|s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(1));

\timer|s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[0]~32_combout\ = ((\timer|s_count\(1) & ((!\timer|s_count\(3)))) # (!\timer|s_count\(1) & ((\SW[2]~input_o\) # (\timer|s_count\(3))))) # (!\timer|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \timer|s_count\(1),
	datac => \timer|s_count\(3),
	datad => \timer|Equal0~9_combout\,
	combout => \timer|s_count[0]~32_combout\);

\timer|timerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|timerOut~0_combout\ = (\SW[1]~input_o\ & (\timer|s_count[0]~32_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \timer|s_count[0]~32_combout\,
	datad => \SW[0]~input_o\,
	combout => \timer|timerOut~0_combout\);

\timer|timerOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \timer|timerOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|timerOut~q\);

ww_timerOut <= \timerOut~output_o\;
END structure;


