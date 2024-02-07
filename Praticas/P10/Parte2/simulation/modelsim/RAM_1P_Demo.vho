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

-- DATE "05/09/2023 10:46:59"

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

ENTITY 	RAM_1P_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(12 DOWNTO 0)
	);
END RAM_1P_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM_1P_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(12 DOWNTO 0);
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \RAM|s_memory~231_combout\ : std_logic;
SIGNAL \RAM|s_memory~232_combout\ : std_logic;
SIGNAL \RAM|s_memory~68_q\ : std_logic;
SIGNAL \RAM|s_memory~233_combout\ : std_logic;
SIGNAL \RAM|s_memory~234_combout\ : std_logic;
SIGNAL \RAM|s_memory~52_q\ : std_logic;
SIGNAL \RAM|s_memory~143_combout\ : std_logic;
SIGNAL \RAM|s_memory~229_combout\ : std_logic;
SIGNAL \RAM|s_memory~230_combout\ : std_logic;
SIGNAL \RAM|s_memory~60_q\ : std_logic;
SIGNAL \RAM|s_memory~235_combout\ : std_logic;
SIGNAL \RAM|s_memory~236_combout\ : std_logic;
SIGNAL \RAM|s_memory~76_q\ : std_logic;
SIGNAL \RAM|s_memory~144_combout\ : std_logic;
SIGNAL \RAM|s_memory~239_combout\ : std_logic;
SIGNAL \RAM|s_memory~240_combout\ : std_logic;
SIGNAL \RAM|s_memory~28_q\ : std_logic;
SIGNAL \RAM|s_memory~241_combout\ : std_logic;
SIGNAL \RAM|s_memory~242_combout\ : std_logic;
SIGNAL \RAM|s_memory~20_q\ : std_logic;
SIGNAL \RAM|s_memory~145_combout\ : std_logic;
SIGNAL \RAM|s_memory~243_combout\ : std_logic;
SIGNAL \RAM|s_memory~244_combout\ : std_logic;
SIGNAL \RAM|s_memory~44_q\ : std_logic;
SIGNAL \RAM|s_memory~237_combout\ : std_logic;
SIGNAL \RAM|s_memory~238_combout\ : std_logic;
SIGNAL \RAM|s_memory~36_q\ : std_logic;
SIGNAL \RAM|s_memory~146_combout\ : std_logic;
SIGNAL \RAM|s_memory~147_combout\ : std_logic;
SIGNAL \RAM|s_memory~245_combout\ : std_logic;
SIGNAL \RAM|s_memory~246_combout\ : std_logic;
SIGNAL \RAM|s_memory~124_q\ : std_logic;
SIGNAL \RAM|s_memory~247_combout\ : std_logic;
SIGNAL \RAM|s_memory~248_combout\ : std_logic;
SIGNAL \RAM|s_memory~132_q\ : std_logic;
SIGNAL \RAM|s_memory~249_combout\ : std_logic;
SIGNAL \RAM|s_memory~250_combout\ : std_logic;
SIGNAL \RAM|s_memory~116_q\ : std_logic;
SIGNAL \RAM|s_memory~148_combout\ : std_logic;
SIGNAL \RAM|s_memory~251_combout\ : std_logic;
SIGNAL \RAM|s_memory~252_combout\ : std_logic;
SIGNAL \RAM|s_memory~140_q\ : std_logic;
SIGNAL \RAM|s_memory~149_combout\ : std_logic;
SIGNAL \RAM|s_memory~92feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~223_combout\ : std_logic;
SIGNAL \RAM|s_memory~224_combout\ : std_logic;
SIGNAL \RAM|s_memory~92_q\ : std_logic;
SIGNAL \RAM|s_memory~225_combout\ : std_logic;
SIGNAL \RAM|s_memory~226_combout\ : std_logic;
SIGNAL \RAM|s_memory~84_q\ : std_logic;
SIGNAL \RAM|s_memory~141_combout\ : std_logic;
SIGNAL \RAM|s_memory~221_combout\ : std_logic;
SIGNAL \RAM|s_memory~222_combout\ : std_logic;
SIGNAL \RAM|s_memory~100_q\ : std_logic;
SIGNAL \RAM|s_memory~227_combout\ : std_logic;
SIGNAL \RAM|s_memory~228_combout\ : std_logic;
SIGNAL \RAM|s_memory~108_q\ : std_logic;
SIGNAL \RAM|s_memory~142_combout\ : std_logic;
SIGNAL \RAM|s_memory~150_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \RAM|s_memory~75feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~75_q\ : std_logic;
SIGNAL \RAM|s_memory~43_q\ : std_logic;
SIGNAL \RAM|s_memory~158_combout\ : std_logic;
SIGNAL \RAM|s_memory~107feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~107_q\ : std_logic;
SIGNAL \RAM|s_memory~139_q\ : std_logic;
SIGNAL \RAM|s_memory~159_combout\ : std_logic;
SIGNAL \RAM|s_memory~99feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~99_q\ : std_logic;
SIGNAL \RAM|s_memory~35_q\ : std_logic;
SIGNAL \RAM|s_memory~151_combout\ : std_logic;
SIGNAL \RAM|s_memory~131_q\ : std_logic;
SIGNAL \RAM|s_memory~67_q\ : std_logic;
SIGNAL \RAM|s_memory~152_combout\ : std_logic;
SIGNAL \RAM|s_memory~83feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~83_q\ : std_logic;
SIGNAL \RAM|s_memory~19_q\ : std_logic;
SIGNAL \RAM|s_memory~155_combout\ : std_logic;
SIGNAL \RAM|s_memory~51_q\ : std_logic;
SIGNAL \RAM|s_memory~115_q\ : std_logic;
SIGNAL \RAM|s_memory~156_combout\ : std_logic;
SIGNAL \RAM|s_memory~59feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~59_q\ : std_logic;
SIGNAL \RAM|s_memory~27_q\ : std_logic;
SIGNAL \RAM|s_memory~153_combout\ : std_logic;
SIGNAL \RAM|s_memory~91_q\ : std_logic;
SIGNAL \RAM|s_memory~123_q\ : std_logic;
SIGNAL \RAM|s_memory~154_combout\ : std_logic;
SIGNAL \RAM|s_memory~157_combout\ : std_logic;
SIGNAL \RAM|s_memory~160_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \RAM|s_memory~58_q\ : std_logic;
SIGNAL \RAM|s_memory~50_q\ : std_logic;
SIGNAL \RAM|s_memory~161_combout\ : std_logic;
SIGNAL \RAM|s_memory~66feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~66_q\ : std_logic;
SIGNAL \RAM|s_memory~74_q\ : std_logic;
SIGNAL \RAM|s_memory~162_combout\ : std_logic;
SIGNAL \RAM|s_memory~34feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~34_q\ : std_logic;
SIGNAL \RAM|s_memory~18_q\ : std_logic;
SIGNAL \RAM|s_memory~165_combout\ : std_logic;
SIGNAL \RAM|s_memory~42_q\ : std_logic;
SIGNAL \RAM|s_memory~26feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~26_q\ : std_logic;
SIGNAL \RAM|s_memory~166_combout\ : std_logic;
SIGNAL \RAM|s_memory~90feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~90_q\ : std_logic;
SIGNAL \RAM|s_memory~106_q\ : std_logic;
SIGNAL \RAM|s_memory~98_q\ : std_logic;
SIGNAL \RAM|s_memory~82_q\ : std_logic;
SIGNAL \RAM|s_memory~163_combout\ : std_logic;
SIGNAL \RAM|s_memory~164_combout\ : std_logic;
SIGNAL \RAM|s_memory~167_combout\ : std_logic;
SIGNAL \RAM|s_memory~130feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~130_q\ : std_logic;
SIGNAL \RAM|s_memory~122_q\ : std_logic;
SIGNAL \RAM|s_memory~114_q\ : std_logic;
SIGNAL \RAM|s_memory~168_combout\ : std_logic;
SIGNAL \RAM|s_memory~138_q\ : std_logic;
SIGNAL \RAM|s_memory~169_combout\ : std_logic;
SIGNAL \RAM|s_memory~170_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \RAM|s_memory~89_q\ : std_logic;
SIGNAL \RAM|s_memory~25_q\ : std_logic;
SIGNAL \RAM|s_memory~171_combout\ : std_logic;
SIGNAL \RAM|s_memory~121_q\ : std_logic;
SIGNAL \RAM|s_memory~57feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~57_q\ : std_logic;
SIGNAL \RAM|s_memory~172_combout\ : std_logic;
SIGNAL \RAM|s_memory~49feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~49_q\ : std_logic;
SIGNAL \RAM|s_memory~17_q\ : std_logic;
SIGNAL \RAM|s_memory~175_combout\ : std_logic;
SIGNAL \RAM|s_memory~113_q\ : std_logic;
SIGNAL \RAM|s_memory~81_q\ : std_logic;
SIGNAL \RAM|s_memory~176_combout\ : std_logic;
SIGNAL \RAM|s_memory~97feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~97_q\ : std_logic;
SIGNAL \RAM|s_memory~129_q\ : std_logic;
SIGNAL \RAM|s_memory~65feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~65_q\ : std_logic;
SIGNAL \RAM|s_memory~33_q\ : std_logic;
SIGNAL \RAM|s_memory~173_combout\ : std_logic;
SIGNAL \RAM|s_memory~174_combout\ : std_logic;
SIGNAL \RAM|s_memory~177_combout\ : std_logic;
SIGNAL \RAM|s_memory~105feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~105_q\ : std_logic;
SIGNAL \RAM|s_memory~41_q\ : std_logic;
SIGNAL \RAM|s_memory~178_combout\ : std_logic;
SIGNAL \RAM|s_memory~73feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~73_q\ : std_logic;
SIGNAL \RAM|s_memory~137feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~137_q\ : std_logic;
SIGNAL \RAM|s_memory~179_combout\ : std_logic;
SIGNAL \RAM|s_memory~180_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \RAM|s_memory~112_q\ : std_logic;
SIGNAL \RAM|s_memory~128feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~128_q\ : std_logic;
SIGNAL \RAM|s_memory~188_combout\ : std_logic;
SIGNAL \RAM|s_memory~120_q\ : std_logic;
SIGNAL \RAM|s_memory~136_q\ : std_logic;
SIGNAL \RAM|s_memory~189_combout\ : std_logic;
SIGNAL \RAM|s_memory~64_q\ : std_logic;
SIGNAL \RAM|s_memory~48_q\ : std_logic;
SIGNAL \RAM|s_memory~183_combout\ : std_logic;
SIGNAL \RAM|s_memory~56_q\ : std_logic;
SIGNAL \RAM|s_memory~72_q\ : std_logic;
SIGNAL \RAM|s_memory~184_combout\ : std_logic;
SIGNAL \RAM|s_memory~32_q\ : std_logic;
SIGNAL \RAM|s_memory~24_q\ : std_logic;
SIGNAL \RAM|s_memory~16_q\ : std_logic;
SIGNAL \RAM|s_memory~185_combout\ : std_logic;
SIGNAL \RAM|s_memory~40_q\ : std_logic;
SIGNAL \RAM|s_memory~186_combout\ : std_logic;
SIGNAL \RAM|s_memory~187_combout\ : std_logic;
SIGNAL \RAM|s_memory~88feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~88_q\ : std_logic;
SIGNAL \RAM|s_memory~80_q\ : std_logic;
SIGNAL \RAM|s_memory~181_combout\ : std_logic;
SIGNAL \RAM|s_memory~96_q\ : std_logic;
SIGNAL \RAM|s_memory~104_q\ : std_logic;
SIGNAL \RAM|s_memory~182_combout\ : std_logic;
SIGNAL \RAM|s_memory~190_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \RAM|s_memory~103_q\ : std_logic;
SIGNAL \RAM|s_memory~71_q\ : std_logic;
SIGNAL \RAM|s_memory~39_q\ : std_logic;
SIGNAL \RAM|s_memory~198_combout\ : std_logic;
SIGNAL \RAM|s_memory~135_q\ : std_logic;
SIGNAL \RAM|s_memory~199_combout\ : std_logic;
SIGNAL \RAM|s_memory~63feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~63_q\ : std_logic;
SIGNAL \RAM|s_memory~127_q\ : std_logic;
SIGNAL \RAM|s_memory~95_q\ : std_logic;
SIGNAL \RAM|s_memory~31_q\ : std_logic;
SIGNAL \RAM|s_memory~191_combout\ : std_logic;
SIGNAL \RAM|s_memory~192_combout\ : std_logic;
SIGNAL \RAM|s_memory~87feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~87_q\ : std_logic;
SIGNAL \RAM|s_memory~119_q\ : std_logic;
SIGNAL \RAM|s_memory~55_q\ : std_logic;
SIGNAL \RAM|s_memory~23_q\ : std_logic;
SIGNAL \RAM|s_memory~193_combout\ : std_logic;
SIGNAL \RAM|s_memory~194_combout\ : std_logic;
SIGNAL \RAM|s_memory~47feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~47_q\ : std_logic;
SIGNAL \RAM|s_memory~79feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~79_q\ : std_logic;
SIGNAL \RAM|s_memory~15_q\ : std_logic;
SIGNAL \RAM|s_memory~195_combout\ : std_logic;
SIGNAL \RAM|s_memory~111_q\ : std_logic;
SIGNAL \RAM|s_memory~196_combout\ : std_logic;
SIGNAL \RAM|s_memory~197_combout\ : std_logic;
SIGNAL \RAM|s_memory~200_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \RAM|s_memory~94_q\ : std_logic;
SIGNAL \RAM|s_memory~78feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~78_q\ : std_logic;
SIGNAL \RAM|s_memory~203_combout\ : std_logic;
SIGNAL \RAM|s_memory~86feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~86_q\ : std_logic;
SIGNAL \RAM|s_memory~102_q\ : std_logic;
SIGNAL \RAM|s_memory~204_combout\ : std_logic;
SIGNAL \RAM|s_memory~30_q\ : std_logic;
SIGNAL \RAM|s_memory~14_q\ : std_logic;
SIGNAL \RAM|s_memory~205_combout\ : std_logic;
SIGNAL \RAM|s_memory~22_q\ : std_logic;
SIGNAL \RAM|s_memory~38_q\ : std_logic;
SIGNAL \RAM|s_memory~206_combout\ : std_logic;
SIGNAL \RAM|s_memory~207_combout\ : std_logic;
SIGNAL \RAM|s_memory~118_q\ : std_logic;
SIGNAL \RAM|s_memory~110_q\ : std_logic;
SIGNAL \RAM|s_memory~208_combout\ : std_logic;
SIGNAL \RAM|s_memory~126feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~126_q\ : std_logic;
SIGNAL \RAM|s_memory~134_q\ : std_logic;
SIGNAL \RAM|s_memory~209_combout\ : std_logic;
SIGNAL \RAM|s_memory~54_q\ : std_logic;
SIGNAL \RAM|s_memory~46_q\ : std_logic;
SIGNAL \RAM|s_memory~201_combout\ : std_logic;
SIGNAL \RAM|s_memory~70_q\ : std_logic;
SIGNAL \RAM|s_memory~62feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~62_q\ : std_logic;
SIGNAL \RAM|s_memory~202_combout\ : std_logic;
SIGNAL \RAM|s_memory~210_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \RAM|s_memory~53_q\ : std_logic;
SIGNAL \RAM|s_memory~85_q\ : std_logic;
SIGNAL \RAM|s_memory~21_q\ : std_logic;
SIGNAL \RAM|s_memory~211_combout\ : std_logic;
SIGNAL \RAM|s_memory~117_q\ : std_logic;
SIGNAL \RAM|s_memory~212_combout\ : std_logic;
SIGNAL \RAM|s_memory~93_q\ : std_logic;
SIGNAL \RAM|s_memory~125_q\ : std_logic;
SIGNAL \RAM|s_memory~61_q\ : std_logic;
SIGNAL \RAM|s_memory~29_q\ : std_logic;
SIGNAL \RAM|s_memory~213_combout\ : std_logic;
SIGNAL \RAM|s_memory~214_combout\ : std_logic;
SIGNAL \RAM|s_memory~77_q\ : std_logic;
SIGNAL \RAM|s_memory~109_q\ : std_logic;
SIGNAL \RAM|s_memory~13_q\ : std_logic;
SIGNAL \RAM|s_memory~45_q\ : std_logic;
SIGNAL \RAM|s_memory~215_combout\ : std_logic;
SIGNAL \RAM|s_memory~216_combout\ : std_logic;
SIGNAL \RAM|s_memory~217_combout\ : std_logic;
SIGNAL \RAM|s_memory~101_q\ : std_logic;
SIGNAL \RAM|s_memory~37_q\ : std_logic;
SIGNAL \RAM|s_memory~218_combout\ : std_logic;
SIGNAL \RAM|s_memory~69_q\ : std_logic;
SIGNAL \RAM|s_memory~133feeder_combout\ : std_logic;
SIGNAL \RAM|s_memory~133_q\ : std_logic;
SIGNAL \RAM|s_memory~219_combout\ : std_logic;
SIGNAL \RAM|s_memory~220_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|s_memory~150_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|s_memory~160_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|s_memory~170_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|s_memory~180_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|s_memory~190_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|s_memory~200_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|s_memory~210_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|s_memory~220_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X112_Y36_N18
\RAM|s_memory~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~231_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (!\SW[4]~input_o\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~231_combout\);

