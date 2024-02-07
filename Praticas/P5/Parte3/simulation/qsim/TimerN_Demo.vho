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

-- DATE "03/14/2023 17:40:13"

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

ENTITY 	TimerN IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	timerOut : OUT std_logic
	);
END TimerN;

ARCHITECTURE structure OF TimerN IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_timerOut : std_logic;
SIGNAL \timerOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \s_count[0]~33_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_count[0]~37_combout\ : std_logic;
SIGNAL \s_count[1]~36\ : std_logic;
SIGNAL \s_count[2]~39_combout\ : std_logic;
SIGNAL \s_count[2]~40\ : std_logic;
SIGNAL \s_count[3]~41_combout\ : std_logic;
SIGNAL \s_count[3]~42\ : std_logic;
SIGNAL \s_count[4]~43_combout\ : std_logic;
SIGNAL \s_count[4]~44\ : std_logic;
SIGNAL \s_count[5]~45_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \s_count[5]~46\ : std_logic;
SIGNAL \s_count[6]~47_combout\ : std_logic;
SIGNAL \s_count[6]~48\ : std_logic;
SIGNAL \s_count[7]~49_combout\ : std_logic;
SIGNAL \s_count[7]~50\ : std_logic;
SIGNAL \s_count[8]~51_combout\ : std_logic;
SIGNAL \s_count[8]~52\ : std_logic;
SIGNAL \s_count[9]~53_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \s_count[9]~54\ : std_logic;
SIGNAL \s_count[10]~55_combout\ : std_logic;
SIGNAL \s_count[10]~56\ : std_logic;
SIGNAL \s_count[11]~57_combout\ : std_logic;
SIGNAL \s_count[11]~58\ : std_logic;
SIGNAL \s_count[12]~59_combout\ : std_logic;
SIGNAL \s_count[12]~60\ : std_logic;
SIGNAL \s_count[13]~61_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \s_count[13]~62\ : std_logic;
SIGNAL \s_count[14]~63_combout\ : std_logic;
SIGNAL \s_count[14]~64\ : std_logic;
SIGNAL \s_count[15]~65_combout\ : std_logic;
SIGNAL \s_count[15]~66\ : std_logic;
SIGNAL \s_count[16]~67_combout\ : std_logic;
SIGNAL \s_count[16]~68\ : std_logic;
SIGNAL \s_count[17]~69_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \s_count[17]~70\ : std_logic;
SIGNAL \s_count[18]~71_combout\ : std_logic;
SIGNAL \s_count[18]~72\ : std_logic;
SIGNAL \s_count[19]~73_combout\ : std_logic;
SIGNAL \s_count[19]~74\ : std_logic;
SIGNAL \s_count[20]~75_combout\ : std_logic;
SIGNAL \s_count[20]~76\ : std_logic;
SIGNAL \s_count[21]~77_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \s_count[21]~78\ : std_logic;
SIGNAL \s_count[22]~79_combout\ : std_logic;
SIGNAL \s_count[22]~80\ : std_logic;
SIGNAL \s_count[23]~81_combout\ : std_logic;
SIGNAL \s_count[23]~82\ : std_logic;
SIGNAL \s_count[24]~83_combout\ : std_logic;
SIGNAL \s_count[24]~84\ : std_logic;
SIGNAL \s_count[25]~85_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \s_count[25]~86\ : std_logic;
SIGNAL \s_count[26]~87_combout\ : std_logic;
SIGNAL \s_count[26]~88\ : std_logic;
SIGNAL \s_count[27]~89_combout\ : std_logic;
SIGNAL \s_count[27]~90\ : std_logic;
SIGNAL \s_count[28]~91_combout\ : std_logic;
SIGNAL \s_count[28]~92\ : std_logic;
SIGNAL \s_count[29]~93_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \s_count[29]~94\ : std_logic;
SIGNAL \s_count[30]~95_combout\ : std_logic;
SIGNAL \s_count[30]~96\ : std_logic;
SIGNAL \s_count[31]~97_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \s_count[0]~38_combout\ : std_logic;
SIGNAL \s_count[0]~34\ : std_logic;
SIGNAL \s_count[1]~35_combout\ : std_logic;
SIGNAL \s_count[0]~32_combout\ : std_logic;
SIGNAL \timerOut~0_combout\ : std_logic;
SIGNAL \timerOut~reg0_q\ : std_logic;
SIGNAL s_count : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_enable <= enable;
ww_reset <= reset;
ww_start <= start;
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
	i => \timerOut~reg0_q\,
	devoe => ww_devoe,
	o => \timerOut~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

