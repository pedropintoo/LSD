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
-- Generated on "02/25/2023 19:45:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PEnc4_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PEnc4_2_vhd_vec_tst IS
END PEnc4_2_vhd_vec_tst;
ARCHITECTURE PEnc4_2_arch OF PEnc4_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL decodedln : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL encodedOut : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL validOut : STD_LOGIC;
COMPONENT PEnc4_2
	PORT (
	decodedln : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	encodedOut : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	validOut : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PEnc4_2
	PORT MAP (
-- list connections between master ports and signals
	decodedln => decodedln,
	encodedOut => encodedOut,
	validOut => validOut
	);
-- decodedln[3]
t_prcs_decodedln_3: PROCESS
BEGIN
	decodedln(3) <= '0';
	WAIT FOR 320000 ps;
	decodedln(3) <= '1';
	WAIT FOR 320000 ps;
	decodedln(3) <= '0';
	WAIT FOR 320000 ps;
	decodedln(3) <= '1';
WAIT;
END PROCESS t_prcs_decodedln_3;
-- decodedln[2]
t_prcs_decodedln_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		decodedln(2) <= '0';
		WAIT FOR 160000 ps;
		decodedln(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	decodedln(2) <= '0';
WAIT;
END PROCESS t_prcs_decodedln_2;
-- decodedln[1]
t_prcs_decodedln_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		decodedln(1) <= '0';
		WAIT FOR 80000 ps;
		decodedln(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	decodedln(1) <= '0';
WAIT;
END PROCESS t_prcs_decodedln_1;
-- decodedln[0]
t_prcs_decodedln_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		decodedln(0) <= '0';
		WAIT FOR 40000 ps;
		decodedln(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	decodedln(0) <= '0';
WAIT;
END PROCESS t_prcs_decodedln_0;
END PEnc4_2_arch;