-- Location: LCCOMB_X112_Y36_N28
\RAM|s_memory~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~232_combout\ = (\SW[0]~input_o\ & \RAM|s_memory~231_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \RAM|s_memory~231_combout\,
	combout => \RAM|s_memory~232_combout\);

-- Location: FF_X113_Y36_N17
\RAM|s_memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~68_q\);

-- Location: LCCOMB_X112_Y36_N22
\RAM|s_memory~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~233_combout\ = (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & (!\SW[4]~input_o\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~233_combout\);

-- Location: LCCOMB_X112_Y36_N0
\RAM|s_memory~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~234_combout\ = (\RAM|s_memory~233_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~233_combout\,
	datad => \SW[0]~input_o\,
	combout => \RAM|s_memory~234_combout\);

-- Location: FF_X113_Y36_N19
\RAM|s_memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~52_q\);

-- Location: LCCOMB_X113_Y36_N18
\RAM|s_memory~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~143_combout\ = (\SW[1]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\RAM|s_memory~68_q\)) # (!\SW[2]~input_o\ & ((\RAM|s_memory~52_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \RAM|s_memory~68_q\,
	datac => \RAM|s_memory~52_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~143_combout\);

-- Location: LCCOMB_X112_Y36_N30
\RAM|s_memory~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~229_combout\ = (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[4]~input_o\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~229_combout\);

-- Location: LCCOMB_X112_Y36_N8
\RAM|s_memory~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~230_combout\ = (\RAM|s_memory~229_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~229_combout\,
	datad => \SW[0]~input_o\,
	combout => \RAM|s_memory~230_combout\);