\s_count[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~33_combout\ = s_count(0) $ (VCC)
-- \s_count[0]~34\ = CARRY(s_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datad => VCC,
	combout => \s_count[0]~33_combout\,
	cout => \s_count[0]~34\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\s_count[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~37_combout\ = (\reset~input_o\) # (!\s_count[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[0]~32_combout\,
	datad => \reset~input_o\,
	combout => \s_count[0]~37_combout\);

\s_count[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[1]~35_combout\ = (s_count(1) & (!\s_count[0]~34\)) # (!s_count(1) & ((\s_count[0]~34\) # (GND)))
-- \s_count[1]~36\ = CARRY((!\s_count[0]~34\) # (!s_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datad => VCC,
	cin => \s_count[0]~34\,
	combout => \s_count[1]~35_combout\,
	cout => \s_count[1]~36\);

\s_count[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[2]~39_combout\ = (s_count(2) & (\s_count[1]~36\ $ (GND))) # (!s_count(2) & (!\s_count[1]~36\ & VCC))
-- \s_count[2]~40\ = CARRY((s_count(2) & !\s_count[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(2),
	datad => VCC,
	cin => \s_count[1]~36\,
	combout => \s_count[2]~39_combout\,
	cout => \s_count[2]~40\);

\s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[2]~39_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(2));

\s_count[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[3]~41_combout\ = (s_count(3) & (!\s_count[2]~40\)) # (!s_count(3) & ((\s_count[2]~40\) # (GND)))
-- \s_count[3]~42\ = CARRY((!\s_count[2]~40\) # (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datad => VCC,
	cin => \s_count[2]~40\,
	combout => \s_count[3]~41_combout\,
	cout => \s_count[3]~42\);

\s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[3]~41_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(3));

\s_count[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[4]~43_combout\ = (s_count(4) & (\s_count[3]~42\ $ (GND))) # (!s_count(4) & (!\s_count[3]~42\ & VCC))
-- \s_count[4]~44\ = CARRY((s_count(4) & !\s_count[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datad => VCC,
	cin => \s_count[3]~42\,
	combout => \s_count[4]~43_combout\,
	cout => \s_count[4]~44\);

\s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[4]~43_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(4));

\s_count[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[5]~45_combout\ = (s_count(5) & (!\s_count[4]~44\)) # (!s_count(5) & ((\s_count[4]~44\) # (GND)))
-- \s_count[5]~46\ = CARRY((!\s_count[4]~44\) # (!s_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datad => VCC,
	cin => \s_count[4]~44\,
	combout => \s_count[5]~45_combout\,
	cout => \s_count[5]~46\);

\s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[5]~45_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(5));

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!s_count(0) & (!s_count(3) & (!s_count(4) & !s_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datab => s_count(3),
	datac => s_count(4),
	datad => s_count(5),
	combout => \Equal0~0_combout\);

\s_count[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[6]~47_combout\ = (s_count(6) & (\s_count[5]~46\ $ (GND))) # (!s_count(6) & (!\s_count[5]~46\ & VCC))
-- \s_count[6]~48\ = CARRY((s_count(6) & !\s_count[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datad => VCC,
	cin => \s_count[5]~46\,
	combout => \s_count[6]~47_combout\,
	cout => \s_count[6]~48\);

\s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[6]~47_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(6));

\s_count[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[7]~49_combout\ = (s_count(7) & (!\s_count[6]~48\)) # (!s_count(7) & ((\s_count[6]~48\) # (GND)))
-- \s_count[7]~50\ = CARRY((!\s_count[6]~48\) # (!s_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(7),
	datad => VCC,
	cin => \s_count[6]~48\,
	combout => \s_count[7]~49_combout\,
	cout => \s_count[7]~50\);

\s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[7]~49_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(7));

\s_count[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[8]~51_combout\ = (s_count(8) & (\s_count[7]~50\ $ (GND))) # (!s_count(8) & (!\s_count[7]~50\ & VCC))
-- \s_count[8]~52\ = CARRY((s_count(8) & !\s_count[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(8),
	datad => VCC,
	cin => \s_count[7]~50\,
	combout => \s_count[8]~51_combout\,
	cout => \s_count[8]~52\);

\s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[8]~51_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(8));

\s_count[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[9]~53_combout\ = (s_count(9) & (!\s_count[8]~52\)) # (!s_count(9) & ((\s_count[8]~52\) # (GND)))
-- \s_count[9]~54\ = CARRY((!\s_count[8]~52\) # (!s_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(9),
	datad => VCC,
	cin => \s_count[8]~52\,
	combout => \s_count[9]~53_combout\,
	cout => \s_count[9]~54\);

\s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[9]~53_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(9));

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!s_count(6) & (!s_count(7) & (!s_count(8) & !s_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datab => s_count(7),
	datac => s_count(8),
	datad => s_count(9),
	combout => \Equal0~1_combout\);

\s_count[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[10]~55_combout\ = (s_count(10) & (\s_count[9]~54\ $ (GND))) # (!s_count(10) & (!\s_count[9]~54\ & VCC))
-- \s_count[10]~56\ = CARRY((s_count(10) & !\s_count[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(10),
	datad => VCC,
	cin => \s_count[9]~54\,
	combout => \s_count[10]~55_combout\,
	cout => \s_count[10]~56\);

\s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[10]~55_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(10));

\s_count[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[11]~57_combout\ = (s_count(11) & (!\s_count[10]~56\)) # (!s_count(11) & ((\s_count[10]~56\) # (GND)))
-- \s_count[11]~58\ = CARRY((!\s_count[10]~56\) # (!s_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datad => VCC,
	cin => \s_count[10]~56\,
	combout => \s_count[11]~57_combout\,
	cout => \s_count[11]~58\);

\s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[11]~57_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(11));

\s_count[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[12]~59_combout\ = (s_count(12) & (\s_count[11]~58\ $ (GND))) # (!s_count(12) & (!\s_count[11]~58\ & VCC))
-- \s_count[12]~60\ = CARRY((s_count(12) & !\s_count[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datad => VCC,
	cin => \s_count[11]~58\,
	combout => \s_count[12]~59_combout\,
	cout => \s_count[12]~60\);

\s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[12]~59_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(12));

\s_count[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[13]~61_combout\ = (s_count(13) & (!\s_count[12]~60\)) # (!s_count(13) & ((\s_count[12]~60\) # (GND)))
-- \s_count[13]~62\ = CARRY((!\s_count[12]~60\) # (!s_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(13),
	datad => VCC,
	cin => \s_count[12]~60\,
	combout => \s_count[13]~61_combout\,
	cout => \s_count[13]~62\);

\s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[13]~61_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(13));

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!s_count(10) & (!s_count(11) & (!s_count(12) & !s_count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(10),
	datab => s_count(11),
	datac => s_count(12),
	datad => s_count(13),
	combout => \Equal0~2_combout\);

\s_count[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[14]~63_combout\ = (s_count(14) & (\s_count[13]~62\ $ (GND))) # (!s_count(14) & (!\s_count[13]~62\ & VCC))
-- \s_count[14]~64\ = CARRY((s_count(14) & !\s_count[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datad => VCC,
	cin => \s_count[13]~62\,
	combout => \s_count[14]~63_combout\,
	cout => \s_count[14]~64\);

\s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[14]~63_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(14));

\s_count[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[15]~65_combout\ = (s_count(15) & (!\s_count[14]~64\)) # (!s_count(15) & ((\s_count[14]~64\) # (GND)))
-- \s_count[15]~66\ = CARRY((!\s_count[14]~64\) # (!s_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(15),
	datad => VCC,
	cin => \s_count[14]~64\,
	combout => \s_count[15]~65_combout\,
	cout => \s_count[15]~66\);

\s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[15]~65_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(15));

\s_count[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[16]~67_combout\ = (s_count(16) & (\s_count[15]~66\ $ (GND))) # (!s_count(16) & (!\s_count[15]~66\ & VCC))
-- \s_count[16]~68\ = CARRY((s_count(16) & !\s_count[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(16),
	datad => VCC,
	cin => \s_count[15]~66\,
	combout => \s_count[16]~67_combout\,
	cout => \s_count[16]~68\);

\s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[16]~67_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(16));

\s_count[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[17]~69_combout\ = (s_count(17) & (!\s_count[16]~68\)) # (!s_count(17) & ((\s_count[16]~68\) # (GND)))
-- \s_count[17]~70\ = CARRY((!\s_count[16]~68\) # (!s_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(17),
	datad => VCC,
	cin => \s_count[16]~68\,
	combout => \s_count[17]~69_combout\,
	cout => \s_count[17]~70\);

\s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[17]~69_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(17));

\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!s_count(14) & (!s_count(15) & (!s_count(16) & !s_count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datab => s_count(15),
	datac => s_count(16),
	datad => s_count(17),
	combout => \Equal0~3_combout\);

\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\s_count[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[18]~71_combout\ = (s_count(18) & (\s_count[17]~70\ $ (GND))) # (!s_count(18) & (!\s_count[17]~70\ & VCC))
-- \s_count[18]~72\ = CARRY((s_count(18) & !\s_count[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(18),
	datad => VCC,
	cin => \s_count[17]~70\,
	combout => \s_count[18]~71_combout\,
	cout => \s_count[18]~72\);

\s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[18]~71_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(18));

\s_count[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[19]~73_combout\ = (s_count(19) & (!\s_count[18]~72\)) # (!s_count(19) & ((\s_count[18]~72\) # (GND)))
-- \s_count[19]~74\ = CARRY((!\s_count[18]~72\) # (!s_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(19),
	datad => VCC,
	cin => \s_count[18]~72\,
	combout => \s_count[19]~73_combout\,
	cout => \s_count[19]~74\);

\s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[19]~73_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(19));

\s_count[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[20]~75_combout\ = (s_count(20) & (\s_count[19]~74\ $ (GND))) # (!s_count(20) & (!\s_count[19]~74\ & VCC))
-- \s_count[20]~76\ = CARRY((s_count(20) & !\s_count[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(20),
	datad => VCC,
	cin => \s_count[19]~74\,
	combout => \s_count[20]~75_combout\,
	cout => \s_count[20]~76\);

\s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[20]~75_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(20));

\s_count[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[21]~77_combout\ = (s_count(21) & (!\s_count[20]~76\)) # (!s_count(21) & ((\s_count[20]~76\) # (GND)))
-- \s_count[21]~78\ = CARRY((!\s_count[20]~76\) # (!s_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(21),
	datad => VCC,
	cin => \s_count[20]~76\,
	combout => \s_count[21]~77_combout\,
	cout => \s_count[21]~78\);

\s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[21]~77_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(21));

\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!s_count(18) & (!s_count(19) & (!s_count(20) & !s_count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(18),
	datab => s_count(19),
	datac => s_count(20),
	datad => s_count(21),
	combout => \Equal0~5_combout\);

\s_count[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[22]~79_combout\ = (s_count(22) & (\s_count[21]~78\ $ (GND))) # (!s_count(22) & (!\s_count[21]~78\ & VCC))
-- \s_count[22]~80\ = CARRY((s_count(22) & !\s_count[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(22),
	datad => VCC,
	cin => \s_count[21]~78\,
	combout => \s_count[22]~79_combout\,
	cout => \s_count[22]~80\);

\s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[22]~79_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(22));

\s_count[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[23]~81_combout\ = (s_count(23) & (!\s_count[22]~80\)) # (!s_count(23) & ((\s_count[22]~80\) # (GND)))
-- \s_count[23]~82\ = CARRY((!\s_count[22]~80\) # (!s_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(23),
	datad => VCC,
	cin => \s_count[22]~80\,
	combout => \s_count[23]~81_combout\,
	cout => \s_count[23]~82\);

\s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[23]~81_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(23));

\s_count[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[24]~83_combout\ = (s_count(24) & (\s_count[23]~82\ $ (GND))) # (!s_count(24) & (!\s_count[23]~82\ & VCC))
-- \s_count[24]~84\ = CARRY((s_count(24) & !\s_count[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(24),
	datad => VCC,
	cin => \s_count[23]~82\,
	combout => \s_count[24]~83_combout\,
	cout => \s_count[24]~84\);

\s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[24]~83_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(24));

\s_count[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[25]~85_combout\ = (s_count(25) & (!\s_count[24]~84\)) # (!s_count(25) & ((\s_count[24]~84\) # (GND)))
-- \s_count[25]~86\ = CARRY((!\s_count[24]~84\) # (!s_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(25),
	datad => VCC,
	cin => \s_count[24]~84\,
	combout => \s_count[25]~85_combout\,
	cout => \s_count[25]~86\);

\s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[25]~85_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(25));

\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!s_count(22) & (!s_count(23) & (!s_count(24) & !s_count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(22),
	datab => s_count(23),
	datac => s_count(24),
	datad => s_count(25),
	combout => \Equal0~6_combout\);

\s_count[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[26]~87_combout\ = (s_count(26) & (\s_count[25]~86\ $ (GND))) # (!s_count(26) & (!\s_count[25]~86\ & VCC))
-- \s_count[26]~88\ = CARRY((s_count(26) & !\s_count[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(26),
	datad => VCC,
	cin => \s_count[25]~86\,
	combout => \s_count[26]~87_combout\,
	cout => \s_count[26]~88\);

\s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[26]~87_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(26));

\s_count[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[27]~89_combout\ = (s_count(27) & (!\s_count[26]~88\)) # (!s_count(27) & ((\s_count[26]~88\) # (GND)))
-- \s_count[27]~90\ = CARRY((!\s_count[26]~88\) # (!s_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(27),
	datad => VCC,
	cin => \s_count[26]~88\,
	combout => \s_count[27]~89_combout\,
	cout => \s_count[27]~90\);

\s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[27]~89_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(27));

\s_count[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[28]~91_combout\ = (s_count(28) & (\s_count[27]~90\ $ (GND))) # (!s_count(28) & (!\s_count[27]~90\ & VCC))
-- \s_count[28]~92\ = CARRY((s_count(28) & !\s_count[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(28),
	datad => VCC,
	cin => \s_count[27]~90\,
	combout => \s_count[28]~91_combout\,
	cout => \s_count[28]~92\);

\s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[28]~91_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(28));

\s_count[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[29]~93_combout\ = (s_count(29) & (!\s_count[28]~92\)) # (!s_count(29) & ((\s_count[28]~92\) # (GND)))
-- \s_count[29]~94\ = CARRY((!\s_count[28]~92\) # (!s_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(29),
	datad => VCC,
	cin => \s_count[28]~92\,
	combout => \s_count[29]~93_combout\,
	cout => \s_count[29]~94\);

\s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[29]~93_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(29));

\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!s_count(26) & (!s_count(27) & (!s_count(28) & !s_count(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(26),
	datab => s_count(27),
	datac => s_count(28),
	datad => s_count(29),
	combout => \Equal0~7_combout\);

\s_count[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[30]~95_combout\ = (s_count(30) & (\s_count[29]~94\ $ (GND))) # (!s_count(30) & (!\s_count[29]~94\ & VCC))
-- \s_count[30]~96\ = CARRY((s_count(30) & !\s_count[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(30),
	datad => VCC,
	cin => \s_count[29]~94\,
	combout => \s_count[30]~95_combout\,
	cout => \s_count[30]~96\);

\s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[30]~95_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(30));

\s_count[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[31]~97_combout\ = s_count(31) $ (\s_count[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(31),
	cin => \s_count[30]~96\,
	combout => \s_count[31]~97_combout\);

\s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[31]~97_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(31));

\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (!s_count(30) & !s_count(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datac => s_count(30),
	datad => s_count(31),
	combout => \Equal0~8_combout\);

\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (!s_count(1) & !s_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => s_count(1),
	datad => s_count(2),
	combout => \Equal0~10_combout\);

\s_count[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~38_combout\ = (\reset~input_o\) # ((\enable~input_o\ & ((\start~input_o\) # (!\Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \start~input_o\,
	datac => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \s_count[0]~38_combout\);

\s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[0]~33_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(0));

\s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[1]~35_combout\,
	sclr => \s_count[0]~37_combout\,
	ena => \s_count[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(1));

\s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~32_combout\ = ((s_count(1) & ((!s_count(2)))) # (!s_count(1) & ((\start~input_o\) # (s_count(2))))) # (!\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => s_count(1),
	datac => s_count(2),
	datad => \Equal0~9_combout\,
	combout => \s_count[0]~32_combout\);

\timerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOut~0_combout\ = (\enable~input_o\ & (\s_count[0]~32_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \s_count[0]~32_combout\,
	datad => \reset~input_o\,
	combout => \timerOut~0_combout\);

\timerOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \timerOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOut~reg0_q\);

ww_timerOut <= \timerOut~output_o\;
END structure;


