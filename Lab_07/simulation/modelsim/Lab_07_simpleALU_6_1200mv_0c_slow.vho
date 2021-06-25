-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/28/2021 16:21:32"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab_07_simpleALU IS
    PORT (
	op1 : IN std_logic_vector(3 DOWNTO 0);
	op2 : IN std_logic_vector(3 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	alu_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END Lab_07_simpleALU;

-- Design Ports Information
-- alu_out[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[0]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_07_simpleALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_op1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_alu_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_out[0]~output_o\ : std_logic;
SIGNAL \alu_out[1]~output_o\ : std_logic;
SIGNAL \alu_out[2]~output_o\ : std_logic;
SIGNAL \alu_out[3]~output_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \op1[0]~input_o\ : std_logic;
SIGNAL \op2[0]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \op1[1]~input_o\ : std_logic;
SIGNAL \op2[1]~input_o\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \op1[2]~input_o\ : std_logic;
SIGNAL \op2[2]~input_o\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \op1[3]~input_o\ : std_logic;
SIGNAL \op2[3]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;

BEGIN

ww_op1 <= op1;
ww_op2 <= op2;
ww_sel <= sel;
alu_out <= ww_alu_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X20_Y31_N9
\alu_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	devoe => ww_devoe,
	o => \alu_out[0]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\alu_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \alu_out[1]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\alu_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \alu_out[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\alu_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => \alu_out[3]~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\sel[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\sel[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: LCCOMB_X22_Y25_N24
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sel[1]~input_o\) # (\sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel[1]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X12_Y31_N1
\sel[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X22_Y25_N2
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\sel[2]~input_o\) # ((\sel[0]~input_o\ & !\sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[0]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X20_Y0_N1
\op1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(0),
	o => \op1[0]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\op2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(0),
	o => \op2[0]~input_o\);

-- Location: LCCOMB_X20_Y28_N20
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~1_combout\ & (((\Mux3~0_combout\) # (\op2[0]~input_o\)))) # (!\Mux3~1_combout\ & (\op1[0]~input_o\ & (!\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \op1[0]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \op2[0]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X20_Y28_N22
\Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\op1[0]~input_o\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\op2[0]~input_o\))))) # (!\op1[0]~input_o\ & ((\sel[0]~input_o\ & ((\sel[1]~input_o\) # (\op2[0]~input_o\))) # (!\sel[0]~input_o\ & (\sel[1]~input_o\ & \op2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \op1[0]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \op2[0]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X20_Y28_N10
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \sel[0]~input_o\ $ (\op2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datad => \op2[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X20_Y28_N0
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X20_Y28_N2
\Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((\op1[0]~input_o\ & (\Add0~2_cout\ & VCC)) # (!\op1[0]~input_o\ & (!\Add0~2_cout\)))) # (!\Add0~0_combout\ & ((\op1[0]~input_o\ & (!\Add0~2_cout\)) # (!\op1[0]~input_o\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & (!\op1[0]~input_o\ & !\Add0~2_cout\)) # (!\Add0~0_combout\ & ((!\Add0~2_cout\) # (!\op1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \op1[0]~input_o\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X20_Y28_N16
\Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~0_combout\ & ((\Mux3~2_combout\ & (\Mux3~3_combout\)) # (!\Mux3~2_combout\ & ((\Add0~3_combout\))))) # (!\Mux3~0_combout\ & (\Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux3~3_combout\,
	datad => \Add0~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: IOIBUF_X8_Y0_N1
\op1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(1),
	o => \op1[1]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\op2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(1),
	o => \op2[1]~input_o\);

-- Location: LCCOMB_X22_Y25_N20
\Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \op2[1]~input_o\ $ (\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op2[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X20_Y28_N4
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\op1[1]~input_o\ $ (\Add0~5_combout\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\op1[1]~input_o\ & ((\Add0~5_combout\) # (!\Add0~4\))) # (!\op1[1]~input_o\ & (\Add0~5_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X20_Y28_N26
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux3~0_combout\ & ((\Add0~6_combout\) # ((\Mux3~1_combout\)))) # (!\Mux3~0_combout\ & (((!\Mux3~1_combout\ & \op1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Add0~6_combout\,
	datac => \Mux3~1_combout\,
	datad => \op1[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X20_Y28_N12
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\op1[1]~input_o\ & (\sel[1]~input_o\ $ (((\op2[1]~input_o\) # (\sel[0]~input_o\))))) # (!\op1[1]~input_o\ & ((\op2[1]~input_o\ & ((\sel[1]~input_o\) # (\sel[0]~input_o\))) # (!\op2[1]~input_o\ & (\sel[1]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[1]~input_o\,
	datab => \op2[1]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X20_Y28_N14
\Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~0_combout\ & (((\Mux2~1_combout\) # (!\Mux3~1_combout\)))) # (!\Mux2~0_combout\ & (\op2[1]~input_o\ & (\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \op2[1]~input_o\,
	datac => \Mux3~1_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X24_Y0_N8
\op1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(2),
	o => \op1[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\op2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(2),
	o => \op2[2]~input_o\);

-- Location: LCCOMB_X20_Y28_N24
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \op2[2]~input_o\ $ (\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op2[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X20_Y28_N6
\Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\op1[2]~input_o\ & ((\Add0~8_combout\ & (\Add0~7\ & VCC)) # (!\Add0~8_combout\ & (!\Add0~7\)))) # (!\op1[2]~input_o\ & ((\Add0~8_combout\ & (!\Add0~7\)) # (!\Add0~8_combout\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\op1[2]~input_o\ & (!\Add0~8_combout\ & !\Add0~7\)) # (!\op1[2]~input_o\ & ((!\Add0~7\) # (!\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1[2]~input_o\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X20_Y28_N28
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\op1[2]~input_o\ & (\sel[1]~input_o\ $ (((\op2[2]~input_o\) # (\sel[0]~input_o\))))) # (!\op1[2]~input_o\ & ((\op2[2]~input_o\ & ((\sel[1]~input_o\) # (\sel[0]~input_o\))) # (!\op2[2]~input_o\ & (\sel[1]~input_o\ & \sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2[2]~input_o\,
	datab => \op1[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X20_Y28_N18
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux3~0_combout\ & (((\Mux3~1_combout\)))) # (!\Mux3~0_combout\ & ((\Mux3~1_combout\ & (\op2[2]~input_o\)) # (!\Mux3~1_combout\ & ((\op1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \op2[2]~input_o\,
	datac => \Mux3~1_combout\,
	datad => \op1[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X20_Y28_N30
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux3~0_combout\ & ((\Mux1~0_combout\ & ((\Mux1~1_combout\))) # (!\Mux1~0_combout\ & (\Add0~9_combout\)))) # (!\Mux3~0_combout\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \Mux1~1_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: IOIBUF_X33_Y16_N15
\op1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op1(3),
	o => \op1[3]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\op2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op2(3),
	o => \op2[3]~input_o\);

-- Location: LCCOMB_X22_Y25_N10
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\op1[3]~input_o\ & (\sel[1]~input_o\ $ (((\sel[0]~input_o\) # (\op2[3]~input_o\))))) # (!\op1[3]~input_o\ & ((\sel[0]~input_o\ & ((\sel[1]~input_o\) # (\op2[3]~input_o\))) # (!\sel[0]~input_o\ & (\sel[1]~input_o\ & \op2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[3]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \op2[3]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X22_Y25_N22
\Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \sel[0]~input_o\ $ (\op2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[0]~input_o\,
	datad => \op2[3]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X20_Y28_N8
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \Add0~11_combout\ $ (\Add0~10\ $ (!\op1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~11_combout\,
	datad => \op1[3]~input_o\,
	cin => \Add0~10\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X22_Y25_N0
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mux3~0_combout\ & (((\Add0~12_combout\) # (\Mux3~1_combout\)))) # (!\Mux3~0_combout\ & (\op1[3]~input_o\ & ((!\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1[3]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \Add0~12_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X22_Y25_N12
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux3~1_combout\ & ((\Mux0~0_combout\ & (\Mux0~1_combout\)) # (!\Mux0~0_combout\ & ((\op2[3]~input_o\))))) # (!\Mux3~1_combout\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux0~0_combout\,
	datad => \op2[3]~input_o\,
	combout => \Mux0~2_combout\);

ww_alu_out(0) <= \alu_out[0]~output_o\;

ww_alu_out(1) <= \alu_out[1]~output_o\;

ww_alu_out(2) <= \alu_out[2]~output_o\;

ww_alu_out(3) <= \alu_out[3]~output_o\;
END structure;