-- Location: FF_X114_Y36_N1
\RAM|s_memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~60_q\);

-- Location: LCCOMB_X112_Y36_N26
\RAM|s_memory~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~235_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[4]~input_o\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~235_combout\);

-- Location: LCCOMB_X112_Y36_N20
\RAM|s_memory~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~236_combout\ = (\RAM|s_memory~235_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~235_combout\,
	datad => \SW[0]~input_o\,
	combout => \RAM|s_memory~236_combout\);

-- Location: FF_X114_Y36_N11
\RAM|s_memory~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~76_q\);

-- Location: LCCOMB_X114_Y36_N10
\RAM|s_memory~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~144_combout\ = (\RAM|s_memory~143_combout\ & (((\RAM|s_memory~76_q\) # (!\SW[1]~input_o\)))) # (!\RAM|s_memory~143_combout\ & (\RAM|s_memory~60_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~143_combout\,
	datab => \RAM|s_memory~60_q\,
	datac => \RAM|s_memory~76_q\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~144_combout\);

-- Location: LCCOMB_X113_Y38_N28
\RAM|s_memory~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~239_combout\ = (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~239_combout\);

-- Location: LCCOMB_X113_Y38_N10
\RAM|s_memory~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~240_combout\ = (\SW[0]~input_o\ & \RAM|s_memory~239_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \RAM|s_memory~239_combout\,
	combout => \RAM|s_memory~240_combout\);

-- Location: FF_X113_Y37_N9
\RAM|s_memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~28_q\);

-- Location: LCCOMB_X113_Y38_N6
\RAM|s_memory~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~241_combout\ = (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~241_combout\);

-- Location: LCCOMB_X112_Y38_N18
\RAM|s_memory~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~242_combout\ = (\SW[0]~input_o\ & \RAM|s_memory~241_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \RAM|s_memory~241_combout\,
	combout => \RAM|s_memory~242_combout\);

-- Location: FF_X113_Y37_N3
\RAM|s_memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~20_q\);

-- Location: LCCOMB_X113_Y37_N2
\RAM|s_memory~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~145_combout\ = (\SW[1]~input_o\ & ((\RAM|s_memory~28_q\) # ((\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (((\RAM|s_memory~20_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \RAM|s_memory~28_q\,
	datac => \RAM|s_memory~20_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~145_combout\);

-- Location: LCCOMB_X113_Y38_N0
\RAM|s_memory~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~243_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~243_combout\);

-- Location: LCCOMB_X113_Y38_N26
\RAM|s_memory~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~244_combout\ = (\SW[0]~input_o\ & \RAM|s_memory~243_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \RAM|s_memory~243_combout\,
	combout => \RAM|s_memory~244_combout\);

-- Location: FF_X114_Y37_N17
\RAM|s_memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~44_q\);

-- Location: LCCOMB_X112_Y36_N6
\RAM|s_memory~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~237_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (!\SW[4]~input_o\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~237_combout\);

-- Location: LCCOMB_X112_Y36_N24
\RAM|s_memory~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~238_combout\ = (\SW[0]~input_o\ & \RAM|s_memory~237_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \RAM|s_memory~237_combout\,
	combout => \RAM|s_memory~238_combout\);

-- Location: FF_X114_Y40_N9
\RAM|s_memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~36_q\);

-- Location: LCCOMB_X114_Y37_N16
\RAM|s_memory~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~146_combout\ = (\RAM|s_memory~145_combout\ & (((\RAM|s_memory~44_q\)) # (!\SW[2]~input_o\))) # (!\RAM|s_memory~145_combout\ & (\SW[2]~input_o\ & ((\RAM|s_memory~36_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~145_combout\,
	datab => \SW[2]~input_o\,
	datac => \RAM|s_memory~44_q\,
	datad => \RAM|s_memory~36_q\,
	combout => \RAM|s_memory~146_combout\);

-- Location: LCCOMB_X114_Y37_N26
\RAM|s_memory~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~147_combout\ = (\SW[4]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[3]~input_o\ & (\RAM|s_memory~144_combout\)) # (!\SW[3]~input_o\ & ((\RAM|s_memory~146_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~144_combout\,
	datab => \RAM|s_memory~146_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~147_combout\);

-- Location: LCCOMB_X113_Y38_N18
\RAM|s_memory~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~245_combout\ = (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~245_combout\);

-- Location: LCCOMB_X113_Y38_N20
\RAM|s_memory~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~246_combout\ = (\SW[0]~input_o\ & \RAM|s_memory~245_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \RAM|s_memory~245_combout\,
	combout => \RAM|s_memory~246_combout\);

-- Location: FF_X114_Y39_N27
\RAM|s_memory~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~124_q\);

-- Location: LCCOMB_X114_Y40_N6
\RAM|s_memory~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~247_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~247_combout\);

-- Location: LCCOMB_X114_Y40_N30
\RAM|s_memory~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~248_combout\ = (\RAM|s_memory~247_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~247_combout\,
	datab => \SW[0]~input_o\,
	combout => \RAM|s_memory~248_combout\);

-- Location: FF_X114_Y40_N27
\RAM|s_memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~132_q\);

-- Location: LCCOMB_X112_Y40_N30
\RAM|s_memory~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~249_combout\ = (!\SW[2]~input_o\ & (\SW[3]~input_o\ & (\SW[4]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~249_combout\);

-- Location: LCCOMB_X112_Y40_N28
\RAM|s_memory~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~250_combout\ = (\RAM|s_memory~249_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~249_combout\,
	datad => \SW[0]~input_o\,
	combout => \RAM|s_memory~250_combout\);

-- Location: FF_X112_Y40_N25
\RAM|s_memory~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~116_q\);

-- Location: LCCOMB_X112_Y40_N24
\RAM|s_memory~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~148_combout\ = (\SW[2]~input_o\ & ((\RAM|s_memory~132_q\) # ((\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & (((\RAM|s_memory~116_q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \RAM|s_memory~132_q\,
	datac => \RAM|s_memory~116_q\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~148_combout\);

-- Location: LCCOMB_X113_Y38_N22
\RAM|s_memory~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~251_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & (\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~251_combout\);

-- Location: LCCOMB_X112_Y38_N10
\RAM|s_memory~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~252_combout\ = (\SW[0]~input_o\ & \RAM|s_memory~251_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \RAM|s_memory~251_combout\,
	combout => \RAM|s_memory~252_combout\);

-- Location: FF_X111_Y40_N1
\RAM|s_memory~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~140_q\);

-- Location: LCCOMB_X111_Y40_N0
\RAM|s_memory~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~149_combout\ = (\RAM|s_memory~148_combout\ & (((\RAM|s_memory~140_q\) # (!\SW[1]~input_o\)))) # (!\RAM|s_memory~148_combout\ & (\RAM|s_memory~124_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~124_q\,
	datab => \RAM|s_memory~148_combout\,
	datac => \RAM|s_memory~140_q\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~149_combout\);

-- Location: LCCOMB_X112_Y38_N24
\RAM|s_memory~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~92feeder_combout\ = \SW[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[12]~input_o\,
	combout => \RAM|s_memory~92feeder_combout\);

-- Location: LCCOMB_X113_Y38_N16
\RAM|s_memory~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~223_combout\ = (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~223_combout\);

-- Location: LCCOMB_X112_Y38_N16
\RAM|s_memory~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~224_combout\ = (\SW[0]~input_o\ & \RAM|s_memory~223_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \RAM|s_memory~223_combout\,
	combout => \RAM|s_memory~224_combout\);

-- Location: FF_X112_Y38_N25
\RAM|s_memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~92feeder_combout\,
	ena => \RAM|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~92_q\);

-- Location: LCCOMB_X112_Y36_N10
\RAM|s_memory~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~225_combout\ = (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[4]~input_o\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~225_combout\);

-- Location: LCCOMB_X112_Y36_N4
\RAM|s_memory~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~226_combout\ = (\SW[0]~input_o\ & \RAM|s_memory~225_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \RAM|s_memory~225_combout\,
	combout => \RAM|s_memory~226_combout\);

-- Location: FF_X114_Y39_N9
\RAM|s_memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~84_q\);

-- Location: LCCOMB_X113_Y38_N8
\RAM|s_memory~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~141_combout\ = (\SW[2]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & (\RAM|s_memory~92_q\)) # (!\SW[1]~input_o\ & ((\RAM|s_memory~84_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~92_q\,
	datab => \RAM|s_memory~84_q\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~141_combout\);

-- Location: LCCOMB_X113_Y38_N30
\RAM|s_memory~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~221_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~221_combout\);

-- Location: LCCOMB_X114_Y38_N12
\RAM|s_memory~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~222_combout\ = (\SW[0]~input_o\ & \RAM|s_memory~221_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \RAM|s_memory~221_combout\,
	combout => \RAM|s_memory~222_combout\);

-- Location: FF_X114_Y38_N1
\RAM|s_memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~100_q\);

-- Location: LCCOMB_X113_Y38_N2
\RAM|s_memory~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~227_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~227_combout\);

-- Location: LCCOMB_X114_Y38_N10
\RAM|s_memory~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~228_combout\ = (\RAM|s_memory~227_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~227_combout\,
	datab => \SW[0]~input_o\,
	combout => \RAM|s_memory~228_combout\);

-- Location: FF_X114_Y38_N3
\RAM|s_memory~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~108_q\);

