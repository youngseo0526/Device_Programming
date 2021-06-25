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

-- DATE "05/22/2021 03:09:47"

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

ENTITY 	cu IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	IRload : OUT std_logic;
	PCload : OUT std_logic;
	INmux : OUT std_logic;
	Aload : OUT std_logic;
	JNZmux : OUT std_logic;
	IR : IN std_logic_vector(7 DOWNTO 5);
	Aneq0 : IN std_logic;
	halt : OUT std_logic
	);
END cu;

-- Design Ports Information
-- IRload	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCload	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INmux	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aload	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JNZmux	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- halt	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aneq0	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_IRload : std_logic;
SIGNAL ww_PCload : std_logic;
SIGNAL ww_INmux : std_logic;
SIGNAL ww_Aload : std_logic;
SIGNAL ww_JNZmux : std_logic;
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 5);
SIGNAL ww_Aneq0 : std_logic;
SIGNAL ww_halt : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IRload~output_o\ : std_logic;
SIGNAL \PCload~output_o\ : std_logic;
SIGNAL \INmux~output_o\ : std_logic;
SIGNAL \Aload~output_o\ : std_logic;
SIGNAL \JNZmux~output_o\ : std_logic;
SIGNAL \halt~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \IR[5]~input_o\ : std_logic;
SIGNAL \IR[7]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \IR[6]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Aneq0~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL state : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
IRload <= ww_IRload;
PCload <= ww_PCload;
INmux <= ww_INmux;
Aload <= ww_Aload;
JNZmux <= ww_JNZmux;
ww_IR <= IR;
ww_Aneq0 <= Aneq0;
halt <= ww_halt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X20_Y0_N2
\IRload~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \IRload~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\PCload~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \PCload~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\INmux~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \INmux~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\Aload~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Aload~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\JNZmux~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \JNZmux~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\halt~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \halt~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X10_Y0_N8
\IR[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(5),
	o => \IR[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\IR[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(7),
	o => \IR[7]~input_o\);

-- Location: LCCOMB_X13_Y1_N26
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (state(1) & ((state(0) & ((state(2)))) # (!state(0) & (\IR[7]~input_o\ & !state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \IR[7]~input_o\,
	datac => state(2),
	datad => state(1),
	combout => \Mux2~0_combout\);

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

-- Location: FF_X13_Y1_N27
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: IOIBUF_X20_Y0_N8
\IR[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(6),
	o => \IR[6]~input_o\);

-- Location: LCCOMB_X13_Y1_N20
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\IR[5]~input_o\ & ((\IR[7]~input_o\) # (\IR[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR[7]~input_o\,
	datac => \IR[5]~input_o\,
	datad => \IR[6]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X13_Y1_N24
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (state(2) & (((state(0) & state(1))))) # (!state(2) & (!state(0) & ((\Mux4~0_combout\) # (!state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \Mux4~0_combout\,
	datac => state(0),
	datad => state(1),
	combout => \Mux4~1_combout\);

-- Location: FF_X13_Y1_N25
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux4~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X13_Y1_N18
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (state(0) & (state(2) $ (((state(1)))))) # (!state(0) & ((state(2)) # ((!state(1)) # (!\IR[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \IR[6]~input_o\,
	datac => state(1),
	datad => state(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X13_Y1_N8
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\Mux3~0_combout\ & ((\IR[5]~input_o\) # ((\IR[7]~input_o\) # (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[5]~input_o\,
	datab => \IR[7]~input_o\,
	datac => state(0),
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: FF_X13_Y1_N9
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux3~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X14_Y1_N4
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!state(1) & (state(0) & !state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => state(0),
	datad => state(2),
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X22_Y0_N1
\Aneq0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Aneq0,
	o => \Aneq0~input_o\);

-- Location: LCCOMB_X14_Y1_N30
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (state(0) & (!state(1) & ((!state(2))))) # (!state(0) & (state(1) & (\Aneq0~input_o\ & state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => \Aneq0~input_o\,
	datad => state(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X14_Y1_N12
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (state(1) & (state(0) & !state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => state(0),
	datad => state(2),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X13_Y1_N30
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (state(0) & (state(2) $ (state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => state(0),
	datad => state(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X13_Y1_N28
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (state(2) & (!state(0) & state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => state(0),
	datad => state(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X13_Y1_N22
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (state(2) & (state(0) & state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datac => state(0),
	datad => state(1),
	combout => \Mux10~0_combout\);

ww_IRload <= \IRload~output_o\;

ww_PCload <= \PCload~output_o\;

ww_INmux <= \INmux~output_o\;

ww_Aload <= \Aload~output_o\;

ww_JNZmux <= \JNZmux~output_o\;

ww_halt <= \halt~output_o\;
END structure;


