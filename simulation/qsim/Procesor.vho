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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "05/06/2021 16:31:49"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Rejestry_std_logic IS
    PORT (
	clk : IN std_logic;
	DI : IN std_logic_vector(15 DOWNTO 0);
	BA : IN std_logic_vector(15 DOWNTO 0);
	Sbb : IN std_logic_vector(3 DOWNTO 0);
	Sbc : IN std_logic_vector(3 DOWNTO 0);
	Sba : IN std_logic_vector(3 DOWNTO 0);
	Sid : IN std_logic_vector(2 DOWNTO 0);
	Sa : IN std_logic_vector(1 DOWNTO 0);
	BB : OUT std_logic_vector(15 DOWNTO 0);
	BC : OUT std_logic_vector(15 DOWNTO 0);
	ADR : OUT std_logic_vector(31 DOWNTO 0);
	IRout : OUT std_logic_vector(15 DOWNTO 0)
	);
END Rejestry_std_logic;

ARCHITECTURE structure OF Rejestry_std_logic IS
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
SIGNAL ww_DI : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_BA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Sbb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sbc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sba : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sid : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Sa : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_BB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_BC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ADR : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_IRout : std_logic_vector(15 DOWNTO 0);
SIGNAL \BB[0]~output_o\ : std_logic;
SIGNAL \BB[1]~output_o\ : std_logic;
SIGNAL \BB[2]~output_o\ : std_logic;
SIGNAL \BB[3]~output_o\ : std_logic;
SIGNAL \BB[4]~output_o\ : std_logic;
SIGNAL \BB[5]~output_o\ : std_logic;
SIGNAL \BB[6]~output_o\ : std_logic;
SIGNAL \BB[7]~output_o\ : std_logic;
SIGNAL \BB[8]~output_o\ : std_logic;
SIGNAL \BB[9]~output_o\ : std_logic;
SIGNAL \BB[10]~output_o\ : std_logic;
SIGNAL \BB[11]~output_o\ : std_logic;
SIGNAL \BB[12]~output_o\ : std_logic;
SIGNAL \BB[13]~output_o\ : std_logic;
SIGNAL \BB[14]~output_o\ : std_logic;
SIGNAL \BB[15]~output_o\ : std_logic;
SIGNAL \BC[0]~output_o\ : std_logic;
SIGNAL \BC[1]~output_o\ : std_logic;
SIGNAL \BC[2]~output_o\ : std_logic;
SIGNAL \BC[3]~output_o\ : std_logic;
SIGNAL \BC[4]~output_o\ : std_logic;
SIGNAL \BC[5]~output_o\ : std_logic;
SIGNAL \BC[6]~output_o\ : std_logic;
SIGNAL \BC[7]~output_o\ : std_logic;
SIGNAL \BC[8]~output_o\ : std_logic;
SIGNAL \BC[9]~output_o\ : std_logic;
SIGNAL \BC[10]~output_o\ : std_logic;
SIGNAL \BC[11]~output_o\ : std_logic;
SIGNAL \BC[12]~output_o\ : std_logic;
SIGNAL \BC[13]~output_o\ : std_logic;
SIGNAL \BC[14]~output_o\ : std_logic;
SIGNAL \BC[15]~output_o\ : std_logic;
SIGNAL \ADR[0]~output_o\ : std_logic;
SIGNAL \ADR[1]~output_o\ : std_logic;
SIGNAL \ADR[2]~output_o\ : std_logic;
SIGNAL \ADR[3]~output_o\ : std_logic;
SIGNAL \ADR[4]~output_o\ : std_logic;
SIGNAL \ADR[5]~output_o\ : std_logic;
SIGNAL \ADR[6]~output_o\ : std_logic;
SIGNAL \ADR[7]~output_o\ : std_logic;
SIGNAL \ADR[8]~output_o\ : std_logic;
SIGNAL \ADR[9]~output_o\ : std_logic;
SIGNAL \ADR[10]~output_o\ : std_logic;
SIGNAL \ADR[11]~output_o\ : std_logic;
SIGNAL \ADR[12]~output_o\ : std_logic;
SIGNAL \ADR[13]~output_o\ : std_logic;
SIGNAL \ADR[14]~output_o\ : std_logic;
SIGNAL \ADR[15]~output_o\ : std_logic;
SIGNAL \ADR[16]~output_o\ : std_logic;
SIGNAL \ADR[17]~output_o\ : std_logic;
SIGNAL \ADR[18]~output_o\ : std_logic;
SIGNAL \ADR[19]~output_o\ : std_logic;
SIGNAL \ADR[20]~output_o\ : std_logic;
SIGNAL \ADR[21]~output_o\ : std_logic;
SIGNAL \ADR[22]~output_o\ : std_logic;
SIGNAL \ADR[23]~output_o\ : std_logic;
SIGNAL \ADR[24]~output_o\ : std_logic;
SIGNAL \ADR[25]~output_o\ : std_logic;
SIGNAL \ADR[26]~output_o\ : std_logic;
SIGNAL \ADR[27]~output_o\ : std_logic;
SIGNAL \ADR[28]~output_o\ : std_logic;
SIGNAL \ADR[29]~output_o\ : std_logic;
SIGNAL \ADR[30]~output_o\ : std_logic;
SIGNAL \ADR[31]~output_o\ : std_logic;
SIGNAL \IRout[0]~output_o\ : std_logic;
SIGNAL \IRout[1]~output_o\ : std_logic;
SIGNAL \IRout[2]~output_o\ : std_logic;
SIGNAL \IRout[3]~output_o\ : std_logic;
SIGNAL \IRout[4]~output_o\ : std_logic;
SIGNAL \IRout[5]~output_o\ : std_logic;
SIGNAL \IRout[6]~output_o\ : std_logic;
SIGNAL \IRout[7]~output_o\ : std_logic;
SIGNAL \IRout[8]~output_o\ : std_logic;
SIGNAL \IRout[9]~output_o\ : std_logic;
SIGNAL \IRout[10]~output_o\ : std_logic;
SIGNAL \IRout[11]~output_o\ : std_logic;
SIGNAL \IRout[12]~output_o\ : std_logic;
SIGNAL \IRout[13]~output_o\ : std_logic;
SIGNAL \IRout[14]~output_o\ : std_logic;
SIGNAL \IRout[15]~output_o\ : std_logic;
SIGNAL \DI[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \BA[0]~input_o\ : std_logic;
SIGNAL \Sba[0]~input_o\ : std_logic;
SIGNAL \Sba[1]~input_o\ : std_logic;
SIGNAL \Sba[2]~input_o\ : std_logic;
SIGNAL \Sba[3]~input_o\ : std_logic;
SIGNAL \Mux96~0_combout\ : std_logic;
SIGNAL \Mux96~1_combout\ : std_logic;
SIGNAL \Mux96~2_combout\ : std_logic;
SIGNAL \Sbb[0]~input_o\ : std_logic;
SIGNAL \Sbb[1]~input_o\ : std_logic;
SIGNAL \Mux367~0_combout\ : std_logic;
SIGNAL \Mux96~3_combout\ : std_logic;
SIGNAL \Mux96~4_combout\ : std_logic;
SIGNAL \Mux96~5_combout\ : std_logic;
SIGNAL \Mux96~6_combout\ : std_logic;
SIGNAL \Mux367~1_combout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Mux96~7_combout\ : std_logic;
SIGNAL \Sid[1]~input_o\ : std_logic;
SIGNAL \Sid[2]~input_o\ : std_logic;
SIGNAL \AD[15]~0_combout\ : std_logic;
SIGNAL \Sid[0]~input_o\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \BA[1]~input_o\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \BA[2]~input_o\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \BA[3]~input_o\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \BA[4]~input_o\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \BA[5]~input_o\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \BA[6]~input_o\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \BA[7]~input_o\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \BA[8]~input_o\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \BA[9]~input_o\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \BA[10]~input_o\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \BA[11]~input_o\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \BA[12]~input_o\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \BA[13]~input_o\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \BA[14]~input_o\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \BA[15]~input_o\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Mux96~8_combout\ : std_logic;
SIGNAL \AD[23]~1_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mux96~9_combout\ : std_logic;
SIGNAL \PC[13]~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mux96~10_combout\ : std_logic;
SIGNAL \PC[21]~1_combout\ : std_logic;
SIGNAL \Mux367~2_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Mux96~11_combout\ : std_logic;
SIGNAL \SP[13]~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Mux96~12_combout\ : std_logic;
SIGNAL \SP[31]~1_combout\ : std_logic;
SIGNAL \Mux96~13_combout\ : std_logic;
SIGNAL \Mux96~14_combout\ : std_logic;
SIGNAL \Mux367~3_combout\ : std_logic;
SIGNAL \Sbb[2]~input_o\ : std_logic;
SIGNAL \Sbb[3]~input_o\ : std_logic;
SIGNAL \Mux367~4_combout\ : std_logic;
SIGNAL \DI[1]~input_o\ : std_logic;
SIGNAL \Mux366~0_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Mux366~1_combout\ : std_logic;
SIGNAL \Mux366~2_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mux366~3_combout\ : std_logic;
SIGNAL \Mux366~4_combout\ : std_logic;
SIGNAL \DI[2]~input_o\ : std_logic;
SIGNAL \Mux365~0_combout\ : std_logic;
SIGNAL \Mux365~1_combout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Mux365~2_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Mux365~3_combout\ : std_logic;
SIGNAL \Mux365~4_combout\ : std_logic;
SIGNAL \DI[3]~input_o\ : std_logic;
SIGNAL \Mux364~0_combout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Mux364~1_combout\ : std_logic;
SIGNAL \Mux364~2_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Mux364~3_combout\ : std_logic;
SIGNAL \Mux364~4_combout\ : std_logic;
SIGNAL \DI[4]~input_o\ : std_logic;
SIGNAL \Mux363~0_combout\ : std_logic;
SIGNAL \Mux363~1_combout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Mux363~2_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Mux363~3_combout\ : std_logic;
SIGNAL \Mux363~4_combout\ : std_logic;
SIGNAL \DI[5]~input_o\ : std_logic;
SIGNAL \Mux362~0_combout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Mux362~1_combout\ : std_logic;
SIGNAL \Mux362~2_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Mux362~3_combout\ : std_logic;
SIGNAL \Mux362~4_combout\ : std_logic;
SIGNAL \DI[6]~input_o\ : std_logic;
SIGNAL \Mux361~0_combout\ : std_logic;
SIGNAL \Mux361~1_combout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Mux361~2_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Mux361~3_combout\ : std_logic;
SIGNAL \Mux361~4_combout\ : std_logic;
SIGNAL \DI[7]~input_o\ : std_logic;
SIGNAL \Mux360~0_combout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Mux360~1_combout\ : std_logic;
SIGNAL \Mux360~2_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Mux360~3_combout\ : std_logic;
SIGNAL \Mux360~4_combout\ : std_logic;
SIGNAL \DI[8]~input_o\ : std_logic;
SIGNAL \Mux359~0_combout\ : std_logic;
SIGNAL \Mux359~1_combout\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Mux359~2_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Mux359~3_combout\ : std_logic;
SIGNAL \Mux359~4_combout\ : std_logic;
SIGNAL \DI[9]~input_o\ : std_logic;
SIGNAL \Mux358~0_combout\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Mux358~1_combout\ : std_logic;
SIGNAL \Mux358~2_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Mux358~3_combout\ : std_logic;
SIGNAL \Mux358~4_combout\ : std_logic;
SIGNAL \DI[10]~input_o\ : std_logic;
SIGNAL \Mux357~0_combout\ : std_logic;
SIGNAL \Mux357~1_combout\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Mux357~2_combout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Mux357~3_combout\ : std_logic;
SIGNAL \Mux357~4_combout\ : std_logic;
SIGNAL \DI[11]~input_o\ : std_logic;
SIGNAL \Mux356~0_combout\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Mux356~1_combout\ : std_logic;
SIGNAL \Mux356~2_combout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Mux356~3_combout\ : std_logic;
SIGNAL \Mux356~4_combout\ : std_logic;
SIGNAL \DI[12]~input_o\ : std_logic;
SIGNAL \Mux355~0_combout\ : std_logic;
SIGNAL \Mux355~1_combout\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Mux355~2_combout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Mux355~3_combout\ : std_logic;
SIGNAL \Mux355~4_combout\ : std_logic;
SIGNAL \DI[13]~input_o\ : std_logic;
SIGNAL \Mux354~0_combout\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Mux354~1_combout\ : std_logic;
SIGNAL \Mux354~2_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Mux354~3_combout\ : std_logic;
SIGNAL \Mux354~4_combout\ : std_logic;
SIGNAL \DI[14]~input_o\ : std_logic;
SIGNAL \Mux353~0_combout\ : std_logic;
SIGNAL \Mux353~1_combout\ : std_logic;
SIGNAL \Add3~110\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Mux353~2_combout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Mux353~3_combout\ : std_logic;
SIGNAL \Mux353~4_combout\ : std_logic;
SIGNAL \DI[15]~input_o\ : std_logic;
SIGNAL \Mux352~0_combout\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~125_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Mux352~1_combout\ : std_logic;
SIGNAL \Mux352~2_combout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Mux352~3_combout\ : std_logic;
SIGNAL \Mux352~4_combout\ : std_logic;
SIGNAL \Sbc[0]~input_o\ : std_logic;
SIGNAL \Sbc[1]~input_o\ : std_logic;
SIGNAL \Mux383~0_combout\ : std_logic;
SIGNAL \Mux383~1_combout\ : std_logic;
SIGNAL \Mux383~2_combout\ : std_logic;
SIGNAL \Mux383~3_combout\ : std_logic;
SIGNAL \Sbc[2]~input_o\ : std_logic;
SIGNAL \Sbc[3]~input_o\ : std_logic;
SIGNAL \Mux383~4_combout\ : std_logic;
SIGNAL \Mux382~0_combout\ : std_logic;
SIGNAL \Mux382~1_combout\ : std_logic;
SIGNAL \Mux382~2_combout\ : std_logic;
SIGNAL \Mux382~3_combout\ : std_logic;
SIGNAL \Mux382~4_combout\ : std_logic;
SIGNAL \Mux381~0_combout\ : std_logic;
SIGNAL \Mux381~1_combout\ : std_logic;
SIGNAL \Mux381~2_combout\ : std_logic;
SIGNAL \Mux381~3_combout\ : std_logic;
SIGNAL \Mux381~4_combout\ : std_logic;
SIGNAL \Mux380~0_combout\ : std_logic;
SIGNAL \Mux380~1_combout\ : std_logic;
SIGNAL \Mux380~2_combout\ : std_logic;
SIGNAL \Mux380~3_combout\ : std_logic;
SIGNAL \Mux380~4_combout\ : std_logic;
SIGNAL \Mux379~0_combout\ : std_logic;
SIGNAL \Mux379~1_combout\ : std_logic;
SIGNAL \Mux379~2_combout\ : std_logic;
SIGNAL \Mux379~3_combout\ : std_logic;
SIGNAL \Mux379~4_combout\ : std_logic;
SIGNAL \Mux378~0_combout\ : std_logic;
SIGNAL \Mux378~1_combout\ : std_logic;
SIGNAL \Mux378~2_combout\ : std_logic;
SIGNAL \Mux378~3_combout\ : std_logic;
SIGNAL \Mux378~4_combout\ : std_logic;
SIGNAL \Mux377~0_combout\ : std_logic;
SIGNAL \Mux377~1_combout\ : std_logic;
SIGNAL \Mux377~2_combout\ : std_logic;
SIGNAL \Mux377~3_combout\ : std_logic;
SIGNAL \Mux377~4_combout\ : std_logic;
SIGNAL \Mux376~0_combout\ : std_logic;
SIGNAL \Mux376~1_combout\ : std_logic;
SIGNAL \Mux376~2_combout\ : std_logic;
SIGNAL \Mux376~3_combout\ : std_logic;
SIGNAL \Mux376~4_combout\ : std_logic;
SIGNAL \Mux375~0_combout\ : std_logic;
SIGNAL \Mux375~1_combout\ : std_logic;
SIGNAL \Mux375~2_combout\ : std_logic;
SIGNAL \Mux375~3_combout\ : std_logic;
SIGNAL \Mux375~4_combout\ : std_logic;
SIGNAL \Mux374~0_combout\ : std_logic;
SIGNAL \Mux374~1_combout\ : std_logic;
SIGNAL \Mux374~2_combout\ : std_logic;
SIGNAL \Mux374~3_combout\ : std_logic;
SIGNAL \Mux374~4_combout\ : std_logic;
SIGNAL \Mux373~0_combout\ : std_logic;
SIGNAL \Mux373~1_combout\ : std_logic;
SIGNAL \Mux373~2_combout\ : std_logic;
SIGNAL \Mux373~3_combout\ : std_logic;
SIGNAL \Mux373~4_combout\ : std_logic;
SIGNAL \Mux372~0_combout\ : std_logic;
SIGNAL \Mux372~1_combout\ : std_logic;
SIGNAL \Mux372~2_combout\ : std_logic;
SIGNAL \Mux372~3_combout\ : std_logic;
SIGNAL \Mux372~4_combout\ : std_logic;
SIGNAL \Mux371~0_combout\ : std_logic;
SIGNAL \Mux371~1_combout\ : std_logic;
SIGNAL \Mux371~2_combout\ : std_logic;
SIGNAL \Mux371~3_combout\ : std_logic;
SIGNAL \Mux371~4_combout\ : std_logic;
SIGNAL \Mux370~0_combout\ : std_logic;
SIGNAL \Mux370~1_combout\ : std_logic;
SIGNAL \Mux370~2_combout\ : std_logic;
SIGNAL \Mux370~3_combout\ : std_logic;
SIGNAL \Mux370~4_combout\ : std_logic;
SIGNAL \Mux369~0_combout\ : std_logic;
SIGNAL \Mux369~1_combout\ : std_logic;
SIGNAL \Mux369~2_combout\ : std_logic;
SIGNAL \Mux369~3_combout\ : std_logic;
SIGNAL \Mux369~4_combout\ : std_logic;
SIGNAL \Mux368~0_combout\ : std_logic;
SIGNAL \Mux368~1_combout\ : std_logic;
SIGNAL \Mux368~2_combout\ : std_logic;
SIGNAL \Mux368~3_combout\ : std_logic;
SIGNAL \Mux368~4_combout\ : std_logic;
SIGNAL \Sa[0]~input_o\ : std_logic;
SIGNAL \Sa[1]~input_o\ : std_logic;
SIGNAL \Mux415~0_combout\ : std_logic;
SIGNAL \Mux414~0_combout\ : std_logic;
SIGNAL \Mux413~0_combout\ : std_logic;
SIGNAL \Mux412~0_combout\ : std_logic;
SIGNAL \Mux411~0_combout\ : std_logic;
SIGNAL \Mux410~0_combout\ : std_logic;
SIGNAL \Mux409~0_combout\ : std_logic;
SIGNAL \Mux408~0_combout\ : std_logic;
SIGNAL \Mux407~0_combout\ : std_logic;
SIGNAL \Mux406~0_combout\ : std_logic;
SIGNAL \Mux405~0_combout\ : std_logic;
SIGNAL \Mux404~0_combout\ : std_logic;
SIGNAL \Mux403~0_combout\ : std_logic;
SIGNAL \Mux402~0_combout\ : std_logic;
SIGNAL \Mux401~0_combout\ : std_logic;
SIGNAL \Mux400~0_combout\ : std_logic;
SIGNAL \Mux399~0_combout\ : std_logic;
SIGNAL \Mux398~0_combout\ : std_logic;
SIGNAL \Mux397~0_combout\ : std_logic;
SIGNAL \Mux396~0_combout\ : std_logic;
SIGNAL \Mux395~0_combout\ : std_logic;
SIGNAL \Mux394~0_combout\ : std_logic;
SIGNAL \Mux393~0_combout\ : std_logic;
SIGNAL \Mux392~0_combout\ : std_logic;
SIGNAL \Mux391~0_combout\ : std_logic;
SIGNAL \Mux390~0_combout\ : std_logic;
SIGNAL \Mux389~0_combout\ : std_logic;
SIGNAL \Mux388~0_combout\ : std_logic;
SIGNAL \Mux387~0_combout\ : std_logic;
SIGNAL \Mux386~0_combout\ : std_logic;
SIGNAL \Mux385~0_combout\ : std_logic;
SIGNAL \Mux384~0_combout\ : std_logic;
SIGNAL \Mux96~15_combout\ : std_logic;
SIGNAL PC : std_logic_vector(31 DOWNTO 0);
SIGNAL AD : std_logic_vector(31 DOWNTO 0);
SIGNAL SP : std_logic_vector(31 DOWNTO 0);
SIGNAL B : std_logic_vector(15 DOWNTO 0);
SIGNAL TMP : std_logic_vector(15 DOWNTO 0);
SIGNAL A : std_logic_vector(15 DOWNTO 0);
SIGNAL C : std_logic_vector(15 DOWNTO 0);
SIGNAL D : std_logic_vector(15 DOWNTO 0);
SIGNAL E : std_logic_vector(15 DOWNTO 0);
SIGNAL F : std_logic_vector(15 DOWNTO 0);
SIGNAL ATMP : std_logic_vector(31 DOWNTO 0);
SIGNAL IR : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_AD : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_SP : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_TMP : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Mux362~3_combout\ : std_logic;
SIGNAL ALT_INV_ATMP : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_F : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Mux362~2_combout\ : std_logic;
SIGNAL ALT_INV_E : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Mux362~1_combout\ : std_logic;
SIGNAL ALT_INV_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Mux362~0_combout\ : std_logic;
SIGNAL ALT_INV_C : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Mux363~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux363~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux363~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux363~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux364~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux364~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux364~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux364~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux365~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux365~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux365~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux365~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux366~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux366~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux366~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux366~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux367~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux367~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux367~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux367~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux352~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux353~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux353~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux353~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux353~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux354~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux354~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux354~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux354~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux355~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux355~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux355~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux355~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux356~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux356~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux356~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux356~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux357~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux357~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux357~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux357~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux358~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux358~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux358~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux358~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux359~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux359~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux359~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux359~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux360~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux360~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux360~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux360~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux361~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux361~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux361~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux361~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux368~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux368~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux368~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux368~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux369~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux369~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux369~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux369~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux370~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux370~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux370~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux370~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux371~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux371~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux371~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux371~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux372~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux372~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux372~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux372~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux373~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux373~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux373~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux373~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux374~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux374~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux374~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux374~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux375~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux375~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux375~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux375~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux376~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux376~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux376~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux376~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux377~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux377~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux377~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux377~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux378~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux378~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux378~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux378~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux379~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux379~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux379~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux379~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux380~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux380~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux380~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux380~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux381~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux381~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux381~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux381~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux382~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux382~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux382~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux382~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux383~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux383~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux383~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux383~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux352~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux352~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux352~1_combout\ : std_logic;
SIGNAL \ALT_INV_DI[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sbb[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sbb[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sbb[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sbb[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux96~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux96~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux96~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux96~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux96~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux96~7_combout\ : std_logic;
SIGNAL \ALT_INV_Sid[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sid[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sid[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sba[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sba[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sba[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sba[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sa[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sa[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sbc[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sbc[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sbc[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sbc[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_DI[9]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_DI <= DI;
ww_BA <= BA;
ww_Sbb <= Sbb;
ww_Sbc <= Sbc;
ww_Sba <= Sba;
ww_Sid <= Sid;
ww_Sa <= Sa;
BB <= ww_BB;
BC <= ww_BC;
ADR <= ww_ADR;
IRout <= ww_IRout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_AD(0) <= NOT AD(0);
ALT_INV_PC(31) <= NOT PC(31);
ALT_INV_PC(15) <= NOT PC(15);
ALT_INV_SP(31) <= NOT SP(31);
ALT_INV_AD(31) <= NOT AD(31);
ALT_INV_SP(15) <= NOT SP(15);
ALT_INV_AD(15) <= NOT AD(15);
ALT_INV_SP(30) <= NOT SP(30);
ALT_INV_SP(14) <= NOT SP(14);
ALT_INV_PC(30) <= NOT PC(30);
ALT_INV_PC(14) <= NOT PC(14);
ALT_INV_AD(30) <= NOT AD(30);
ALT_INV_AD(14) <= NOT AD(14);
ALT_INV_PC(29) <= NOT PC(29);
ALT_INV_PC(13) <= NOT PC(13);
ALT_INV_SP(29) <= NOT SP(29);
ALT_INV_AD(29) <= NOT AD(29);
ALT_INV_SP(13) <= NOT SP(13);
ALT_INV_AD(13) <= NOT AD(13);
ALT_INV_SP(28) <= NOT SP(28);
ALT_INV_SP(12) <= NOT SP(12);
ALT_INV_PC(28) <= NOT PC(28);
ALT_INV_PC(12) <= NOT PC(12);
ALT_INV_AD(28) <= NOT AD(28);
ALT_INV_AD(12) <= NOT AD(12);
ALT_INV_PC(27) <= NOT PC(27);
ALT_INV_PC(11) <= NOT PC(11);
ALT_INV_SP(27) <= NOT SP(27);
ALT_INV_AD(27) <= NOT AD(27);
ALT_INV_SP(11) <= NOT SP(11);
ALT_INV_AD(11) <= NOT AD(11);
ALT_INV_SP(26) <= NOT SP(26);
ALT_INV_SP(10) <= NOT SP(10);
ALT_INV_PC(26) <= NOT PC(26);
ALT_INV_PC(10) <= NOT PC(10);
ALT_INV_AD(26) <= NOT AD(26);
ALT_INV_AD(10) <= NOT AD(10);
ALT_INV_PC(25) <= NOT PC(25);
ALT_INV_PC(9) <= NOT PC(9);
ALT_INV_SP(25) <= NOT SP(25);
ALT_INV_AD(25) <= NOT AD(25);
ALT_INV_SP(9) <= NOT SP(9);
ALT_INV_AD(9) <= NOT AD(9);
ALT_INV_SP(24) <= NOT SP(24);
ALT_INV_SP(8) <= NOT SP(8);
ALT_INV_PC(24) <= NOT PC(24);
ALT_INV_PC(8) <= NOT PC(8);
ALT_INV_AD(24) <= NOT AD(24);
ALT_INV_AD(8) <= NOT AD(8);
ALT_INV_PC(23) <= NOT PC(23);
ALT_INV_PC(7) <= NOT PC(7);
ALT_INV_SP(23) <= NOT SP(23);
ALT_INV_AD(23) <= NOT AD(23);
ALT_INV_SP(7) <= NOT SP(7);
ALT_INV_AD(7) <= NOT AD(7);
ALT_INV_SP(22) <= NOT SP(22);
ALT_INV_SP(6) <= NOT SP(6);
ALT_INV_PC(22) <= NOT PC(22);
ALT_INV_PC(6) <= NOT PC(6);
ALT_INV_AD(22) <= NOT AD(22);
ALT_INV_AD(6) <= NOT AD(6);
ALT_INV_PC(21) <= NOT PC(21);
ALT_INV_PC(5) <= NOT PC(5);
ALT_INV_SP(21) <= NOT SP(21);
ALT_INV_AD(21) <= NOT AD(21);
ALT_INV_SP(5) <= NOT SP(5);
ALT_INV_AD(5) <= NOT AD(5);
ALT_INV_SP(20) <= NOT SP(20);
ALT_INV_SP(4) <= NOT SP(4);
ALT_INV_PC(20) <= NOT PC(20);
ALT_INV_PC(4) <= NOT PC(4);
ALT_INV_AD(20) <= NOT AD(20);
ALT_INV_AD(4) <= NOT AD(4);
ALT_INV_PC(19) <= NOT PC(19);
ALT_INV_PC(3) <= NOT PC(3);
ALT_INV_SP(19) <= NOT SP(19);
ALT_INV_AD(19) <= NOT AD(19);
ALT_INV_SP(3) <= NOT SP(3);
ALT_INV_AD(3) <= NOT AD(3);
ALT_INV_SP(18) <= NOT SP(18);
ALT_INV_SP(2) <= NOT SP(2);
ALT_INV_PC(18) <= NOT PC(18);
ALT_INV_PC(2) <= NOT PC(2);
ALT_INV_AD(18) <= NOT AD(18);
ALT_INV_AD(2) <= NOT AD(2);
ALT_INV_PC(17) <= NOT PC(17);
ALT_INV_PC(1) <= NOT PC(1);
ALT_INV_SP(17) <= NOT SP(17);
ALT_INV_AD(17) <= NOT AD(17);
ALT_INV_SP(1) <= NOT SP(1);
ALT_INV_AD(1) <= NOT AD(1);
ALT_INV_SP(16) <= NOT SP(16);
ALT_INV_SP(0) <= NOT SP(0);
ALT_INV_PC(16) <= NOT PC(16);
ALT_INV_PC(0) <= NOT PC(0);
ALT_INV_AD(16) <= NOT AD(16);
ALT_INV_B(6) <= NOT B(6);
ALT_INV_A(6) <= NOT A(6);
ALT_INV_TMP(6) <= NOT TMP(6);
\ALT_INV_Mux362~3_combout\ <= NOT \Mux362~3_combout\;
ALT_INV_ATMP(21) <= NOT ATMP(21);
ALT_INV_F(5) <= NOT F(5);
ALT_INV_B(5) <= NOT B(5);
\ALT_INV_Mux362~2_combout\ <= NOT \Mux362~2_combout\;
ALT_INV_ATMP(5) <= NOT ATMP(5);
ALT_INV_E(5) <= NOT E(5);
ALT_INV_A(5) <= NOT A(5);
\ALT_INV_Mux362~1_combout\ <= NOT \Mux362~1_combout\;
ALT_INV_D(5) <= NOT D(5);
ALT_INV_TMP(5) <= NOT TMP(5);
\ALT_INV_Mux362~0_combout\ <= NOT \Mux362~0_combout\;
ALT_INV_C(5) <= NOT C(5);
\ALT_INV_Mux363~3_combout\ <= NOT \Mux363~3_combout\;
ALT_INV_ATMP(20) <= NOT ATMP(20);
ALT_INV_ATMP(4) <= NOT ATMP(4);
\ALT_INV_Mux363~2_combout\ <= NOT \Mux363~2_combout\;
\ALT_INV_Mux363~1_combout\ <= NOT \Mux363~1_combout\;
ALT_INV_F(4) <= NOT F(4);
ALT_INV_E(4) <= NOT E(4);
ALT_INV_D(4) <= NOT D(4);
ALT_INV_C(4) <= NOT C(4);
\ALT_INV_Mux363~0_combout\ <= NOT \Mux363~0_combout\;
ALT_INV_B(4) <= NOT B(4);
ALT_INV_A(4) <= NOT A(4);
ALT_INV_TMP(4) <= NOT TMP(4);
\ALT_INV_Mux364~3_combout\ <= NOT \Mux364~3_combout\;
ALT_INV_ATMP(19) <= NOT ATMP(19);
ALT_INV_F(3) <= NOT F(3);
ALT_INV_B(3) <= NOT B(3);
\ALT_INV_Mux364~2_combout\ <= NOT \Mux364~2_combout\;
ALT_INV_ATMP(3) <= NOT ATMP(3);
ALT_INV_E(3) <= NOT E(3);
ALT_INV_A(3) <= NOT A(3);
\ALT_INV_Mux364~1_combout\ <= NOT \Mux364~1_combout\;
ALT_INV_D(3) <= NOT D(3);
ALT_INV_TMP(3) <= NOT TMP(3);
\ALT_INV_Mux364~0_combout\ <= NOT \Mux364~0_combout\;
ALT_INV_C(3) <= NOT C(3);
\ALT_INV_Mux365~3_combout\ <= NOT \Mux365~3_combout\;
ALT_INV_ATMP(18) <= NOT ATMP(18);
ALT_INV_ATMP(2) <= NOT ATMP(2);
\ALT_INV_Mux365~2_combout\ <= NOT \Mux365~2_combout\;
\ALT_INV_Mux365~1_combout\ <= NOT \Mux365~1_combout\;
ALT_INV_F(2) <= NOT F(2);
ALT_INV_E(2) <= NOT E(2);
ALT_INV_D(2) <= NOT D(2);
ALT_INV_C(2) <= NOT C(2);
\ALT_INV_Mux365~0_combout\ <= NOT \Mux365~0_combout\;
ALT_INV_B(2) <= NOT B(2);
ALT_INV_A(2) <= NOT A(2);
ALT_INV_TMP(2) <= NOT TMP(2);
\ALT_INV_Mux366~3_combout\ <= NOT \Mux366~3_combout\;
ALT_INV_ATMP(17) <= NOT ATMP(17);
ALT_INV_F(1) <= NOT F(1);
ALT_INV_B(1) <= NOT B(1);
\ALT_INV_Mux366~2_combout\ <= NOT \Mux366~2_combout\;
ALT_INV_ATMP(1) <= NOT ATMP(1);
ALT_INV_E(1) <= NOT E(1);
ALT_INV_A(1) <= NOT A(1);
\ALT_INV_Mux366~1_combout\ <= NOT \Mux366~1_combout\;
ALT_INV_D(1) <= NOT D(1);
ALT_INV_TMP(1) <= NOT TMP(1);
\ALT_INV_Mux366~0_combout\ <= NOT \Mux366~0_combout\;
ALT_INV_C(1) <= NOT C(1);
\ALT_INV_Mux367~3_combout\ <= NOT \Mux367~3_combout\;
ALT_INV_ATMP(16) <= NOT ATMP(16);
ALT_INV_ATMP(0) <= NOT ATMP(0);
\ALT_INV_Mux367~2_combout\ <= NOT \Mux367~2_combout\;
\ALT_INV_Mux367~1_combout\ <= NOT \Mux367~1_combout\;
ALT_INV_F(0) <= NOT F(0);
ALT_INV_E(0) <= NOT E(0);
ALT_INV_D(0) <= NOT D(0);
ALT_INV_C(0) <= NOT C(0);
\ALT_INV_Mux367~0_combout\ <= NOT \Mux367~0_combout\;
ALT_INV_B(0) <= NOT B(0);
ALT_INV_A(0) <= NOT A(0);
ALT_INV_TMP(0) <= NOT TMP(0);
ALT_INV_D(15) <= NOT D(15);
ALT_INV_TMP(15) <= NOT TMP(15);
\ALT_INV_Mux352~0_combout\ <= NOT \Mux352~0_combout\;
ALT_INV_C(15) <= NOT C(15);
\ALT_INV_Mux353~3_combout\ <= NOT \Mux353~3_combout\;
ALT_INV_ATMP(30) <= NOT ATMP(30);
ALT_INV_ATMP(14) <= NOT ATMP(14);
\ALT_INV_Mux353~2_combout\ <= NOT \Mux353~2_combout\;
\ALT_INV_Mux353~1_combout\ <= NOT \Mux353~1_combout\;
ALT_INV_F(14) <= NOT F(14);
ALT_INV_E(14) <= NOT E(14);
ALT_INV_D(14) <= NOT D(14);
ALT_INV_C(14) <= NOT C(14);
\ALT_INV_Mux353~0_combout\ <= NOT \Mux353~0_combout\;
ALT_INV_B(14) <= NOT B(14);
ALT_INV_A(14) <= NOT A(14);
ALT_INV_TMP(14) <= NOT TMP(14);
\ALT_INV_Mux354~3_combout\ <= NOT \Mux354~3_combout\;
ALT_INV_ATMP(29) <= NOT ATMP(29);
ALT_INV_F(13) <= NOT F(13);
ALT_INV_B(13) <= NOT B(13);
\ALT_INV_Mux354~2_combout\ <= NOT \Mux354~2_combout\;
ALT_INV_ATMP(13) <= NOT ATMP(13);
ALT_INV_E(13) <= NOT E(13);
ALT_INV_A(13) <= NOT A(13);
\ALT_INV_Mux354~1_combout\ <= NOT \Mux354~1_combout\;
ALT_INV_D(13) <= NOT D(13);
ALT_INV_TMP(13) <= NOT TMP(13);
\ALT_INV_Mux354~0_combout\ <= NOT \Mux354~0_combout\;
ALT_INV_C(13) <= NOT C(13);
\ALT_INV_Mux355~3_combout\ <= NOT \Mux355~3_combout\;
ALT_INV_ATMP(28) <= NOT ATMP(28);
ALT_INV_ATMP(12) <= NOT ATMP(12);
\ALT_INV_Mux355~2_combout\ <= NOT \Mux355~2_combout\;
\ALT_INV_Mux355~1_combout\ <= NOT \Mux355~1_combout\;
ALT_INV_F(12) <= NOT F(12);
ALT_INV_E(12) <= NOT E(12);
ALT_INV_D(12) <= NOT D(12);
ALT_INV_C(12) <= NOT C(12);
\ALT_INV_Mux355~0_combout\ <= NOT \Mux355~0_combout\;
ALT_INV_B(12) <= NOT B(12);
ALT_INV_A(12) <= NOT A(12);
ALT_INV_TMP(12) <= NOT TMP(12);
\ALT_INV_Mux356~3_combout\ <= NOT \Mux356~3_combout\;
ALT_INV_ATMP(27) <= NOT ATMP(27);
ALT_INV_F(11) <= NOT F(11);
ALT_INV_B(11) <= NOT B(11);
\ALT_INV_Mux356~2_combout\ <= NOT \Mux356~2_combout\;
ALT_INV_ATMP(11) <= NOT ATMP(11);
ALT_INV_E(11) <= NOT E(11);
ALT_INV_A(11) <= NOT A(11);
\ALT_INV_Mux356~1_combout\ <= NOT \Mux356~1_combout\;
ALT_INV_D(11) <= NOT D(11);
ALT_INV_TMP(11) <= NOT TMP(11);
\ALT_INV_Mux356~0_combout\ <= NOT \Mux356~0_combout\;
ALT_INV_C(11) <= NOT C(11);
\ALT_INV_Mux357~3_combout\ <= NOT \Mux357~3_combout\;
ALT_INV_ATMP(26) <= NOT ATMP(26);
ALT_INV_ATMP(10) <= NOT ATMP(10);
\ALT_INV_Mux357~2_combout\ <= NOT \Mux357~2_combout\;
\ALT_INV_Mux357~1_combout\ <= NOT \Mux357~1_combout\;
ALT_INV_F(10) <= NOT F(10);
ALT_INV_E(10) <= NOT E(10);
ALT_INV_D(10) <= NOT D(10);
ALT_INV_C(10) <= NOT C(10);
\ALT_INV_Mux357~0_combout\ <= NOT \Mux357~0_combout\;
ALT_INV_B(10) <= NOT B(10);
ALT_INV_A(10) <= NOT A(10);
ALT_INV_TMP(10) <= NOT TMP(10);
\ALT_INV_Mux358~3_combout\ <= NOT \Mux358~3_combout\;
ALT_INV_ATMP(25) <= NOT ATMP(25);
ALT_INV_F(9) <= NOT F(9);
ALT_INV_B(9) <= NOT B(9);
\ALT_INV_Mux358~2_combout\ <= NOT \Mux358~2_combout\;
ALT_INV_ATMP(9) <= NOT ATMP(9);
ALT_INV_E(9) <= NOT E(9);
ALT_INV_A(9) <= NOT A(9);
\ALT_INV_Mux358~1_combout\ <= NOT \Mux358~1_combout\;
ALT_INV_D(9) <= NOT D(9);
ALT_INV_TMP(9) <= NOT TMP(9);
\ALT_INV_Mux358~0_combout\ <= NOT \Mux358~0_combout\;
ALT_INV_C(9) <= NOT C(9);
\ALT_INV_Mux359~3_combout\ <= NOT \Mux359~3_combout\;
ALT_INV_ATMP(24) <= NOT ATMP(24);
ALT_INV_ATMP(8) <= NOT ATMP(8);
\ALT_INV_Mux359~2_combout\ <= NOT \Mux359~2_combout\;
\ALT_INV_Mux359~1_combout\ <= NOT \Mux359~1_combout\;
ALT_INV_F(8) <= NOT F(8);
ALT_INV_E(8) <= NOT E(8);
ALT_INV_D(8) <= NOT D(8);
ALT_INV_C(8) <= NOT C(8);
\ALT_INV_Mux359~0_combout\ <= NOT \Mux359~0_combout\;
ALT_INV_B(8) <= NOT B(8);
ALT_INV_A(8) <= NOT A(8);
ALT_INV_TMP(8) <= NOT TMP(8);
\ALT_INV_Mux360~3_combout\ <= NOT \Mux360~3_combout\;
ALT_INV_ATMP(23) <= NOT ATMP(23);
ALT_INV_F(7) <= NOT F(7);
ALT_INV_B(7) <= NOT B(7);
\ALT_INV_Mux360~2_combout\ <= NOT \Mux360~2_combout\;
ALT_INV_ATMP(7) <= NOT ATMP(7);
ALT_INV_E(7) <= NOT E(7);
ALT_INV_A(7) <= NOT A(7);
\ALT_INV_Mux360~1_combout\ <= NOT \Mux360~1_combout\;
ALT_INV_D(7) <= NOT D(7);
ALT_INV_TMP(7) <= NOT TMP(7);
\ALT_INV_Mux360~0_combout\ <= NOT \Mux360~0_combout\;
ALT_INV_C(7) <= NOT C(7);
\ALT_INV_Mux361~3_combout\ <= NOT \Mux361~3_combout\;
ALT_INV_ATMP(22) <= NOT ATMP(22);
ALT_INV_ATMP(6) <= NOT ATMP(6);
\ALT_INV_Mux361~2_combout\ <= NOT \Mux361~2_combout\;
\ALT_INV_Mux361~1_combout\ <= NOT \Mux361~1_combout\;
ALT_INV_F(6) <= NOT F(6);
ALT_INV_E(6) <= NOT E(6);
ALT_INV_D(6) <= NOT D(6);
ALT_INV_C(6) <= NOT C(6);
\ALT_INV_Mux361~0_combout\ <= NOT \Mux361~0_combout\;
\ALT_INV_Mux368~3_combout\ <= NOT \Mux368~3_combout\;
\ALT_INV_Mux368~2_combout\ <= NOT \Mux368~2_combout\;
\ALT_INV_Mux368~1_combout\ <= NOT \Mux368~1_combout\;
\ALT_INV_Mux368~0_combout\ <= NOT \Mux368~0_combout\;
\ALT_INV_Mux369~3_combout\ <= NOT \Mux369~3_combout\;
\ALT_INV_Mux369~2_combout\ <= NOT \Mux369~2_combout\;
\ALT_INV_Mux369~1_combout\ <= NOT \Mux369~1_combout\;
\ALT_INV_Mux369~0_combout\ <= NOT \Mux369~0_combout\;
\ALT_INV_Mux370~3_combout\ <= NOT \Mux370~3_combout\;
\ALT_INV_Mux370~2_combout\ <= NOT \Mux370~2_combout\;
\ALT_INV_Mux370~1_combout\ <= NOT \Mux370~1_combout\;
\ALT_INV_Mux370~0_combout\ <= NOT \Mux370~0_combout\;
\ALT_INV_Mux371~3_combout\ <= NOT \Mux371~3_combout\;
\ALT_INV_Mux371~2_combout\ <= NOT \Mux371~2_combout\;
\ALT_INV_Mux371~1_combout\ <= NOT \Mux371~1_combout\;
\ALT_INV_Mux371~0_combout\ <= NOT \Mux371~0_combout\;
\ALT_INV_Mux372~3_combout\ <= NOT \Mux372~3_combout\;
\ALT_INV_Mux372~2_combout\ <= NOT \Mux372~2_combout\;
\ALT_INV_Mux372~1_combout\ <= NOT \Mux372~1_combout\;
\ALT_INV_Mux372~0_combout\ <= NOT \Mux372~0_combout\;
\ALT_INV_Mux373~3_combout\ <= NOT \Mux373~3_combout\;
\ALT_INV_Mux373~2_combout\ <= NOT \Mux373~2_combout\;
\ALT_INV_Mux373~1_combout\ <= NOT \Mux373~1_combout\;
\ALT_INV_Mux373~0_combout\ <= NOT \Mux373~0_combout\;
\ALT_INV_Mux374~3_combout\ <= NOT \Mux374~3_combout\;
\ALT_INV_Mux374~2_combout\ <= NOT \Mux374~2_combout\;
\ALT_INV_Mux374~1_combout\ <= NOT \Mux374~1_combout\;
\ALT_INV_Mux374~0_combout\ <= NOT \Mux374~0_combout\;
\ALT_INV_Mux375~3_combout\ <= NOT \Mux375~3_combout\;
\ALT_INV_Mux375~2_combout\ <= NOT \Mux375~2_combout\;
\ALT_INV_Mux375~1_combout\ <= NOT \Mux375~1_combout\;
\ALT_INV_Mux375~0_combout\ <= NOT \Mux375~0_combout\;
\ALT_INV_Mux376~3_combout\ <= NOT \Mux376~3_combout\;
\ALT_INV_Mux376~2_combout\ <= NOT \Mux376~2_combout\;
\ALT_INV_Mux376~1_combout\ <= NOT \Mux376~1_combout\;
\ALT_INV_Mux376~0_combout\ <= NOT \Mux376~0_combout\;
\ALT_INV_Mux377~3_combout\ <= NOT \Mux377~3_combout\;
\ALT_INV_Mux377~2_combout\ <= NOT \Mux377~2_combout\;
\ALT_INV_Mux377~1_combout\ <= NOT \Mux377~1_combout\;
\ALT_INV_Mux377~0_combout\ <= NOT \Mux377~0_combout\;
\ALT_INV_Mux378~3_combout\ <= NOT \Mux378~3_combout\;
\ALT_INV_Mux378~2_combout\ <= NOT \Mux378~2_combout\;
\ALT_INV_Mux378~1_combout\ <= NOT \Mux378~1_combout\;
\ALT_INV_Mux378~0_combout\ <= NOT \Mux378~0_combout\;
\ALT_INV_Mux379~3_combout\ <= NOT \Mux379~3_combout\;
\ALT_INV_Mux379~2_combout\ <= NOT \Mux379~2_combout\;
\ALT_INV_Mux379~1_combout\ <= NOT \Mux379~1_combout\;
\ALT_INV_Mux379~0_combout\ <= NOT \Mux379~0_combout\;
\ALT_INV_Mux380~3_combout\ <= NOT \Mux380~3_combout\;
\ALT_INV_Mux380~2_combout\ <= NOT \Mux380~2_combout\;
\ALT_INV_Mux380~1_combout\ <= NOT \Mux380~1_combout\;
\ALT_INV_Mux380~0_combout\ <= NOT \Mux380~0_combout\;
\ALT_INV_Mux381~3_combout\ <= NOT \Mux381~3_combout\;
\ALT_INV_Mux381~2_combout\ <= NOT \Mux381~2_combout\;
\ALT_INV_Mux381~1_combout\ <= NOT \Mux381~1_combout\;
\ALT_INV_Mux381~0_combout\ <= NOT \Mux381~0_combout\;
\ALT_INV_Mux382~3_combout\ <= NOT \Mux382~3_combout\;
\ALT_INV_Mux382~2_combout\ <= NOT \Mux382~2_combout\;
\ALT_INV_Mux382~1_combout\ <= NOT \Mux382~1_combout\;
\ALT_INV_Mux382~0_combout\ <= NOT \Mux382~0_combout\;
\ALT_INV_Mux383~3_combout\ <= NOT \Mux383~3_combout\;
\ALT_INV_Mux383~2_combout\ <= NOT \Mux383~2_combout\;
\ALT_INV_Mux383~1_combout\ <= NOT \Mux383~1_combout\;
\ALT_INV_Mux383~0_combout\ <= NOT \Mux383~0_combout\;
\ALT_INV_Mux352~3_combout\ <= NOT \Mux352~3_combout\;
ALT_INV_ATMP(31) <= NOT ATMP(31);
ALT_INV_F(15) <= NOT F(15);
ALT_INV_B(15) <= NOT B(15);
\ALT_INV_Mux352~2_combout\ <= NOT \Mux352~2_combout\;
ALT_INV_ATMP(15) <= NOT ATMP(15);
ALT_INV_E(15) <= NOT E(15);
ALT_INV_A(15) <= NOT A(15);
\ALT_INV_Mux352~1_combout\ <= NOT \Mux352~1_combout\;
\ALT_INV_DI[8]~input_o\ <= NOT \DI[8]~input_o\;
\ALT_INV_DI[7]~input_o\ <= NOT \DI[7]~input_o\;
\ALT_INV_DI[6]~input_o\ <= NOT \DI[6]~input_o\;
\ALT_INV_DI[5]~input_o\ <= NOT \DI[5]~input_o\;
\ALT_INV_DI[4]~input_o\ <= NOT \DI[4]~input_o\;
\ALT_INV_DI[3]~input_o\ <= NOT \DI[3]~input_o\;
\ALT_INV_DI[2]~input_o\ <= NOT \DI[2]~input_o\;
\ALT_INV_DI[1]~input_o\ <= NOT \DI[1]~input_o\;
\ALT_INV_Sbb[3]~input_o\ <= NOT \Sbb[3]~input_o\;
\ALT_INV_Sbb[2]~input_o\ <= NOT \Sbb[2]~input_o\;
\ALT_INV_Sbb[1]~input_o\ <= NOT \Sbb[1]~input_o\;
\ALT_INV_Sbb[0]~input_o\ <= NOT \Sbb[0]~input_o\;
\ALT_INV_DI[0]~input_o\ <= NOT \DI[0]~input_o\;
\ALT_INV_Mux96~12_combout\ <= NOT \Mux96~12_combout\;
\ALT_INV_Mux96~11_combout\ <= NOT \Mux96~11_combout\;
\ALT_INV_Mux96~10_combout\ <= NOT \Mux96~10_combout\;
\ALT_INV_Mux96~9_combout\ <= NOT \Mux96~9_combout\;
\ALT_INV_Mux96~8_combout\ <= NOT \Mux96~8_combout\;
\ALT_INV_Mux96~7_combout\ <= NOT \Mux96~7_combout\;
\ALT_INV_Sid[0]~input_o\ <= NOT \Sid[0]~input_o\;
\ALT_INV_Sid[2]~input_o\ <= NOT \Sid[2]~input_o\;
\ALT_INV_Sid[1]~input_o\ <= NOT \Sid[1]~input_o\;
\ALT_INV_Sba[3]~input_o\ <= NOT \Sba[3]~input_o\;
\ALT_INV_Sba[2]~input_o\ <= NOT \Sba[2]~input_o\;
\ALT_INV_Sba[1]~input_o\ <= NOT \Sba[1]~input_o\;
\ALT_INV_Sba[0]~input_o\ <= NOT \Sba[0]~input_o\;
\ALT_INV_Sa[1]~input_o\ <= NOT \Sa[1]~input_o\;
\ALT_INV_Sa[0]~input_o\ <= NOT \Sa[0]~input_o\;
\ALT_INV_Sbc[3]~input_o\ <= NOT \Sbc[3]~input_o\;
\ALT_INV_Sbc[2]~input_o\ <= NOT \Sbc[2]~input_o\;
\ALT_INV_Sbc[1]~input_o\ <= NOT \Sbc[1]~input_o\;
\ALT_INV_Sbc[0]~input_o\ <= NOT \Sbc[0]~input_o\;
\ALT_INV_DI[15]~input_o\ <= NOT \DI[15]~input_o\;
\ALT_INV_DI[14]~input_o\ <= NOT \DI[14]~input_o\;
\ALT_INV_DI[13]~input_o\ <= NOT \DI[13]~input_o\;
\ALT_INV_DI[12]~input_o\ <= NOT \DI[12]~input_o\;
\ALT_INV_DI[11]~input_o\ <= NOT \DI[11]~input_o\;
\ALT_INV_DI[10]~input_o\ <= NOT \DI[10]~input_o\;
\ALT_INV_DI[9]~input_o\ <= NOT \DI[9]~input_o\;

\BB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux367~4_combout\,
	devoe => ww_devoe,
	o => \BB[0]~output_o\);

\BB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux366~4_combout\,
	devoe => ww_devoe,
	o => \BB[1]~output_o\);

\BB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux365~4_combout\,
	devoe => ww_devoe,
	o => \BB[2]~output_o\);

\BB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux364~4_combout\,
	devoe => ww_devoe,
	o => \BB[3]~output_o\);

\BB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux363~4_combout\,
	devoe => ww_devoe,
	o => \BB[4]~output_o\);

\BB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux362~4_combout\,
	devoe => ww_devoe,
	o => \BB[5]~output_o\);

\BB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux361~4_combout\,
	devoe => ww_devoe,
	o => \BB[6]~output_o\);

\BB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux360~4_combout\,
	devoe => ww_devoe,
	o => \BB[7]~output_o\);

\BB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux359~4_combout\,
	devoe => ww_devoe,
	o => \BB[8]~output_o\);

\BB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux358~4_combout\,
	devoe => ww_devoe,
	o => \BB[9]~output_o\);

\BB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux357~4_combout\,
	devoe => ww_devoe,
	o => \BB[10]~output_o\);

\BB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux356~4_combout\,
	devoe => ww_devoe,
	o => \BB[11]~output_o\);

\BB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux355~4_combout\,
	devoe => ww_devoe,
	o => \BB[12]~output_o\);

\BB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux354~4_combout\,
	devoe => ww_devoe,
	o => \BB[13]~output_o\);

\BB[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux353~4_combout\,
	devoe => ww_devoe,
	o => \BB[14]~output_o\);

\BB[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux352~4_combout\,
	devoe => ww_devoe,
	o => \BB[15]~output_o\);

\BC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux383~4_combout\,
	devoe => ww_devoe,
	o => \BC[0]~output_o\);

\BC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux382~4_combout\,
	devoe => ww_devoe,
	o => \BC[1]~output_o\);

\BC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux381~4_combout\,
	devoe => ww_devoe,
	o => \BC[2]~output_o\);

\BC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux380~4_combout\,
	devoe => ww_devoe,
	o => \BC[3]~output_o\);

\BC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux379~4_combout\,
	devoe => ww_devoe,
	o => \BC[4]~output_o\);