-- Location: LCCOMB_X114_Y38_N2
\RAM|s_memory~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~142_combout\ = (\RAM|s_memory~141_combout\ & (((\RAM|s_memory~108_q\) # (!\SW[2]~input_o\)))) # (!\RAM|s_memory~141_combout\ & (\RAM|s_memory~100_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~141_combout\,
	datab => \RAM|s_memory~100_q\,
	datac => \RAM|s_memory~108_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~142_combout\);

-- Location: LCCOMB_X111_Y40_N26
\RAM|s_memory~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~150_combout\ = (\RAM|s_memory~147_combout\ & ((\RAM|s_memory~149_combout\) # ((!\SW[4]~input_o\)))) # (!\RAM|s_memory~147_combout\ & (((\SW[4]~input_o\ & \RAM|s_memory~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~147_combout\,
	datab => \RAM|s_memory~149_combout\,
	datac => \SW[4]~input_o\,
	datad => \RAM|s_memory~142_combout\,
	combout => \RAM|s_memory~150_combout\);

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

-- Location: LCCOMB_X114_Y36_N14
\RAM|s_memory~75feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~75feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \RAM|s_memory~75feeder_combout\);

-- Location: FF_X114_Y36_N15
\RAM|s_memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~75feeder_combout\,
	ena => \RAM|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~75_q\);

-- Location: FF_X114_Y37_N5
\RAM|s_memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~43_q\);

-- Location: LCCOMB_X114_Y37_N4
\RAM|s_memory~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~158_combout\ = (\SW[4]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[3]~input_o\ & (\RAM|s_memory~75_q\)) # (!\SW[3]~input_o\ & ((\RAM|s_memory~43_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~75_q\,
	datab => \SW[4]~input_o\,
	datac => \RAM|s_memory~43_q\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~158_combout\);

-- Location: LCCOMB_X114_Y38_N14
\RAM|s_memory~107feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~107feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \RAM|s_memory~107feeder_combout\);

-- Location: FF_X114_Y38_N15
\RAM|s_memory~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~107feeder_combout\,
	ena => \RAM|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~107_q\);

-- Location: FF_X113_Y40_N13
\RAM|s_memory~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~139_q\);

-- Location: LCCOMB_X113_Y40_N12
\RAM|s_memory~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~159_combout\ = (\RAM|s_memory~158_combout\ & (((\RAM|s_memory~139_q\) # (!\SW[4]~input_o\)))) # (!\RAM|s_memory~158_combout\ & (\RAM|s_memory~107_q\ & ((\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~158_combout\,
	datab => \RAM|s_memory~107_q\,
	datac => \RAM|s_memory~139_q\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~159_combout\);

-- Location: LCCOMB_X114_Y38_N4
\RAM|s_memory~99feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~99feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \RAM|s_memory~99feeder_combout\);

-- Location: FF_X114_Y38_N5
\RAM|s_memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~99feeder_combout\,
	ena => \RAM|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~99_q\);

-- Location: FF_X114_Y40_N21
\RAM|s_memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~35_q\);

-- Location: LCCOMB_X114_Y40_N20
\RAM|s_memory~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~151_combout\ = (\SW[3]~input_o\ & (((\SW[4]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[4]~input_o\ & (\RAM|s_memory~99_q\)) # (!\SW[4]~input_o\ & ((\RAM|s_memory~35_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \RAM|s_memory~99_q\,
	datac => \RAM|s_memory~35_q\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~151_combout\);

-- Location: FF_X114_Y40_N23
\RAM|s_memory~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~131_q\);

-- Location: FF_X113_Y36_N29
\RAM|s_memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~67_q\);

-- Location: LCCOMB_X114_Y40_N22
\RAM|s_memory~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~152_combout\ = (\SW[3]~input_o\ & ((\RAM|s_memory~151_combout\ & (\RAM|s_memory~131_q\)) # (!\RAM|s_memory~151_combout\ & ((\RAM|s_memory~67_q\))))) # (!\SW[3]~input_o\ & (\RAM|s_memory~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \RAM|s_memory~151_combout\,
	datac => \RAM|s_memory~131_q\,
	datad => \RAM|s_memory~67_q\,
	combout => \RAM|s_memory~152_combout\);

-- Location: LCCOMB_X114_Y39_N4
\RAM|s_memory~83feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~83feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \RAM|s_memory~83feeder_combout\);

-- Location: FF_X114_Y39_N5
\RAM|s_memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~83feeder_combout\,
	ena => \RAM|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~83_q\);

-- Location: FF_X111_Y40_N13
\RAM|s_memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~19_q\);

-- Location: LCCOMB_X111_Y40_N12
\RAM|s_memory~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~155_combout\ = (\SW[4]~input_o\ & ((\RAM|s_memory~83_q\) # ((\SW[3]~input_o\)))) # (!\SW[4]~input_o\ & (((\RAM|s_memory~19_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~83_q\,
	datab => \SW[4]~input_o\,
	datac => \RAM|s_memory~19_q\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~155_combout\);

-- Location: FF_X113_Y36_N7
\RAM|s_memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~51_q\);

-- Location: FF_X112_Y40_N11
\RAM|s_memory~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~115_q\);

-- Location: LCCOMB_X112_Y40_N10
\RAM|s_memory~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~156_combout\ = (\RAM|s_memory~155_combout\ & (((\RAM|s_memory~115_q\) # (!\SW[3]~input_o\)))) # (!\RAM|s_memory~155_combout\ & (\RAM|s_memory~51_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~155_combout\,
	datab => \RAM|s_memory~51_q\,
	datac => \RAM|s_memory~115_q\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~156_combout\);

-- Location: LCCOMB_X114_Y36_N4
\RAM|s_memory~59feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~59feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \RAM|s_memory~59feeder_combout\);

-- Location: FF_X114_Y36_N5
\RAM|s_memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~59feeder_combout\,
	ena => \RAM|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~59_q\);

-- Location: FF_X113_Y37_N13
\RAM|s_memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~27_q\);

-- Location: LCCOMB_X113_Y37_N12
\RAM|s_memory~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~153_combout\ = (\SW[3]~input_o\ & ((\RAM|s_memory~59_q\) # ((\SW[4]~input_o\)))) # (!\SW[3]~input_o\ & (((\RAM|s_memory~27_q\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~59_q\,
	datab => \SW[3]~input_o\,
	datac => \RAM|s_memory~27_q\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~153_combout\);

-- Location: FF_X112_Y38_N11
\RAM|s_memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~91_q\);

-- Location: FF_X113_Y40_N9
\RAM|s_memory~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~123_q\);

-- Location: LCCOMB_X113_Y40_N8
\RAM|s_memory~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~154_combout\ = (\RAM|s_memory~153_combout\ & (((\RAM|s_memory~123_q\) # (!\SW[4]~input_o\)))) # (!\RAM|s_memory~153_combout\ & (\RAM|s_memory~91_q\ & ((\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~153_combout\,
	datab => \RAM|s_memory~91_q\,
	datac => \RAM|s_memory~123_q\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~154_combout\);

-- Location: LCCOMB_X113_Y40_N2
\RAM|s_memory~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~157_combout\ = (\SW[1]~input_o\ & (((\RAM|s_memory~154_combout\) # (\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (\RAM|s_memory~156_combout\ & ((!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~156_combout\,
	datab => \SW[1]~input_o\,
	datac => \RAM|s_memory~154_combout\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~157_combout\);

-- Location: LCCOMB_X113_Y40_N22
\RAM|s_memory~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~160_combout\ = (\RAM|s_memory~157_combout\ & ((\RAM|s_memory~159_combout\) # ((!\SW[2]~input_o\)))) # (!\RAM|s_memory~157_combout\ & (((\RAM|s_memory~152_combout\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~159_combout\,
	datab => \RAM|s_memory~152_combout\,
	datac => \RAM|s_memory~157_combout\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~160_combout\);

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

-- Location: FF_X114_Y36_N25
\RAM|s_memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~58_q\);

-- Location: FF_X113_Y36_N27
\RAM|s_memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~50_q\);

-- Location: LCCOMB_X113_Y36_N26
\RAM|s_memory~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~161_combout\ = (\SW[1]~input_o\ & ((\RAM|s_memory~58_q\) # ((\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (((\RAM|s_memory~50_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \RAM|s_memory~58_q\,
	datac => \RAM|s_memory~50_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~161_combout\);

-- Location: LCCOMB_X113_Y36_N24
\RAM|s_memory~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~66feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \RAM|s_memory~66feeder_combout\);

-- Location: FF_X113_Y36_N25
\RAM|s_memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~66feeder_combout\,
	ena => \RAM|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~66_q\);

-- Location: FF_X114_Y36_N27
\RAM|s_memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~74_q\);

-- Location: LCCOMB_X114_Y36_N26
\RAM|s_memory~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~162_combout\ = (\RAM|s_memory~161_combout\ & (((\RAM|s_memory~74_q\) # (!\SW[2]~input_o\)))) # (!\RAM|s_memory~161_combout\ & (\RAM|s_memory~66_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~161_combout\,
	datab => \RAM|s_memory~66_q\,
	datac => \RAM|s_memory~74_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~162_combout\);

-- Location: LCCOMB_X114_Y40_N0
\RAM|s_memory~34feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~34feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \RAM|s_memory~34feeder_combout\);

-- Location: FF_X114_Y40_N1
\RAM|s_memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~34feeder_combout\,
	ena => \RAM|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~34_q\);

-- Location: FF_X111_Y40_N23
\RAM|s_memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~18_q\);

