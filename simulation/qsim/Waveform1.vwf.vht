-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- Generated on "05/06/2021 16:31:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Rejestry_std_logic
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Rejestry_std_logic_vhd_vec_tst IS
END Rejestry_std_logic_vhd_vec_tst;
ARCHITECTURE Rejestry_std_logic_arch OF Rejestry_std_logic_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADR : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL BA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL BB : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL BC : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL DI : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL IRout : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Sa : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Sba : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Sbb : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Sbc : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Sid : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Rejestry_std_logic
	PORT (
	ADR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	BA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	BB : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	BC : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	DI : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	IRout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Sa : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Sba : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Sbb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Sbc : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Sid : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Rejestry_std_logic
	PORT MAP (
-- list connections between master ports and signals
	ADR => ADR,
	BA => BA,
	BB => BB,
	BC => BC,
	clk => clk,
	DI => DI,
	IRout => IRout,
	Sa => Sa,
	Sba => Sba,
	Sbb => Sbb,
	Sbc => Sbc,
	Sid => Sid
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 2500 ps;
	clk <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- BA[15]
t_prcs_BA_15: PROCESS
BEGIN
	BA(15) <= '1';
	WAIT FOR 10000 ps;
	BA(15) <= '0';
	WAIT FOR 20000 ps;
	BA(15) <= '1';
	WAIT FOR 20000 ps;
	BA(15) <= '0';
	WAIT FOR 50000 ps;
	BA(15) <= '1';
	WAIT FOR 20000 ps;
	BA(15) <= '0';
	WAIT FOR 20000 ps;
	BA(15) <= '1';
	WAIT FOR 20000 ps;
	BA(15) <= '0';
	WAIT FOR 10000 ps;
	BA(15) <= '1';
	WAIT FOR 30000 ps;
	BA(15) <= '0';
	WAIT FOR 40000 ps;
	BA(15) <= '1';
	WAIT FOR 10000 ps;
	BA(15) <= '0';
	WAIT FOR 10000 ps;
	BA(15) <= '1';
	WAIT FOR 20000 ps;
	BA(15) <= '0';
	WAIT FOR 10000 ps;
	BA(15) <= '1';
	WAIT FOR 20000 ps;
	BA(15) <= '0';
	WAIT FOR 10000 ps;
	BA(15) <= '1';
	WAIT FOR 10000 ps;
	BA(15) <= '0';
	WAIT FOR 20000 ps;
	BA(15) <= '1';
	WAIT FOR 30000 ps;
	BA(15) <= '0';
	WAIT FOR 20000 ps;
	BA(15) <= '1';
	WAIT FOR 20000 ps;
	BA(15) <= '0';
	WAIT FOR 20000 ps;
	BA(15) <= '1';
	WAIT FOR 10000 ps;
	BA(15) <= '0';
	WAIT FOR 10000 ps;
	BA(15) <= '1';
	WAIT FOR 10000 ps;
	BA(15) <= '0';
	WAIT FOR 70000 ps;
	BA(15) <= '1';
	WAIT FOR 30000 ps;
	BA(15) <= '0';
	WAIT FOR 10000 ps;
	BA(15) <= '1';
	WAIT FOR 10000 ps;
	BA(15) <= '0';
	WAIT FOR 60000 ps;
	BA(15) <= '1';
	WAIT FOR 20000 ps;
	BA(15) <= '0';
	WAIT FOR 20000 ps;
	BA(15) <= '1';
	WAIT FOR 20000 ps;
	BA(15) <= '0';
	WAIT FOR 60000 ps;
	BA(15) <= '1';
	WAIT FOR 10000 ps;
	BA(15) <= '0';
	WAIT FOR 30000 ps;
	BA(15) <= '1';
	WAIT FOR 10000 ps;
	BA(15) <= '0';
	WAIT FOR 20000 ps;
	BA(15) <= '1';
	WAIT FOR 20000 ps;
	BA(15) <= '0';
	WAIT FOR 40000 ps;
	BA(15) <= '1';
	WAIT FOR 10000 ps;
	BA(15) <= '0';
	WAIT FOR 10000 ps;
	BA(15) <= '1';
	WAIT FOR 10000 ps;
	BA(15) <= '0';
	WAIT FOR 40000 ps;
	BA(15) <= '1';
WAIT;
END PROCESS t_prcs_BA_15;
-- BA[14]
t_prcs_BA_14: PROCESS
BEGIN
	BA(14) <= '1';
	WAIT FOR 30000 ps;
	BA(14) <= '0';
	WAIT FOR 20000 ps;
	BA(14) <= '1';
	WAIT FOR 20000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 30000 ps;
	BA(14) <= '0';
	WAIT FOR 20000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 20000 ps;
	BA(14) <= '0';
	WAIT FOR 20000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 30000 ps;
	BA(14) <= '1';
	WAIT FOR 50000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 20000 ps;
	BA(14) <= '1';
	WAIT FOR 20000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 40000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 40000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 20000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 30000 ps;
	BA(14) <= '0';
	WAIT FOR 20000 ps;
	BA(14) <= '1';
	WAIT FOR 50000 ps;
	BA(14) <= '0';
	WAIT FOR 20000 ps;
	BA(14) <= '1';
	WAIT FOR 20000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 20000 ps;
	BA(14) <= '0';
	WAIT FOR 40000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 20000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 40000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 20000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 20000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 10000 ps;
	BA(14) <= '1';
	WAIT FOR 10000 ps;
	BA(14) <= '0';
	WAIT FOR 30000 ps;
	BA(14) <= '1';
WAIT;
END PROCESS t_prcs_BA_14;
-- BA[13]
t_prcs_BA_13: PROCESS
BEGIN
	BA(13) <= '0';
	WAIT FOR 40000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 50000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 20000 ps;
	BA(13) <= '0';
	WAIT FOR 20000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 30000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 30000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 20000 ps;
	BA(13) <= '0';
	WAIT FOR 20000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 20000 ps;
	BA(13) <= '1';
	WAIT FOR 20000 ps;
	BA(13) <= '0';
	WAIT FOR 20000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 40000 ps;
	BA(13) <= '1';
	WAIT FOR 40000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 20000 ps;
	BA(13) <= '1';
	WAIT FOR 30000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 30000 ps;
	BA(13) <= '0';
	WAIT FOR 20000 ps;
	BA(13) <= '1';
	WAIT FOR 20000 ps;
	BA(13) <= '0';
	WAIT FOR 20000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 30000 ps;
	BA(13) <= '1';
	WAIT FOR 20000 ps;
	BA(13) <= '0';
	WAIT FOR 10000 ps;
	BA(13) <= '1';
	WAIT FOR 20000 ps;
	BA(13) <= '0';
	WAIT FOR 30000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
	WAIT FOR 30000 ps;
	BA(13) <= '1';
	WAIT FOR 40000 ps;
	BA(13) <= '0';
	WAIT FOR 20000 ps;
	BA(13) <= '1';
	WAIT FOR 10000 ps;
	BA(13) <= '0';
WAIT;
END PROCESS t_prcs_BA_13;
-- BA[12]
t_prcs_BA_12: PROCESS
BEGIN
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 60000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 20000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 20000 ps;
	BA(12) <= '0';
	WAIT FOR 20000 ps;
	BA(12) <= '1';
	WAIT FOR 20000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 10000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 40000 ps;
	BA(12) <= '0';
	WAIT FOR 20000 ps;
	BA(12) <= '1';
	WAIT FOR 10000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 10000 ps;
	BA(12) <= '0';
	WAIT FOR 20000 ps;
	BA(12) <= '1';
	WAIT FOR 10000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 20000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 50000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 10000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 20000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 10000 ps;
	BA(12) <= '0';
	WAIT FOR 30000 ps;
	BA(12) <= '1';
	WAIT FOR 40000 ps;
	BA(12) <= '0';
	WAIT FOR 20000 ps;
	BA(12) <= '1';
	WAIT FOR 30000 ps;
	BA(12) <= '0';
	WAIT FOR 20000 ps;
	BA(12) <= '1';
	WAIT FOR 40000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 40000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 10000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 10000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 10000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 10000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 20000 ps;
	BA(12) <= '0';
	WAIT FOR 20000 ps;
	BA(12) <= '1';
	WAIT FOR 10000 ps;
	BA(12) <= '0';
	WAIT FOR 30000 ps;
	BA(12) <= '1';
	WAIT FOR 30000 ps;
	BA(12) <= '0';
	WAIT FOR 10000 ps;
	BA(12) <= '1';
	WAIT FOR 20000 ps;
	BA(12) <= '0';
	WAIT FOR 20000 ps;
	BA(12) <= '1';
	WAIT FOR 10000 ps;
	BA(12) <= '0';
WAIT;
END PROCESS t_prcs_BA_12;
-- BA[11]
t_prcs_BA_11: PROCESS
BEGIN
	BA(11) <= '1';
	WAIT FOR 10000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 10000 ps;
	BA(11) <= '0';
	WAIT FOR 20000 ps;
	BA(11) <= '1';
	WAIT FOR 40000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 20000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 20000 ps;
	BA(11) <= '0';
	WAIT FOR 20000 ps;
	BA(11) <= '1';
	WAIT FOR 30000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 20000 ps;
	BA(11) <= '0';
	WAIT FOR 60000 ps;
	BA(11) <= '1';
	WAIT FOR 10000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 40000 ps;
	BA(11) <= '0';
	WAIT FOR 20000 ps;
	BA(11) <= '1';
	WAIT FOR 10000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 10000 ps;
	BA(11) <= '0';
	WAIT FOR 50000 ps;
	BA(11) <= '1';
	WAIT FOR 30000 ps;
	BA(11) <= '0';
	WAIT FOR 20000 ps;
	BA(11) <= '1';
	WAIT FOR 30000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 20000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 10000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 20000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 10000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 20000 ps;
	BA(11) <= '0';
	WAIT FOR 20000 ps;
	BA(11) <= '1';
	WAIT FOR 20000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 30000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 10000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 20000 ps;
	BA(11) <= '0';
	WAIT FOR 20000 ps;
	BA(11) <= '1';
	WAIT FOR 10000 ps;
	BA(11) <= '0';
	WAIT FOR 30000 ps;
	BA(11) <= '1';
	WAIT FOR 20000 ps;
	BA(11) <= '0';
	WAIT FOR 20000 ps;
	BA(11) <= '1';
	WAIT FOR 10000 ps;
	BA(11) <= '0';
	WAIT FOR 10000 ps;
	BA(11) <= '1';
	WAIT FOR 20000 ps;
	BA(11) <= '0';
	WAIT FOR 20000 ps;
	BA(11) <= '1';
	WAIT FOR 10000 ps;
	BA(11) <= '0';
WAIT;
END PROCESS t_prcs_BA_11;
-- BA[10]
t_prcs_BA_10: PROCESS
BEGIN
	BA(10) <= '1';
	WAIT FOR 20000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 10000 ps;
	BA(10) <= '0';
	WAIT FOR 20000 ps;
	BA(10) <= '1';
	WAIT FOR 10000 ps;
	BA(10) <= '0';
	WAIT FOR 20000 ps;
	BA(10) <= '1';
	WAIT FOR 10000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 40000 ps;
	BA(10) <= '0';
	WAIT FOR 20000 ps;
	BA(10) <= '1';
	WAIT FOR 10000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 10000 ps;
	BA(10) <= '0';
	WAIT FOR 50000 ps;
	BA(10) <= '1';
	WAIT FOR 10000 ps;
	BA(10) <= '0';
	WAIT FOR 20000 ps;
	BA(10) <= '1';
	WAIT FOR 20000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 20000 ps;
	BA(10) <= '0';
	WAIT FOR 20000 ps;
	BA(10) <= '1';
	WAIT FOR 20000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 20000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 30000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 60000 ps;
	BA(10) <= '0';
	WAIT FOR 20000 ps;
	BA(10) <= '1';
	WAIT FOR 20000 ps;
	BA(10) <= '0';
	WAIT FOR 30000 ps;
	BA(10) <= '1';
	WAIT FOR 20000 ps;
	BA(10) <= '0';
	WAIT FOR 20000 ps;
	BA(10) <= '1';
	WAIT FOR 10000 ps;
	BA(10) <= '0';
	WAIT FOR 20000 ps;
	BA(10) <= '1';
	WAIT FOR 30000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 10000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 20000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 10000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 20000 ps;
	BA(10) <= '0';
	WAIT FOR 30000 ps;
	BA(10) <= '1';
	WAIT FOR 50000 ps;
	BA(10) <= '0';
	WAIT FOR 30000 ps;
	BA(10) <= '1';
	WAIT FOR 20000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 40000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
	WAIT FOR 10000 ps;
	BA(10) <= '0';
	WAIT FOR 10000 ps;
	BA(10) <= '1';
WAIT;
END PROCESS t_prcs_BA_10;
-- BA[9]
t_prcs_BA_9: PROCESS
BEGIN
	BA(9) <= '0';
	WAIT FOR 20000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 40000 ps;
	BA(9) <= '1';
	WAIT FOR 60000 ps;
	BA(9) <= '0';
	WAIT FOR 30000 ps;
	BA(9) <= '1';
	WAIT FOR 30000 ps;
	BA(9) <= '0';
	WAIT FOR 20000 ps;
	BA(9) <= '1';
	WAIT FOR 20000 ps;
	BA(9) <= '0';
	WAIT FOR 10000 ps;
	BA(9) <= '1';
	WAIT FOR 110000 ps;
	BA(9) <= '0';
	WAIT FOR 80000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 30000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 20000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 20000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 10000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 10000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 20000 ps;
	BA(9) <= '1';
	WAIT FOR 50000 ps;
	BA(9) <= '0';
	WAIT FOR 10000 ps;
	BA(9) <= '1';
	WAIT FOR 20000 ps;
	BA(9) <= '0';
	WAIT FOR 70000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 10000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 20000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 10000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 10000 ps;
	BA(9) <= '1';
	WAIT FOR 20000 ps;
	BA(9) <= '0';
	WAIT FOR 40000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 10000 ps;
	BA(9) <= '1';
	WAIT FOR 10000 ps;
	BA(9) <= '0';
	WAIT FOR 10000 ps;
	BA(9) <= '1';
	WAIT FOR 30000 ps;
	BA(9) <= '0';
	WAIT FOR 10000 ps;
	BA(9) <= '1';
WAIT;
END PROCESS t_prcs_BA_9;
-- BA[8]
t_prcs_BA_8: PROCESS
BEGIN
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 30000 ps;
	BA(8) <= '0';
	WAIT FOR 30000 ps;
	BA(8) <= '1';
	WAIT FOR 50000 ps;
	BA(8) <= '0';
	WAIT FOR 20000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 20000 ps;
	BA(8) <= '0';
	WAIT FOR 30000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 20000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 20000 ps;
	BA(8) <= '0';
	WAIT FOR 20000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 30000 ps;
	BA(8) <= '1';
	WAIT FOR 20000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 20000 ps;
	BA(8) <= '0';
	WAIT FOR 40000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 40000 ps;
	BA(8) <= '1';
	WAIT FOR 20000 ps;
	BA(8) <= '0';
	WAIT FOR 20000 ps;
	BA(8) <= '1';
	WAIT FOR 30000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 70000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 30000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 30000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 30000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 20000 ps;
	BA(8) <= '0';
	WAIT FOR 20000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 10000 ps;
	BA(8) <= '0';
	WAIT FOR 10000 ps;
	BA(8) <= '1';
	WAIT FOR 30000 ps;
	BA(8) <= '0';
WAIT;
END PROCESS t_prcs_BA_8;
-- BA[7]
t_prcs_BA_7: PROCESS
BEGIN
	BA(7) <= '1';
	WAIT FOR 10000 ps;
	BA(7) <= '0';
	WAIT FOR 20000 ps;
	BA(7) <= '1';
	WAIT FOR 30000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 30000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 20000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 30000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 20000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 20000 ps;
	BA(7) <= '0';
	WAIT FOR 20000 ps;
	BA(7) <= '1';
	WAIT FOR 30000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 10000 ps;
	BA(7) <= '0';
	WAIT FOR 20000 ps;
	BA(7) <= '1';
	WAIT FOR 10000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 10000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 50000 ps;
	BA(7) <= '0';
	WAIT FOR 40000 ps;
	BA(7) <= '1';
	WAIT FOR 10000 ps;
	BA(7) <= '0';
	WAIT FOR 80000 ps;
	BA(7) <= '1';
	WAIT FOR 40000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 20000 ps;
	BA(7) <= '0';
	WAIT FOR 40000 ps;
	BA(7) <= '1';
	WAIT FOR 10000 ps;
	BA(7) <= '0';
	WAIT FOR 30000 ps;
	BA(7) <= '1';
	WAIT FOR 10000 ps;
	BA(7) <= '0';
	WAIT FOR 20000 ps;
	BA(7) <= '1';
	WAIT FOR 20000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 10000 ps;
	BA(7) <= '0';
	WAIT FOR 40000 ps;
	BA(7) <= '1';
	WAIT FOR 10000 ps;
	BA(7) <= '0';
	WAIT FOR 30000 ps;
	BA(7) <= '1';
	WAIT FOR 40000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 30000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 10000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
	WAIT FOR 30000 ps;
	BA(7) <= '0';
	WAIT FOR 10000 ps;
	BA(7) <= '1';
WAIT;
END PROCESS t_prcs_BA_7;
-- BA[6]
t_prcs_BA_6: PROCESS
BEGIN
	BA(6) <= '0';
	WAIT FOR 20000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 20000 ps;
	BA(6) <= '1';
	WAIT FOR 20000 ps;
	BA(6) <= '0';
	WAIT FOR 40000 ps;
	BA(6) <= '1';
	WAIT FOR 20000 ps;
	BA(6) <= '0';
	WAIT FOR 20000 ps;
	BA(6) <= '1';
	WAIT FOR 20000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 20000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 30000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 40000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 30000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 40000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 20000 ps;
	BA(6) <= '0';
	WAIT FOR 20000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 20000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 20000 ps;
	BA(6) <= '1';
	WAIT FOR 60000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 30000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 20000 ps;
	BA(6) <= '0';
	WAIT FOR 30000 ps;
	BA(6) <= '1';
	WAIT FOR 20000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 20000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 20000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
	WAIT FOR 40000 ps;
	BA(6) <= '0';
	WAIT FOR 30000 ps;
	BA(6) <= '1';
	WAIT FOR 10000 ps;
	BA(6) <= '0';
	WAIT FOR 10000 ps;
	BA(6) <= '1';
WAIT;
END PROCESS t_prcs_BA_6;
-- BA[5]
t_prcs_BA_5: PROCESS
BEGIN
	BA(5) <= '0';
	WAIT FOR 30000 ps;
	BA(5) <= '1';
	WAIT FOR 10000 ps;
	BA(5) <= '0';
	WAIT FOR 70000 ps;
	BA(5) <= '1';
	WAIT FOR 20000 ps;
	BA(5) <= '0';
	WAIT FOR 10000 ps;
	BA(5) <= '1';
	WAIT FOR 10000 ps;
	BA(5) <= '0';
	WAIT FOR 10000 ps;
	BA(5) <= '1';
	WAIT FOR 20000 ps;
	BA(5) <= '0';
	WAIT FOR 10000 ps;
	BA(5) <= '1';
	WAIT FOR 10000 ps;
	BA(5) <= '0';
	WAIT FOR 20000 ps;
	BA(5) <= '1';
	WAIT FOR 70000 ps;
	BA(5) <= '0';
	WAIT FOR 20000 ps;
	BA(5) <= '1';
	WAIT FOR 30000 ps;
	BA(5) <= '0';
	WAIT FOR 30000 ps;
	BA(5) <= '1';
	WAIT FOR 20000 ps;
	BA(5) <= '0';
	WAIT FOR 30000 ps;
	BA(5) <= '1';
	WAIT FOR 10000 ps;
	BA(5) <= '0';
	WAIT FOR 30000 ps;
	BA(5) <= '1';
	WAIT FOR 30000 ps;
	BA(5) <= '0';
	WAIT FOR 10000 ps;
	BA(5) <= '1';
	WAIT FOR 50000 ps;
	BA(5) <= '0';
	WAIT FOR 10000 ps;
	BA(5) <= '1';
	WAIT FOR 20000 ps;
	BA(5) <= '0';
	WAIT FOR 10000 ps;
	BA(5) <= '1';
	WAIT FOR 30000 ps;
	BA(5) <= '0';
	WAIT FOR 10000 ps;
	BA(5) <= '1';
	WAIT FOR 10000 ps;
	BA(5) <= '0';
	WAIT FOR 30000 ps;
	BA(5) <= '1';
	WAIT FOR 40000 ps;
	BA(5) <= '0';
	WAIT FOR 20000 ps;
	BA(5) <= '1';
	WAIT FOR 40000 ps;
	BA(5) <= '0';
	WAIT FOR 30000 ps;
	BA(5) <= '1';
	WAIT FOR 10000 ps;
	BA(5) <= '0';
	WAIT FOR 10000 ps;
	BA(5) <= '1';
	WAIT FOR 10000 ps;
	BA(5) <= '0';
	WAIT FOR 10000 ps;
	BA(5) <= '1';
	WAIT FOR 30000 ps;
	BA(5) <= '0';
	WAIT FOR 10000 ps;
	BA(5) <= '1';
	WAIT FOR 10000 ps;
	BA(5) <= '0';
	WAIT FOR 20000 ps;
	BA(5) <= '1';
	WAIT FOR 20000 ps;
	BA(5) <= '0';
	WAIT FOR 10000 ps;
	BA(5) <= '1';
	WAIT FOR 40000 ps;
	BA(5) <= '0';
	WAIT FOR 10000 ps;
	BA(5) <= '1';
WAIT;
END PROCESS t_prcs_BA_5;
-- BA[4]
t_prcs_BA_4: PROCESS
BEGIN
	BA(4) <= '1';
	WAIT FOR 20000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 10000 ps;
	BA(4) <= '0';
	WAIT FOR 30000 ps;
	BA(4) <= '1';
	WAIT FOR 10000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 30000 ps;
	BA(4) <= '0';
	WAIT FOR 60000 ps;
	BA(4) <= '1';
	WAIT FOR 10000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 20000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 20000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 30000 ps;
	BA(4) <= '0';
	WAIT FOR 30000 ps;
	BA(4) <= '1';
	WAIT FOR 10000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 30000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 10000 ps;
	BA(4) <= '0';
	WAIT FOR 100000 ps;
	BA(4) <= '1';
	WAIT FOR 20000 ps;
	BA(4) <= '0';
	WAIT FOR 20000 ps;
	BA(4) <= '1';
	WAIT FOR 10000 ps;
	BA(4) <= '0';
	WAIT FOR 20000 ps;
	BA(4) <= '1';
	WAIT FOR 10000 ps;
	BA(4) <= '0';
	WAIT FOR 20000 ps;
	BA(4) <= '1';
	WAIT FOR 20000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 20000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 40000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 10000 ps;
	BA(4) <= '0';
	WAIT FOR 20000 ps;
	BA(4) <= '1';
	WAIT FOR 10000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 40000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 10000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 30000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 20000 ps;
	BA(4) <= '0';
	WAIT FOR 10000 ps;
	BA(4) <= '1';
	WAIT FOR 40000 ps;
	BA(4) <= '0';
	WAIT FOR 40000 ps;
	BA(4) <= '1';
	WAIT FOR 20000 ps;
	BA(4) <= '0';
WAIT;
END PROCESS t_prcs_BA_4;
-- BA[3]
t_prcs_BA_3: PROCESS
BEGIN
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 30000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 10000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 10000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 10000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 10000 ps;
	BA(3) <= '0';
	WAIT FOR 20000 ps;
	BA(3) <= '1';
	WAIT FOR 20000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 10000 ps;
	BA(3) <= '0';
	WAIT FOR 40000 ps;
	BA(3) <= '1';
	WAIT FOR 90000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 40000 ps;
	BA(3) <= '0';
	WAIT FOR 100000 ps;
	BA(3) <= '1';
	WAIT FOR 10000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 50000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 10000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 30000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 40000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 20000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 110000 ps;
	BA(3) <= '0';
	WAIT FOR 20000 ps;
	BA(3) <= '1';
	WAIT FOR 30000 ps;
	BA(3) <= '0';
	WAIT FOR 20000 ps;
	BA(3) <= '1';
	WAIT FOR 10000 ps;
	BA(3) <= '0';
	WAIT FOR 20000 ps;
	BA(3) <= '1';
	WAIT FOR 40000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 20000 ps;
	BA(3) <= '0';
	WAIT FOR 10000 ps;
	BA(3) <= '1';
	WAIT FOR 10000 ps;
	BA(3) <= '0';
WAIT;
END PROCESS t_prcs_BA_3;
-- BA[2]
t_prcs_BA_2: PROCESS
BEGIN
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 30000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 30000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 30000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 30000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 20000 ps;
	BA(2) <= '0';
	WAIT FOR 20000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 20000 ps;
	BA(2) <= '0';
	WAIT FOR 20000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 50000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 40000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 30000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 20000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 30000 ps;
	BA(2) <= '0';
	WAIT FOR 30000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 30000 ps;
	BA(2) <= '1';
	WAIT FOR 30000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 40000 ps;
	BA(2) <= '0';
	WAIT FOR 30000 ps;
	BA(2) <= '1';
	WAIT FOR 50000 ps;
	BA(2) <= '0';
	WAIT FOR 60000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 20000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
	WAIT FOR 10000 ps;
	BA(2) <= '0';
	WAIT FOR 10000 ps;
	BA(2) <= '1';
WAIT;
END PROCESS t_prcs_BA_2;
-- BA[1]
t_prcs_BA_1: PROCESS
BEGIN
	BA(1) <= '1';
	WAIT FOR 10000 ps;
	BA(1) <= '0';
	WAIT FOR 50000 ps;
	BA(1) <= '1';
	WAIT FOR 30000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 10000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 10000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 10000 ps;
	BA(1) <= '0';
	WAIT FOR 30000 ps;
	BA(1) <= '1';
	WAIT FOR 10000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 10000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 40000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 20000 ps;
	BA(1) <= '0';
	WAIT FOR 20000 ps;
	BA(1) <= '1';
	WAIT FOR 40000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 20000 ps;
	BA(1) <= '0';
	WAIT FOR 20000 ps;
	BA(1) <= '1';
	WAIT FOR 20000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 10000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 60000 ps;
	BA(1) <= '0';
	WAIT FOR 30000 ps;
	BA(1) <= '1';
	WAIT FOR 90000 ps;
	BA(1) <= '0';
	WAIT FOR 30000 ps;
	BA(1) <= '1';
	WAIT FOR 10000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 130000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 10000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 20000 ps;
	BA(1) <= '0';
	WAIT FOR 30000 ps;
	BA(1) <= '1';
	WAIT FOR 20000 ps;
	BA(1) <= '0';
	WAIT FOR 20000 ps;
	BA(1) <= '1';
	WAIT FOR 20000 ps;
	BA(1) <= '0';
	WAIT FOR 10000 ps;
	BA(1) <= '1';
	WAIT FOR 30000 ps;
	BA(1) <= '0';
WAIT;
END PROCESS t_prcs_BA_1;
-- BA[0]
t_prcs_BA_0: PROCESS
BEGIN
	BA(0) <= '0';
	WAIT FOR 20000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 20000 ps;
	BA(0) <= '1';
	WAIT FOR 20000 ps;
	BA(0) <= '0';
	WAIT FOR 20000 ps;
	BA(0) <= '1';
	WAIT FOR 20000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 20000 ps;
	BA(0) <= '0';
	WAIT FOR 20000 ps;
	BA(0) <= '1';
	WAIT FOR 20000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 40000 ps;
	BA(0) <= '0';
	WAIT FOR 30000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 20000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 20000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 40000 ps;
	BA(0) <= '1';
	WAIT FOR 50000 ps;
	BA(0) <= '0';
	WAIT FOR 30000 ps;
	BA(0) <= '1';
	WAIT FOR 20000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 30000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 20000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 30000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 20000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 20000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 20000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 30000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 20000 ps;
	BA(0) <= '0';
	WAIT FOR 30000 ps;
	BA(0) <= '1';
	WAIT FOR 10000 ps;
	BA(0) <= '0';
	WAIT FOR 10000 ps;
	BA(0) <= '1';
	WAIT FOR 20000 ps;
	BA(0) <= '0';
WAIT;
END PROCESS t_prcs_BA_0;
-- DI[15]
t_prcs_DI_15: PROCESS
BEGIN
	DI(15) <= '0';
WAIT;
END PROCESS t_prcs_DI_15;
-- DI[14]
t_prcs_DI_14: PROCESS
BEGIN
	DI(14) <= '0';
WAIT;
END PROCESS t_prcs_DI_14;
-- DI[13]
t_prcs_DI_13: PROCESS
BEGIN
	DI(13) <= '0';
WAIT;
END PROCESS t_prcs_DI_13;
-- DI[12]
t_prcs_DI_12: PROCESS
BEGIN
	DI(12) <= '0';
WAIT;
END PROCESS t_prcs_DI_12;
-- DI[11]
t_prcs_DI_11: PROCESS
BEGIN
	DI(11) <= '0';
WAIT;
END PROCESS t_prcs_DI_11;
-- DI[10]
t_prcs_DI_10: PROCESS
BEGIN
	DI(10) <= '0';
WAIT;
END PROCESS t_prcs_DI_10;
-- DI[9]
t_prcs_DI_9: PROCESS
BEGIN
	DI(9) <= '0';
WAIT;
END PROCESS t_prcs_DI_9;
-- DI[8]
t_prcs_DI_8: PROCESS
BEGIN
	DI(8) <= '0';
WAIT;
END PROCESS t_prcs_DI_8;
-- DI[7]
t_prcs_DI_7: PROCESS
BEGIN
	DI(7) <= '0';
WAIT;
END PROCESS t_prcs_DI_7;
-- DI[6]
t_prcs_DI_6: PROCESS
BEGIN
	DI(6) <= '0';
WAIT;
END PROCESS t_prcs_DI_6;
-- DI[5]
t_prcs_DI_5: PROCESS
BEGIN
	DI(5) <= '0';
WAIT;
END PROCESS t_prcs_DI_5;
-- DI[4]
t_prcs_DI_4: PROCESS
BEGIN
	DI(4) <= '0';
WAIT;
END PROCESS t_prcs_DI_4;
-- DI[3]
t_prcs_DI_3: PROCESS
BEGIN
	DI(3) <= '0';
WAIT;
END PROCESS t_prcs_DI_3;
-- DI[2]
t_prcs_DI_2: PROCESS
BEGIN
	DI(2) <= '0';
WAIT;
END PROCESS t_prcs_DI_2;
-- DI[1]
t_prcs_DI_1: PROCESS
BEGIN
	DI(1) <= '0';
WAIT;
END PROCESS t_prcs_DI_1;
-- DI[0]
t_prcs_DI_0: PROCESS
BEGIN
	DI(0) <= '0';
WAIT;
END PROCESS t_prcs_DI_0;
-- Sa[1]
t_prcs_Sa_1: PROCESS
BEGIN
	Sa(1) <= '0';
WAIT;
END PROCESS t_prcs_Sa_1;
-- Sa[0]
t_prcs_Sa_0: PROCESS
BEGIN
	Sa(0) <= '0';
WAIT;
END PROCESS t_prcs_Sa_0;
-- Sba[3]
t_prcs_Sba_3: PROCESS
BEGIN
	Sba(3) <= '0';
WAIT;
END PROCESS t_prcs_Sba_3;
-- Sba[2]
t_prcs_Sba_2: PROCESS
BEGIN
	Sba(2) <= '0';
WAIT;
END PROCESS t_prcs_Sba_2;
-- Sba[1]
t_prcs_Sba_1: PROCESS
BEGIN
	Sba(1) <= '0';
	WAIT FOR 70000 ps;
	Sba(1) <= '1';
	WAIT FOR 20000 ps;
	Sba(1) <= '0';
WAIT;
END PROCESS t_prcs_Sba_1;
-- Sba[0]
t_prcs_Sba_0: PROCESS
BEGIN
	Sba(0) <= '0';
	WAIT FOR 80000 ps;
	Sba(0) <= '1';
	WAIT FOR 10000 ps;
	Sba(0) <= '0';
WAIT;
END PROCESS t_prcs_Sba_0;
-- Sbb[3]
t_prcs_Sbb_3: PROCESS
BEGIN
	Sbb(3) <= '0';
WAIT;
END PROCESS t_prcs_Sbb_3;
-- Sbb[2]
t_prcs_Sbb_2: PROCESS
BEGIN
	Sbb(2) <= '0';
WAIT;
END PROCESS t_prcs_Sbb_2;
-- Sbb[1]
t_prcs_Sbb_1: PROCESS
BEGIN
	Sbb(1) <= '1';
WAIT;
END PROCESS t_prcs_Sbb_1;
-- Sbb[0]
t_prcs_Sbb_0: PROCESS
BEGIN
	Sbb(0) <= '0';
WAIT;
END PROCESS t_prcs_Sbb_0;
-- Sbc[3]
t_prcs_Sbc_3: PROCESS
BEGIN
	Sbc(3) <= '0';
WAIT;
END PROCESS t_prcs_Sbc_3;
-- Sbc[2]
t_prcs_Sbc_2: PROCESS
BEGIN
	Sbc(2) <= '0';
WAIT;
END PROCESS t_prcs_Sbc_2;
-- Sbc[1]
t_prcs_Sbc_1: PROCESS
BEGIN
	Sbc(1) <= '1';
WAIT;
END PROCESS t_prcs_Sbc_1;
-- Sbc[0]
t_prcs_Sbc_0: PROCESS
BEGIN
	Sbc(0) <= '1';
WAIT;
END PROCESS t_prcs_Sbc_0;
-- Sid[2]
t_prcs_Sid_2: PROCESS
BEGIN
	Sid(2) <= '0';
WAIT;
END PROCESS t_prcs_Sid_2;
-- Sid[1]
t_prcs_Sid_1: PROCESS
BEGIN
	Sid(1) <= '0';
WAIT;
END PROCESS t_prcs_Sid_1;
-- Sid[0]
t_prcs_Sid_0: PROCESS
BEGIN
	Sid(0) <= '1';
WAIT;
END PROCESS t_prcs_Sid_0;
END Rejestry_std_logic_arch;