\BC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux378~4_combout\,
	devoe => ww_devoe,
	o => \BC[5]~output_o\);

\BC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux377~4_combout\,
	devoe => ww_devoe,
	o => \BC[6]~output_o\);

\BC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux376~4_combout\,
	devoe => ww_devoe,
	o => \BC[7]~output_o\);

\BC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux375~4_combout\,
	devoe => ww_devoe,
	o => \BC[8]~output_o\);

\BC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux374~4_combout\,
	devoe => ww_devoe,
	o => \BC[9]~output_o\);

\BC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux373~4_combout\,
	devoe => ww_devoe,
	o => \BC[10]~output_o\);

\BC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux372~4_combout\,
	devoe => ww_devoe,
	o => \BC[11]~output_o\);

\BC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux371~4_combout\,
	devoe => ww_devoe,
	o => \BC[12]~output_o\);

\BC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux370~4_combout\,
	devoe => ww_devoe,
	o => \BC[13]~output_o\);

\BC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux369~4_combout\,
	devoe => ww_devoe,
	o => \BC[14]~output_o\);

\BC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux368~4_combout\,
	devoe => ww_devoe,
	o => \BC[15]~output_o\);

\ADR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux415~0_combout\,
	devoe => ww_devoe,
	o => \ADR[0]~output_o\);