-- Location: LCCOMB_X111_Y40_N22
\RAM|s_memory~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~165_combout\ = (\SW[1]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\RAM|s_memory~34_q\)) # (!\SW[2]~input_o\ & ((\RAM|s_memory~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~34_q\,
	datab => \SW[1]~input_o\,
	datac => \RAM|s_memory~18_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~165_combout\);

-- Location: FF_X114_Y37_N31
\RAM|s_memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~42_q\);

-- Location: LCCOMB_X113_Y37_N14
\RAM|s_memory~26feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~26feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \RAM|s_memory~26feeder_combout\);

-- Location: FF_X113_Y37_N15
\RAM|s_memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~26feeder_combout\,
	ena => \RAM|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~26_q\);

-- Location: LCCOMB_X114_Y37_N30
\RAM|s_memory~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~166_combout\ = (\RAM|s_memory~165_combout\ & (((\RAM|s_memory~42_q\)) # (!\SW[1]~input_o\))) # (!\RAM|s_memory~165_combout\ & (\SW[1]~input_o\ & ((\RAM|s_memory~26_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~165_combout\,
	datab => \SW[1]~input_o\,
	datac => \RAM|s_memory~42_q\,
	datad => \RAM|s_memory~26_q\,
	combout => \RAM|s_memory~166_combout\);

-- Location: LCCOMB_X112_Y38_N12
\RAM|s_memory~90feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~90feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \RAM|s_memory~90feeder_combout\);

-- Location: FF_X112_Y38_N13
\RAM|s_memory~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~90feeder_combout\,
	ena => \RAM|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~90_q\);

-- Location: FF_X114_Y38_N19
\RAM|s_memory~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~106_q\);

-- Location: FF_X114_Y38_N9
\RAM|s_memory~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~98_q\);

-- Location: FF_X112_Y38_N31
\RAM|s_memory~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~82_q\);

-- Location: LCCOMB_X112_Y38_N30
\RAM|s_memory~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~163_combout\ = (\SW[1]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\RAM|s_memory~98_q\)) # (!\SW[2]~input_o\ & ((\RAM|s_memory~82_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~98_q\,
	datab => \SW[1]~input_o\,
	datac => \RAM|s_memory~82_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~163_combout\);

-- Location: LCCOMB_X114_Y38_N18
\RAM|s_memory~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~164_combout\ = (\SW[1]~input_o\ & ((\RAM|s_memory~163_combout\ & ((\RAM|s_memory~106_q\))) # (!\RAM|s_memory~163_combout\ & (\RAM|s_memory~90_q\)))) # (!\SW[1]~input_o\ & (((\RAM|s_memory~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \RAM|s_memory~90_q\,
	datac => \RAM|s_memory~106_q\,
	datad => \RAM|s_memory~163_combout\,
	combout => \RAM|s_memory~164_combout\);

-- Location: LCCOMB_X114_Y37_N24
\RAM|s_memory~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~167_combout\ = (\SW[4]~input_o\ & (((\RAM|s_memory~164_combout\) # (\SW[3]~input_o\)))) # (!\SW[4]~input_o\ & (\RAM|s_memory~166_combout\ & ((!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~166_combout\,
	datab => \RAM|s_memory~164_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~167_combout\);

-- Location: LCCOMB_X114_Y40_N10
\RAM|s_memory~130feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~130feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \RAM|s_memory~130feeder_combout\);

-- Location: FF_X114_Y40_N11
\RAM|s_memory~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~130feeder_combout\,
	ena => \RAM|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~130_q\);

-- Location: FF_X112_Y40_N29
\RAM|s_memory~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~122_q\);

-- Location: FF_X112_Y40_N23
\RAM|s_memory~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~114_q\);

-- Location: LCCOMB_X112_Y40_N22
\RAM|s_memory~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~168_combout\ = (\SW[2]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & (\RAM|s_memory~122_q\)) # (!\SW[1]~input_o\ & ((\RAM|s_memory~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \RAM|s_memory~122_q\,
	datac => \RAM|s_memory~114_q\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~168_combout\);

-- Location: FF_X111_Y40_N17
\RAM|s_memory~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~138_q\);

-- Location: LCCOMB_X111_Y40_N16
\RAM|s_memory~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~169_combout\ = (\RAM|s_memory~168_combout\ & (((\RAM|s_memory~138_q\) # (!\SW[2]~input_o\)))) # (!\RAM|s_memory~168_combout\ & (\RAM|s_memory~130_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~130_q\,
	datab => \RAM|s_memory~168_combout\,
	datac => \RAM|s_memory~138_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~169_combout\);

-- Location: LCCOMB_X114_Y37_N2
\RAM|s_memory~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~170_combout\ = (\RAM|s_memory~167_combout\ & (((\RAM|s_memory~169_combout\) # (!\SW[3]~input_o\)))) # (!\RAM|s_memory~167_combout\ & (\RAM|s_memory~162_combout\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~162_combout\,
	datab => \RAM|s_memory~167_combout\,
	datac => \RAM|s_memory~169_combout\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~170_combout\);

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

-- Location: FF_X113_Y38_N27
\RAM|s_memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~89_q\);

-- Location: FF_X113_Y38_N13
\RAM|s_memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~25_q\);

-- Location: LCCOMB_X113_Y38_N12
\RAM|s_memory~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~171_combout\ = (\SW[3]~input_o\ & (((\SW[4]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[4]~input_o\ & (\RAM|s_memory~89_q\)) # (!\SW[4]~input_o\ & ((\RAM|s_memory~25_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~89_q\,
	datab => \SW[3]~input_o\,
	datac => \RAM|s_memory~25_q\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~171_combout\);

-- Location: FF_X113_Y40_N25
\RAM|s_memory~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~121_q\);

-- Location: LCCOMB_X114_Y36_N20
\RAM|s_memory~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~57feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \RAM|s_memory~57feeder_combout\);

-- Location: FF_X114_Y36_N21
\RAM|s_memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~57feeder_combout\,
	ena => \RAM|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~57_q\);

-- Location: LCCOMB_X113_Y40_N24
\RAM|s_memory~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~172_combout\ = (\SW[3]~input_o\ & ((\RAM|s_memory~171_combout\ & (\RAM|s_memory~121_q\)) # (!\RAM|s_memory~171_combout\ & ((\RAM|s_memory~57_q\))))) # (!\SW[3]~input_o\ & (\RAM|s_memory~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \RAM|s_memory~171_combout\,
	datac => \RAM|s_memory~121_q\,
	datad => \RAM|s_memory~57_q\,
	combout => \RAM|s_memory~172_combout\);

-- Location: LCCOMB_X113_Y36_N14
\RAM|s_memory~49feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~49feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \RAM|s_memory~49feeder_combout\);

-- Location: FF_X113_Y36_N15
\RAM|s_memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~49feeder_combout\,
	ena => \RAM|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~49_q\);

-- Location: FF_X111_Y40_N3
\RAM|s_memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~17_q\);

-- Location: LCCOMB_X111_Y40_N2
\RAM|s_memory~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~175_combout\ = (\SW[4]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[3]~input_o\ & (\RAM|s_memory~49_q\)) # (!\SW[3]~input_o\ & ((\RAM|s_memory~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~49_q\,
	datab => \SW[4]~input_o\,
	datac => \RAM|s_memory~17_q\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~175_combout\);

-- Location: FF_X112_Y40_N17
\RAM|s_memory~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~113_q\);

-- Location: FF_X114_Y39_N23
\RAM|s_memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~81_q\);

-- Location: LCCOMB_X112_Y40_N16
\RAM|s_memory~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~176_combout\ = (\RAM|s_memory~175_combout\ & (((\RAM|s_memory~113_q\)) # (!\SW[4]~input_o\))) # (!\RAM|s_memory~175_combout\ & (\SW[4]~input_o\ & ((\RAM|s_memory~81_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~175_combout\,
	datab => \SW[4]~input_o\,
	datac => \RAM|s_memory~113_q\,
	datad => \RAM|s_memory~81_q\,
	combout => \RAM|s_memory~176_combout\);

-- Location: LCCOMB_X114_Y38_N20
\RAM|s_memory~97feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~97feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \RAM|s_memory~97feeder_combout\);

-- Location: FF_X114_Y38_N21
\RAM|s_memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~97feeder_combout\,
	ena => \RAM|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~97_q\);

-- Location: FF_X114_Y40_N15
\RAM|s_memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~129_q\);

-- Location: LCCOMB_X113_Y36_N20
\RAM|s_memory~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~65feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \RAM|s_memory~65feeder_combout\);

-- Location: FF_X113_Y36_N21
\RAM|s_memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~65feeder_combout\,
	ena => \RAM|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~65_q\);

-- Location: FF_X114_Y40_N29
\RAM|s_memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~33_q\);

-- Location: LCCOMB_X114_Y40_N28
\RAM|s_memory~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~173_combout\ = (\SW[3]~input_o\ & ((\RAM|s_memory~65_q\) # ((\SW[4]~input_o\)))) # (!\SW[3]~input_o\ & (((\RAM|s_memory~33_q\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \RAM|s_memory~65_q\,
	datac => \RAM|s_memory~33_q\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~173_combout\);

-- Location: LCCOMB_X114_Y40_N14
\RAM|s_memory~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~174_combout\ = (\SW[4]~input_o\ & ((\RAM|s_memory~173_combout\ & ((\RAM|s_memory~129_q\))) # (!\RAM|s_memory~173_combout\ & (\RAM|s_memory~97_q\)))) # (!\SW[4]~input_o\ & (((\RAM|s_memory~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \RAM|s_memory~97_q\,
	datac => \RAM|s_memory~129_q\,
	datad => \RAM|s_memory~173_combout\,
	combout => \RAM|s_memory~174_combout\);

-- Location: LCCOMB_X113_Y40_N18
\RAM|s_memory~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~177_combout\ = (\SW[1]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((\RAM|s_memory~174_combout\))) # (!\SW[2]~input_o\ & (\RAM|s_memory~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~176_combout\,
	datab => \SW[1]~input_o\,
	datac => \RAM|s_memory~174_combout\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~177_combout\);

-- Location: LCCOMB_X114_Y38_N22
\RAM|s_memory~105feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~105feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \RAM|s_memory~105feeder_combout\);

