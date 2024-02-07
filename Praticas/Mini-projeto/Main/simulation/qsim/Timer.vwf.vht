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
-- Generated on "04/18/2023 18:38:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Timer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Timer_vhd_vec_tst IS
END Timer_vhd_vec_tst;
ARCHITECTURE Timer_arch OF Timer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL mode : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL startReady : STD_LOGIC;
SIGNAL startStop : STD_LOGIC;
SIGNAL valOut : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT Timer
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	mode : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	startReady : OUT STD_LOGIC;
	startStop : IN STD_LOGIC;
	valOut : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Timer
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	mode => mode,
	reset => reset,
	startReady => startReady,
	startStop => startStop,
	valOut => valOut
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- startStop
t_prcs_startStop: PROCESS
BEGIN
	startStop <= '0';
	WAIT FOR 90000 ps;
	startStop <= '1';
	WAIT FOR 20000 ps;
	startStop <= '0';
	WAIT FOR 140000 ps;
	startStop <= '1';
	WAIT FOR 20000 ps;
	startStop <= '0';
	WAIT FOR 120000 ps;
	startStop <= '1';
	WAIT FOR 20000 ps;
	startStop <= '0';
WAIT;
END PROCESS t_prcs_startStop;
END Timer_arch;
