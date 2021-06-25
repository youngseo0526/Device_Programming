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

-- DATE "04/09/2021 00:16:13"

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

ENTITY 	Lab_05 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	w : IN std_logic;
	x : IN std_logic;
	y : IN std_logic;
	z : IN std_logic;
	ld_inc_out : OUT std_logic;
	condition_sel_out : OUT std_logic_vector(1 DOWNTO 0);
	next_address_out : OUT std_logic_vector(1 DOWNTO 0);
	control_data : OUT std_logic_vector(2 DOWNTO 0);
	q_out : OUT std_logic_vector(6 DOWNTO 0)
	);
END Lab_05;

-- Design Ports Information
-- ld_inc_out	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- condition_sel_out[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- condition_sel_out[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_address_out[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- next_address_out[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_data[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_data[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control_data[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[1]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[3]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[4]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_05 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_ld_inc_out : std_logic;
SIGNAL ww_condition_sel_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_next_address_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_control_data : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_q_out : std_logic_vector(6 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ld_inc_out~output_o\ : std_logic;
SIGNAL \condition_sel_out[0]~output_o\ : std_logic;
SIGNAL \condition_sel_out[1]~output_o\ : std_logic;
SIGNAL \next_address_out[0]~output_o\ : std_logic;
SIGNAL \next_address_out[1]~output_o\ : std_logic;
SIGNAL \control_data[0]~output_o\ : std_logic;
SIGNAL \control_data[1]~output_o\ : std_logic;
SIGNAL \control_data[2]~output_o\ : std_logic;
SIGNAL \q_out[0]~output_o\ : std_logic;
SIGNAL \q_out[1]~output_o\ : std_logic;
SIGNAL \q_out[2]~output_o\ : std_logic;
SIGNAL \q_out[3]~output_o\ : std_logic;
SIGNAL \q_out[4]~output_o\ : std_logic;
SIGNAL \q_out[5]~output_o\ : std_logic;
SIGNAL \q_out[6]~output_o\ : std_logic;
SIGNAL \z~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \address~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \address~0_combout\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL address : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_w <= w;
ww_x <= x;
ww_y <= y;
ww_z <= z;
ld_inc_out <= ww_ld_inc_out;
condition_sel_out <= ww_condition_sel_out;
next_address_out <= ww_next_address_out;
control_data <= ww_control_data;
q_out <= ww_q_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;

-- Location: IOOBUF_X22_Y0_N9
\ld_inc_out~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \ld_inc_out~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\condition_sel_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address(0),
	devoe => ww_devoe,
	o => \condition_sel_out[0]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\condition_sel_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address(1),
	devoe => ww_devoe,
	o => \condition_sel_out[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\next_address_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \next_address_out[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\next_address_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \next_address_out[1]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\control_data[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \control_data[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\control_data[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address(0),
	devoe => ww_devoe,
	o => \control_data[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\control_data[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address(1),
	devoe => ww_devoe,
	o => \control_data[2]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\q_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \q_out[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\q_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address(0),
	devoe => ww_devoe,
	o => \q_out[1]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\q_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address(1),
	devoe => ww_devoe,
	o => \q_out[2]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\q_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address(0),
	devoe => ww_devoe,
	o => \q_out[3]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\q_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address(1),
	devoe => ww_devoe,
	o => \q_out[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\q_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \q_out[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\q_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \q_out[6]~output_o\);

-- Location: IOIBUF_X29_Y0_N8
\z~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z,
	o => \z~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\y~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

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

-- Location: LCCOMB_X26_Y1_N2
\address~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address~1_combout\ = (!address(0) & ((address(1)) # (!\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datac => address(0),
	datad => \Mux0~1_combout\,
	combout => \address~1_combout\);

-- Location: IOIBUF_X16_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X26_Y1_N3
\address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \address~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(0));

-- Location: LCCOMB_X26_Y1_N8
\address~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address~0_combout\ = (address(0) & (address(1) $ (!\Mux0~1_combout\))) # (!address(0) & (address(1) & !\Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(0),
	datac => address(1),
	datad => \Mux0~1_combout\,
	combout => \address~0_combout\);

-- Location: FF_X26_Y1_N9
\address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \address~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(1));

-- Location: IOIBUF_X26_Y0_N1
\w~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\x~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X26_Y1_N28
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (address(1) & (((address(0))))) # (!address(1) & ((address(0) & ((\x~input_o\))) # (!address(0) & (\w~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w~input_o\,
	datab => \x~input_o\,
	datac => address(1),
	datad => address(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X26_Y1_N10
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (address(1) & ((\Mux0~0_combout\ & (\z~input_o\)) # (!\Mux0~0_combout\ & ((\y~input_o\))))) # (!address(1) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~input_o\,
	datab => \y~input_o\,
	datac => address(1),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X26_Y1_N24
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!address(0) & address(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => address(0),
	datad => address(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X26_Y1_N22
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (address(0) & address(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => address(0),
	datad => address(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X27_Y11_N8
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = address(0) $ (address(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(0),
	datad => address(1),
	combout => \Mux3~0_combout\);

ww_ld_inc_out <= \ld_inc_out~output_o\;

ww_condition_sel_out(0) <= \condition_sel_out[0]~output_o\;

ww_condition_sel_out(1) <= \condition_sel_out[1]~output_o\;

ww_next_address_out(0) <= \next_address_out[0]~output_o\;

ww_next_address_out(1) <= \next_address_out[1]~output_o\;

ww_control_data(0) <= \control_data[0]~output_o\;

ww_control_data(1) <= \control_data[1]~output_o\;

ww_control_data(2) <= \control_data[2]~output_o\;

ww_q_out(0) <= \q_out[0]~output_o\;

ww_q_out(1) <= \q_out[1]~output_o\;

ww_q_out(2) <= \q_out[2]~output_o\;

ww_q_out(3) <= \q_out[3]~output_o\;

ww_q_out(4) <= \q_out[4]~output_o\;

ww_q_out(5) <= \q_out[5]~output_o\;

ww_q_out(6) <= \q_out[6]~output_o\;
END structure;