-- Location: FF_X114_Y38_N23
\RAM|s_memory~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~105feeder_combout\,
	ena => \RAM|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~105_q\);

-- Location: FF_X114_Y37_N21
\RAM|s_memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~41_q\);

-- Location: LCCOMB_X114_Y37_N20
\RAM|s_memory~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~178_combout\ = (\SW[4]~input_o\ & ((\RAM|s_memory~105_q\) # ((\SW[3]~input_o\)))) # (!\SW[4]~input_o\ & (((\RAM|s_memory~41_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~105_q\,
	datab => \SW[4]~input_o\,
	datac => \RAM|s_memory~41_q\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~178_combout\);

-- Location: LCCOMB_X114_Y36_N6
\RAM|s_memory~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~73feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \RAM|s_memory~73feeder_combout\);

-- Location: FF_X114_Y36_N7
\RAM|s_memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~73feeder_combout\,
	ena => \RAM|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~73_q\);

-- Location: LCCOMB_X113_Y40_N20
\RAM|s_memory~137feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~137feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \RAM|s_memory~137feeder_combout\);

-- Location: FF_X113_Y40_N21
\RAM|s_memory~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~137feeder_combout\,
	ena => \RAM|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~137_q\);

-- Location: LCCOMB_X113_Y37_N16
\RAM|s_memory~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~179_combout\ = (\RAM|s_memory~178_combout\ & (((\RAM|s_memory~137_q\) # (!\SW[3]~input_o\)))) # (!\RAM|s_memory~178_combout\ & (\RAM|s_memory~73_q\ & (\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~178_combout\,
	datab => \RAM|s_memory~73_q\,
	datac => \SW[3]~input_o\,
	datad => \RAM|s_memory~137_q\,
	combout => \RAM|s_memory~179_combout\);

-- Location: LCCOMB_X113_Y40_N14
\RAM|s_memory~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~180_combout\ = (\RAM|s_memory~177_combout\ & (((\RAM|s_memory~179_combout\) # (!\SW[1]~input_o\)))) # (!\RAM|s_memory~177_combout\ & (\RAM|s_memory~172_combout\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~172_combout\,
	datab => \RAM|s_memory~177_combout\,
	datac => \RAM|s_memory~179_combout\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~180_combout\);

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

-- Location: FF_X112_Y40_N3
\RAM|s_memory~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~112_q\);

-- Location: LCCOMB_X114_Y40_N16
\RAM|s_memory~128feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~128feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \RAM|s_memory~128feeder_combout\);

-- Location: FF_X114_Y40_N17
\RAM|s_memory~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~128feeder_combout\,
	ena => \RAM|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~128_q\);

-- Location: LCCOMB_X112_Y40_N2
\RAM|s_memory~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~188_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\) # ((\RAM|s_memory~128_q\)))) # (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\RAM|s_memory~112_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \RAM|s_memory~112_q\,
	datad => \RAM|s_memory~128_q\,
	combout => \RAM|s_memory~188_combout\);

-- Location: FF_X113_Y40_N1
\RAM|s_memory~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~120_q\);

-- Location: FF_X113_Y40_N11
\RAM|s_memory~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~136_q\);

-- Location: LCCOMB_X113_Y40_N10
\RAM|s_memory~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~189_combout\ = (\RAM|s_memory~188_combout\ & (((\RAM|s_memory~136_q\) # (!\SW[1]~input_o\)))) # (!\RAM|s_memory~188_combout\ & (\RAM|s_memory~120_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~188_combout\,
	datab => \RAM|s_memory~120_q\,
	datac => \RAM|s_memory~136_q\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~189_combout\);

-- Location: FF_X113_Y36_N1
\RAM|s_memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~64_q\);

-- Location: FF_X113_Y36_N3
\RAM|s_memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~48_q\);

-- Location: LCCOMB_X113_Y36_N2
\RAM|s_memory~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~183_combout\ = (\SW[1]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\RAM|s_memory~64_q\)) # (!\SW[2]~input_o\ & ((\RAM|s_memory~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \RAM|s_memory~64_q\,
	datac => \RAM|s_memory~48_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~183_combout\);

-- Location: FF_X114_Y36_N17
\RAM|s_memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~56_q\);

-- Location: FF_X114_Y36_N3
\RAM|s_memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~72_q\);

-- Location: LCCOMB_X114_Y36_N2
\RAM|s_memory~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~184_combout\ = (\RAM|s_memory~183_combout\ & (((\RAM|s_memory~72_q\) # (!\SW[1]~input_o\)))) # (!\RAM|s_memory~183_combout\ & (\RAM|s_memory~56_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~183_combout\,
	datab => \RAM|s_memory~56_q\,
	datac => \RAM|s_memory~72_q\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~184_combout\);

-- Location: FF_X114_Y37_N7
\RAM|s_memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~32_q\);

-- Location: FF_X113_Y37_N27
\RAM|s_memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~24_q\);

-- Location: FF_X113_Y37_N5
\RAM|s_memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~16_q\);

-- Location: LCCOMB_X113_Y37_N4
\RAM|s_memory~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~185_combout\ = (\SW[2]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & (\RAM|s_memory~24_q\)) # (!\SW[1]~input_o\ & ((\RAM|s_memory~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~24_q\,
	datab => \SW[2]~input_o\,
	datac => \RAM|s_memory~16_q\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~185_combout\);

-- Location: FF_X114_Y37_N1
\RAM|s_memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~40_q\);

-- Location: LCCOMB_X114_Y37_N0
\RAM|s_memory~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~186_combout\ = (\RAM|s_memory~185_combout\ & (((\RAM|s_memory~40_q\) # (!\SW[2]~input_o\)))) # (!\RAM|s_memory~185_combout\ & (\RAM|s_memory~32_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~32_q\,
	datab => \RAM|s_memory~185_combout\,
	datac => \RAM|s_memory~40_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~186_combout\);

-- Location: LCCOMB_X114_Y37_N18
\RAM|s_memory~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~187_combout\ = (\SW[4]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[3]~input_o\ & (\RAM|s_memory~184_combout\)) # (!\SW[3]~input_o\ & ((\RAM|s_memory~186_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~184_combout\,
	datab => \RAM|s_memory~186_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~187_combout\);

-- Location: LCCOMB_X112_Y38_N8
\RAM|s_memory~88feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~88feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \RAM|s_memory~88feeder_combout\);

-- Location: FF_X112_Y38_N9
\RAM|s_memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~88feeder_combout\,
	ena => \RAM|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~88_q\);

-- Location: FF_X114_Y39_N17
\RAM|s_memory~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~80_q\);

-- Location: LCCOMB_X113_Y38_N14
\RAM|s_memory~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~181_combout\ = (\SW[2]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & (\RAM|s_memory~88_q\)) # (!\SW[1]~input_o\ & ((\RAM|s_memory~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~88_q\,
	datab => \RAM|s_memory~80_q\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~181_combout\);

-- Location: FF_X114_Y38_N17
\RAM|s_memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~96_q\);

-- Location: FF_X114_Y38_N27
\RAM|s_memory~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~104_q\);

-- Location: LCCOMB_X114_Y38_N26
\RAM|s_memory~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~182_combout\ = (\RAM|s_memory~181_combout\ & (((\RAM|s_memory~104_q\) # (!\SW[2]~input_o\)))) # (!\RAM|s_memory~181_combout\ & (\RAM|s_memory~96_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~181_combout\,
	datab => \RAM|s_memory~96_q\,
	datac => \RAM|s_memory~104_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~182_combout\);

-- Location: LCCOMB_X113_Y40_N4
\RAM|s_memory~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~190_combout\ = (\RAM|s_memory~187_combout\ & ((\RAM|s_memory~189_combout\) # ((!\SW[4]~input_o\)))) # (!\RAM|s_memory~187_combout\ & (((\RAM|s_memory~182_combout\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~189_combout\,
	datab => \RAM|s_memory~187_combout\,
	datac => \RAM|s_memory~182_combout\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~190_combout\);

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

-- Location: FF_X114_Y38_N7
\RAM|s_memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~103_q\);

-- Location: FF_X114_Y36_N31
\RAM|s_memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~71_q\);

-- Location: FF_X114_Y37_N29
\RAM|s_memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~39_q\);

-- Location: LCCOMB_X114_Y37_N28
\RAM|s_memory~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~198_combout\ = (\SW[4]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[3]~input_o\ & (\RAM|s_memory~71_q\)) # (!\SW[3]~input_o\ & ((\RAM|s_memory~39_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~71_q\,
	datab => \SW[4]~input_o\,
	datac => \RAM|s_memory~39_q\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~198_combout\);

-- Location: FF_X113_Y40_N31
\RAM|s_memory~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~135_q\);