\ADR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux414~0_combout\,
	devoe => ww_devoe,
	o => \ADR[1]~output_o\);

\ADR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux413~0_combout\,
	devoe => ww_devoe,
	o => \ADR[2]~output_o\);

\ADR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux412~0_combout\,
	devoe => ww_devoe,
	o => \ADR[3]~output_o\);

\ADR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux411~0_combout\,
	devoe => ww_devoe,
	o => \ADR[4]~output_o\);

\ADR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux410~0_combout\,
	devoe => ww_devoe,
	o => \ADR[5]~output_o\);

\ADR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux409~0_combout\,
	devoe => ww_devoe,
	o => \ADR[6]~output_o\);

\ADR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux408~0_combout\,
	devoe => ww_devoe,
	o => \ADR[7]~output_o\);

\ADR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux407~0_combout\,
	devoe => ww_devoe,
	o => \ADR[8]~output_o\);

\ADR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux406~0_combout\,
	devoe => ww_devoe,
	o => \ADR[9]~output_o\);

\ADR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux405~0_combout\,
	devoe => ww_devoe,
	o => \ADR[10]~output_o\);

\ADR[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux404~0_combout\,
	devoe => ww_devoe,
	o => \ADR[11]~output_o\);

\ADR[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux403~0_combout\,
	devoe => ww_devoe,
	o => \ADR[12]~output_o\);

\ADR[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux402~0_combout\,
	devoe => ww_devoe,
	o => \ADR[13]~output_o\);

\ADR[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux401~0_combout\,
	devoe => ww_devoe,
	o => \ADR[14]~output_o\);

\ADR[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux400~0_combout\,
	devoe => ww_devoe,
	o => \ADR[15]~output_o\);

\ADR[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux399~0_combout\,
	devoe => ww_devoe,
	o => \ADR[16]~output_o\);

\ADR[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux398~0_combout\,
	devoe => ww_devoe,
	o => \ADR[17]~output_o\);

\ADR[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux397~0_combout\,
	devoe => ww_devoe,
	o => \ADR[18]~output_o\);

\ADR[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux396~0_combout\,
	devoe => ww_devoe,
	o => \ADR[19]~output_o\);

\ADR[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux395~0_combout\,
	devoe => ww_devoe,
	o => \ADR[20]~output_o\);

\ADR[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux394~0_combout\,
	devoe => ww_devoe,
	o => \ADR[21]~output_o\);

\ADR[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux393~0_combout\,
	devoe => ww_devoe,
	o => \ADR[22]~output_o\);

\ADR[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux392~0_combout\,
	devoe => ww_devoe,
	o => \ADR[23]~output_o\);

\ADR[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux391~0_combout\,
	devoe => ww_devoe,
	o => \ADR[24]~output_o\);

\ADR[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux390~0_combout\,
	devoe => ww_devoe,
	o => \ADR[25]~output_o\);

\ADR[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux389~0_combout\,
	devoe => ww_devoe,
	o => \ADR[26]~output_o\);

\ADR[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux388~0_combout\,
	devoe => ww_devoe,
	o => \ADR[27]~output_o\);

\ADR[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux387~0_combout\,
	devoe => ww_devoe,
	o => \ADR[28]~output_o\);

\ADR[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux386~0_combout\,
	devoe => ww_devoe,
	o => \ADR[29]~output_o\);

\ADR[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux385~0_combout\,
	devoe => ww_devoe,
	o => \ADR[30]~output_o\);

\ADR[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux384~0_combout\,
	devoe => ww_devoe,
	o => \ADR[31]~output_o\);

\IRout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(0),
	devoe => ww_devoe,
	o => \IRout[0]~output_o\);

\IRout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(1),
	devoe => ww_devoe,
	o => \IRout[1]~output_o\);

\IRout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(2),
	devoe => ww_devoe,
	o => \IRout[2]~output_o\);

\IRout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(3),
	devoe => ww_devoe,
	o => \IRout[3]~output_o\);

\IRout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(4),
	devoe => ww_devoe,
	o => \IRout[4]~output_o\);

\IRout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(5),
	devoe => ww_devoe,
	o => \IRout[5]~output_o\);

\IRout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(6),
	devoe => ww_devoe,
	o => \IRout[6]~output_o\);

\IRout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(7),
	devoe => ww_devoe,
	o => \IRout[7]~output_o\);

\IRout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(8),
	devoe => ww_devoe,
	o => \IRout[8]~output_o\);

\IRout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(9),
	devoe => ww_devoe,
	o => \IRout[9]~output_o\);

\IRout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(10),
	devoe => ww_devoe,
	o => \IRout[10]~output_o\);

\IRout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(11),
	devoe => ww_devoe,
	o => \IRout[11]~output_o\);

