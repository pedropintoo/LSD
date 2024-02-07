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
-- Generated on "02/14/2023 12:15:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LogicTop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LogicTop_vhd_vec_tst IS
END LogicTop_vhd_vec_tst;
ARCHITECTURE LogicTop_arch OF LogicTop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL LEDG : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT LogicTop
	PORT (
	LEDG : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LogicTop
	PORT MAP (
-- list connections between master ports and signals
	LEDG => LEDG,
	SW => SW
	);
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
	WAIT FOR 50000 ps;
	SW(1) <= '1';
	WAIT FOR 50000 ps;
	SW(1) <= '0';
	WAIT FOR 50000 ps;
	SW(1) <= '1';
	WAIT FOR 50000 ps;
	SW(1) <= '0';
	WAIT FOR 150000 ps;
	SW(1) <= '1';
	WAIT FOR 50000 ps;
	SW(1) <= '0';
	WAIT FOR 50000 ps;
	SW(1) <= '1';
	WAIT FOR 100000 ps;
	SW(1) <= '0';
	WAIT FOR 50000 ps;
	SW(1) <= '1';
	WAIT FOR 50000 ps;
	SW(1) <= '0';
	WAIT FOR 50000 ps;
	SW(1) <= '1';
	WAIT FOR 100000 ps;
	SW(1) <= '0';
	WAIT FOR 100000 ps;
	SW(1) <= '1';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '1';
	WAIT FOR 100000 ps;
	SW(0) <= '0';
	WAIT FOR 100000 ps;
	SW(0) <= '1';
	WAIT FOR 100000 ps;
	SW(0) <= '0';
	WAIT FOR 100000 ps;
	SW(0) <= '1';
	WAIT FOR 50000 ps;
	SW(0) <= '0';
	WAIT FOR 50000 ps;
	SW(0) <= '1';
	WAIT FOR 50000 ps;
	SW(0) <= '0';
	WAIT FOR 100000 ps;
	SW(0) <= '1';
	WAIT FOR 50000 ps;
	SW(0) <= '0';
	WAIT FOR 150000 ps;
	SW(0) <= '1';
	WAIT FOR 50000 ps;
	SW(0) <= '0';
	WAIT FOR 50000 ps;
	SW(0) <= '1';
WAIT;
END PROCESS t_prcs_SW_0;
END LogicTop_arch;