-- Location: LCCOMB_X113_Y40_N30
\RAM|s_memory~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~199_combout\ = (\RAM|s_memory~198_combout\ & (((\RAM|s_memory~135_q\) # (!\SW[4]~input_o\)))) # (!\RAM|s_memory~198_combout\ & (\RAM|s_memory~103_q\ & ((\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~103_q\,
	datab => \RAM|s_memory~198_combout\,
	datac => \RAM|s_memory~135_q\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~199_combout\);

-- Location: LCCOMB_X113_Y36_N4
\RAM|s_memory~63feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~63feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \RAM|s_memory~63feeder_combout\);

-- Location: FF_X113_Y36_N5
\RAM|s_memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~63feeder_combout\,
	ena => \RAM|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~63_q\);

-- Location: FF_X114_Y40_N5
\RAM|s_memory~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~127_q\);

-- Location: FF_X114_Y38_N29
\RAM|s_memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~95_q\);

-- Location: FF_X114_Y40_N3
\RAM|s_memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~31_q\);

-- Location: LCCOMB_X114_Y40_N2
\RAM|s_memory~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~191_combout\ = (\SW[3]~input_o\ & (((\SW[4]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[4]~input_o\ & (\RAM|s_memory~95_q\)) # (!\SW[4]~input_o\ & ((\RAM|s_memory~31_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \RAM|s_memory~95_q\,
	datac => \RAM|s_memory~31_q\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~191_combout\);

-- Location: LCCOMB_X114_Y40_N4
\RAM|s_memory~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~192_combout\ = (\SW[3]~input_o\ & ((\RAM|s_memory~191_combout\ & ((\RAM|s_memory~127_q\))) # (!\RAM|s_memory~191_combout\ & (\RAM|s_memory~63_q\)))) # (!\SW[3]~input_o\ & (((\RAM|s_memory~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \RAM|s_memory~63_q\,
	datac => \RAM|s_memory~127_q\,
	datad => \RAM|s_memory~191_combout\,
	combout => \RAM|s_memory~192_combout\);

-- Location: LCCOMB_X112_Y38_N26
\RAM|s_memory~87feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~87feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \RAM|s_memory~87feeder_combout\);

-- Location: FF_X112_Y38_N27
\RAM|s_memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~87feeder_combout\,
	ena => \RAM|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~87_q\);

-- Location: FF_X112_Y40_N21
\RAM|s_memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~119_q\);

-- Location: FF_X114_Y36_N13
\RAM|s_memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~55_q\);

-- Location: FF_X113_Y37_N23
\RAM|s_memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~23_q\);

-- Location: LCCOMB_X113_Y37_N22
\RAM|s_memory~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~193_combout\ = (\SW[3]~input_o\ & ((\RAM|s_memory~55_q\) # ((\SW[4]~input_o\)))) # (!\SW[3]~input_o\ & (((\RAM|s_memory~23_q\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~55_q\,
	datab => \SW[3]~input_o\,
	datac => \RAM|s_memory~23_q\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~193_combout\);

-- Location: LCCOMB_X112_Y40_N20
\RAM|s_memory~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~194_combout\ = (\SW[4]~input_o\ & ((\RAM|s_memory~193_combout\ & ((\RAM|s_memory~119_q\))) # (!\RAM|s_memory~193_combout\ & (\RAM|s_memory~87_q\)))) # (!\SW[4]~input_o\ & (((\RAM|s_memory~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~87_q\,
	datab => \SW[4]~input_o\,
	datac => \RAM|s_memory~119_q\,
	datad => \RAM|s_memory~193_combout\,
	combout => \RAM|s_memory~194_combout\);

-- Location: LCCOMB_X113_Y36_N30
\RAM|s_memory~47feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~47feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \RAM|s_memory~47feeder_combout\);

-- Location: FF_X113_Y36_N31
\RAM|s_memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~47feeder_combout\,
	ena => \RAM|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~47_q\);

-- Location: LCCOMB_X114_Y39_N10
\RAM|s_memory~79feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~79feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \RAM|s_memory~79feeder_combout\);

-- Location: FF_X114_Y39_N11
\RAM|s_memory~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~79feeder_combout\,
	ena => \RAM|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~79_q\);

-- Location: FF_X111_Y40_N5
\RAM|s_memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~15_q\);

-- Location: LCCOMB_X111_Y40_N4
\RAM|s_memory~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~195_combout\ = (\SW[4]~input_o\ & ((\RAM|s_memory~79_q\) # ((\SW[3]~input_o\)))) # (!\SW[4]~input_o\ & (((\RAM|s_memory~15_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~79_q\,
	datab => \SW[4]~input_o\,
	datac => \RAM|s_memory~15_q\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~195_combout\);

-- Location: FF_X112_Y40_N15
\RAM|s_memory~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~111_q\);

-- Location: LCCOMB_X112_Y40_N14
\RAM|s_memory~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~196_combout\ = (\RAM|s_memory~195_combout\ & (((\RAM|s_memory~111_q\) # (!\SW[3]~input_o\)))) # (!\RAM|s_memory~195_combout\ & (\RAM|s_memory~47_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~47_q\,
	datab => \RAM|s_memory~195_combout\,
	datac => \RAM|s_memory~111_q\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~196_combout\);

-- Location: LCCOMB_X112_Y40_N0
\RAM|s_memory~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~197_combout\ = (\SW[2]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & (\RAM|s_memory~194_combout\)) # (!\SW[1]~input_o\ & ((\RAM|s_memory~196_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \RAM|s_memory~194_combout\,
	datac => \RAM|s_memory~196_combout\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~197_combout\);

-- Location: LCCOMB_X113_Y40_N16
\RAM|s_memory~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~200_combout\ = (\RAM|s_memory~197_combout\ & ((\RAM|s_memory~199_combout\) # ((!\SW[2]~input_o\)))) # (!\RAM|s_memory~197_combout\ & (((\RAM|s_memory~192_combout\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~199_combout\,
	datab => \RAM|s_memory~192_combout\,
	datac => \RAM|s_memory~197_combout\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~200_combout\);

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

-- Location: FF_X114_Y38_N25
\RAM|s_memory~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~94_q\);

-- Location: LCCOMB_X114_Y39_N28
\RAM|s_memory~78feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~78feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \RAM|s_memory~78feeder_combout\);

-- Location: FF_X114_Y39_N29
\RAM|s_memory~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~78feeder_combout\,
	ena => \RAM|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~78_q\);

-- Location: LCCOMB_X112_Y38_N14
\RAM|s_memory~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~203_combout\ = (\SW[1]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\RAM|s_memory~94_q\)) # (!\SW[2]~input_o\ & ((\RAM|s_memory~78_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~94_q\,
	datab => \SW[1]~input_o\,
	datac => \RAM|s_memory~78_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~203_combout\);

-- Location: LCCOMB_X112_Y38_N28
\RAM|s_memory~86feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~86feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \RAM|s_memory~86feeder_combout\);

-- Location: FF_X112_Y38_N29
\RAM|s_memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~86feeder_combout\,
	ena => \RAM|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~86_q\);

-- Location: FF_X114_Y38_N11
\RAM|s_memory~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~102_q\);

-- Location: LCCOMB_X113_Y38_N24
\RAM|s_memory~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~204_combout\ = (\RAM|s_memory~203_combout\ & (((\RAM|s_memory~102_q\) # (!\SW[1]~input_o\)))) # (!\RAM|s_memory~203_combout\ & (\RAM|s_memory~86_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~203_combout\,
	datab => \RAM|s_memory~86_q\,
	datac => \RAM|s_memory~102_q\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~204_combout\);

-- Location: FF_X114_Y40_N31
\RAM|s_memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~30_q\);

-- Location: FF_X111_Y40_N15
\RAM|s_memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~14_q\);

-- Location: LCCOMB_X111_Y40_N14
\RAM|s_memory~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~205_combout\ = (\SW[1]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (\RAM|s_memory~30_q\)) # (!\SW[2]~input_o\ & ((\RAM|s_memory~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~30_q\,
	datab => \SW[1]~input_o\,
	datac => \RAM|s_memory~14_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~205_combout\);

-- Location: FF_X113_Y37_N25
\RAM|s_memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~22_q\);

-- Location: FF_X114_Y37_N23
\RAM|s_memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~38_q\);

-- Location: LCCOMB_X114_Y37_N22
\RAM|s_memory~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~206_combout\ = (\RAM|s_memory~205_combout\ & (((\RAM|s_memory~38_q\) # (!\SW[1]~input_o\)))) # (!\RAM|s_memory~205_combout\ & (\RAM|s_memory~22_q\ & ((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~205_combout\,
	datab => \RAM|s_memory~22_q\,
	datac => \RAM|s_memory~38_q\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~206_combout\);

-- Location: LCCOMB_X113_Y37_N10
\RAM|s_memory~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~207_combout\ = (\SW[3]~input_o\ & (((\SW[4]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[4]~input_o\ & (\RAM|s_memory~204_combout\)) # (!\SW[4]~input_o\ & ((\RAM|s_memory~206_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~204_combout\,
	datab => \RAM|s_memory~206_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~207_combout\);

-- Location: FF_X112_Y40_N19
\RAM|s_memory~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~118_q\);

-- Location: FF_X112_Y40_N13
\RAM|s_memory~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~110_q\);

-- Location: LCCOMB_X112_Y40_N12
\RAM|s_memory~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~208_combout\ = (\SW[2]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & (\RAM|s_memory~118_q\)) # (!\SW[1]~input_o\ & ((\RAM|s_memory~110_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \RAM|s_memory~118_q\,
	datac => \RAM|s_memory~110_q\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~208_combout\);

-- Location: LCCOMB_X114_Y40_N24
\RAM|s_memory~126feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~126feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \RAM|s_memory~126feeder_combout\);

