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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/06/2023 12:53:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DrinksFSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DrinksFSM_vhd_vec_tst IS
END DrinksFSM_vhd_vec_tst;
ARCHITECTURE DrinksFSM_arch OF DrinksFSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL abrir : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL V : STD_LOGIC;
COMPONENT DrinksFSM
	PORT (
	abrir : OUT STD_LOGIC;
	C : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	V : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DrinksFSM
	PORT MAP (
-- list connections between master ports and signals
	abrir => abrir,
	C => C,
	clock => clock,
	reset => reset,
	V => V
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 12500 ps;
	clock <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '0';
	WAIT FOR 50000 ps;
	C <= '1';
	WAIT FOR 200000 ps;
	C <= '0';
	WAIT FOR 170000 ps;
	C <= '1';
	WAIT FOR 30000 ps;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- V
t_prcs_V: PROCESS
BEGIN
	V <= '0';
	WAIT FOR 310000 ps;
	V <= '1';
	WAIT FOR 110000 ps;
	V <= '0';
	WAIT FOR 30000 ps;
	V <= '1';
	WAIT FOR 180000 ps;
	V <= '0';
WAIT;
END PROCESS t_prcs_V;
END DrinksFSM_arch;
