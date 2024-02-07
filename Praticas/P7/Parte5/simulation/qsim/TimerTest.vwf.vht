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
-- Generated on "03/28/2023 17:54:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TimerTest
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TimerTest_vhd_vec_tst IS
END TimerTest_vhd_vec_tst;
ARCHITECTURE TimerTest_arch OF TimerTest_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL timerOut : STD_LOGIC;
COMPONENT TimerTest
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	timerOut : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TimerTest
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	SW => SW,
	timerOut => timerOut
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
	WAIT FOR 110000 ps;
	SW(2) <= '1';
	WAIT FOR 20000 ps;
	SW(2) <= '0';
	WAIT FOR 670000 ps;
	SW(2) <= '1';
	WAIT FOR 30000 ps;
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '1';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END TimerTest_arch;
