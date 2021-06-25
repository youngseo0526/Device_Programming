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

-- DATE "05/12/2021 21:04:39"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab_08_2 IS
    PORT (
	clk : IN std_logic;
	load : IN std_logic;
	clear : IN std_logic;
	out_sel : IN std_logic;
	iNOT10 : OUT std_logic;
	dp_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END Lab_08_2;

-- Design Ports Information
-- iNOT10	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sel	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_08_2 IS
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
SIGNAL ww_load : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_out_sel : std_logic;
SIGNAL ww_iNOT10 : std_logic;
SIGNAL ww_dp_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp_out[0]~output_o\ : std_logic;
SIGNAL \dp_out[1]~output_o\ : std_logic;
SIGNAL \dp_out[2]~output_o\ : std_logic;
SIGNAL \dp_out[3]~output_o\ : std_logic;
SIGNAL \iNOT10~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \out_sel~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \state.S0~feeder_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \iNOT10_s~0_combout\ : std_logic;
SIGNAL \iNOT10_s~q\ : std_logic;
SIGNAL \data[3]~0_combout\ : std_logic;
SIGNAL \data[1]~1_combout\ : std_logic;
SIGNAL \data[1]~3_combout\ : std_logic;
SIGNAL \data[2]~4_combout\ : std_logic;
SIGNAL \data[3]~2_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \state.S3~feeder_combout\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \data[0]~5_combout\ : std_logic;
SIGNAL \dp_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \dp_out[3]~4_combout\ : std_logic;
SIGNAL \dp_out[3]~5_combout\ : std_logic;
SIGNAL \dp_out[3]~6_combout\ : std_logic;
SIGNAL \dp_out[0]~reg0_q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \dp_out[0]~enfeeder_combout\ : std_logic;
SIGNAL \dp_out[0]~en_q\ : std_logic;
SIGNAL \dp_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \dp_out[1]~reg0_q\ : std_logic;
SIGNAL \dp_out[1]~enfeeder_combout\ : std_logic;
SIGNAL \dp_out[1]~en_q\ : std_logic;
SIGNAL \dp_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \dp_out[2]~reg0_q\ : std_logic;
SIGNAL \dp_out[2]~enfeeder_combout\ : std_logic;
SIGNAL \dp_out[2]~en_q\ : std_logic;
SIGNAL \dp_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \dp_out[3]~reg0_q\ : std_logic;
SIGNAL \dp_out[3]~en_q\ : std_logic;
SIGNAL data : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_iNOT10_s~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_load <= load;
ww_clear <= clear;
ww_out_sel <= out_sel;
iNOT10 <= ww_iNOT10;
dp_out <= ww_dp_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clear~inputclkctrl_outclk\ <= NOT \clear~inputclkctrl_outclk\;
\ALT_INV_iNOT10_s~q\ <= NOT \iNOT10_s~q\;

-- Location: IOOBUF_X22_Y0_N2
\dp_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[0]~reg0_q\,
	oe => \dp_out[0]~en_q\,
	devoe => ww_devoe,
	o => \dp_out[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\dp_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[1]~reg0_q\,
	oe => \dp_out[1]~en_q\,
	devoe => ww_devoe,
	o => \dp_out[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\dp_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[2]~reg0_q\,
	oe => \dp_out[2]~en_q\,
	devoe => ww_devoe,
	o => \dp_out[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\dp_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[3]~reg0_q\,
	oe => \dp_out[3]~en_q\,
	devoe => ww_devoe,
	o => \dp_out[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\iNOT10~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_iNOT10_s~q\,
	devoe => ww_devoe,
	o => \iNOT10~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X24_Y0_N8
\out_sel~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_sel,
	o => \out_sel~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\load~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LCCOMB_X22_Y1_N8
\state.S0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state.S0~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\clear~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: CLKCTRL_G19
\clear~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y1_N16
\iNOT10_s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \iNOT10_s~0_combout\ = (\state.S2~q\ & ((\clear~input_o\ & (\iNOT10_s~q\)) # (!\clear~input_o\ & ((\Selector4~0_combout\))))) # (!\state.S2~q\ & (((\iNOT10_s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~q\,
	datab => \clear~input_o\,
	datac => \iNOT10_s~q\,
	datad => \Selector4~0_combout\,
	combout => \iNOT10_s~0_combout\);

-- Location: FF_X21_Y1_N17
iNOT10_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \iNOT10_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iNOT10_s~q\);

-- Location: LCCOMB_X22_Y1_N26
\data[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[3]~0_combout\ = (\state.S0~q\ & (((\iNOT10_s~q\ & \state.S2~q\)) # (!\out_sel~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iNOT10_s~q\,
	datab => \state.S0~q\,
	datac => \out_sel~input_o\,
	datad => \state.S2~q\,
	combout => \data[3]~0_combout\);

-- Location: LCCOMB_X22_Y1_N6
\data[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[1]~1_combout\ = (!\state.S3~q\ & (\load~input_o\ & (data(0) & !\data[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S3~q\,
	datab => \load~input_o\,
	datac => data(0),
	datad => \data[3]~0_combout\,
	combout => \data[1]~1_combout\);

-- Location: LCCOMB_X22_Y1_N30
\data[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[1]~3_combout\ = data(1) $ (\data[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(1),
	datad => \data[1]~1_combout\,
	combout => \data[1]~3_combout\);

-- Location: FF_X22_Y1_N31
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[1]~3_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: LCCOMB_X22_Y1_N28
\data[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[2]~4_combout\ = data(2) $ (((data(1) & \data[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(1),
	datac => data(2),
	datad => \data[1]~1_combout\,
	combout => \data[2]~4_combout\);

-- Location: FF_X22_Y1_N29
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[2]~4_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: LCCOMB_X22_Y1_N20
\data[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[3]~2_combout\ = data(3) $ (((data(1) & (data(2) & \data[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(1),
	datab => data(2),
	datac => data(3),
	datad => \data[1]~1_combout\,
	combout => \data[3]~2_combout\);

-- Location: FF_X22_Y1_N21
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[3]~2_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: LCCOMB_X22_Y1_N16
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (data(1) & (!data(2) & (!data(0) & data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(1),
	datab => data(2),
	datac => data(0),
	datad => data(3),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X22_Y1_N18
\Selector4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = \Selector4~1_combout\ $ (((\state.S2~q\ & \Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datac => \Selector4~1_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~4_combout\);

-- Location: FF_X22_Y1_N9
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.S0~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \Selector4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: LCCOMB_X22_Y1_N10
\Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\load~input_o\ & (\state.S0~q\ $ (((!\state.S1~q\) # (!\out_sel~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_sel~input_o\,
	datab => \load~input_o\,
	datac => \state.S1~q\,
	datad => \state.S0~q\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X22_Y1_N14
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector4~1_combout\ & ((\Selector4~3_combout\ & ((\state.S1~q\))) # (!\Selector4~3_combout\ & (!\Selector4~2_combout\)))) # (!\Selector4~1_combout\ & (((\state.S1~q\ & !\Selector4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~1_combout\,
	datab => \Selector4~2_combout\,
	datac => \state.S1~q\,
	datad => \Selector4~3_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X22_Y1_N15
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: LCCOMB_X22_Y1_N4
\Selector4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\out_sel~input_o\ & (\load~input_o\ & \state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_sel~input_o\,
	datab => \load~input_o\,
	datac => \state.S1~q\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X21_Y1_N30
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Selector4~1_combout\ & ((\Selector4~2_combout\) # ((\state.S2~q\ & \Selector4~0_combout\)))) # (!\Selector4~1_combout\ & (((\state.S2~q\ & !\Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~2_combout\,
	datab => \Selector4~1_combout\,
	datac => \state.S2~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X21_Y1_N31
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: LCCOMB_X22_Y1_N24
\Selector4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (\state.S2~q\ & \Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~3_combout\);

-- Location: LCCOMB_X22_Y1_N12
\state.S3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.S3~feeder_combout\ = \Selector4~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector4~3_combout\,
	combout => \state.S3~feeder_combout\);

-- Location: FF_X22_Y1_N13
\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.S3~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \Selector4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

-- Location: LCCOMB_X22_Y1_N22
\data[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[0]~5_combout\ = data(0) $ (((!\state.S3~q\ & (\load~input_o\ & !\data[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S3~q\,
	datab => \load~input_o\,
	datac => data(0),
	datad => \data[3]~0_combout\,
	combout => \data[0]~5_combout\);

-- Location: FF_X22_Y1_N23
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[0]~5_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: LCCOMB_X21_Y1_N12
\dp_out[0]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[0]~reg0feeder_combout\ = data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(0),
	combout => \dp_out[0]~reg0feeder_combout\);

-- Location: LCCOMB_X21_Y1_N20
\dp_out[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[3]~4_combout\ = (\state.S2~q\ & !\iNOT10_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S2~q\,
	datad => \iNOT10_s~q\,
	combout => \dp_out[3]~4_combout\);

-- Location: LCCOMB_X21_Y1_N2
\dp_out[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[3]~5_combout\ = (\out_sel~input_o\ & (\load~input_o\ & ((\state.S1~q\) # (\dp_out[3]~4_combout\)))) # (!\out_sel~input_o\ & (((\state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_sel~input_o\,
	datab => \load~input_o\,
	datac => \state.S1~q\,
	datad => \dp_out[3]~4_combout\,
	combout => \dp_out[3]~5_combout\);

-- Location: LCCOMB_X21_Y1_N8
\dp_out[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[3]~6_combout\ = (!\clear~input_o\ & ((\dp_out[3]~5_combout\) # ((!\out_sel~input_o\ & \state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_sel~input_o\,
	datab => \clear~input_o\,
	datac => \state.S3~q\,
	datad => \dp_out[3]~5_combout\,
	combout => \dp_out[3]~6_combout\);

-- Location: FF_X21_Y1_N13
\dp_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[0]~reg0feeder_combout\,
	ena => \dp_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[0]~reg0_q\);

-- Location: LCCOMB_X21_Y1_N10
\Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\state.S3~q\ & (((\load~input_o\ & \out_sel~input_o\)) # (!\state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \state.S1~q\,
	datac => \out_sel~input_o\,
	datad => \state.S3~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X21_Y1_N18
\dp_out[0]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[0]~enfeeder_combout\ = \Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector9~0_combout\,
	combout => \dp_out[0]~enfeeder_combout\);

-- Location: FF_X21_Y1_N19
\dp_out[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[0]~enfeeder_combout\,
	ena => \dp_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[0]~en_q\);

-- Location: LCCOMB_X21_Y1_N24
\dp_out[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[1]~reg0feeder_combout\ = data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(1),
	combout => \dp_out[1]~reg0feeder_combout\);

-- Location: FF_X21_Y1_N25
\dp_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[1]~reg0feeder_combout\,
	ena => \dp_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[1]~reg0_q\);

-- Location: LCCOMB_X21_Y1_N22
\dp_out[1]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[1]~enfeeder_combout\ = \Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector9~0_combout\,
	combout => \dp_out[1]~enfeeder_combout\);

-- Location: FF_X21_Y1_N23
\dp_out[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[1]~enfeeder_combout\,
	ena => \dp_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[1]~en_q\);

-- Location: LCCOMB_X21_Y1_N28
\dp_out[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[2]~reg0feeder_combout\ = data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(2),
	combout => \dp_out[2]~reg0feeder_combout\);

-- Location: FF_X21_Y1_N29
\dp_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[2]~reg0feeder_combout\,
	ena => \dp_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[2]~reg0_q\);

-- Location: LCCOMB_X21_Y1_N26
\dp_out[2]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[2]~enfeeder_combout\ = \Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector9~0_combout\,
	combout => \dp_out[2]~enfeeder_combout\);

-- Location: FF_X21_Y1_N27
\dp_out[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[2]~enfeeder_combout\,
	ena => \dp_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[2]~en_q\);

-- Location: LCCOMB_X21_Y1_N4
\dp_out[3]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[3]~reg0feeder_combout\ = data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(3),
	combout => \dp_out[3]~reg0feeder_combout\);

-- Location: FF_X21_Y1_N5
\dp_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[3]~reg0feeder_combout\,
	ena => \dp_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[3]~reg0_q\);

-- Location: FF_X21_Y1_N11
\dp_out[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \dp_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[3]~en_q\);

ww_iNOT10 <= \iNOT10~output_o\;

ww_dp_out(0) <= \dp_out[0]~output_o\;

ww_dp_out(1) <= \dp_out[1]~output_o\;

ww_dp_out(2) <= \dp_out[2]~output_o\;

ww_dp_out(3) <= \dp_out[3]~output_o\;
END structure;