-- Location: FF_X114_Y40_N25
\RAM|s_memory~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~126feeder_combout\,
	ena => \RAM|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~126_q\);

-- Location: FF_X113_Y40_N27
\RAM|s_memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~134_q\);

-- Location: LCCOMB_X113_Y40_N26
\RAM|s_memory~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~209_combout\ = (\RAM|s_memory~208_combout\ & (((\RAM|s_memory~134_q\) # (!\SW[2]~input_o\)))) # (!\RAM|s_memory~208_combout\ & (\RAM|s_memory~126_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~208_combout\,
	datab => \RAM|s_memory~126_q\,
	datac => \RAM|s_memory~134_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~209_combout\);

-- Location: FF_X114_Y36_N9
\RAM|s_memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~54_q\);

-- Location: FF_X113_Y36_N11
\RAM|s_memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~46_q\);

-- Location: LCCOMB_X113_Y36_N10
\RAM|s_memory~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~201_combout\ = (\SW[1]~input_o\ & ((\RAM|s_memory~54_q\) # ((\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (((\RAM|s_memory~46_q\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \RAM|s_memory~54_q\,
	datac => \RAM|s_memory~46_q\,
	datad => \SW[2]~input_o\,
	combout => \RAM|s_memory~201_combout\);

-- Location: FF_X114_Y36_N19
\RAM|s_memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~70_q\);

-- Location: LCCOMB_X113_Y36_N8
\RAM|s_memory~62feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~62feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \RAM|s_memory~62feeder_combout\);

-- Location: FF_X113_Y36_N9
\RAM|s_memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~62feeder_combout\,
	ena => \RAM|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~62_q\);

-- Location: LCCOMB_X114_Y36_N18
\RAM|s_memory~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~202_combout\ = (\RAM|s_memory~201_combout\ & (((\RAM|s_memory~70_q\)) # (!\SW[2]~input_o\))) # (!\RAM|s_memory~201_combout\ & (\SW[2]~input_o\ & ((\RAM|s_memory~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~201_combout\,
	datab => \SW[2]~input_o\,
	datac => \RAM|s_memory~70_q\,
	datad => \RAM|s_memory~62_q\,
	combout => \RAM|s_memory~202_combout\);

-- Location: LCCOMB_X113_Y37_N20
\RAM|s_memory~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~210_combout\ = (\RAM|s_memory~207_combout\ & ((\RAM|s_memory~209_combout\) # ((!\SW[3]~input_o\)))) # (!\RAM|s_memory~207_combout\ & (((\SW[3]~input_o\ & \RAM|s_memory~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~207_combout\,
	datab => \RAM|s_memory~209_combout\,
	datac => \SW[3]~input_o\,
	datad => \RAM|s_memory~202_combout\,
	combout => \RAM|s_memory~210_combout\);

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

-- Location: FF_X114_Y36_N29
\RAM|s_memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~53_q\);

-- Location: FF_X113_Y38_N11
\RAM|s_memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~85_q\);

-- Location: FF_X113_Y38_N5
\RAM|s_memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~21_q\);

-- Location: LCCOMB_X113_Y38_N4
\RAM|s_memory~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~211_combout\ = (\SW[3]~input_o\ & (((\SW[4]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[4]~input_o\ & (\RAM|s_memory~85_q\)) # (!\SW[4]~input_o\ & ((\RAM|s_memory~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~85_q\,
	datab => \SW[3]~input_o\,
	datac => \RAM|s_memory~21_q\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~211_combout\);

-- Location: FF_X112_Y40_N7
\RAM|s_memory~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~117_q\);

-- Location: LCCOMB_X112_Y40_N6
\RAM|s_memory~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~212_combout\ = (\RAM|s_memory~211_combout\ & (((\RAM|s_memory~117_q\) # (!\SW[3]~input_o\)))) # (!\RAM|s_memory~211_combout\ & (\RAM|s_memory~53_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~53_q\,
	datab => \RAM|s_memory~211_combout\,
	datac => \RAM|s_memory~117_q\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~212_combout\);

-- Location: FF_X114_Y38_N13
\RAM|s_memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~93_q\);

-- Location: FF_X114_Y40_N13
\RAM|s_memory~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~125_q\);

-- Location: FF_X113_Y36_N13
\RAM|s_memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~61_q\);

-- Location: FF_X114_Y40_N19
\RAM|s_memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~238_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~29_q\);

-- Location: LCCOMB_X114_Y40_N18
\RAM|s_memory~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~213_combout\ = (\SW[3]~input_o\ & ((\RAM|s_memory~61_q\) # ((\SW[4]~input_o\)))) # (!\SW[3]~input_o\ & (((\RAM|s_memory~29_q\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \RAM|s_memory~61_q\,
	datac => \RAM|s_memory~29_q\,
	datad => \SW[4]~input_o\,
	combout => \RAM|s_memory~213_combout\);

-- Location: LCCOMB_X114_Y40_N12
\RAM|s_memory~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~214_combout\ = (\SW[4]~input_o\ & ((\RAM|s_memory~213_combout\ & ((\RAM|s_memory~125_q\))) # (!\RAM|s_memory~213_combout\ & (\RAM|s_memory~93_q\)))) # (!\SW[4]~input_o\ & (((\RAM|s_memory~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \RAM|s_memory~93_q\,
	datac => \RAM|s_memory~125_q\,
	datad => \RAM|s_memory~213_combout\,
	combout => \RAM|s_memory~214_combout\);

-- Location: FF_X114_Y39_N7
\RAM|s_memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~77_q\);

-- Location: FF_X112_Y40_N9
\RAM|s_memory~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~109_q\);

-- Location: FF_X112_Y36_N17
\RAM|s_memory~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~242_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~13_q\);

-- Location: FF_X113_Y36_N23
\RAM|s_memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~45_q\);

-- Location: LCCOMB_X112_Y36_N16
\RAM|s_memory~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~215_combout\ = (\SW[3]~input_o\ & ((\SW[4]~input_o\) # ((\RAM|s_memory~45_q\)))) # (!\SW[3]~input_o\ & (!\SW[4]~input_o\ & (\RAM|s_memory~13_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \RAM|s_memory~13_q\,
	datad => \RAM|s_memory~45_q\,
	combout => \RAM|s_memory~215_combout\);

-- Location: LCCOMB_X112_Y40_N8
\RAM|s_memory~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~216_combout\ = (\SW[4]~input_o\ & ((\RAM|s_memory~215_combout\ & ((\RAM|s_memory~109_q\))) # (!\RAM|s_memory~215_combout\ & (\RAM|s_memory~77_q\)))) # (!\SW[4]~input_o\ & (((\RAM|s_memory~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~77_q\,
	datab => \SW[4]~input_o\,
	datac => \RAM|s_memory~109_q\,
	datad => \RAM|s_memory~215_combout\,
	combout => \RAM|s_memory~216_combout\);

-- Location: LCCOMB_X112_Y40_N26
\RAM|s_memory~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~217_combout\ = (\SW[2]~input_o\ & ((\RAM|s_memory~214_combout\) # ((\SW[1]~input_o\)))) # (!\SW[2]~input_o\ & (((\RAM|s_memory~216_combout\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~214_combout\,
	datab => \RAM|s_memory~216_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \RAM|s_memory~217_combout\);

-- Location: FF_X114_Y38_N31
\RAM|s_memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~101_q\);

-- Location: FF_X114_Y37_N9
\RAM|s_memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~244_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~37_q\);

-- Location: LCCOMB_X114_Y37_N8
\RAM|s_memory~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~218_combout\ = (\SW[4]~input_o\ & ((\RAM|s_memory~101_q\) # ((\SW[3]~input_o\)))) # (!\SW[4]~input_o\ & (((\RAM|s_memory~37_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~101_q\,
	datab => \SW[4]~input_o\,
	datac => \RAM|s_memory~37_q\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~218_combout\);

-- Location: FF_X114_Y36_N23
\RAM|s_memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \RAM|s_memory~236_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~69_q\);

-- Location: LCCOMB_X111_Y40_N8
\RAM|s_memory~133feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~133feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \RAM|s_memory~133feeder_combout\);

-- Location: FF_X111_Y40_N9
\RAM|s_memory~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|s_memory~133feeder_combout\,
	ena => \RAM|s_memory~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|s_memory~133_q\);

-- Location: LCCOMB_X111_Y40_N10
\RAM|s_memory~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~219_combout\ = (\RAM|s_memory~218_combout\ & (((\RAM|s_memory~133_q\) # (!\SW[3]~input_o\)))) # (!\RAM|s_memory~218_combout\ & (\RAM|s_memory~69_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~218_combout\,
	datab => \RAM|s_memory~69_q\,
	datac => \RAM|s_memory~133_q\,
	datad => \SW[3]~input_o\,
	combout => \RAM|s_memory~219_combout\);

-- Location: LCCOMB_X112_Y40_N4
\RAM|s_memory~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|s_memory~220_combout\ = (\SW[1]~input_o\ & ((\RAM|s_memory~217_combout\ & ((\RAM|s_memory~219_combout\))) # (!\RAM|s_memory~217_combout\ & (\RAM|s_memory~212_combout\)))) # (!\SW[1]~input_o\ & (((\RAM|s_memory~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|s_memory~212_combout\,
	datab => \SW[1]~input_o\,
	datac => \RAM|s_memory~217_combout\,
	datad => \RAM|s_memory~219_combout\,
	combout => \RAM|s_memory~220_combout\);

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


