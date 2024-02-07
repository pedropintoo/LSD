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
-- Generated on "02/28/2023 23:04:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bin2BCDSigned
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bin2BCDSigned_vhd_vec_tst IS
END Bin2BCDSigned_vhd_vec_tst;
ARCHITECTURE Bin2BCDSigned_arch OF Bin2BCDSigned_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alertNeg : STD_LOGIC;
SIGNAL Cent : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Dezen : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL inPort : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Unid : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Bin2BCDSigned
	PORT (
	alertNeg : OUT STD_LOGIC;
	Cent : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Dezen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	inPort : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Unid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Bin2BCDSigned
	PORT MAP (
-- list connections between master ports and signals
	alertNeg => alertNeg,
	Cent => Cent,
	Dezen => Dezen,
	inPort => inPort,
	Unid => Unid
	);
-- inPort[15]
t_prcs_inPort_15: PROCESS
BEGIN
	inPort(15) <= '0';
	WAIT FOR 350000 ps;
	inPort(15) <= '1';
	WAIT FOR 450000 ps;
	inPort(15) <= '0';
WAIT;
END PROCESS t_prcs_inPort_15;
-- inPort[14]
t_prcs_inPort_14: PROCESS
BEGIN
	inPort(14) <= '0';
	WAIT FOR 350000 ps;
	inPort(14) <= '1';
	WAIT FOR 450000 ps;
	inPort(14) <= '0';
WAIT;
END PROCESS t_prcs_inPort_14;
-- inPort[13]
t_prcs_inPort_13: PROCESS
BEGIN
	inPort(13) <= '0';
	WAIT FOR 350000 ps;
	inPort(13) <= '1';
	WAIT FOR 450000 ps;
	inPort(13) <= '0';
WAIT;
END PROCESS t_prcs_inPort_13;
-- inPort[12]
t_prcs_inPort_12: PROCESS
BEGIN
	inPort(12) <= '0';
	WAIT FOR 350000 ps;
	inPort(12) <= '1';
	WAIT FOR 450000 ps;
	inPort(12) <= '0';
WAIT;
END PROCESS t_prcs_inPort_12;
-- inPort[11]
t_prcs_inPort_11: PROCESS
BEGIN
	inPort(11) <= '0';
	WAIT FOR 350000 ps;
	inPort(11) <= '1';
	WAIT FOR 450000 ps;
	inPort(11) <= '0';
WAIT;
END PROCESS t_prcs_inPort_11;
-- inPort[10]
t_prcs_inPort_10: PROCESS
BEGIN
	inPort(10) <= '0';
	WAIT FOR 350000 ps;
	inPort(10) <= '1';
	WAIT FOR 450000 ps;
	inPort(10) <= '0';
WAIT;
END PROCESS t_prcs_inPort_10;
-- inPort[9]
t_prcs_inPort_9: PROCESS
BEGIN
	inPort(9) <= '0';
	WAIT FOR 350000 ps;
	inPort(9) <= '1';
	WAIT FOR 450000 ps;
	inPort(9) <= '0';
WAIT;
END PROCESS t_prcs_inPort_9;
-- inPort[8]
t_prcs_inPort_8: PROCESS
BEGIN
	inPort(8) <= '0';
	WAIT FOR 350000 ps;
	inPort(8) <= '1';
	WAIT FOR 450000 ps;
	inPort(8) <= '0';
WAIT;
END PROCESS t_prcs_inPort_8;
-- inPort[7]
t_prcs_inPort_7: PROCESS
BEGIN
	inPort(7) <= '0';
	WAIT FOR 350000 ps;
	inPort(7) <= '1';
	WAIT FOR 450000 ps;
	inPort(7) <= '0';
WAIT;
END PROCESS t_prcs_inPort_7;
-- inPort[6]
t_prcs_inPort_6: PROCESS
BEGIN
	inPort(6) <= '0';
	WAIT FOR 350000 ps;
	inPort(6) <= '1';
WAIT;
END PROCESS t_prcs_inPort_6;
-- inPort[5]
t_prcs_inPort_5: PROCESS
BEGIN
	inPort(5) <= '0';
	WAIT FOR 320000 ps;
	inPort(5) <= '1';
	WAIT FOR 20000 ps;
	inPort(5) <= '0';
	WAIT FOR 10000 ps;
	inPort(5) <= '1';
	WAIT FOR 320000 ps;
	inPort(5) <= '0';
	WAIT FOR 290000 ps;
	inPort(5) <= '1';
WAIT;
END PROCESS t_prcs_inPort_5;
-- inPort[4]
t_prcs_inPort_4: PROCESS
BEGIN
	inPort(4) <= '0';
	WAIT FOR 160000 ps;
	inPort(4) <= '1';
	WAIT FOR 160000 ps;
	inPort(4) <= '0';
	WAIT FOR 30000 ps;
	inPort(4) <= '1';
	WAIT FOR 160000 ps;
	inPort(4) <= '0';
	WAIT FOR 160000 ps;
	inPort(4) <= '1';
	WAIT FOR 290000 ps;
	inPort(4) <= '0';
WAIT;
END PROCESS t_prcs_inPort_4;
-- inPort[3]
t_prcs_inPort_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		inPort(3) <= '0';
		WAIT FOR 80000 ps;
		inPort(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	inPort(3) <= '0';
	WAIT FOR 30000 ps;
	inPort(3) <= '1';
	WAIT FOR 80000 ps;
	inPort(3) <= '0';
	WAIT FOR 80000 ps;
	inPort(3) <= '1';
	WAIT FOR 80000 ps;
	inPort(3) <= '0';
	WAIT FOR 80000 ps;
	inPort(3) <= '1';
	WAIT FOR 80000 ps;
	inPort(3) <= '0';
	WAIT FOR 130000 ps;
	inPort(3) <= '1';
	WAIT FOR 80000 ps;
	inPort(3) <= '0';
WAIT;
END PROCESS t_prcs_inPort_3;
-- inPort[2]
t_prcs_inPort_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		inPort(2) <= '0';
		WAIT FOR 40000 ps;
		inPort(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	inPort(2) <= '0';
	WAIT FOR 30000 ps;
	inPort(2) <= '1';
	WAIT FOR 40000 ps;
	inPort(2) <= '0';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 4
	LOOP
		inPort(2) <= '1';
		WAIT FOR 40000 ps;
		inPort(2) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	inPort(2) <= '1';
	WAIT FOR 40000 ps;
	inPort(2) <= '0';
	WAIT FOR 50000 ps;
	inPort(2) <= '1';
	WAIT FOR 40000 ps;
	inPort(2) <= '0';
	WAIT FOR 40000 ps;
	inPort(2) <= '1';
	WAIT FOR 40000 ps;
	inPort(2) <= '0';
WAIT;
END PROCESS t_prcs_inPort_2;
-- inPort[1]
t_prcs_inPort_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		inPort(1) <= '0';
		WAIT FOR 20000 ps;
		inPort(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	inPort(1) <= '0';
	WAIT FOR 30000 ps;
	inPort(1) <= '1';
	WAIT FOR 20000 ps;
	inPort(1) <= '0';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 10
	LOOP
		inPort(1) <= '1';
		WAIT FOR 20000 ps;
		inPort(1) <= '0';
		WAIT FOR 20000 ps;
	END LOOP;
	inPort(1) <= '1';
	WAIT FOR 10000 ps;
	inPort(1) <= '0';
	WAIT FOR 20000 ps;
	inPort(1) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 4
	LOOP
		inPort(1) <= '0';
		WAIT FOR 20000 ps;
		inPort(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_inPort_1;
-- inPort[0]
t_prcs_inPort_0: PROCESS
BEGIN
	FOR i IN 1 TO 17
	LOOP
		inPort(0) <= '0';
		WAIT FOR 10000 ps;
		inPort(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	FOR i IN 1 TO 23
	LOOP
		inPort(0) <= '0';
		WAIT FOR 10000 ps;
		inPort(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	inPort(0) <= '0';
	WAIT FOR 10000 ps;
	inPort(0) <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 9
	LOOP
		inPort(0) <= '0';
		WAIT FOR 10000 ps;
		inPort(0) <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_inPort_0;
END Bin2BCDSigned_arch;