\IRout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(12),
	devoe => ww_devoe,
	o => \IRout[12]~output_o\);

\IRout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(13),
	devoe => ww_devoe,
	o => \IRout[13]~output_o\);

\IRout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(14),
	devoe => ww_devoe,
	o => \IRout[14]~output_o\);

\IRout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => IR(15),
	devoe => ww_devoe,
	o => \IRout[15]~output_o\);

\DI[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(0),
	o => \DI[0]~input_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\BA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(0),
	o => \BA[0]~input_o\);

\Sba[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sba(0),
	o => \Sba[0]~input_o\);

\Sba[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sba(1),
	o => \Sba[1]~input_o\);

\Sba[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sba(2),
	o => \Sba[2]~input_o\);

\Sba[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sba(3),
	o => \Sba[3]~input_o\);

\Mux96~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~0_combout\ = (\Sba[0]~input_o\ & (!\Sba[1]~input_o\ & (!\Sba[2]~input_o\ & !\Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~0_combout\);

\TMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[0]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(0));

\Mux96~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~1_combout\ = (!\Sba[0]~input_o\ & (\Sba[1]~input_o\ & (!\Sba[2]~input_o\ & !\Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~1_combout\);

\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[0]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

\Mux96~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~2_combout\ = (\Sba[0]~input_o\ & (\Sba[1]~input_o\ & (!\Sba[2]~input_o\ & !\Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~2_combout\);

\B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[0]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(0));

\Sbb[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sbb(0),
	o => \Sbb[0]~input_o\);

\Sbb[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sbb(1),
	o => \Sbb[1]~input_o\);

\Mux367~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux367~0_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( B(0) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( A(0) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( TMP(0) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( 
-- \DI[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[0]~input_o\,
	datab => ALT_INV_TMP(0),
	datac => ALT_INV_A(0),
	datad => ALT_INV_B(0),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux367~0_combout\);

\Mux96~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~3_combout\ = (!\Sba[0]~input_o\ & (!\Sba[1]~input_o\ & (\Sba[2]~input_o\ & !\Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~3_combout\);

\C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[0]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(0));

\Mux96~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~4_combout\ = (\Sba[0]~input_o\ & (!\Sba[1]~input_o\ & (\Sba[2]~input_o\ & !\Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~4_combout\);

\D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[0]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(0));

\Mux96~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~5_combout\ = (!\Sba[0]~input_o\ & (\Sba[1]~input_o\ & (\Sba[2]~input_o\ & !\Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~5_combout\);

\E[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[0]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(0));

\Mux96~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~6_combout\ = (\Sba[0]~input_o\ & (\Sba[1]~input_o\ & (\Sba[2]~input_o\ & !\Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~6_combout\);

\F[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[0]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(0));

\Mux367~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux367~1_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( F(0) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( E(0) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( D(0) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( C(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(0),
	datab => ALT_INV_D(0),
	datac => ALT_INV_E(0),
	datad => ALT_INV_F(0),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux367~1_combout\);

\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( AD(0) ) + ( VCC ) + ( !VCC ))
-- \Add3~2\ = CARRY(( AD(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(0),
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

\Mux96~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~7_combout\ = (!\Sba[0]~input_o\ & (!\Sba[1]~input_o\ & (!\Sba[2]~input_o\ & \Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~7_combout\);

\Sid[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sid(1),
	o => \Sid[1]~input_o\);

\Sid[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sid(2),
	o => \Sid[2]~input_o\);

\AD[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AD[15]~0_combout\ = ((!\Sid[1]~input_o\ & \Sid[2]~input_o\)) # (\Mux96~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux96~7_combout\,
	datab => \ALT_INV_Sid[1]~input_o\,
	datac => \ALT_INV_Sid[2]~input_o\,
	combout => \AD[15]~0_combout\);

\AD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~1_sumout\,
	asdata => \BA[0]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(0));

\Sid[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sid(0),
	o => \Sid[0]~input_o\);

\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( AD(1) ) + ( \Sid[0]~input_o\ ) + ( \Add3~2\ ))
-- \Add3~10\ = CARRY(( AD(1) ) + ( \Sid[0]~input_o\ ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(1),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~2\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

\BA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(1),
	o => \BA[1]~input_o\);

\AD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~9_sumout\,
	asdata => \BA[1]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(1));

\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( AD(2) ) + ( \Sid[0]~input_o\ ) + ( \Add3~10\ ))
-- \Add3~18\ = CARRY(( AD(2) ) + ( \Sid[0]~input_o\ ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(2),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~10\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

\BA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(2),
	o => \BA[2]~input_o\);

\AD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~17_sumout\,
	asdata => \BA[2]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(2));

\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( AD(3) ) + ( \Sid[0]~input_o\ ) + ( \Add3~18\ ))
-- \Add3~26\ = CARRY(( AD(3) ) + ( \Sid[0]~input_o\ ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(3),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~18\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

\BA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(3),
	o => \BA[3]~input_o\);

\AD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~25_sumout\,
	asdata => \BA[3]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(3));

\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( AD(4) ) + ( \Sid[0]~input_o\ ) + ( \Add3~26\ ))
-- \Add3~34\ = CARRY(( AD(4) ) + ( \Sid[0]~input_o\ ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(4),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~26\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

\BA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(4),
	o => \BA[4]~input_o\);

\AD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~33_sumout\,
	asdata => \BA[4]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(4));

\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( AD(5) ) + ( \Sid[0]~input_o\ ) + ( \Add3~34\ ))
-- \Add3~42\ = CARRY(( AD(5) ) + ( \Sid[0]~input_o\ ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(5),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~34\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

\BA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(5),
	o => \BA[5]~input_o\);

\AD[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~41_sumout\,
	asdata => \BA[5]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(5));

\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( AD(6) ) + ( \Sid[0]~input_o\ ) + ( \Add3~42\ ))
-- \Add3~50\ = CARRY(( AD(6) ) + ( \Sid[0]~input_o\ ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(6),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~42\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

\BA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(6),
	o => \BA[6]~input_o\);

\AD[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~49_sumout\,
	asdata => \BA[6]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(6));

\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( AD(7) ) + ( \Sid[0]~input_o\ ) + ( \Add3~50\ ))
-- \Add3~58\ = CARRY(( AD(7) ) + ( \Sid[0]~input_o\ ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(7),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~50\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

\BA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(7),
	o => \BA[7]~input_o\);

\AD[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~57_sumout\,
	asdata => \BA[7]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(7));

\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( AD(8) ) + ( \Sid[0]~input_o\ ) + ( \Add3~58\ ))
-- \Add3~66\ = CARRY(( AD(8) ) + ( \Sid[0]~input_o\ ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(8),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~58\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

\BA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(8),
	o => \BA[8]~input_o\);

\AD[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~65_sumout\,
	asdata => \BA[8]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(8));

\Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( AD(9) ) + ( \Sid[0]~input_o\ ) + ( \Add3~66\ ))
-- \Add3~74\ = CARRY(( AD(9) ) + ( \Sid[0]~input_o\ ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(9),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~66\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\);

\BA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(9),
	o => \BA[9]~input_o\);

\AD[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~73_sumout\,
	asdata => \BA[9]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(9));

\Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( AD(10) ) + ( \Sid[0]~input_o\ ) + ( \Add3~74\ ))
-- \Add3~82\ = CARRY(( AD(10) ) + ( \Sid[0]~input_o\ ) + ( \Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(10),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~74\,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\);

\BA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(10),
	o => \BA[10]~input_o\);

\AD[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~81_sumout\,
	asdata => \BA[10]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(10));

\Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( AD(11) ) + ( \Sid[0]~input_o\ ) + ( \Add3~82\ ))
-- \Add3~90\ = CARRY(( AD(11) ) + ( \Sid[0]~input_o\ ) + ( \Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(11),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~82\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\);

\BA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(11),
	o => \BA[11]~input_o\);

\AD[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~89_sumout\,
	asdata => \BA[11]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(11));

\Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( AD(12) ) + ( \Sid[0]~input_o\ ) + ( \Add3~90\ ))
-- \Add3~98\ = CARRY(( AD(12) ) + ( \Sid[0]~input_o\ ) + ( \Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(12),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~90\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\);

\BA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(12),
	o => \BA[12]~input_o\);

\AD[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~97_sumout\,
	asdata => \BA[12]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(12));

\Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( AD(13) ) + ( \Sid[0]~input_o\ ) + ( \Add3~98\ ))
-- \Add3~106\ = CARRY(( AD(13) ) + ( \Sid[0]~input_o\ ) + ( \Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(13),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~98\,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\);

\BA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(13),
	o => \BA[13]~input_o\);

\AD[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~105_sumout\,
	asdata => \BA[13]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(13));

\Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( AD(14) ) + ( \Sid[0]~input_o\ ) + ( \Add3~106\ ))
-- \Add3~114\ = CARRY(( AD(14) ) + ( \Sid[0]~input_o\ ) + ( \Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(14),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~106\,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\);

\BA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(14),
	o => \BA[14]~input_o\);

\AD[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~113_sumout\,
	asdata => \BA[14]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(14));

\Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( AD(15) ) + ( \Sid[0]~input_o\ ) + ( \Add3~114\ ))
-- \Add3~122\ = CARRY(( AD(15) ) + ( \Sid[0]~input_o\ ) + ( \Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(15),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~114\,
	sumout => \Add3~121_sumout\,
	cout => \Add3~122\);

\BA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA(15),
	o => \BA[15]~input_o\);

\AD[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~121_sumout\,
	asdata => \BA[15]~input_o\,
	sload => \Mux96~7_combout\,
	ena => \AD[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(15));

\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( AD(16) ) + ( \Sid[0]~input_o\ ) + ( \Add3~122\ ))
-- \Add3~6\ = CARRY(( AD(16) ) + ( \Sid[0]~input_o\ ) + ( \Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(16),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~122\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

\Mux96~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~8_combout\ = (\Sba[0]~input_o\ & (!\Sba[1]~input_o\ & (!\Sba[2]~input_o\ & \Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~8_combout\);

\AD[23]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AD[23]~1_combout\ = ((!\Sid[1]~input_o\ & \Sid[2]~input_o\)) # (\Mux96~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sid[1]~input_o\,
	datab => \ALT_INV_Sid[2]~input_o\,
	datac => \ALT_INV_Mux96~8_combout\,
	combout => \AD[23]~1_combout\);

\AD[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~5_sumout\,
	asdata => \BA[0]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(16));

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( PC(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( PC(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\Mux96~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~9_combout\ = (!\Sba[0]~input_o\ & (\Sba[1]~input_o\ & (!\Sba[2]~input_o\ & \Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~9_combout\);

\PC[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[13]~0_combout\ = ((!\Sid[1]~input_o\ & (!\Sid[2]~input_o\ & \Sid[0]~input_o\))) # (\Mux96~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111111000010001111111100001000111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sid[1]~input_o\,
	datab => \ALT_INV_Sid[2]~input_o\,
	datac => \ALT_INV_Sid[0]~input_o\,
	datad => \ALT_INV_Mux96~9_combout\,
	combout => \PC[13]~0_combout\);

\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~1_sumout\,
	asdata => \BA[0]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( PC(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~10\ = CARRY(( PC(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(1),
	cin => \Add0~2\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~9_sumout\,
	asdata => \BA[1]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( PC(2) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~18\ = CARRY(( PC(2) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(2),
	cin => \Add0~10\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~17_sumout\,
	asdata => \BA[2]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( PC(3) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~26\ = CARRY(( PC(3) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(3),
	cin => \Add0~18\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~25_sumout\,
	asdata => \BA[3]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( PC(4) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~34\ = CARRY(( PC(4) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(4),
	cin => \Add0~26\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~33_sumout\,
	asdata => \BA[4]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( PC(5) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~42\ = CARRY(( PC(5) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(5),
	cin => \Add0~34\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~41_sumout\,
	asdata => \BA[5]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( PC(6) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~50\ = CARRY(( PC(6) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(6),
	cin => \Add0~42\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~49_sumout\,
	asdata => \BA[6]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( PC(7) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~58\ = CARRY(( PC(7) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(7),
	cin => \Add0~50\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~57_sumout\,
	asdata => \BA[7]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( PC(8) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~66\ = CARRY(( PC(8) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(8),
	cin => \Add0~58\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

\PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~65_sumout\,
	asdata => \BA[8]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(8));

\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( PC(9) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~74\ = CARRY(( PC(9) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(9),
	cin => \Add0~66\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

\PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~73_sumout\,
	asdata => \BA[9]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(9));

\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( PC(10) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~82\ = CARRY(( PC(10) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(10),
	cin => \Add0~74\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

\PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~81_sumout\,
	asdata => \BA[10]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(10));

\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( PC(11) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~90\ = CARRY(( PC(11) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(11),
	cin => \Add0~82\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

\PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~89_sumout\,
	asdata => \BA[11]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(11));

\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( PC(12) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~98\ = CARRY(( PC(12) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(12),
	cin => \Add0~90\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

\PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~97_sumout\,
	asdata => \BA[12]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(12));

\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( PC(13) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~106\ = CARRY(( PC(13) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(13),
	cin => \Add0~98\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

\PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~105_sumout\,
	asdata => \BA[13]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(13));

\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( PC(14) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~114\ = CARRY(( PC(14) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(14),
	cin => \Add0~106\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

\PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~113_sumout\,
	asdata => \BA[14]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(14));

\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( PC(15) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~122\ = CARRY(( PC(15) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(15),
	cin => \Add0~114\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

\PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~121_sumout\,
	asdata => \BA[15]~input_o\,
	sload => \Mux96~9_combout\,
	ena => \PC[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(15));

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( PC(16) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~6\ = CARRY(( PC(16) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(16),
	cin => \Add0~122\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\Mux96~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~10_combout\ = (\Sba[0]~input_o\ & (\Sba[1]~input_o\ & (!\Sba[2]~input_o\ & \Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~10_combout\);

\PC[21]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[21]~1_combout\ = ((!\Sid[1]~input_o\ & (!\Sid[2]~input_o\ & \Sid[0]~input_o\))) # (\Mux96~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111111000010001111111100001000111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sid[1]~input_o\,
	datab => \ALT_INV_Sid[2]~input_o\,
	datac => \ALT_INV_Sid[0]~input_o\,
	datad => \ALT_INV_Mux96~10_combout\,
	combout => \PC[21]~1_combout\);

\PC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~5_sumout\,
	asdata => \BA[0]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(16));

\Mux367~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux367~2_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(16) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(0) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(16) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(0) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(0),
	datab => ALT_INV_AD(16),
	datac => ALT_INV_PC(0),
	datad => ALT_INV_PC(16),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux367~2_combout\);

\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( SP(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( SP(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

\Mux96~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~11_combout\ = (!\Sba[0]~input_o\ & (!\Sba[1]~input_o\ & (\Sba[2]~input_o\ & \Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~11_combout\);

\SP[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SP[13]~0_combout\ = ((\Sid[1]~input_o\ & !\Sid[2]~input_o\)) # (\Mux96~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sid[1]~input_o\,
	datab => \ALT_INV_Sid[2]~input_o\,
	datac => \ALT_INV_Mux96~11_combout\,
	combout => \SP[13]~0_combout\);

\SP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~1_sumout\,
	asdata => \BA[0]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(0));

\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( SP(1) ) + ( \Sid[0]~input_o\ ) + ( \Add1~2\ ))
-- \Add1~10\ = CARRY(( SP(1) ) + ( \Sid[0]~input_o\ ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(1),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~2\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

\SP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~9_sumout\,
	asdata => \BA[1]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(1));

\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( SP(2) ) + ( \Sid[0]~input_o\ ) + ( \Add1~10\ ))
-- \Add1~18\ = CARRY(( SP(2) ) + ( \Sid[0]~input_o\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(2),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~10\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

\SP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~17_sumout\,
	asdata => \BA[2]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(2));

\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( SP(3) ) + ( \Sid[0]~input_o\ ) + ( \Add1~18\ ))
-- \Add1~26\ = CARRY(( SP(3) ) + ( \Sid[0]~input_o\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(3),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~18\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

\SP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~25_sumout\,
	asdata => \BA[3]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(3));

\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( SP(4) ) + ( \Sid[0]~input_o\ ) + ( \Add1~26\ ))
-- \Add1~34\ = CARRY(( SP(4) ) + ( \Sid[0]~input_o\ ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(4),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~26\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

\SP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~33_sumout\,
	asdata => \BA[4]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(4));

\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( SP(5) ) + ( \Sid[0]~input_o\ ) + ( \Add1~34\ ))
-- \Add1~42\ = CARRY(( SP(5) ) + ( \Sid[0]~input_o\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(5),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~34\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

\SP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~41_sumout\,
	asdata => \BA[5]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(5));

\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( SP(6) ) + ( \Sid[0]~input_o\ ) + ( \Add1~42\ ))
-- \Add1~50\ = CARRY(( SP(6) ) + ( \Sid[0]~input_o\ ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(6),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~42\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

\SP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~49_sumout\,
	asdata => \BA[6]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(6));

\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( SP(7) ) + ( \Sid[0]~input_o\ ) + ( \Add1~50\ ))
-- \Add1~58\ = CARRY(( SP(7) ) + ( \Sid[0]~input_o\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(7),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~50\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

\SP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~57_sumout\,
	asdata => \BA[7]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(7));

\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( SP(8) ) + ( \Sid[0]~input_o\ ) + ( \Add1~58\ ))
-- \Add1~66\ = CARRY(( SP(8) ) + ( \Sid[0]~input_o\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(8),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~58\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

\SP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~65_sumout\,
	asdata => \BA[8]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(8));

\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( SP(9) ) + ( \Sid[0]~input_o\ ) + ( \Add1~66\ ))
-- \Add1~74\ = CARRY(( SP(9) ) + ( \Sid[0]~input_o\ ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(9),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~66\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

\SP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~73_sumout\,
	asdata => \BA[9]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(9));

\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( SP(10) ) + ( \Sid[0]~input_o\ ) + ( \Add1~74\ ))
-- \Add1~82\ = CARRY(( SP(10) ) + ( \Sid[0]~input_o\ ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(10),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~74\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

\SP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~81_sumout\,
	asdata => \BA[10]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(10));

\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( SP(11) ) + ( \Sid[0]~input_o\ ) + ( \Add1~82\ ))
-- \Add1~90\ = CARRY(( SP(11) ) + ( \Sid[0]~input_o\ ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(11),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~82\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

\SP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~89_sumout\,
	asdata => \BA[11]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(11));

\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( SP(12) ) + ( \Sid[0]~input_o\ ) + ( \Add1~90\ ))
-- \Add1~98\ = CARRY(( SP(12) ) + ( \Sid[0]~input_o\ ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(12),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~90\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

\SP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~97_sumout\,
	asdata => \BA[12]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(12));

\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( SP(13) ) + ( \Sid[0]~input_o\ ) + ( \Add1~98\ ))
-- \Add1~106\ = CARRY(( SP(13) ) + ( \Sid[0]~input_o\ ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(13),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~98\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

\SP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~105_sumout\,
	asdata => \BA[13]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(13));

\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( SP(14) ) + ( \Sid[0]~input_o\ ) + ( \Add1~106\ ))
-- \Add1~114\ = CARRY(( SP(14) ) + ( \Sid[0]~input_o\ ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(14),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~106\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

\SP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~113_sumout\,
	asdata => \BA[14]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(14));

\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( SP(15) ) + ( \Sid[0]~input_o\ ) + ( \Add1~114\ ))
-- \Add1~122\ = CARRY(( SP(15) ) + ( \Sid[0]~input_o\ ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(15),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~114\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

\SP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~121_sumout\,
	asdata => \BA[15]~input_o\,
	sload => \Mux96~11_combout\,
	ena => \SP[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(15));

\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( SP(16) ) + ( \Sid[0]~input_o\ ) + ( \Add1~122\ ))
-- \Add1~6\ = CARRY(( SP(16) ) + ( \Sid[0]~input_o\ ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(16),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~122\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

\Mux96~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~12_combout\ = (\Sba[0]~input_o\ & (!\Sba[1]~input_o\ & (\Sba[2]~input_o\ & \Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~12_combout\);

\SP[31]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SP[31]~1_combout\ = ((\Sid[1]~input_o\ & !\Sid[2]~input_o\)) # (\Mux96~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111010011110100111101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sid[1]~input_o\,
	datab => \ALT_INV_Sid[2]~input_o\,
	datac => \ALT_INV_Mux96~12_combout\,
	combout => \SP[31]~1_combout\);

\SP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~5_sumout\,
	asdata => \BA[0]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(16));

\Mux96~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~13_combout\ = (!\Sba[0]~input_o\ & (\Sba[1]~input_o\ & (\Sba[2]~input_o\ & \Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~13_combout\);

\ATMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[0]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(0));

\Mux96~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~14_combout\ = (\Sba[0]~input_o\ & (\Sba[1]~input_o\ & (\Sba[2]~input_o\ & \Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~14_combout\);

\ATMP[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[0]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(16));

\Mux367~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux367~3_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(16) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(0) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(16) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(0) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(0),
	datab => ALT_INV_SP(16),
	datac => ALT_INV_ATMP(0),
	datad => ALT_INV_ATMP(16),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux367~3_combout\);

\Sbb[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sbb(2),
	o => \Sbb[2]~input_o\);

\Sbb[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sbb(3),
	o => \Sbb[3]~input_o\);

\Mux367~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux367~4_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux367~3_combout\ ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux367~2_combout\ ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( \Mux367~1_combout\ ) ) ) # ( !\Sbb[2]~input_o\ 
-- & ( !\Sbb[3]~input_o\ & ( \Mux367~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux367~0_combout\,
	datab => \ALT_INV_Mux367~1_combout\,
	datac => \ALT_INV_Mux367~2_combout\,
	datad => \ALT_INV_Mux367~3_combout\,
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux367~4_combout\);

\DI[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(1),
	o => \DI[1]~input_o\);

\C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[1]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(1));

\Mux366~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux366~0_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(1) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(1) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( C(1) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( 
-- \DI[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[1]~input_o\,
	datab => ALT_INV_C(1),
	datac => ALT_INV_AD(1),
	datad => ALT_INV_SP(1),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux366~0_combout\);

\TMP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[1]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(1));

\D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[1]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(1));

\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( AD(17) ) + ( \Sid[0]~input_o\ ) + ( \Add3~6\ ))
-- \Add3~14\ = CARRY(( AD(17) ) + ( \Sid[0]~input_o\ ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(17),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~6\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

\AD[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~13_sumout\,
	asdata => \BA[1]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(17));

\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( SP(17) ) + ( \Sid[0]~input_o\ ) + ( \Add1~6\ ))
-- \Add1~14\ = CARRY(( SP(17) ) + ( \Sid[0]~input_o\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(17),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~6\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

\SP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~13_sumout\,
	asdata => \BA[1]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(17));

\Mux366~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux366~1_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(17) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(17) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( D(1) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( TMP(1) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(1),
	datab => ALT_INV_D(1),
	datac => ALT_INV_AD(17),
	datad => ALT_INV_SP(17),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux366~1_combout\);

\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[1]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

\E[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[1]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(1));

\ATMP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[1]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(1));

\Mux366~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux366~2_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(1) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(1) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( E(1) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( A(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(1),
	datab => ALT_INV_E(1),
	datac => ALT_INV_PC(1),
	datad => ALT_INV_ATMP(1),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux366~2_combout\);

\B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[1]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(1));

\F[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[1]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(1));

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( PC(17) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~14\ = CARRY(( PC(17) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(17),
	cin => \Add0~6\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\PC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~13_sumout\,
	asdata => \BA[1]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(17));

\ATMP[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[1]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(17));

\Mux366~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux366~3_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(17) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(17) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( F(1) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( B(1) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(1),
	datab => ALT_INV_F(1),
	datac => ALT_INV_PC(17),
	datad => ALT_INV_ATMP(17),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux366~3_combout\);

\Mux366~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux366~4_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux366~3_combout\ ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux366~2_combout\ ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( \Mux366~1_combout\ ) ) ) # ( !\Sbb[0]~input_o\ 
-- & ( !\Sbb[1]~input_o\ & ( \Mux366~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux366~0_combout\,
	datab => \ALT_INV_Mux366~1_combout\,
	datac => \ALT_INV_Mux366~2_combout\,
	datad => \ALT_INV_Mux366~3_combout\,
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux366~4_combout\);

\DI[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(2),
	o => \DI[2]~input_o\);

\TMP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[2]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(2));

\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[2]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

\B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[2]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(2));

\Mux365~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux365~0_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( B(2) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( A(2) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( TMP(2) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( 
-- \DI[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[2]~input_o\,
	datab => ALT_INV_TMP(2),
	datac => ALT_INV_A(2),
	datad => ALT_INV_B(2),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux365~0_combout\);

\C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[2]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(2));

\D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[2]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(2));

\E[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[2]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(2));

\F[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[2]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(2));

\Mux365~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux365~1_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( F(2) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( E(2) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( D(2) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( C(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(2),
	datab => ALT_INV_D(2),
	datac => ALT_INV_E(2),
	datad => ALT_INV_F(2),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux365~1_combout\);

\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( AD(18) ) + ( \Sid[0]~input_o\ ) + ( \Add3~14\ ))
-- \Add3~22\ = CARRY(( AD(18) ) + ( \Sid[0]~input_o\ ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(18),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~14\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

\AD[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~21_sumout\,
	asdata => \BA[2]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(18));

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( PC(18) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~22\ = CARRY(( PC(18) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(18),
	cin => \Add0~14\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\PC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~21_sumout\,
	asdata => \BA[2]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(18));

\Mux365~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux365~2_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(18) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(2) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(18) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(2) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(2),
	datab => ALT_INV_AD(18),
	datac => ALT_INV_PC(2),
	datad => ALT_INV_PC(18),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux365~2_combout\);

\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( SP(18) ) + ( \Sid[0]~input_o\ ) + ( \Add1~14\ ))
-- \Add1~22\ = CARRY(( SP(18) ) + ( \Sid[0]~input_o\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(18),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~14\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

\SP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~21_sumout\,
	asdata => \BA[2]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(18));

\ATMP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[2]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(2));

\ATMP[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[2]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(18));

\Mux365~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux365~3_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(18) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(2) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(18) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(2) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(2),
	datab => ALT_INV_SP(18),
	datac => ALT_INV_ATMP(2),
	datad => ALT_INV_ATMP(18),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux365~3_combout\);

\Mux365~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux365~4_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux365~3_combout\ ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux365~2_combout\ ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( \Mux365~1_combout\ ) ) ) # ( !\Sbb[2]~input_o\ 
-- & ( !\Sbb[3]~input_o\ & ( \Mux365~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux365~0_combout\,
	datab => \ALT_INV_Mux365~1_combout\,
	datac => \ALT_INV_Mux365~2_combout\,
	datad => \ALT_INV_Mux365~3_combout\,
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux365~4_combout\);

\DI[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(3),
	o => \DI[3]~input_o\);

\C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[3]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(3));

\Mux364~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux364~0_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(3) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(3) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( C(3) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( 
-- \DI[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[3]~input_o\,
	datab => ALT_INV_C(3),
	datac => ALT_INV_AD(3),
	datad => ALT_INV_SP(3),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux364~0_combout\);

\TMP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[3]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(3));

\D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[3]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(3));

\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( AD(19) ) + ( \Sid[0]~input_o\ ) + ( \Add3~22\ ))
-- \Add3~30\ = CARRY(( AD(19) ) + ( \Sid[0]~input_o\ ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(19),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~22\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

\AD[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~29_sumout\,
	asdata => \BA[3]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(19));

\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( SP(19) ) + ( \Sid[0]~input_o\ ) + ( \Add1~22\ ))
-- \Add1~30\ = CARRY(( SP(19) ) + ( \Sid[0]~input_o\ ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(19),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~22\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

\SP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~29_sumout\,
	asdata => \BA[3]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(19));

\Mux364~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux364~1_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(19) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(19) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( D(3) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( TMP(3) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(3),
	datab => ALT_INV_D(3),
	datac => ALT_INV_AD(19),
	datad => ALT_INV_SP(19),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux364~1_combout\);

\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[3]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

\E[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[3]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(3));

\ATMP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[3]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(3));

\Mux364~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux364~2_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(3) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(3) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( E(3) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( A(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(3),
	datab => ALT_INV_E(3),
	datac => ALT_INV_PC(3),
	datad => ALT_INV_ATMP(3),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux364~2_combout\);

\B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[3]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(3));

\F[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[3]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(3));

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( PC(19) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~30\ = CARRY(( PC(19) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(19),
	cin => \Add0~22\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

\PC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~29_sumout\,
	asdata => \BA[3]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(19));

\ATMP[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[3]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(19));

\Mux364~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux364~3_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(19) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(19) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( F(3) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( B(3) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(3),
	datab => ALT_INV_F(3),
	datac => ALT_INV_PC(19),
	datad => ALT_INV_ATMP(19),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux364~3_combout\);

\Mux364~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux364~4_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux364~3_combout\ ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux364~2_combout\ ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( \Mux364~1_combout\ ) ) ) # ( !\Sbb[0]~input_o\ 
-- & ( !\Sbb[1]~input_o\ & ( \Mux364~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux364~0_combout\,
	datab => \ALT_INV_Mux364~1_combout\,
	datac => \ALT_INV_Mux364~2_combout\,
	datad => \ALT_INV_Mux364~3_combout\,
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux364~4_combout\);

\DI[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(4),
	o => \DI[4]~input_o\);

\TMP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[4]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(4));

\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[4]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

\B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[4]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(4));

\Mux363~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux363~0_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( B(4) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( A(4) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( TMP(4) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( 
-- \DI[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[4]~input_o\,
	datab => ALT_INV_TMP(4),
	datac => ALT_INV_A(4),
	datad => ALT_INV_B(4),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux363~0_combout\);

\C[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[4]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(4));

\D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[4]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(4));

\E[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[4]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(4));

\F[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[4]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(4));

\Mux363~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux363~1_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( F(4) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( E(4) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( D(4) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( C(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(4),
	datab => ALT_INV_D(4),
	datac => ALT_INV_E(4),
	datad => ALT_INV_F(4),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux363~1_combout\);

\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( AD(20) ) + ( \Sid[0]~input_o\ ) + ( \Add3~30\ ))
-- \Add3~38\ = CARRY(( AD(20) ) + ( \Sid[0]~input_o\ ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(20),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~30\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

\AD[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~37_sumout\,
	asdata => \BA[4]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(20));

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( PC(20) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~38\ = CARRY(( PC(20) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(20),
	cin => \Add0~30\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

\PC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~37_sumout\,
	asdata => \BA[4]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(20));

\Mux363~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux363~2_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(20) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(4) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(20) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(4) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(4),
	datab => ALT_INV_AD(20),
	datac => ALT_INV_PC(4),
	datad => ALT_INV_PC(20),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux363~2_combout\);

\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( SP(20) ) + ( \Sid[0]~input_o\ ) + ( \Add1~30\ ))
-- \Add1~38\ = CARRY(( SP(20) ) + ( \Sid[0]~input_o\ ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(20),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~30\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

\SP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~37_sumout\,
	asdata => \BA[4]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(20));

\ATMP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[4]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(4));

\ATMP[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[4]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(20));

\Mux363~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux363~3_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(20) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(4) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(20) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(4) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(4),
	datab => ALT_INV_SP(20),
	datac => ALT_INV_ATMP(4),
	datad => ALT_INV_ATMP(20),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux363~3_combout\);

\Mux363~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux363~4_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux363~3_combout\ ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux363~2_combout\ ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( \Mux363~1_combout\ ) ) ) # ( !\Sbb[2]~input_o\ 
-- & ( !\Sbb[3]~input_o\ & ( \Mux363~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux363~0_combout\,
	datab => \ALT_INV_Mux363~1_combout\,
	datac => \ALT_INV_Mux363~2_combout\,
	datad => \ALT_INV_Mux363~3_combout\,
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux363~4_combout\);

\DI[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(5),
	o => \DI[5]~input_o\);

\C[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[5]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(5));

\Mux362~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux362~0_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(5) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(5) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( C(5) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( 
-- \DI[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[5]~input_o\,
	datab => ALT_INV_C(5),
	datac => ALT_INV_AD(5),
	datad => ALT_INV_SP(5),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux362~0_combout\);

\TMP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[5]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(5));

\D[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[5]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(5));

\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( AD(21) ) + ( \Sid[0]~input_o\ ) + ( \Add3~38\ ))
-- \Add3~46\ = CARRY(( AD(21) ) + ( \Sid[0]~input_o\ ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(21),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~38\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

\AD[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~45_sumout\,
	asdata => \BA[5]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(21));

\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( SP(21) ) + ( \Sid[0]~input_o\ ) + ( \Add1~38\ ))
-- \Add1~46\ = CARRY(( SP(21) ) + ( \Sid[0]~input_o\ ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(21),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~38\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

\SP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~45_sumout\,
	asdata => \BA[5]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(21));

\Mux362~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux362~1_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(21) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(21) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( D(5) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( TMP(5) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(5),
	datab => ALT_INV_D(5),
	datac => ALT_INV_AD(21),
	datad => ALT_INV_SP(21),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux362~1_combout\);

\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[5]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

\E[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[5]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(5));

\ATMP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[5]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(5));

\Mux362~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux362~2_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(5) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(5) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( E(5) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( A(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(5),
	datab => ALT_INV_E(5),
	datac => ALT_INV_PC(5),
	datad => ALT_INV_ATMP(5),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux362~2_combout\);

\B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[5]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(5));

\F[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[5]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(5));

\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( PC(21) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~46\ = CARRY(( PC(21) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(21),
	cin => \Add0~38\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

\PC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~45_sumout\,
	asdata => \BA[5]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(21));

\ATMP[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[5]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(21));

\Mux362~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux362~3_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(21) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(21) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( F(5) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( B(5) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(5),
	datab => ALT_INV_F(5),
	datac => ALT_INV_PC(21),
	datad => ALT_INV_ATMP(21),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux362~3_combout\);

\Mux362~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux362~4_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux362~3_combout\ ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux362~2_combout\ ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( \Mux362~1_combout\ ) ) ) # ( !\Sbb[0]~input_o\ 
-- & ( !\Sbb[1]~input_o\ & ( \Mux362~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux362~0_combout\,
	datab => \ALT_INV_Mux362~1_combout\,
	datac => \ALT_INV_Mux362~2_combout\,
	datad => \ALT_INV_Mux362~3_combout\,
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux362~4_combout\);

\DI[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(6),
	o => \DI[6]~input_o\);

\TMP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[6]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(6));

\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[6]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

\B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[6]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(6));

\Mux361~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux361~0_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( B(6) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( A(6) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( TMP(6) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( 
-- \DI[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[6]~input_o\,
	datab => ALT_INV_TMP(6),
	datac => ALT_INV_A(6),
	datad => ALT_INV_B(6),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux361~0_combout\);

\C[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[6]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(6));

\D[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[6]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(6));

\E[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[6]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(6));

\F[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[6]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(6));

\Mux361~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux361~1_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( F(6) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( E(6) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( D(6) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( C(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(6),
	datab => ALT_INV_D(6),
	datac => ALT_INV_E(6),
	datad => ALT_INV_F(6),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux361~1_combout\);

\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( AD(22) ) + ( \Sid[0]~input_o\ ) + ( \Add3~46\ ))
-- \Add3~54\ = CARRY(( AD(22) ) + ( \Sid[0]~input_o\ ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(22),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~46\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

\AD[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~53_sumout\,
	asdata => \BA[6]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(22));

\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( PC(22) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~54\ = CARRY(( PC(22) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(22),
	cin => \Add0~46\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

\PC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~53_sumout\,
	asdata => \BA[6]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(22));

\Mux361~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux361~2_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(22) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(6) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(22) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(6) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(6),
	datab => ALT_INV_AD(22),
	datac => ALT_INV_PC(6),
	datad => ALT_INV_PC(22),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux361~2_combout\);

\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( SP(22) ) + ( \Sid[0]~input_o\ ) + ( \Add1~46\ ))
-- \Add1~54\ = CARRY(( SP(22) ) + ( \Sid[0]~input_o\ ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(22),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~46\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

\SP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~53_sumout\,
	asdata => \BA[6]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(22));

\ATMP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[6]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(6));

\ATMP[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[6]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(22));

\Mux361~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux361~3_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(22) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(6) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(22) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(6) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(6),
	datab => ALT_INV_SP(22),
	datac => ALT_INV_ATMP(6),
	datad => ALT_INV_ATMP(22),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux361~3_combout\);

\Mux361~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux361~4_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux361~3_combout\ ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux361~2_combout\ ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( \Mux361~1_combout\ ) ) ) # ( !\Sbb[2]~input_o\ 
-- & ( !\Sbb[3]~input_o\ & ( \Mux361~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux361~0_combout\,
	datab => \ALT_INV_Mux361~1_combout\,
	datac => \ALT_INV_Mux361~2_combout\,
	datad => \ALT_INV_Mux361~3_combout\,
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux361~4_combout\);

\DI[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(7),
	o => \DI[7]~input_o\);

\C[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[7]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(7));

\Mux360~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux360~0_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(7) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(7) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( C(7) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( 
-- \DI[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[7]~input_o\,
	datab => ALT_INV_C(7),
	datac => ALT_INV_AD(7),
	datad => ALT_INV_SP(7),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux360~0_combout\);

\TMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[7]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(7));

\D[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[7]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(7));

\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( AD(23) ) + ( \Sid[0]~input_o\ ) + ( \Add3~54\ ))
-- \Add3~62\ = CARRY(( AD(23) ) + ( \Sid[0]~input_o\ ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(23),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~54\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

\AD[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~61_sumout\,
	asdata => \BA[7]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(23));

\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( SP(23) ) + ( \Sid[0]~input_o\ ) + ( \Add1~54\ ))
-- \Add1~62\ = CARRY(( SP(23) ) + ( \Sid[0]~input_o\ ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(23),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~54\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

\SP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~61_sumout\,
	asdata => \BA[7]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(23));

\Mux360~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux360~1_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(23) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(23) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( D(7) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( TMP(7) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(7),
	datab => ALT_INV_D(7),
	datac => ALT_INV_AD(23),
	datad => ALT_INV_SP(23),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux360~1_combout\);

\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[7]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

\E[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[7]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(7));

\ATMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[7]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(7));

\Mux360~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux360~2_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(7) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(7) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( E(7) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( A(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(7),
	datab => ALT_INV_E(7),
	datac => ALT_INV_PC(7),
	datad => ALT_INV_ATMP(7),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux360~2_combout\);

\B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[7]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(7));

\F[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[7]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(7));

\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( PC(23) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~62\ = CARRY(( PC(23) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(23),
	cin => \Add0~54\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

\PC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~61_sumout\,
	asdata => \BA[7]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(23));

\ATMP[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[7]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(23));

\Mux360~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux360~3_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(23) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(23) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( F(7) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( B(7) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(7),
	datab => ALT_INV_F(7),
	datac => ALT_INV_PC(23),
	datad => ALT_INV_ATMP(23),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux360~3_combout\);

\Mux360~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux360~4_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux360~3_combout\ ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux360~2_combout\ ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( \Mux360~1_combout\ ) ) ) # ( !\Sbb[0]~input_o\ 
-- & ( !\Sbb[1]~input_o\ & ( \Mux360~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux360~0_combout\,
	datab => \ALT_INV_Mux360~1_combout\,
	datac => \ALT_INV_Mux360~2_combout\,
	datad => \ALT_INV_Mux360~3_combout\,
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux360~4_combout\);

\DI[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(8),
	o => \DI[8]~input_o\);

\TMP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[8]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(8));

\A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[8]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(8));

\B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[8]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(8));

\Mux359~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux359~0_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( B(8) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( A(8) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( TMP(8) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( 
-- \DI[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[8]~input_o\,
	datab => ALT_INV_TMP(8),
	datac => ALT_INV_A(8),
	datad => ALT_INV_B(8),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux359~0_combout\);

\C[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[8]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(8));

\D[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[8]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(8));

\E[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[8]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(8));

\F[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[8]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(8));

\Mux359~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux359~1_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( F(8) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( E(8) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( D(8) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( C(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(8),
	datab => ALT_INV_D(8),
	datac => ALT_INV_E(8),
	datad => ALT_INV_F(8),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux359~1_combout\);

\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( AD(24) ) + ( \Sid[0]~input_o\ ) + ( \Add3~62\ ))
-- \Add3~70\ = CARRY(( AD(24) ) + ( \Sid[0]~input_o\ ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(24),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~62\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\);

\AD[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~69_sumout\,
	asdata => \BA[8]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(24));

\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( PC(24) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~70\ = CARRY(( PC(24) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(24),
	cin => \Add0~62\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

\PC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~69_sumout\,
	asdata => \BA[8]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(24));

\Mux359~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux359~2_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(24) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(8) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(24) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(8) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(8),
	datab => ALT_INV_AD(24),
	datac => ALT_INV_PC(8),
	datad => ALT_INV_PC(24),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux359~2_combout\);

\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( SP(24) ) + ( \Sid[0]~input_o\ ) + ( \Add1~62\ ))
-- \Add1~70\ = CARRY(( SP(24) ) + ( \Sid[0]~input_o\ ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(24),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~62\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

\SP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~69_sumout\,
	asdata => \BA[8]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(24));

\ATMP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[8]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(8));

\ATMP[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[8]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(24));

\Mux359~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux359~3_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(24) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(8) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(24) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(8) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(8),
	datab => ALT_INV_SP(24),
	datac => ALT_INV_ATMP(8),
	datad => ALT_INV_ATMP(24),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux359~3_combout\);

\Mux359~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux359~4_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux359~3_combout\ ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux359~2_combout\ ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( \Mux359~1_combout\ ) ) ) # ( !\Sbb[2]~input_o\ 
-- & ( !\Sbb[3]~input_o\ & ( \Mux359~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux359~0_combout\,
	datab => \ALT_INV_Mux359~1_combout\,
	datac => \ALT_INV_Mux359~2_combout\,
	datad => \ALT_INV_Mux359~3_combout\,
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux359~4_combout\);

\DI[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(9),
	o => \DI[9]~input_o\);

\C[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[9]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(9));

\Mux358~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux358~0_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(9) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(9) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( C(9) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( 
-- \DI[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[9]~input_o\,
	datab => ALT_INV_C(9),
	datac => ALT_INV_AD(9),
	datad => ALT_INV_SP(9),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux358~0_combout\);

\TMP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[9]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(9));

\D[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[9]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(9));

\Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( AD(25) ) + ( \Sid[0]~input_o\ ) + ( \Add3~70\ ))
-- \Add3~78\ = CARRY(( AD(25) ) + ( \Sid[0]~input_o\ ) + ( \Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(25),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~70\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\);

\AD[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~77_sumout\,
	asdata => \BA[9]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(25));

\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( SP(25) ) + ( \Sid[0]~input_o\ ) + ( \Add1~70\ ))
-- \Add1~78\ = CARRY(( SP(25) ) + ( \Sid[0]~input_o\ ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(25),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~70\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

\SP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~77_sumout\,
	asdata => \BA[9]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(25));

\Mux358~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux358~1_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(25) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(25) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( D(9) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( TMP(9) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(9),
	datab => ALT_INV_D(9),
	datac => ALT_INV_AD(25),
	datad => ALT_INV_SP(25),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux358~1_combout\);

\A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[9]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(9));

\E[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[9]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(9));

\ATMP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[9]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(9));

\Mux358~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux358~2_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(9) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(9) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( E(9) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( A(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(9),
	datab => ALT_INV_E(9),
	datac => ALT_INV_PC(9),
	datad => ALT_INV_ATMP(9),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux358~2_combout\);

\B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[9]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(9));

\F[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[9]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(9));

\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( PC(25) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~78\ = CARRY(( PC(25) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(25),
	cin => \Add0~70\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

\PC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~77_sumout\,
	asdata => \BA[9]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(25));

\ATMP[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[9]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(25));

\Mux358~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux358~3_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(25) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(25) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( F(9) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( B(9) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(9),
	datab => ALT_INV_F(9),
	datac => ALT_INV_PC(25),
	datad => ALT_INV_ATMP(25),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux358~3_combout\);

\Mux358~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux358~4_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux358~3_combout\ ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux358~2_combout\ ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( \Mux358~1_combout\ ) ) ) # ( !\Sbb[0]~input_o\ 
-- & ( !\Sbb[1]~input_o\ & ( \Mux358~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux358~0_combout\,
	datab => \ALT_INV_Mux358~1_combout\,
	datac => \ALT_INV_Mux358~2_combout\,
	datad => \ALT_INV_Mux358~3_combout\,
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux358~4_combout\);

\DI[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(10),
	o => \DI[10]~input_o\);

\TMP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[10]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(10));

\A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[10]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(10));

\B[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[10]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(10));

\Mux357~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux357~0_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( B(10) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( A(10) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( TMP(10) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( 
-- \DI[10]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[10]~input_o\,
	datab => ALT_INV_TMP(10),
	datac => ALT_INV_A(10),
	datad => ALT_INV_B(10),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux357~0_combout\);

\C[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[10]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(10));

\D[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[10]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(10));

\E[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[10]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(10));

\F[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[10]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(10));

\Mux357~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux357~1_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( F(10) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( E(10) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( D(10) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( C(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(10),
	datab => ALT_INV_D(10),
	datac => ALT_INV_E(10),
	datad => ALT_INV_F(10),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux357~1_combout\);

\Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( AD(26) ) + ( \Sid[0]~input_o\ ) + ( \Add3~78\ ))
-- \Add3~86\ = CARRY(( AD(26) ) + ( \Sid[0]~input_o\ ) + ( \Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(26),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~78\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\);

\AD[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~85_sumout\,
	asdata => \BA[10]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(26));

\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( PC(26) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~86\ = CARRY(( PC(26) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(26),
	cin => \Add0~78\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

\PC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~85_sumout\,
	asdata => \BA[10]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(26));

\Mux357~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux357~2_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(26) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(10) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(26) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(10) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(10),
	datab => ALT_INV_AD(26),
	datac => ALT_INV_PC(10),
	datad => ALT_INV_PC(26),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux357~2_combout\);

\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( SP(26) ) + ( \Sid[0]~input_o\ ) + ( \Add1~78\ ))
-- \Add1~86\ = CARRY(( SP(26) ) + ( \Sid[0]~input_o\ ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(26),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~78\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

\SP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~85_sumout\,
	asdata => \BA[10]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(26));

\ATMP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[10]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(10));

\ATMP[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[10]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(26));

\Mux357~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux357~3_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(26) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(10) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(26) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( 
-- SP(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(10),
	datab => ALT_INV_SP(26),
	datac => ALT_INV_ATMP(10),
	datad => ALT_INV_ATMP(26),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux357~3_combout\);

\Mux357~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux357~4_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux357~3_combout\ ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux357~2_combout\ ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( \Mux357~1_combout\ ) ) ) # ( !\Sbb[2]~input_o\ 
-- & ( !\Sbb[3]~input_o\ & ( \Mux357~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux357~0_combout\,
	datab => \ALT_INV_Mux357~1_combout\,
	datac => \ALT_INV_Mux357~2_combout\,
	datad => \ALT_INV_Mux357~3_combout\,
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux357~4_combout\);

\DI[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(11),
	o => \DI[11]~input_o\);

\C[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[11]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(11));

\Mux356~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux356~0_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(11) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(11) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( C(11) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( 
-- \DI[11]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[11]~input_o\,
	datab => ALT_INV_C(11),
	datac => ALT_INV_AD(11),
	datad => ALT_INV_SP(11),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux356~0_combout\);

\TMP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[11]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(11));

\D[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[11]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(11));

\Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( AD(27) ) + ( \Sid[0]~input_o\ ) + ( \Add3~86\ ))
-- \Add3~94\ = CARRY(( AD(27) ) + ( \Sid[0]~input_o\ ) + ( \Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(27),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~86\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\);

\AD[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~93_sumout\,
	asdata => \BA[11]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(27));

\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( SP(27) ) + ( \Sid[0]~input_o\ ) + ( \Add1~86\ ))
-- \Add1~94\ = CARRY(( SP(27) ) + ( \Sid[0]~input_o\ ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(27),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~86\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

\SP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~93_sumout\,
	asdata => \BA[11]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(27));

\Mux356~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux356~1_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(27) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(27) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( D(11) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( TMP(11) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(11),
	datab => ALT_INV_D(11),
	datac => ALT_INV_AD(27),
	datad => ALT_INV_SP(27),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux356~1_combout\);

\A[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[11]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(11));

\E[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[11]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(11));

\ATMP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[11]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(11));

\Mux356~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux356~2_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(11) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(11) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( E(11) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( A(11) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(11),
	datab => ALT_INV_E(11),
	datac => ALT_INV_PC(11),
	datad => ALT_INV_ATMP(11),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux356~2_combout\);

\B[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[11]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(11));

\F[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[11]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(11));

\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( PC(27) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~94\ = CARRY(( PC(27) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(27),
	cin => \Add0~86\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

\PC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~93_sumout\,
	asdata => \BA[11]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(27));

\ATMP[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[11]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(27));

\Mux356~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux356~3_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(27) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(27) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( F(11) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( B(11) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(11),
	datab => ALT_INV_F(11),
	datac => ALT_INV_PC(27),
	datad => ALT_INV_ATMP(27),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux356~3_combout\);

\Mux356~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux356~4_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux356~3_combout\ ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux356~2_combout\ ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( \Mux356~1_combout\ ) ) ) # ( !\Sbb[0]~input_o\ 
-- & ( !\Sbb[1]~input_o\ & ( \Mux356~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux356~0_combout\,
	datab => \ALT_INV_Mux356~1_combout\,
	datac => \ALT_INV_Mux356~2_combout\,
	datad => \ALT_INV_Mux356~3_combout\,
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux356~4_combout\);

\DI[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(12),
	o => \DI[12]~input_o\);

\TMP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[12]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(12));

\A[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[12]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(12));

\B[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[12]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(12));

\Mux355~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux355~0_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( B(12) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( A(12) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( TMP(12) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( 
-- \DI[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[12]~input_o\,
	datab => ALT_INV_TMP(12),
	datac => ALT_INV_A(12),
	datad => ALT_INV_B(12),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux355~0_combout\);

\C[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[12]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(12));

\D[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[12]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(12));

\E[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[12]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(12));

\F[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[12]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(12));

\Mux355~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux355~1_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( F(12) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( E(12) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( D(12) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( C(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(12),
	datab => ALT_INV_D(12),
	datac => ALT_INV_E(12),
	datad => ALT_INV_F(12),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux355~1_combout\);

\Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( AD(28) ) + ( \Sid[0]~input_o\ ) + ( \Add3~94\ ))
-- \Add3~102\ = CARRY(( AD(28) ) + ( \Sid[0]~input_o\ ) + ( \Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(28),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~94\,
	sumout => \Add3~101_sumout\,
	cout => \Add3~102\);

\AD[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~101_sumout\,
	asdata => \BA[12]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(28));

\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( PC(28) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~102\ = CARRY(( PC(28) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(28),
	cin => \Add0~94\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

\PC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~101_sumout\,
	asdata => \BA[12]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(28));

\Mux355~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux355~2_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(28) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(12) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(28) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(12) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(12),
	datab => ALT_INV_AD(28),
	datac => ALT_INV_PC(12),
	datad => ALT_INV_PC(28),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux355~2_combout\);

\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( SP(28) ) + ( \Sid[0]~input_o\ ) + ( \Add1~94\ ))
-- \Add1~102\ = CARRY(( SP(28) ) + ( \Sid[0]~input_o\ ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(28),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~94\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

\SP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~101_sumout\,
	asdata => \BA[12]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(28));

\ATMP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[12]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(12));

\ATMP[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[12]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(28));

\Mux355~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux355~3_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(28) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(12) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(28) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( 
-- SP(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(12),
	datab => ALT_INV_SP(28),
	datac => ALT_INV_ATMP(12),
	datad => ALT_INV_ATMP(28),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux355~3_combout\);

\Mux355~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux355~4_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux355~3_combout\ ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux355~2_combout\ ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( \Mux355~1_combout\ ) ) ) # ( !\Sbb[2]~input_o\ 
-- & ( !\Sbb[3]~input_o\ & ( \Mux355~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux355~0_combout\,
	datab => \ALT_INV_Mux355~1_combout\,
	datac => \ALT_INV_Mux355~2_combout\,
	datad => \ALT_INV_Mux355~3_combout\,
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux355~4_combout\);

\DI[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(13),
	o => \DI[13]~input_o\);

\C[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[13]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(13));

\Mux354~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux354~0_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(13) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(13) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( C(13) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( 
-- \DI[13]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[13]~input_o\,
	datab => ALT_INV_C(13),
	datac => ALT_INV_AD(13),
	datad => ALT_INV_SP(13),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux354~0_combout\);

\TMP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[13]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(13));

\D[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[13]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(13));

\Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( AD(29) ) + ( \Sid[0]~input_o\ ) + ( \Add3~102\ ))
-- \Add3~110\ = CARRY(( AD(29) ) + ( \Sid[0]~input_o\ ) + ( \Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(29),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~102\,
	sumout => \Add3~109_sumout\,
	cout => \Add3~110\);

\AD[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~109_sumout\,
	asdata => \BA[13]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(29));

\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( SP(29) ) + ( \Sid[0]~input_o\ ) + ( \Add1~102\ ))
-- \Add1~110\ = CARRY(( SP(29) ) + ( \Sid[0]~input_o\ ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(29),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~102\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

\SP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~109_sumout\,
	asdata => \BA[13]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(29));

\Mux354~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux354~1_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(29) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(29) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( D(13) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( TMP(13) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(13),
	datab => ALT_INV_D(13),
	datac => ALT_INV_AD(29),
	datad => ALT_INV_SP(29),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux354~1_combout\);

\A[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[13]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(13));

\E[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[13]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(13));

\ATMP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[13]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(13));

\Mux354~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux354~2_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(13) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(13) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( E(13) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( A(13) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(13),
	datab => ALT_INV_E(13),
	datac => ALT_INV_PC(13),
	datad => ALT_INV_ATMP(13),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux354~2_combout\);

\B[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[13]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(13));

\F[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[13]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(13));

\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( PC(29) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~110\ = CARRY(( PC(29) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(29),
	cin => \Add0~102\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

\PC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~109_sumout\,
	asdata => \BA[13]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(29));

\ATMP[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[13]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(29));

\Mux354~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux354~3_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(29) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(29) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( F(13) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( B(13) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(13),
	datab => ALT_INV_F(13),
	datac => ALT_INV_PC(29),
	datad => ALT_INV_ATMP(29),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux354~3_combout\);

\Mux354~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux354~4_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux354~3_combout\ ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux354~2_combout\ ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( \Mux354~1_combout\ ) ) ) # ( !\Sbb[0]~input_o\ 
-- & ( !\Sbb[1]~input_o\ & ( \Mux354~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux354~0_combout\,
	datab => \ALT_INV_Mux354~1_combout\,
	datac => \ALT_INV_Mux354~2_combout\,
	datad => \ALT_INV_Mux354~3_combout\,
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux354~4_combout\);

\DI[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(14),
	o => \DI[14]~input_o\);

\TMP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[14]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(14));

\A[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[14]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(14));

\B[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[14]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(14));

\Mux353~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux353~0_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( B(14) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( A(14) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( TMP(14) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( 
-- \DI[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[14]~input_o\,
	datab => ALT_INV_TMP(14),
	datac => ALT_INV_A(14),
	datad => ALT_INV_B(14),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux353~0_combout\);

\C[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[14]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(14));

\D[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[14]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(14));

\E[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[14]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(14));

\F[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[14]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(14));

\Mux353~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux353~1_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( F(14) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( E(14) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( D(14) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( C(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(14),
	datab => ALT_INV_D(14),
	datac => ALT_INV_E(14),
	datad => ALT_INV_F(14),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux353~1_combout\);

\Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( AD(30) ) + ( \Sid[0]~input_o\ ) + ( \Add3~110\ ))
-- \Add3~118\ = CARRY(( AD(30) ) + ( \Sid[0]~input_o\ ) + ( \Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(30),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~110\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\);

\AD[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~117_sumout\,
	asdata => \BA[14]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(30));

\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( PC(30) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~118\ = CARRY(( PC(30) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(30),
	cin => \Add0~110\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

\PC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~117_sumout\,
	asdata => \BA[14]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(30));

\Mux353~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux353~2_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(30) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( PC(14) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(30) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( AD(14) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(14),
	datab => ALT_INV_AD(30),
	datac => ALT_INV_PC(14),
	datad => ALT_INV_PC(30),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux353~2_combout\);

\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( SP(30) ) + ( \Sid[0]~input_o\ ) + ( \Add1~110\ ))
-- \Add1~118\ = CARRY(( SP(30) ) + ( \Sid[0]~input_o\ ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(30),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~110\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

\SP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~117_sumout\,
	asdata => \BA[14]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(30));

\ATMP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[14]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(14));

\ATMP[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[14]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(30));

\Mux353~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux353~3_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(30) ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( ATMP(14) ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( SP(30) ) ) ) # ( !\Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( 
-- SP(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(14),
	datab => ALT_INV_SP(30),
	datac => ALT_INV_ATMP(14),
	datad => ALT_INV_ATMP(30),
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux353~3_combout\);

\Mux353~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux353~4_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux353~3_combout\ ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( \Mux353~2_combout\ ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( \Mux353~1_combout\ ) ) ) # ( !\Sbb[2]~input_o\ 
-- & ( !\Sbb[3]~input_o\ & ( \Mux353~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux353~0_combout\,
	datab => \ALT_INV_Mux353~1_combout\,
	datac => \ALT_INV_Mux353~2_combout\,
	datad => \ALT_INV_Mux353~3_combout\,
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux353~4_combout\);

\DI[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI(15),
	o => \DI[15]~input_o\);

\C[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[15]~input_o\,
	ena => \Mux96~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => C(15));

\Mux352~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux352~0_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(15) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(15) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( C(15) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( 
-- \DI[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[15]~input_o\,
	datab => ALT_INV_C(15),
	datac => ALT_INV_AD(15),
	datad => ALT_INV_SP(15),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux352~0_combout\);

\TMP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[15]~input_o\,
	ena => \Mux96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TMP(15));

\D[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[15]~input_o\,
	ena => \Mux96~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D(15));

\Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~125_sumout\ = SUM(( AD(31) ) + ( \Sid[0]~input_o\ ) + ( \Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_AD(31),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add3~118\,
	sumout => \Add3~125_sumout\);

\AD[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~125_sumout\,
	asdata => \BA[15]~input_o\,
	sload => \Mux96~8_combout\,
	ena => \AD[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AD(31));

\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( SP(31) ) + ( \Sid[0]~input_o\ ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SP(31),
	dataf => \ALT_INV_Sid[0]~input_o\,
	cin => \Add1~118\,
	sumout => \Add1~125_sumout\);

\SP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add1~125_sumout\,
	asdata => \BA[15]~input_o\,
	sload => \Mux96~12_combout\,
	ena => \SP[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(31));

\Mux352~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux352~1_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( SP(31) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( AD(31) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( D(15) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( TMP(15) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(15),
	datab => ALT_INV_D(15),
	datac => ALT_INV_AD(31),
	datad => ALT_INV_SP(31),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux352~1_combout\);

\A[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[15]~input_o\,
	ena => \Mux96~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(15));

\E[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[15]~input_o\,
	ena => \Mux96~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => E(15));

\ATMP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[15]~input_o\,
	ena => \Mux96~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(15));

\Mux352~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux352~2_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(15) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(15) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( E(15) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( A(15) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(15),
	datab => ALT_INV_E(15),
	datac => ALT_INV_PC(15),
	datad => ALT_INV_ATMP(15),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux352~2_combout\);

\B[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[15]~input_o\,
	ena => \Mux96~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(15));

\F[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[15]~input_o\,
	ena => \Mux96~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => F(15));

\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( PC(31) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PC(31),
	cin => \Add0~118\,
	sumout => \Add0~125_sumout\);

\PC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add0~125_sumout\,
	asdata => \BA[15]~input_o\,
	sload => \Mux96~10_combout\,
	ena => \PC[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(31));

\ATMP[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[15]~input_o\,
	ena => \Mux96~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ATMP(31));

\Mux352~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux352~3_combout\ = ( \Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( ATMP(31) ) ) ) # ( !\Sbb[2]~input_o\ & ( \Sbb[3]~input_o\ & ( PC(31) ) ) ) # ( \Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( F(15) ) ) ) # ( !\Sbb[2]~input_o\ & ( !\Sbb[3]~input_o\ & ( B(15) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(15),
	datab => ALT_INV_F(15),
	datac => ALT_INV_PC(31),
	datad => ALT_INV_ATMP(31),
	datae => \ALT_INV_Sbb[2]~input_o\,
	dataf => \ALT_INV_Sbb[3]~input_o\,
	combout => \Mux352~3_combout\);

\Mux352~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux352~4_combout\ = ( \Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux352~3_combout\ ) ) ) # ( !\Sbb[0]~input_o\ & ( \Sbb[1]~input_o\ & ( \Mux352~2_combout\ ) ) ) # ( \Sbb[0]~input_o\ & ( !\Sbb[1]~input_o\ & ( \Mux352~1_combout\ ) ) ) # ( !\Sbb[0]~input_o\ 
-- & ( !\Sbb[1]~input_o\ & ( \Mux352~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux352~0_combout\,
	datab => \ALT_INV_Mux352~1_combout\,
	datac => \ALT_INV_Mux352~2_combout\,
	datad => \ALT_INV_Mux352~3_combout\,
	datae => \ALT_INV_Sbb[0]~input_o\,
	dataf => \ALT_INV_Sbb[1]~input_o\,
	combout => \Mux352~4_combout\);

\Sbc[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sbc(0),
	o => \Sbc[0]~input_o\);

\Sbc[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sbc(1),
	o => \Sbc[1]~input_o\);

\Mux383~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux383~0_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( B(0) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( A(0) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( TMP(0) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( 
-- \DI[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[0]~input_o\,
	datab => ALT_INV_TMP(0),
	datac => ALT_INV_A(0),
	datad => ALT_INV_B(0),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux383~0_combout\);

\Mux383~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux383~1_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( F(0) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( E(0) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( D(0) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( C(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(0),
	datab => ALT_INV_D(0),
	datac => ALT_INV_E(0),
	datad => ALT_INV_F(0),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux383~1_combout\);

\Mux383~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux383~2_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(16) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(0) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(16) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(0) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(0),
	datab => ALT_INV_AD(16),
	datac => ALT_INV_PC(0),
	datad => ALT_INV_PC(16),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux383~2_combout\);

\Mux383~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux383~3_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(16) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(0) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(16) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(0) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(0),
	datab => ALT_INV_SP(16),
	datac => ALT_INV_ATMP(0),
	datad => ALT_INV_ATMP(16),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux383~3_combout\);

\Sbc[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sbc(2),
	o => \Sbc[2]~input_o\);

\Sbc[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sbc(3),
	o => \Sbc[3]~input_o\);

\Mux383~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux383~4_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux383~3_combout\ ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux383~2_combout\ ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( \Mux383~1_combout\ ) ) ) # ( !\Sbc[2]~input_o\ 
-- & ( !\Sbc[3]~input_o\ & ( \Mux383~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux383~0_combout\,
	datab => \ALT_INV_Mux383~1_combout\,
	datac => \ALT_INV_Mux383~2_combout\,
	datad => \ALT_INV_Mux383~3_combout\,
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux383~4_combout\);

\Mux382~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux382~0_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(1) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(1) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( C(1) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( 
-- \DI[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[1]~input_o\,
	datab => ALT_INV_C(1),
	datac => ALT_INV_AD(1),
	datad => ALT_INV_SP(1),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux382~0_combout\);

\Mux382~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux382~1_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(17) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(17) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( D(1) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( TMP(1) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(1),
	datab => ALT_INV_D(1),
	datac => ALT_INV_AD(17),
	datad => ALT_INV_SP(17),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux382~1_combout\);

\Mux382~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux382~2_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(1) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(1) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( E(1) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( A(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(1),
	datab => ALT_INV_E(1),
	datac => ALT_INV_PC(1),
	datad => ALT_INV_ATMP(1),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux382~2_combout\);

\Mux382~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux382~3_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(17) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(17) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( F(1) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( B(1) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(1),
	datab => ALT_INV_F(1),
	datac => ALT_INV_PC(17),
	datad => ALT_INV_ATMP(17),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux382~3_combout\);

\Mux382~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux382~4_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux382~3_combout\ ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux382~2_combout\ ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( \Mux382~1_combout\ ) ) ) # ( !\Sbc[0]~input_o\ 
-- & ( !\Sbc[1]~input_o\ & ( \Mux382~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux382~0_combout\,
	datab => \ALT_INV_Mux382~1_combout\,
	datac => \ALT_INV_Mux382~2_combout\,
	datad => \ALT_INV_Mux382~3_combout\,
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux382~4_combout\);

\Mux381~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux381~0_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( B(2) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( A(2) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( TMP(2) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( 
-- \DI[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[2]~input_o\,
	datab => ALT_INV_TMP(2),
	datac => ALT_INV_A(2),
	datad => ALT_INV_B(2),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux381~0_combout\);

\Mux381~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux381~1_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( F(2) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( E(2) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( D(2) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( C(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(2),
	datab => ALT_INV_D(2),
	datac => ALT_INV_E(2),
	datad => ALT_INV_F(2),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux381~1_combout\);

\Mux381~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux381~2_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(18) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(2) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(18) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(2) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(2),
	datab => ALT_INV_AD(18),
	datac => ALT_INV_PC(2),
	datad => ALT_INV_PC(18),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux381~2_combout\);

\Mux381~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux381~3_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(18) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(2) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(18) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(2) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(2),
	datab => ALT_INV_SP(18),
	datac => ALT_INV_ATMP(2),
	datad => ALT_INV_ATMP(18),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux381~3_combout\);

\Mux381~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux381~4_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux381~3_combout\ ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux381~2_combout\ ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( \Mux381~1_combout\ ) ) ) # ( !\Sbc[2]~input_o\ 
-- & ( !\Sbc[3]~input_o\ & ( \Mux381~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux381~0_combout\,
	datab => \ALT_INV_Mux381~1_combout\,
	datac => \ALT_INV_Mux381~2_combout\,
	datad => \ALT_INV_Mux381~3_combout\,
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux381~4_combout\);

\Mux380~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux380~0_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(3) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(3) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( C(3) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( 
-- \DI[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[3]~input_o\,
	datab => ALT_INV_C(3),
	datac => ALT_INV_AD(3),
	datad => ALT_INV_SP(3),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux380~0_combout\);

\Mux380~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux380~1_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(19) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(19) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( D(3) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( TMP(3) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(3),
	datab => ALT_INV_D(3),
	datac => ALT_INV_AD(19),
	datad => ALT_INV_SP(19),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux380~1_combout\);

\Mux380~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux380~2_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(3) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(3) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( E(3) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( A(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(3),
	datab => ALT_INV_E(3),
	datac => ALT_INV_PC(3),
	datad => ALT_INV_ATMP(3),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux380~2_combout\);

\Mux380~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux380~3_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(19) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(19) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( F(3) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( B(3) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(3),
	datab => ALT_INV_F(3),
	datac => ALT_INV_PC(19),
	datad => ALT_INV_ATMP(19),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux380~3_combout\);

\Mux380~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux380~4_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux380~3_combout\ ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux380~2_combout\ ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( \Mux380~1_combout\ ) ) ) # ( !\Sbc[0]~input_o\ 
-- & ( !\Sbc[1]~input_o\ & ( \Mux380~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux380~0_combout\,
	datab => \ALT_INV_Mux380~1_combout\,
	datac => \ALT_INV_Mux380~2_combout\,
	datad => \ALT_INV_Mux380~3_combout\,
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux380~4_combout\);

\Mux379~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux379~0_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( B(4) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( A(4) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( TMP(4) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( 
-- \DI[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[4]~input_o\,
	datab => ALT_INV_TMP(4),
	datac => ALT_INV_A(4),
	datad => ALT_INV_B(4),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux379~0_combout\);

\Mux379~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux379~1_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( F(4) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( E(4) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( D(4) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( C(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(4),
	datab => ALT_INV_D(4),
	datac => ALT_INV_E(4),
	datad => ALT_INV_F(4),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux379~1_combout\);

\Mux379~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux379~2_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(20) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(4) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(20) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(4) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(4),
	datab => ALT_INV_AD(20),
	datac => ALT_INV_PC(4),
	datad => ALT_INV_PC(20),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux379~2_combout\);

\Mux379~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux379~3_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(20) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(4) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(20) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(4) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(4),
	datab => ALT_INV_SP(20),
	datac => ALT_INV_ATMP(4),
	datad => ALT_INV_ATMP(20),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux379~3_combout\);

\Mux379~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux379~4_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux379~3_combout\ ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux379~2_combout\ ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( \Mux379~1_combout\ ) ) ) # ( !\Sbc[2]~input_o\ 
-- & ( !\Sbc[3]~input_o\ & ( \Mux379~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux379~0_combout\,
	datab => \ALT_INV_Mux379~1_combout\,
	datac => \ALT_INV_Mux379~2_combout\,
	datad => \ALT_INV_Mux379~3_combout\,
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux379~4_combout\);

\Mux378~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux378~0_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(5) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(5) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( C(5) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( 
-- \DI[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[5]~input_o\,
	datab => ALT_INV_C(5),
	datac => ALT_INV_AD(5),
	datad => ALT_INV_SP(5),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux378~0_combout\);

\Mux378~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux378~1_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(21) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(21) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( D(5) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( TMP(5) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(5),
	datab => ALT_INV_D(5),
	datac => ALT_INV_AD(21),
	datad => ALT_INV_SP(21),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux378~1_combout\);

\Mux378~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux378~2_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(5) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(5) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( E(5) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( A(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(5),
	datab => ALT_INV_E(5),
	datac => ALT_INV_PC(5),
	datad => ALT_INV_ATMP(5),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux378~2_combout\);

\Mux378~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux378~3_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(21) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(21) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( F(5) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( B(5) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(5),
	datab => ALT_INV_F(5),
	datac => ALT_INV_PC(21),
	datad => ALT_INV_ATMP(21),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux378~3_combout\);

\Mux378~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux378~4_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux378~3_combout\ ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux378~2_combout\ ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( \Mux378~1_combout\ ) ) ) # ( !\Sbc[0]~input_o\ 
-- & ( !\Sbc[1]~input_o\ & ( \Mux378~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux378~0_combout\,
	datab => \ALT_INV_Mux378~1_combout\,
	datac => \ALT_INV_Mux378~2_combout\,
	datad => \ALT_INV_Mux378~3_combout\,
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux378~4_combout\);

\Mux377~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux377~0_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( B(6) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( A(6) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( TMP(6) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( 
-- \DI[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[6]~input_o\,
	datab => ALT_INV_TMP(6),
	datac => ALT_INV_A(6),
	datad => ALT_INV_B(6),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux377~0_combout\);

\Mux377~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux377~1_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( F(6) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( E(6) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( D(6) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( C(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(6),
	datab => ALT_INV_D(6),
	datac => ALT_INV_E(6),
	datad => ALT_INV_F(6),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux377~1_combout\);

\Mux377~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux377~2_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(22) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(6) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(22) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(6) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(6),
	datab => ALT_INV_AD(22),
	datac => ALT_INV_PC(6),
	datad => ALT_INV_PC(22),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux377~2_combout\);

\Mux377~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux377~3_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(22) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(6) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(22) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(6) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(6),
	datab => ALT_INV_SP(22),
	datac => ALT_INV_ATMP(6),
	datad => ALT_INV_ATMP(22),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux377~3_combout\);

\Mux377~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux377~4_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux377~3_combout\ ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux377~2_combout\ ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( \Mux377~1_combout\ ) ) ) # ( !\Sbc[2]~input_o\ 
-- & ( !\Sbc[3]~input_o\ & ( \Mux377~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux377~0_combout\,
	datab => \ALT_INV_Mux377~1_combout\,
	datac => \ALT_INV_Mux377~2_combout\,
	datad => \ALT_INV_Mux377~3_combout\,
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux377~4_combout\);

\Mux376~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux376~0_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(7) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(7) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( C(7) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( 
-- \DI[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[7]~input_o\,
	datab => ALT_INV_C(7),
	datac => ALT_INV_AD(7),
	datad => ALT_INV_SP(7),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux376~0_combout\);

\Mux376~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux376~1_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(23) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(23) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( D(7) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( TMP(7) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(7),
	datab => ALT_INV_D(7),
	datac => ALT_INV_AD(23),
	datad => ALT_INV_SP(23),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux376~1_combout\);

\Mux376~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux376~2_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(7) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(7) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( E(7) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( A(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(7),
	datab => ALT_INV_E(7),
	datac => ALT_INV_PC(7),
	datad => ALT_INV_ATMP(7),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux376~2_combout\);

\Mux376~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux376~3_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(23) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(23) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( F(7) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( B(7) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(7),
	datab => ALT_INV_F(7),
	datac => ALT_INV_PC(23),
	datad => ALT_INV_ATMP(23),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux376~3_combout\);

\Mux376~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux376~4_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux376~3_combout\ ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux376~2_combout\ ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( \Mux376~1_combout\ ) ) ) # ( !\Sbc[0]~input_o\ 
-- & ( !\Sbc[1]~input_o\ & ( \Mux376~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux376~0_combout\,
	datab => \ALT_INV_Mux376~1_combout\,
	datac => \ALT_INV_Mux376~2_combout\,
	datad => \ALT_INV_Mux376~3_combout\,
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux376~4_combout\);

\Mux375~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux375~0_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( B(8) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( A(8) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( TMP(8) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( 
-- \DI[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[8]~input_o\,
	datab => ALT_INV_TMP(8),
	datac => ALT_INV_A(8),
	datad => ALT_INV_B(8),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux375~0_combout\);

\Mux375~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux375~1_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( F(8) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( E(8) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( D(8) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( C(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(8),
	datab => ALT_INV_D(8),
	datac => ALT_INV_E(8),
	datad => ALT_INV_F(8),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux375~1_combout\);

\Mux375~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux375~2_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(24) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(8) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(24) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(8) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(8),
	datab => ALT_INV_AD(24),
	datac => ALT_INV_PC(8),
	datad => ALT_INV_PC(24),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux375~2_combout\);

\Mux375~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux375~3_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(24) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(8) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(24) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(8) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(8),
	datab => ALT_INV_SP(24),
	datac => ALT_INV_ATMP(8),
	datad => ALT_INV_ATMP(24),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux375~3_combout\);

\Mux375~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux375~4_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux375~3_combout\ ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux375~2_combout\ ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( \Mux375~1_combout\ ) ) ) # ( !\Sbc[2]~input_o\ 
-- & ( !\Sbc[3]~input_o\ & ( \Mux375~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux375~0_combout\,
	datab => \ALT_INV_Mux375~1_combout\,
	datac => \ALT_INV_Mux375~2_combout\,
	datad => \ALT_INV_Mux375~3_combout\,
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux375~4_combout\);

\Mux374~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux374~0_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(9) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(9) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( C(9) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( 
-- \DI[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[9]~input_o\,
	datab => ALT_INV_C(9),
	datac => ALT_INV_AD(9),
	datad => ALT_INV_SP(9),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux374~0_combout\);

\Mux374~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux374~1_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(25) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(25) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( D(9) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( TMP(9) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(9),
	datab => ALT_INV_D(9),
	datac => ALT_INV_AD(25),
	datad => ALT_INV_SP(25),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux374~1_combout\);

\Mux374~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux374~2_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(9) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(9) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( E(9) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( A(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(9),
	datab => ALT_INV_E(9),
	datac => ALT_INV_PC(9),
	datad => ALT_INV_ATMP(9),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux374~2_combout\);

\Mux374~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux374~3_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(25) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(25) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( F(9) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( B(9) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(9),
	datab => ALT_INV_F(9),
	datac => ALT_INV_PC(25),
	datad => ALT_INV_ATMP(25),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux374~3_combout\);

\Mux374~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux374~4_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux374~3_combout\ ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux374~2_combout\ ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( \Mux374~1_combout\ ) ) ) # ( !\Sbc[0]~input_o\ 
-- & ( !\Sbc[1]~input_o\ & ( \Mux374~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux374~0_combout\,
	datab => \ALT_INV_Mux374~1_combout\,
	datac => \ALT_INV_Mux374~2_combout\,
	datad => \ALT_INV_Mux374~3_combout\,
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux374~4_combout\);

\Mux373~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux373~0_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( B(10) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( A(10) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( TMP(10) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( 
-- \DI[10]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[10]~input_o\,
	datab => ALT_INV_TMP(10),
	datac => ALT_INV_A(10),
	datad => ALT_INV_B(10),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux373~0_combout\);

\Mux373~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux373~1_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( F(10) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( E(10) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( D(10) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( C(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(10),
	datab => ALT_INV_D(10),
	datac => ALT_INV_E(10),
	datad => ALT_INV_F(10),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux373~1_combout\);

\Mux373~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux373~2_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(26) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(10) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(26) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(10) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(10),
	datab => ALT_INV_AD(26),
	datac => ALT_INV_PC(10),
	datad => ALT_INV_PC(26),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux373~2_combout\);

\Mux373~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux373~3_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(26) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(10) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(26) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( 
-- SP(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(10),
	datab => ALT_INV_SP(26),
	datac => ALT_INV_ATMP(10),
	datad => ALT_INV_ATMP(26),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux373~3_combout\);

\Mux373~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux373~4_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux373~3_combout\ ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux373~2_combout\ ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( \Mux373~1_combout\ ) ) ) # ( !\Sbc[2]~input_o\ 
-- & ( !\Sbc[3]~input_o\ & ( \Mux373~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux373~0_combout\,
	datab => \ALT_INV_Mux373~1_combout\,
	datac => \ALT_INV_Mux373~2_combout\,
	datad => \ALT_INV_Mux373~3_combout\,
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux373~4_combout\);

\Mux372~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux372~0_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(11) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(11) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( C(11) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( 
-- \DI[11]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[11]~input_o\,
	datab => ALT_INV_C(11),
	datac => ALT_INV_AD(11),
	datad => ALT_INV_SP(11),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux372~0_combout\);

\Mux372~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux372~1_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(27) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(27) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( D(11) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( TMP(11) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(11),
	datab => ALT_INV_D(11),
	datac => ALT_INV_AD(27),
	datad => ALT_INV_SP(27),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux372~1_combout\);

\Mux372~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux372~2_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(11) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(11) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( E(11) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( A(11) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(11),
	datab => ALT_INV_E(11),
	datac => ALT_INV_PC(11),
	datad => ALT_INV_ATMP(11),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux372~2_combout\);

\Mux372~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux372~3_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(27) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(27) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( F(11) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( B(11) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(11),
	datab => ALT_INV_F(11),
	datac => ALT_INV_PC(27),
	datad => ALT_INV_ATMP(27),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux372~3_combout\);

\Mux372~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux372~4_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux372~3_combout\ ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux372~2_combout\ ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( \Mux372~1_combout\ ) ) ) # ( !\Sbc[0]~input_o\ 
-- & ( !\Sbc[1]~input_o\ & ( \Mux372~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux372~0_combout\,
	datab => \ALT_INV_Mux372~1_combout\,
	datac => \ALT_INV_Mux372~2_combout\,
	datad => \ALT_INV_Mux372~3_combout\,
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux372~4_combout\);

\Mux371~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux371~0_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( B(12) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( A(12) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( TMP(12) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( 
-- \DI[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[12]~input_o\,
	datab => ALT_INV_TMP(12),
	datac => ALT_INV_A(12),
	datad => ALT_INV_B(12),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux371~0_combout\);

\Mux371~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux371~1_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( F(12) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( E(12) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( D(12) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( C(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(12),
	datab => ALT_INV_D(12),
	datac => ALT_INV_E(12),
	datad => ALT_INV_F(12),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux371~1_combout\);

\Mux371~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux371~2_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(28) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(12) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(28) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(12) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(12),
	datab => ALT_INV_AD(28),
	datac => ALT_INV_PC(12),
	datad => ALT_INV_PC(28),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux371~2_combout\);

\Mux371~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux371~3_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(28) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(12) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(28) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( 
-- SP(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(12),
	datab => ALT_INV_SP(28),
	datac => ALT_INV_ATMP(12),
	datad => ALT_INV_ATMP(28),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux371~3_combout\);

\Mux371~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux371~4_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux371~3_combout\ ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux371~2_combout\ ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( \Mux371~1_combout\ ) ) ) # ( !\Sbc[2]~input_o\ 
-- & ( !\Sbc[3]~input_o\ & ( \Mux371~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux371~0_combout\,
	datab => \ALT_INV_Mux371~1_combout\,
	datac => \ALT_INV_Mux371~2_combout\,
	datad => \ALT_INV_Mux371~3_combout\,
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux371~4_combout\);

\Mux370~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux370~0_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(13) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(13) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( C(13) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( 
-- \DI[13]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[13]~input_o\,
	datab => ALT_INV_C(13),
	datac => ALT_INV_AD(13),
	datad => ALT_INV_SP(13),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux370~0_combout\);

\Mux370~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux370~1_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(29) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(29) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( D(13) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( TMP(13) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(13),
	datab => ALT_INV_D(13),
	datac => ALT_INV_AD(29),
	datad => ALT_INV_SP(29),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux370~1_combout\);

\Mux370~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux370~2_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(13) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(13) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( E(13) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( A(13) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(13),
	datab => ALT_INV_E(13),
	datac => ALT_INV_PC(13),
	datad => ALT_INV_ATMP(13),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux370~2_combout\);

\Mux370~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux370~3_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(29) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(29) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( F(13) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( B(13) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(13),
	datab => ALT_INV_F(13),
	datac => ALT_INV_PC(29),
	datad => ALT_INV_ATMP(29),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux370~3_combout\);

\Mux370~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux370~4_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux370~3_combout\ ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux370~2_combout\ ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( \Mux370~1_combout\ ) ) ) # ( !\Sbc[0]~input_o\ 
-- & ( !\Sbc[1]~input_o\ & ( \Mux370~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux370~0_combout\,
	datab => \ALT_INV_Mux370~1_combout\,
	datac => \ALT_INV_Mux370~2_combout\,
	datad => \ALT_INV_Mux370~3_combout\,
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux370~4_combout\);

\Mux369~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux369~0_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( B(14) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( A(14) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( TMP(14) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( 
-- \DI[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[14]~input_o\,
	datab => ALT_INV_TMP(14),
	datac => ALT_INV_A(14),
	datad => ALT_INV_B(14),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux369~0_combout\);

\Mux369~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux369~1_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( F(14) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( E(14) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( D(14) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( C(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_C(14),
	datab => ALT_INV_D(14),
	datac => ALT_INV_E(14),
	datad => ALT_INV_F(14),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux369~1_combout\);

\Mux369~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux369~2_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(30) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( PC(14) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(30) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( AD(14) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(14),
	datab => ALT_INV_AD(30),
	datac => ALT_INV_PC(14),
	datad => ALT_INV_PC(30),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux369~2_combout\);

\Mux369~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux369~3_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(30) ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( ATMP(14) ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( SP(30) ) ) ) # ( !\Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( 
-- SP(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SP(14),
	datab => ALT_INV_SP(30),
	datac => ALT_INV_ATMP(14),
	datad => ALT_INV_ATMP(30),
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux369~3_combout\);

\Mux369~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux369~4_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux369~3_combout\ ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( \Mux369~2_combout\ ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( \Mux369~1_combout\ ) ) ) # ( !\Sbc[2]~input_o\ 
-- & ( !\Sbc[3]~input_o\ & ( \Mux369~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux369~0_combout\,
	datab => \ALT_INV_Mux369~1_combout\,
	datac => \ALT_INV_Mux369~2_combout\,
	datad => \ALT_INV_Mux369~3_combout\,
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux369~4_combout\);

\Mux368~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux368~0_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(15) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(15) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( C(15) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( 
-- \DI[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DI[15]~input_o\,
	datab => ALT_INV_C(15),
	datac => ALT_INV_AD(15),
	datad => ALT_INV_SP(15),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux368~0_combout\);

\Mux368~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux368~1_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( SP(31) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( AD(31) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( D(15) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( TMP(15) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_TMP(15),
	datab => ALT_INV_D(15),
	datac => ALT_INV_AD(31),
	datad => ALT_INV_SP(31),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux368~1_combout\);

\Mux368~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux368~2_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(15) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(15) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( E(15) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( A(15) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(15),
	datab => ALT_INV_E(15),
	datac => ALT_INV_PC(15),
	datad => ALT_INV_ATMP(15),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux368~2_combout\);

\Mux368~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux368~3_combout\ = ( \Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( ATMP(31) ) ) ) # ( !\Sbc[2]~input_o\ & ( \Sbc[3]~input_o\ & ( PC(31) ) ) ) # ( \Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( F(15) ) ) ) # ( !\Sbc[2]~input_o\ & ( !\Sbc[3]~input_o\ & ( B(15) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B(15),
	datab => ALT_INV_F(15),
	datac => ALT_INV_PC(31),
	datad => ALT_INV_ATMP(31),
	datae => \ALT_INV_Sbc[2]~input_o\,
	dataf => \ALT_INV_Sbc[3]~input_o\,
	combout => \Mux368~3_combout\);

\Mux368~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux368~4_combout\ = ( \Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux368~3_combout\ ) ) ) # ( !\Sbc[0]~input_o\ & ( \Sbc[1]~input_o\ & ( \Mux368~2_combout\ ) ) ) # ( \Sbc[0]~input_o\ & ( !\Sbc[1]~input_o\ & ( \Mux368~1_combout\ ) ) ) # ( !\Sbc[0]~input_o\ 
-- & ( !\Sbc[1]~input_o\ & ( \Mux368~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux368~0_combout\,
	datab => \ALT_INV_Mux368~1_combout\,
	datac => \ALT_INV_Mux368~2_combout\,
	datad => \ALT_INV_Mux368~3_combout\,
	datae => \ALT_INV_Sbc[0]~input_o\,
	dataf => \ALT_INV_Sbc[1]~input_o\,
	combout => \Mux368~4_combout\);

\Sa[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sa(0),
	o => \Sa[0]~input_o\);

\Sa[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sa(1),
	o => \Sa[1]~input_o\);

\Mux415~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux415~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(0) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(0) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(0) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(0),
	datab => ALT_INV_PC(0),
	datac => ALT_INV_SP(0),
	datad => ALT_INV_ATMP(0),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux415~0_combout\);

\Mux414~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux414~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(1) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(1) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(1) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(1),
	datab => ALT_INV_PC(1),
	datac => ALT_INV_SP(1),
	datad => ALT_INV_ATMP(1),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux414~0_combout\);

\Mux413~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux413~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(2) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(2) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(2) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(2),
	datab => ALT_INV_PC(2),
	datac => ALT_INV_SP(2),
	datad => ALT_INV_ATMP(2),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux413~0_combout\);

\Mux412~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux412~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(3) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(3) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(3) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(3),
	datab => ALT_INV_PC(3),
	datac => ALT_INV_SP(3),
	datad => ALT_INV_ATMP(3),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux412~0_combout\);

\Mux411~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux411~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(4) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(4) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(4) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(4),
	datab => ALT_INV_PC(4),
	datac => ALT_INV_SP(4),
	datad => ALT_INV_ATMP(4),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux411~0_combout\);

\Mux410~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux410~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(5) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(5) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(5) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(5),
	datab => ALT_INV_PC(5),
	datac => ALT_INV_SP(5),
	datad => ALT_INV_ATMP(5),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux410~0_combout\);

\Mux409~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux409~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(6) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(6) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(6) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(6),
	datab => ALT_INV_PC(6),
	datac => ALT_INV_SP(6),
	datad => ALT_INV_ATMP(6),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux409~0_combout\);

\Mux408~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux408~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(7) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(7) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(7) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(7),
	datab => ALT_INV_PC(7),
	datac => ALT_INV_SP(7),
	datad => ALT_INV_ATMP(7),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux408~0_combout\);

\Mux407~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux407~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(8) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(8) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(8) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(8),
	datab => ALT_INV_PC(8),
	datac => ALT_INV_SP(8),
	datad => ALT_INV_ATMP(8),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux407~0_combout\);

\Mux406~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux406~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(9) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(9) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(9) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(9),
	datab => ALT_INV_PC(9),
	datac => ALT_INV_SP(9),
	datad => ALT_INV_ATMP(9),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux406~0_combout\);

\Mux405~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux405~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(10) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(10) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(10) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(10),
	datab => ALT_INV_PC(10),
	datac => ALT_INV_SP(10),
	datad => ALT_INV_ATMP(10),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux405~0_combout\);

\Mux404~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux404~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(11) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(11) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(11) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(11),
	datab => ALT_INV_PC(11),
	datac => ALT_INV_SP(11),
	datad => ALT_INV_ATMP(11),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux404~0_combout\);

\Mux403~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux403~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(12) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(12) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(12) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(12),
	datab => ALT_INV_PC(12),
	datac => ALT_INV_SP(12),
	datad => ALT_INV_ATMP(12),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux403~0_combout\);

\Mux402~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux402~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(13) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(13) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(13) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(13),
	datab => ALT_INV_PC(13),
	datac => ALT_INV_SP(13),
	datad => ALT_INV_ATMP(13),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux402~0_combout\);

\Mux401~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux401~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(14) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(14) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(14) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(14),
	datab => ALT_INV_PC(14),
	datac => ALT_INV_SP(14),
	datad => ALT_INV_ATMP(14),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux401~0_combout\);

\Mux400~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux400~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(15) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(15) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(15) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(15),
	datab => ALT_INV_PC(15),
	datac => ALT_INV_SP(15),
	datad => ALT_INV_ATMP(15),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux400~0_combout\);

\Mux399~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux399~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(16) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(16) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(16) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(16) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(16),
	datab => ALT_INV_PC(16),
	datac => ALT_INV_SP(16),
	datad => ALT_INV_ATMP(16),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux399~0_combout\);

\Mux398~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux398~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(17) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(17) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(17) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(17) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(17),
	datab => ALT_INV_PC(17),
	datac => ALT_INV_SP(17),
	datad => ALT_INV_ATMP(17),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux398~0_combout\);

\Mux397~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux397~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(18) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(18) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(18) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(18) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(18),
	datab => ALT_INV_PC(18),
	datac => ALT_INV_SP(18),
	datad => ALT_INV_ATMP(18),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux397~0_combout\);

\Mux396~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux396~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(19) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(19) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(19) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(19) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(19),
	datab => ALT_INV_PC(19),
	datac => ALT_INV_SP(19),
	datad => ALT_INV_ATMP(19),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux396~0_combout\);

\Mux395~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux395~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(20) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(20) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(20) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(20) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(20),
	datab => ALT_INV_PC(20),
	datac => ALT_INV_SP(20),
	datad => ALT_INV_ATMP(20),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux395~0_combout\);

\Mux394~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux394~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(21) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(21) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(21) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(21) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(21),
	datab => ALT_INV_PC(21),
	datac => ALT_INV_SP(21),
	datad => ALT_INV_ATMP(21),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux394~0_combout\);

\Mux393~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux393~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(22) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(22) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(22) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(22) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(22),
	datab => ALT_INV_PC(22),
	datac => ALT_INV_SP(22),
	datad => ALT_INV_ATMP(22),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux393~0_combout\);

\Mux392~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux392~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(23) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(23) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(23) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(23) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(23),
	datab => ALT_INV_PC(23),
	datac => ALT_INV_SP(23),
	datad => ALT_INV_ATMP(23),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux392~0_combout\);

\Mux391~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux391~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(24) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(24) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(24) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(24) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(24),
	datab => ALT_INV_PC(24),
	datac => ALT_INV_SP(24),
	datad => ALT_INV_ATMP(24),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux391~0_combout\);

\Mux390~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux390~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(25) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(25) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(25) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(25) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(25),
	datab => ALT_INV_PC(25),
	datac => ALT_INV_SP(25),
	datad => ALT_INV_ATMP(25),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux390~0_combout\);

\Mux389~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux389~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(26) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(26) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(26) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(26) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(26),
	datab => ALT_INV_PC(26),
	datac => ALT_INV_SP(26),
	datad => ALT_INV_ATMP(26),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux389~0_combout\);

\Mux388~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux388~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(27) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(27) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(27) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(27) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(27),
	datab => ALT_INV_PC(27),
	datac => ALT_INV_SP(27),
	datad => ALT_INV_ATMP(27),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux388~0_combout\);

\Mux387~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux387~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(28) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(28) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(28) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(28) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(28),
	datab => ALT_INV_PC(28),
	datac => ALT_INV_SP(28),
	datad => ALT_INV_ATMP(28),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux387~0_combout\);

\Mux386~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux386~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(29) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(29) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(29) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(29) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(29),
	datab => ALT_INV_PC(29),
	datac => ALT_INV_SP(29),
	datad => ALT_INV_ATMP(29),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux386~0_combout\);

\Mux385~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux385~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(30) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(30) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(30) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(30) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(30),
	datab => ALT_INV_PC(30),
	datac => ALT_INV_SP(30),
	datad => ALT_INV_ATMP(30),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux385~0_combout\);

\Mux384~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux384~0_combout\ = ( \Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( ATMP(31) ) ) ) # ( !\Sa[0]~input_o\ & ( \Sa[1]~input_o\ & ( SP(31) ) ) ) # ( \Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( PC(31) ) ) ) # ( !\Sa[0]~input_o\ & ( !\Sa[1]~input_o\ & ( AD(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_AD(31),
	datab => ALT_INV_PC(31),
	datac => ALT_INV_SP(31),
	datad => ALT_INV_ATMP(31),
	datae => \ALT_INV_Sa[0]~input_o\,
	dataf => \ALT_INV_Sa[1]~input_o\,
	combout => \Mux384~0_combout\);

\Mux96~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux96~15_combout\ = (!\Sba[0]~input_o\ & (!\Sba[1]~input_o\ & (!\Sba[2]~input_o\ & !\Sba[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sba[0]~input_o\,
	datab => \ALT_INV_Sba[1]~input_o\,
	datac => \ALT_INV_Sba[2]~input_o\,
	datad => \ALT_INV_Sba[3]~input_o\,
	combout => \Mux96~15_combout\);

\IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[0]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(0));

\IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[1]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(1));

\IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[2]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(2));

\IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[3]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(3));

\IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[4]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(4));

\IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[5]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(5));

\IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[6]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(6));

\IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[7]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(7));

\IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[8]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(8));

\IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[9]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(9));

\IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[10]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(10));

\IR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[11]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(11));

\IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[12]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(12));

\IR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[13]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(13));

\IR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[14]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(14));

\IR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \BA[15]~input_o\,
	ena => \Mux96~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(15));

ww_BB(0) <= \BB[0]~output_o\;

ww_BB(1) <= \BB[1]~output_o\;

ww_BB(2) <= \BB[2]~output_o\;

ww_BB(3) <= \BB[3]~output_o\;

ww_BB(4) <= \BB[4]~output_o\;

ww_BB(5) <= \BB[5]~output_o\;

ww_BB(6) <= \BB[6]~output_o\;

ww_BB(7) <= \BB[7]~output_o\;

ww_BB(8) <= \BB[8]~output_o\;

ww_BB(9) <= \BB[9]~output_o\;

ww_BB(10) <= \BB[10]~output_o\;

ww_BB(11) <= \BB[11]~output_o\;

ww_BB(12) <= \BB[12]~output_o\;

ww_BB(13) <= \BB[13]~output_o\;

ww_BB(14) <= \BB[14]~output_o\;

ww_BB(15) <= \BB[15]~output_o\;

ww_BC(0) <= \BC[0]~output_o\;

ww_BC(1) <= \BC[1]~output_o\;

ww_BC(2) <= \BC[2]~output_o\;

ww_BC(3) <= \BC[3]~output_o\;

ww_BC(4) <= \BC[4]~output_o\;

ww_BC(5) <= \BC[5]~output_o\;

ww_BC(6) <= \BC[6]~output_o\;

ww_BC(7) <= \BC[7]~output_o\;

ww_BC(8) <= \BC[8]~output_o\;

ww_BC(9) <= \BC[9]~output_o\;

ww_BC(10) <= \BC[10]~output_o\;

ww_BC(11) <= \BC[11]~output_o\;

ww_BC(12) <= \BC[12]~output_o\;

ww_BC(13) <= \BC[13]~output_o\;

ww_BC(14) <= \BC[14]~output_o\;

ww_BC(15) <= \BC[15]~output_o\;

ww_ADR(0) <= \ADR[0]~output_o\;

ww_ADR(1) <= \ADR[1]~output_o\;

ww_ADR(2) <= \ADR[2]~output_o\;

ww_ADR(3) <= \ADR[3]~output_o\;

ww_ADR(4) <= \ADR[4]~output_o\;

ww_ADR(5) <= \ADR[5]~output_o\;

ww_ADR(6) <= \ADR[6]~output_o\;

ww_ADR(7) <= \ADR[7]~output_o\;

ww_ADR(8) <= \ADR[8]~output_o\;

ww_ADR(9) <= \ADR[9]~output_o\;

ww_ADR(10) <= \ADR[10]~output_o\;

ww_ADR(11) <= \ADR[11]~output_o\;

ww_ADR(12) <= \ADR[12]~output_o\;

ww_ADR(13) <= \ADR[13]~output_o\;

ww_ADR(14) <= \ADR[14]~output_o\;

ww_ADR(15) <= \ADR[15]~output_o\;

ww_ADR(16) <= \ADR[16]~output_o\;

ww_ADR(17) <= \ADR[17]~output_o\;

ww_ADR(18) <= \ADR[18]~output_o\;

ww_ADR(19) <= \ADR[19]~output_o\;

ww_ADR(20) <= \ADR[20]~output_o\;

ww_ADR(21) <= \ADR[21]~output_o\;

ww_ADR(22) <= \ADR[22]~output_o\;

ww_ADR(23) <= \ADR[23]~output_o\;

ww_ADR(24) <= \ADR[24]~output_o\;

ww_ADR(25) <= \ADR[25]~output_o\;

ww_ADR(26) <= \ADR[26]~output_o\;

ww_ADR(27) <= \ADR[27]~output_o\;

ww_ADR(28) <= \ADR[28]~output_o\;

ww_ADR(29) <= \ADR[29]~output_o\;

ww_ADR(30) <= \ADR[30]~output_o\;

ww_ADR(31) <= \ADR[31]~output_o\;

ww_IRout(0) <= \IRout[0]~output_o\;

ww_IRout(1) <= \IRout[1]~output_o\;

ww_IRout(2) <= \IRout[2]~output_o\;

ww_IRout(3) <= \IRout[3]~output_o\;

ww_IRout(4) <= \IRout[4]~output_o\;

ww_IRout(5) <= \IRout[5]~output_o\;

ww_IRout(6) <= \IRout[6]~output_o\;

ww_IRout(7) <= \IRout[7]~output_o\;

ww_IRout(8) <= \IRout[8]~output_o\;

ww_IRout(9) <= \IRout[9]~output_o\;

ww_IRout(10) <= \IRout[10]~output_o\;

ww_IRout(11) <= \IRout[11]~output_o\;

ww_IRout(12) <= \IRout[12]~output_o\;

ww_IRout(13) <= \IRout[13]~output_o\;

ww_IRout(14) <= \IRout[14]~output_o\;

ww_IRout(15) <= \IRout[15]~output_o\;
END structure;


